# MIT License
#
# Copyright (c) 2023 Advanced Micro Devices, Inc. All rights reserved.
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

cmake_minimum_required(VERSION 3.18)
cmake_policy(VERSION 3.18...3.28)
enable_testing()

project(ROCmSuperBuild LANGUAGES NONE)

find_package(ROCmCMakeBuildTools REQUIRED)
include(ROCmDefaults)
include(ROCmOptions)
include(${PROJECT_NAME}Options)
include(${PROJECT_NAME}Dependencies)

include(ROCMSetupVersion)
rocm_setup_version(VERSION ${ROCM_DIST_VERSION})

include(ExternalProject)

set(ROCM_UPDATE_COMMAND "${GIT_EXECUTABLE}" submodule update --remote)

# These GENERATOR_OPTIONS need to be given to _every_ external project, both
# those that fetch deps and those which will constitute the actual tests,
# because ExternalProject doesn't relay the entire command-line given to it,
# most problematic of all, it doesn't relay build-system related variables. If
# ninja isn't on the PATH, even if we selected one explicitly in a preset file
# (or any other way), it will not find it.
if(CMAKE_GENERATOR MATCHES [[Ninja|Makefiles]])
    set(PARENT_GENERATOR
        "-DCMAKE_MAKE_PROGRAM:PATH=${CMAKE_MAKE_PROGRAM}"
    )
    set(MAKEFILE_GENERATOR ${PARENT_GENERATOR})
elseif(CMAKE_GENERATOR MATCHES [[Visual]])
    set(PARENT_GENERATOR
        "-DCMAKE_GENERATOR_INSTANCE:STRING=${MAKE_GENERATOR_INSTANCE}"
        "-DCMAKE_GENERATOR_PLATFORM:STRING=${CMAKE_GENERATOR_PLATFORM}"
        "-DCMAKE_GENERATOR_TOOLSET:STRING=${CMAKE_GENERATOR_TOOLSET}"  
    )
    find_program(NINJA_EXE ninja REQUIRED)
    set(MAKEFILE_GENERATOR
        "-DCMAKE_MAKE_PROGRAM:PATH=${NINJA_EXE}"
    )
endif()

#if(UNIX AND NOT APPLE)
#    set(TOOLCHAIN_OPTIONS
#        "-DCMAKE_CXX_COMPILER:FILEPATH=/opt/rocm/bin/amdclang++"
#    )
#elseif(WIN32)
#    file(TO_CMAKE_PATH "$ENV{HIP_PATH}bin\\clang++.exe" rocmcc_path)
#    set(TOOLCHAIN_OPTIONS
#        "-DCMAKE_CXX_COMPILER:FILEPATH=${rocmcc_path}"
#        "-DHIP_CXX_COMPILER:FILEPATH=${rocmcc_path}"
#    )
#endif()

set(ROCM_OPTIONS
    "-DROCM_BUILD_TESTING:BOOL=${ROCM_BUILD_TESTING}"
    "-DROCM_BUILD_EXAMPLES:BOOL=${ROCM_BUILD_EXAMPLES}"
    "-DROCM_BUILD_DOCS:BOOL=${ROCM_BUILD_DOCS}"
    "-DROCM_BUILD_TOOLS:BOOL=${ROCM_BUILD_TOOLS}"
    "-DROCM_DIST_VERSION:STRING=${ROCM_DIST_VERSION}"
    "-DCMAKE_INSTALL_PREFIX:PATH=<INSTALL_DIR>"
)

set_directory_properties(PROPERTIES EP_BASE "${PROJECT_BINARY_DIR}/${ROCM_EP_BASE}")

ExternalProject_Add(rocmcmakebuildtools
    SOURCE_DIR "${PROJECT_SOURCE_DIR}/libs/rocm-cmake"
    UPDATE_COMMAND "${ROCM_UPDATE_COMMAND};${PROJECT_SOURCE_DIR}/libs/rocm-cmake"
    UPDATE_DISCONNECTED ${ROCM_EP_UPDATE_DC}
    CMAKE_CACHE_ARGS "${PARENT_GENERATOR};${ROCM_OPTIONS}"
)
ExternalProject_Get_property(rocmcmakebuildtools INSTALL_DIR)
set(ROCmCMakeBuildTools_ROOT "${INSTALL_DIR}")
ExternalProject_Add(rocprim
    SOURCE_DIR "${PROJECT_SOURCE_DIR}/libs/rocprim"
    UPDATE_COMMAND "${ROCM_UPDATE_COMMAND};${PROJECT_SOURCE_DIR}/libs/rocprim"
    UPDATE_DISCONNECTED ${ROCM_EP_UPDATE_DC}
    CMAKE_CACHE_ARGS "${PARENT_GENERATOR};${ROCM_OPTIONS};-DROCmCMakeBuildTools_ROOT:PATH=${ROCmCMakeBuildTools_ROOT}"
    DEPENDS rocmcmakebuildtools
)
ExternalProject_Add_Step(rocprim
    rocprim-doc
    COMMAND "${CMAKE_COMMAND}" --build <BINARY_DIR> --target doc --config $<CONFIG>
    COMMENT "Performing doc step for 'rocprim'"
    DEPENDEES build
    DEPENDERS install
)

add_dependencies(doc
    rocmcmakebuildtools
    rocprim
)

# Build docs
if(ROCM_BUILD_DOCS)
  add_subdirectory(docs)
endif()

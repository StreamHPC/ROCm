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

# ###########################
# ROCm dependencies
# ###########################

include(FetchContent)

if(NOT ROCM_EP_UPDATE_DC)
    find_package(Git REQUIRED)
endif()

if(ROCM_BUILD_DOCS)
    include(ROCmSphinxDoc)
    if(NOT SPHINX_EXECUTABLE)
        message(FATAL_ERROR
            "Sphinx executable not found.\n"
            "Set via SPHINX_EXECUTABLE, CMAKE_PROGRAM_PATH or CMAKE_PREFIX_PATH.")
    endif()
    if(NOT DOXYGEN_EXECUTABLE)
        message(FATAL_ERROR
            "Doxygen executable not found.\n"
            "Set via DOXYGEN_EXECUTABLE, CMAKE_PROGRAM_PATH or CMAKE_PREFIX_PATH.")
    endif()
endif()

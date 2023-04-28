# GPU and OS Support (Linux)

(supported_distributions)=

## Supported Distributions

AMD ROCm™ Platform supports the following Linux distributions.

| Distribution       |Processor Architectures| Validated Kernel   |
|--------------------|-----------------------|--------------------|
| RHEL 9.1           | x86-64                | 5.14               |
| RHEL 8.6 to 8.7    | x86-64                | 4.18               |
| SLES 15 SP4        | x86-64                |                    |
| Ubuntu 20.04.5 LTS | x86-64                | 5.15               |
| Ubuntu 22.04.1 LTS | x86-64                | 5.15, OEM 5.17     |

## Virtualization Support

ROCm supports virtualization for select GPUs only as shown below.

| Hypervisor     | Version  | GPU   | Validated Guest OS (validated kernel)                                            |
|----------------|----------|-------|----------------------------------------------------------------------------------|
| VMWare         | ESXi 8   | MI250 | Ubuntu 20.04 (`5.15.0-56-generic`)                                               |
| VMWare         | ESXi 8   | MI210 | Ubuntu 20.04 (`5.15.0-56-generic`), SLES 15 SP4 (`5.14.21-150400.24.18-default`) |
| VMWare         | ESXi 7   | MI210 | Ubuntu 20.04 (`5.15.0-56-generic`), SLES 15 SP4 (`5.14.21-150400.24.18-default`) |

## GPU Support Table

::::{tab-set}

:::{tab-item} AMD Instinct™
:sync: instinct

Use Driver Shipped with ROCm

| Name | Architecture | [LLVM Target](https://www.llvm.org/docs/AMDGPUUsage.html#processors) | SWE | Support |
|:----:|:------------:|:--------------------------------------------------------------------:|:---:|:-------:|
| AMD Instinct™ MI250X | CDNA2  | gfx90a | Full | Supported   |
| AMD Instinct™ MI250  | CDNA2  | gfx90a | Full | Supported   |
| AMD Instinct™ MI210  | CDNA2  | gfx90a | Full | Supported   |
| AMD Instinct™ MI100  | CDNA   | gfx908 | Full | Supported   |
| AMD Instinct™ MI50   | GCN5.1 | gfx906 | Full | Supported   |
| AMD Instinct™ MI25   | GCN5.0 | gfx900 | Full | Deprecated  |
| AMD Instinct™ MI6    | GCN4.0 | gfx803 | Full | Unsupported |
| AMD Instinct™ MI8    | GCN3.0 | gfx803 | Full | Unsupported |

:::

:::{tab-item} Radeon Pro™
:sync: radeonpro

[Use Radeon Pro Driver](https://www.amd.com/en/support/linux-drivers)

| Name | Architecture | [LLVM Target](https://www.llvm.org/docs/AMDGPUUsage.html#processors) | SWE | Support |
|:----:|:------------:|:--------------------------------------------------------------------:|:---:|:-------:|
| AMD Radeon™ Pro W7900   | RDNA3  | gfx1100 | Full    | Supported  |
| AMD Radeon™ Pro W7800   | RDNA3  | gfx1100 | Full    | Supported  |
| AMD Radeon™ Pro W6800   | RDNA2  | gfx1030 | SDK     | Supported  |
| AMD Radeon™ Pro V620    | RDNA2  | gfx1030 | SDK     | Supported  |
| AMD Radeon™ Pro W6600   | RDNA2  | gfx1032 | Runtime | Supported  |
| AMD Radeon™ Pro W6600M  | RDNA2  | gfx1032 | Runtime | Supported  |
| AMD Radeon™ Pro W6400   | RDNA2  | gfx1034 | Runtime | Supported  |
| AMD Radeon™ Pro W6300   | RDNA2  | gfx1034 | Runtime | Supported  |
| AMD Radeon™ Pro W6300M  | RDNA2  | gfx1034 | Runtime | Supported  |
| AMD Radeon™ Pro W5700   | RDNA1  | gfx1010 | Runtime | Supported  |
| AMD Radeon™ Pro V520    | RDNA1  | gfx1011 | Runtime | Supported  |
| AMD Radeon™ Pro W5500   | RDNA1  | gfx1012 | Runtime | Supported  |
| AMD Radeon™ Pro VII     | GCN5.1 | gfx906  | Full    | Supported  |
| AMD Radeon™ Pro WX 8200 | GCN5.0 | gfx900  | Runtime | Deprecated |
| AMD Radeon™ Pro WX 9100 | GCN5.0 | gfx900  | Runtime | Deprecated |
| AMD Radeon™ Pro WX 8100 | GCN5.0 | gfx900  | Runtime | Deprecated |
| AMD Radeon™ Pro Duo     | GCN4.0 | gfx803  | N/A     | Community  |
| AMD Radeon™ Pro WX 7100 | GCN4.0 | gfx803  | N/A     | Community  |
| AMD Radeon™ Pro WX 5100 | GCN4.0 | gfx803  | N/A     | Community  |

:::

:::{tab-item} Radeon™
:sync: radeon

[Use Radeon Pro Driver](https://www.amd.com/en/support/linux-drivers)

| Name | Architecture | [LLVM Target](https://www.llvm.org/docs/AMDGPUUsage.html#processors) | SWE | Support |
|:----:|:------------:|:--------------------------------------------------------------------:|:---:|:-------:|
| AMD Radeon™ RX 7950 XTX | RDNA3  | gfx1100 | Runtime | Supported  |
| AMD Radeon™ RX 7950 XT  | RDNA3  | gfx1100 | Runtime | Supported  |
| AMD Radeon™ RX 7900 XTX | RDNA3  | gfx1100 | Runtime | Supported  |
| AMD Radeon™ RX 7900 XT  | RDNA3  | gfx1100 | Runtime | Supported  |
| AMD Radeon™ RX 7800 XT  | RDNA3  | gfx1101 | Runtime | Supported  |
| AMD Radeon™ RX 7700 XT  | RDNA3  | gfx1102 | Runtime | Supported  |
| AMD Radeon™ RX 7600 XT  | RDNA3  | gfx1102 | Runtime | Supported  |
| AMD Radeon™ RX 7500 XT  | RDNA3  | gfx1102 | Runtime | Supported  |
| AMD Radeon™ RX 7600M XT | RDNA3  | gfx1102 | Runtime | Supported  |
| AMD Radeon™ RX 7600M    | RDNA3  | gfx1102 | Runtime | Supported  |
| AMD Radeon™ RX 7700S    | RDNA3  | gfx1102 | Runtime | Supported  |
| AMD Radeon™ RX 7600S    | RDNA3  | gfx1102 | Runtime | Supported  |
| AMD Radeon™ RX 6950 XT  | RDNA2  | gfx1030 | Full    | Supported  |
| AMD Radeon™ RX 6900 XTX | RDNA2  | gfx1030 | Full    | Supported  |
| AMD Radeon™ RX 6900 XT  | RDNA2  | gfx1030 | Full    | Supported  |
| AMD Radeon™ RX 6800 XT  | RDNA2  | gfx1030 | Full    | Supported  |
| AMD Radeon™ RX 6800     | RDNA2  | gfx1030 | Full    | Supported  |
| AMD Radeon™ RX 6750 XT  | RDNA2  | gfx1031 | Runtime | Supported  |
| AMD Radeon™ RX 6700 XT  | RDNA2  | gfx1031 | Runtime | Supported  |
| AMD Radeon™ RX 6700     | RDNA2  | gfx1031 | Runtime | Supported  |
| AMD Radeon™ RX 6850M    | RDNA2  | gfx1031 | Runtime | Supported  |
| AMD Radeon™ RX 6800M    | RDNA2  | gfx1031 | Runtime | Supported  |
| AMD Radeon™ RX 6700M    | RDNA2  | gfx1031 | Runtime | Supported  |
| AMD Radeon™ RX 6650 XT  | RDNA2  | gfx1032 | Runtime | Supported  |
| AMD Radeon™ RX 6600 XT  | RDNA2  | gfx1032 | Runtime | Supported  |
| AMD Radeon™ RX 6600     | RDNA2  | gfx1032 | Runtime | Supported  |
| AMD Radeon™ RX 6650M XT | RDNA2  | gfx1032 | Runtime | Supported  |
| AMD Radeon™ RX 6650M    | RDNA2  | gfx1032 | Runtime | Supported  |
| AMD Radeon™ RX 6600M    | RDNA2  | gfx1032 | Runtime | Supported  |
| AMD Radeon™ RX 6800S    | RDNA2  | gfx1032 | Runtime | Supported  |
| AMD Radeon™ RX 6700S    | RDNA2  | gfx1032 | Runtime | Supported  |
| AMD Radeon™ RX 6600S    | RDNA2  | gfx1032 | Runtime | Supported  |
| AMD Radeon™ RX 6500 XT  | RDNA2  | gfx1034 | Runtime | Supported  |
| AMD Radeon™ RX 6550S    | RDNA2  | gfx1034 | Runtime | Supported  |
| AMD Radeon™ RX 6550M    | RDNA2  | gfx1034 | Runtime | Supported  |
| AMD Radeon™ RX 6500M    | RDNA2  | gfx1034 | Runtime | Supported  |
| AMD Radeon™ RX 6450M    | RDNA2  | gfx1034 | Runtime | Supported  |
| AMD Radeon™ RX 6400     | RDNA2  | gfx1034 | Runtime | Supported  |
| AMD Radeon™ RX 6300     | RDNA2  | gfx1034 | Runtime | Supported  |
| AMD Radeon™ RX 5700 XT  | RDNA1  | gfx1010 | Runtime | Supported  |
| AMD Radeon™ RX 5700     | RDNA1  | gfx1010 | Runtime | Supported  |
| AMD Radeon™ RX 5600 XT  | RDNA1  | gfx1010 | Runtime | Supported  |
| AMD Radeon™ RX 5500 XT  | RDNA1  | gfx1012 | Runtime | Supported  |
| AMD Radeon™ VII         | GCN5.1 | gfx906  | Full    | Supported  |
| AMD Radeon™ RX Vega 64  | GCN5.0 | gfx900  | Full    | Deprecated |
| AMD Radeon™ RX Vega 45  | GCN5.0 | gfx900  | Full    | Deprecated |
| AMD Radeon™ RX 590      | GCN4.0 | gfx803  | N/A     | Community  |
| AMD Radeon™ RX 580      | GCN4.0 | gfx803  | N/A     | Community  |
| AMD Radeon™ RX 580x     | GCN4.0 | gfx803  | N/A     | Community  |
| AMD Radeon™ RX 570      | GCN4.0 | gfx803  | N/A     | Community  |
| AMD Radeon™ RX 570X     | GCN4.0 | gfx803  | N/A     | Community  |
| AMD Radeon™ RX 570 X2   | GCN4.0 | gfx803  | N/A     | Community  |
| AMD Radeon™ RX 560 XT   | GCN4.0 | gfx803  | N/A     | Community  |
| AMD Radeon™ RX 480      | GCN4.0 | gfx803  | N/A     | Community  |
| AMD Radeon™ RX 470      | GCN4.0 | gfx803  | N/A     | Community  |
| AMD Radeon™ R9 Fury     | GCN3.0 | gfx803  | N/A     | Community  |
| AMD Radeon™ R9 Fury X   | GCN3.0 | gfx803  | N/A     | Community  |
| AMD Radeon™ R9 Fury X2  | GCN3.0 | gfx803  | N/A     | Community  |
| AMD Radeon™ R9 Nano     | GCN3.0 | gfx803  | N/A     | Community  |

:::

::::

### Software Enablement Level

::::{tab-set}

:::{tab-item} AMD Instinct™
:sync: instinct

- **Full**: Instinct™ accelerators support the full stack available in ROCm.
Instinct™ accelerators are Linux only.

:::

:::{tab-item} AMD Radeon Pro™
:sync: radeonpro

ROCm software support varies by GPU type and Operating System. ROCm ecosystem
products are three software stack enablement levels that correspond as
described below:

- **Full**: includes all software that is part of the ROCm ecosystem. Please see
  [reference](../reference/all) for details on ROCm.
- **SDK**: includes the HIP/OpenCL runtimes and a selection of GPU libraries for
  compute.
- **Runtime**: Runtime enables the use of the HIP/OpenCL runtimes only.

:::

:::{tab-item} AMD Radeon™
:sync: radeon
ROCm software support varies by GPU type and Operating System. ROCm ecosystem
products are three software stack enablement levels that correspond as described
below:

- **Full**: includes all software that is part of the ROCm ecosystem. Please see
  [reference](../reference/all) for details on ROCm.
- **SDK**: includes the HIP/OpenCL runtimes and a selection of GPU libraries for
  compute.
- **Runtime**: Runtime enables the use of the HIP/OpenCL runtimes only.

:::

::::

### Support Status

::::{tab-set}

:::{tab-item} AMD Instinct™
:sync: instinct

- Supported - AMD enables these GPUs in our software distributions for the
  corresponding ROCm product.
- Deprecated - Support will be removed in a future release.
- Unsupported - This configuration is not enabled in our software distributions.

:::

:::{tab-item} AMD Radeon Pro™
:sync: radeonpro

GPU support levels for Radeon Pro™

- Supported - AMD enables these GPUs in our software distributions for the
  corresponding ROCm product.
- Unsupported - This configuration is not enabled in our software distributions.
- Deprecated - Support will be removed in a future release.
- Community - AMD does not enable these GPUs in our software distributions but
  end users are free to enable these GPUs themselves.

:::

:::{tab-item} AMD Radeon™
:sync: radeon

Support levels for Radeon™ GPUs:

- Supported - AMD enables these GPUs in our software distributions for the
  corresponding ROCm product.
- Unsupported - This configuration is not enabled in our software distributions.
- Deprecated - Support will be removed in a future release.
- Community - AMD does not enable these GPUs in our software distributions but
  end users are free to enable these GPUs themselves.

:::

::::

## CPU Support

ROCm requires CPUs that support PCIe™ Atomics. Modern CPUs after the release of
1st generation AMD Zen CPU and Intel™ Haswell support PCIe Atomics.

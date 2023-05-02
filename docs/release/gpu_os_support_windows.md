# GPU and OS Support (Windows)

## Windows Server 2022

::::{tab-set}

:::{tab-item} Navi 2 Series
:sync: navi2x

| Device ID | ASIC Name | [LLVM Target](https://www.llvm.org/docs/AMDGPUUsage.html#processors) | Name | HIP Runtime | HIP SDK |
|:---------:|:---------:|:--------------------------------------------------------------------:|:--------------------------------------------------------------------:|:------------------------------------:|:-----------:|
| Navi21 Pro-XL  | 73A3 | gfx1030 | AMD Radeon Pro™ W6800   | ✅ | ✅ |
| Navi23 WKS-XL  | 73E3 | gfx1032 | AMD Radeon Pro™ W6600   | ✅ | ❌ |

:::

:::{tab-item} Navi 3 Series
:sync: navi3x

| Device ID | ASIC Name | [LLVM Target](https://www.llvm.org/docs/AMDGPUUsage.html#processors) | Name | HIP Runtime | HIP SDK |
|:---------:|:---------:|:--------------------------------------------------------------------:|:--------------------------------------------------------------------:|:------------------------------------:|:-----------:|

:::

::::

## Windows 10

::::{tab-set}

:::{tab-item} Navi 2 Series 
:sync: navi2x

| Device ID | ASIC Name | [LLVM Target](https://www.llvm.org/docs/AMDGPUUsage.html#processors) | Name | HIP Runtime | HIP SDK |
|:---------:|:---------:|:--------------------------------------------------------------------:|:--------------------------------------------------------------------:|:------------------------------------:|:-----------:|
| Navi21 Pro-XTA | 73A2 | gfx1030 | AMD Radeon™ Graphics    | ✅ | ✅ |
| Navi21 Pro-XL  | 73A3 | gfx1030 | AMD Radeon Pro™ W6800   | ✅ | ✅ |
| Navi21 KXTX    | 73A5 | gfx1030 | AMD Radeon™ Graphics    | ✅ | ✅ |
| Navi21 Pro-XLA | 73AB | gfx1030 | AMD Radeon™ Graphics    | ✅ | ✅ |
| Navi21 XTXH    | 73AF | gfx1030 | AMD Radeon™ RX 6900 XT  | ✅ | ✅ |
| Navi21 XL      | 73BF | gfx1030 | AMD Radeon™ RX 6800     | ✅ | ✅ |
| Navi21 XT      | 73BF | gfx1030 | AMD Radeon™ RX 6800 XT  | ✅ | ✅ |
| Navi21 XTX     | 73BF | gfx1030 | AMD Radeon™ RX 6900 XT  | ✅ | ✅ |
| Navi21 XLE     | 73BF | gfx1030 | AMD Radeon™ Graphics    | ✅ | ✅ |
| Navi21 XB      | 73BF | gfx1030 | AMD Radeon™ Graphics    | ✅ | ✅ |
| Navi21 GLXL    |      | gfx1030 | AMD Radeon Pro™ V620    | ✅ | ✅ |
| Navi22 XTLH    | 73DF | gfx1031 | AMD Radeon™ RX 6700 XT  | ✅ | ❌ |
| Navi22 XTM     | 73DF | gfx1031 | AMD Radeon™ RX 6800M    | ✅ | ❌ |
| Navi22 XT      | 73DF | gfx1031 | AMD Radeon™ RX 6700 XT  | ✅ | ❌ |
| Navi22 XTL     | 73DF | gfx1031 | Nashira Summit          | ✅ | ❌ |
| Navi22 XM      | 73DF | gfx1031 | AMD Radeon™ RX 6700M    | ✅ | ❌ |
| Navi22 XL      | 73DF | gfx1031 | Nashira Summit          | ✅ | ❌ |
| Navi22 KXTM    | 73DF | gfx1031 | AMD Radeon™ RX 6800M    | ✅ | ❌ |
| Navi22 KXT     | 73DF | gfx1031 | AMD Radeon™ RX 6700 XT  | ✅ | ❌ |
| Navi22 XLB     | 73DF | gfx1031 | AMD TDC-235             | ✅ | ❌ |
| Navi23 GLXTA   | 73E0 | gfx1032 | AMD Radeon™ Graphics    | ✅ | ❌ |
| Navi23 WKS-XM  | 73E1 | gfx1032 | AMD Radeon Pro™ W6600M  | ✅ | ❌ |
| Navi23 WKS-XL  | 73E3 | gfx1032 | AMD Radeon Pro™ W6600   | ✅ | ❌ |
| Navi23 KXMH    | 73EF | gfx1032 | AMD Radeon™ RX 6650M    | ✅ | ❌ |
| Navi23 KXML    | 73EF | gfx1032 | AMD Radeon™ RX 6700S    | ✅ | ❌ |
| Navi23 KXTML   | 73EF | gfx1032 | AMD Radeon™ RX 6800S    | ✅ | ❌ |
| Navi23 KXT     | 73EF | gfx1032 | AMD Radeon™ Graphics    | ✅ | ❌ |
| Navi23 KXTMH   | 73EF | gfx1032 | AMD Radeon™ RX 6650M XT | ✅ | ❌ |
| Navi23 XM      | 73FF | gfx1032 | AMD Radeon™ RX 6600M    | ✅ | ❌ |
| Navi23 XL      | 73FF | gfx1032 | AMD Radeon™ Graphics    | ✅ | ❌ |
| Navi23 XT      | 73FF | gfx1032 | AMD Radeon™ Graphics    | ✅ | ❌ |
| Navi23 XM 4G   | 73FF | gfx1032 | AMD Radeon™ RX 6600S    | ✅ | ❌ |
| Navi24 XM-W    | 7421 | gfx1033 | AMD Radeon Pro™ W6500M  | ✅ | ❌ |
| Navi24 XL-W    | 7422 | gfx1033 | AMD Radeon Pro™ W6400   | ✅ | ❌ |
| Navi24 XML-W   | 7423 | gfx1033 | AMD Radeon Pro™ W6300M  | ✅ | ❌ |
| Navi24 XML     | 743F | gfx1033 | AMD Radeon™ RX 6300M    | ✅ | ❌ |
| Navi24 XM      | 743F | gfx1033 | AMD Radeon™ RX 6500M    | ✅ | ❌ |
| Navi24 XL      | 743F | gfx1033 | AMD Radeon™ Graphics    | ✅ | ❌ |
| Navi24 XT      | 743F | gfx1033 | AMD Radeon™ Graphics    | ✅ | ❌ |

:::

:::{tab-item} Navi 3 Series
:sync: navi3x

| Device ID | ASIC Name | [LLVM Target](https://www.llvm.org/docs/AMDGPUUsage.html#processors) | Name | HIP | Math Libraries |
|:---------:|:---------:|:--------------------------------------------------------------------:|:--------------------------------------------------------------------:|:------------------------------------:|:-----------:|
| Navi31 XTX     | 73A2 | gfx1100 | AMD Radeon™ RX 7900 XTX | ✅ | ❌ |
| Navi31 XT      | 73A3 | gfx1100 | AMD Radeon™ RX 7900 XT  | ✅ | ❌ |
| Navi31 XT W    | 73A5 | gfx1100 | TBD                     | ✅ | ❌ |
| Navi31 XL W    | 73AB | gfx1100 | TBD                     | ✅ | ❌ |
| Navi31 XTXH    | 73AF | gfx1100 | TBD                     | ✅ | ❌ |
| Navi31 XM      | 73BF | gfx1100 | TBD                     | ✅ | ❌ |
| Navi31 XL      | 73BF | gfx1100 | TBD                     | ✅ | ❌ |
| Navi32 XTXH    | 73BF | gfx1101 | TBD                     | ✅ | ❌ |
| Navi32 XLX     | 73BF | gfx1101 | TBD                     | ✅ | ❌ |
| Navi32 XT      | 73BF | gfx1101 | TBD                     | ✅ | ❌ |
| Navi32 XL      |      | gfx1101 | TBD                     | ✅ | ❌ |
| Navi32 XTXM    | 73DF | gfx1101 | TBD                     | ✅ | ❌ |
| Navi32 XTM     | 73DF | gfx1101 | TBD                     | ✅ | ❌ |
| Navi32 XEM     | 73DF | gfx1101 | TBD                     | ✅ | ❌ |
| Navi32 XL-W    | 73DF | gfx1101 | TBD                     | ✅ | ❌ |
| Navi32 XEM-W   | 73DF | gfx1101 | TBD                     | ✅ | ❌ |
| Navi32 GL-XL   | 73DF | gfx1101 | TBD                     | ✅ | 🚧 |
| Navi33 XTMS    | 73DF | gfx1102 | AMD Radeon™ Graphics for Laptops RX 7000  | ✅ | ❌ |
| Navi33 XLMS    | 73DF | gfx1102 | AMD Radeon™ Graphics for Laptops RX 7000  | ✅ | ❌ |
| Navi33 XTM     | 73DF | gfx1102 | AMD Radeon™ Graphics for Laptops RX 7000  | ✅ | ❌ |
| Navi33 XLM     | 73E0 | gfx1102 | AMD Radeon™ Graphics for Laptops RX 7000  | ✅ | ❌ |
| Navi33 XT      | 73E1 | gfx1102 | TBD                     | ✅ | ❌ |
| Navi33 XL      | 73E3 | gfx1102 | TBD                     | ✅ | ❌ |
| Navi33 XE      | 73EF | gfx1102 | TBD                     | ✅ | ❌ |
| Navi33 GL-XL   | 73EF | gfx1102 | TBD                     | ✅ | ❌ |
| Navi33 GL-XLM  | 73EF | gfx1102 | TBD                     | ✅ | ❌ |
| Navi33 GL-XTM  | 73EF | gfx1102 | TBD                     | ✅ | ❌ |
| Navi33 GL-XT   | 73EF | gfx1102 | TBD                     | ✅ | ❌ |

:::

::::

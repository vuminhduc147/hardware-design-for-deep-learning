// ==============================================================
// File generated on Wed Dec 18 12:19:51 +0700 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// AXILiteS
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - Channel 0 (ap_done)
//        bit 1  - Channel 1 (ap_ready)
//        others - reserved
// 0x10 : Data signal of input_0
//        bit 31~0 - input_0[31:0] (Read/Write)
// 0x14 : Data signal of input_0
//        bit 31~0 - input_0[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of input_1
//        bit 31~0 - input_1[31:0] (Read/Write)
// 0x20 : Data signal of input_1
//        bit 31~0 - input_1[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of input_2
//        bit 31~0 - input_2[31:0] (Read/Write)
// 0x2c : Data signal of input_2
//        bit 31~0 - input_2[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of input_3
//        bit 31~0 - input_3[31:0] (Read/Write)
// 0x38 : Data signal of input_3
//        bit 31~0 - input_3[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of input_4
//        bit 31~0 - input_4[31:0] (Read/Write)
// 0x44 : Data signal of input_4
//        bit 31~0 - input_4[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of kernel_0
//        bit 31~0 - kernel_0[31:0] (Read/Write)
// 0x50 : Data signal of kernel_0
//        bit 31~0 - kernel_0[63:32] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of kernel_1
//        bit 31~0 - kernel_1[31:0] (Read/Write)
// 0x5c : Data signal of kernel_1
//        bit 31~0 - kernel_1[63:32] (Read/Write)
// 0x60 : reserved
// 0x64 : Data signal of kernel_2
//        bit 31~0 - kernel_2[31:0] (Read/Write)
// 0x68 : Data signal of kernel_2
//        bit 31~0 - kernel_2[63:32] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of output_r
//        bit 31~0 - output_r[31:0] (Read/Write)
// 0x74 : Data signal of output_r
//        bit 31~0 - output_r[63:32] (Read/Write)
// 0x78 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCONV2D_CONV2D_AXILITES_ADDR_AP_CTRL       0x00
#define XCONV2D_CONV2D_AXILITES_ADDR_GIE           0x04
#define XCONV2D_CONV2D_AXILITES_ADDR_IER           0x08
#define XCONV2D_CONV2D_AXILITES_ADDR_ISR           0x0c
#define XCONV2D_CONV2D_AXILITES_ADDR_INPUT_0_DATA  0x10
#define XCONV2D_CONV2D_AXILITES_BITS_INPUT_0_DATA  64
#define XCONV2D_CONV2D_AXILITES_ADDR_INPUT_1_DATA  0x1c
#define XCONV2D_CONV2D_AXILITES_BITS_INPUT_1_DATA  64
#define XCONV2D_CONV2D_AXILITES_ADDR_INPUT_2_DATA  0x28
#define XCONV2D_CONV2D_AXILITES_BITS_INPUT_2_DATA  64
#define XCONV2D_CONV2D_AXILITES_ADDR_INPUT_3_DATA  0x34
#define XCONV2D_CONV2D_AXILITES_BITS_INPUT_3_DATA  64
#define XCONV2D_CONV2D_AXILITES_ADDR_INPUT_4_DATA  0x40
#define XCONV2D_CONV2D_AXILITES_BITS_INPUT_4_DATA  64
#define XCONV2D_CONV2D_AXILITES_ADDR_KERNEL_0_DATA 0x4c
#define XCONV2D_CONV2D_AXILITES_BITS_KERNEL_0_DATA 64
#define XCONV2D_CONV2D_AXILITES_ADDR_KERNEL_1_DATA 0x58
#define XCONV2D_CONV2D_AXILITES_BITS_KERNEL_1_DATA 64
#define XCONV2D_CONV2D_AXILITES_ADDR_KERNEL_2_DATA 0x64
#define XCONV2D_CONV2D_AXILITES_BITS_KERNEL_2_DATA 64
#define XCONV2D_CONV2D_AXILITES_ADDR_OUTPUT_R_DATA 0x70
#define XCONV2D_CONV2D_AXILITES_BITS_OUTPUT_R_DATA 64


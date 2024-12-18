// ==============================================================
// File generated on Wed Dec 18 12:19:51 +0700 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xconv2d_conv2d.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XConv2d_conv2d_CfgInitialize(XConv2d_conv2d *InstancePtr, XConv2d_conv2d_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XConv2d_conv2d_Start(XConv2d_conv2d *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_conv2d_ReadReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_AP_CTRL) & 0x80;
    XConv2d_conv2d_WriteReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XConv2d_conv2d_IsDone(XConv2d_conv2d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_conv2d_ReadReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XConv2d_conv2d_IsIdle(XConv2d_conv2d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_conv2d_ReadReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XConv2d_conv2d_IsReady(XConv2d_conv2d *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_conv2d_ReadReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XConv2d_conv2d_EnableAutoRestart(XConv2d_conv2d *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_conv2d_WriteReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_AP_CTRL, 0x80);
}

void XConv2d_conv2d_DisableAutoRestart(XConv2d_conv2d *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_conv2d_WriteReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_AP_CTRL, 0);
}

void XConv2d_conv2d_Set_input_0(XConv2d_conv2d *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_conv2d_WriteReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_INPUT_0_DATA, (u32)(Data));
    XConv2d_conv2d_WriteReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_INPUT_0_DATA + 4, (u32)(Data >> 32));
}

u64 XConv2d_conv2d_Get_input_0(XConv2d_conv2d *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_conv2d_ReadReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_INPUT_0_DATA);
    Data += (u64)XConv2d_conv2d_ReadReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_INPUT_0_DATA + 4) << 32;
    return Data;
}

void XConv2d_conv2d_Set_input_1(XConv2d_conv2d *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_conv2d_WriteReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_INPUT_1_DATA, (u32)(Data));
    XConv2d_conv2d_WriteReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_INPUT_1_DATA + 4, (u32)(Data >> 32));
}

u64 XConv2d_conv2d_Get_input_1(XConv2d_conv2d *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_conv2d_ReadReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_INPUT_1_DATA);
    Data += (u64)XConv2d_conv2d_ReadReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_INPUT_1_DATA + 4) << 32;
    return Data;
}

void XConv2d_conv2d_Set_input_2(XConv2d_conv2d *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_conv2d_WriteReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_INPUT_2_DATA, (u32)(Data));
    XConv2d_conv2d_WriteReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_INPUT_2_DATA + 4, (u32)(Data >> 32));
}

u64 XConv2d_conv2d_Get_input_2(XConv2d_conv2d *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_conv2d_ReadReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_INPUT_2_DATA);
    Data += (u64)XConv2d_conv2d_ReadReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_INPUT_2_DATA + 4) << 32;
    return Data;
}

void XConv2d_conv2d_Set_input_3(XConv2d_conv2d *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_conv2d_WriteReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_INPUT_3_DATA, (u32)(Data));
    XConv2d_conv2d_WriteReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_INPUT_3_DATA + 4, (u32)(Data >> 32));
}

u64 XConv2d_conv2d_Get_input_3(XConv2d_conv2d *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_conv2d_ReadReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_INPUT_3_DATA);
    Data += (u64)XConv2d_conv2d_ReadReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_INPUT_3_DATA + 4) << 32;
    return Data;
}

void XConv2d_conv2d_Set_input_4(XConv2d_conv2d *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_conv2d_WriteReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_INPUT_4_DATA, (u32)(Data));
    XConv2d_conv2d_WriteReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_INPUT_4_DATA + 4, (u32)(Data >> 32));
}

u64 XConv2d_conv2d_Get_input_4(XConv2d_conv2d *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_conv2d_ReadReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_INPUT_4_DATA);
    Data += (u64)XConv2d_conv2d_ReadReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_INPUT_4_DATA + 4) << 32;
    return Data;
}

void XConv2d_conv2d_Set_kernel_0(XConv2d_conv2d *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_conv2d_WriteReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_KERNEL_0_DATA, (u32)(Data));
    XConv2d_conv2d_WriteReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_KERNEL_0_DATA + 4, (u32)(Data >> 32));
}

u64 XConv2d_conv2d_Get_kernel_0(XConv2d_conv2d *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_conv2d_ReadReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_KERNEL_0_DATA);
    Data += (u64)XConv2d_conv2d_ReadReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_KERNEL_0_DATA + 4) << 32;
    return Data;
}

void XConv2d_conv2d_Set_kernel_1(XConv2d_conv2d *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_conv2d_WriteReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_KERNEL_1_DATA, (u32)(Data));
    XConv2d_conv2d_WriteReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_KERNEL_1_DATA + 4, (u32)(Data >> 32));
}

u64 XConv2d_conv2d_Get_kernel_1(XConv2d_conv2d *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_conv2d_ReadReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_KERNEL_1_DATA);
    Data += (u64)XConv2d_conv2d_ReadReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_KERNEL_1_DATA + 4) << 32;
    return Data;
}

void XConv2d_conv2d_Set_kernel_2(XConv2d_conv2d *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_conv2d_WriteReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_KERNEL_2_DATA, (u32)(Data));
    XConv2d_conv2d_WriteReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_KERNEL_2_DATA + 4, (u32)(Data >> 32));
}

u64 XConv2d_conv2d_Get_kernel_2(XConv2d_conv2d *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_conv2d_ReadReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_KERNEL_2_DATA);
    Data += (u64)XConv2d_conv2d_ReadReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_KERNEL_2_DATA + 4) << 32;
    return Data;
}

void XConv2d_conv2d_Set_output_r(XConv2d_conv2d *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_conv2d_WriteReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_OUTPUT_R_DATA, (u32)(Data));
    XConv2d_conv2d_WriteReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_OUTPUT_R_DATA + 4, (u32)(Data >> 32));
}

u64 XConv2d_conv2d_Get_output_r(XConv2d_conv2d *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XConv2d_conv2d_ReadReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_OUTPUT_R_DATA);
    Data += (u64)XConv2d_conv2d_ReadReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_OUTPUT_R_DATA + 4) << 32;
    return Data;
}

void XConv2d_conv2d_InterruptGlobalEnable(XConv2d_conv2d *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_conv2d_WriteReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_GIE, 1);
}

void XConv2d_conv2d_InterruptGlobalDisable(XConv2d_conv2d *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_conv2d_WriteReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_GIE, 0);
}

void XConv2d_conv2d_InterruptEnable(XConv2d_conv2d *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XConv2d_conv2d_ReadReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_IER);
    XConv2d_conv2d_WriteReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_IER, Register | Mask);
}

void XConv2d_conv2d_InterruptDisable(XConv2d_conv2d *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XConv2d_conv2d_ReadReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_IER);
    XConv2d_conv2d_WriteReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_IER, Register & (~Mask));
}

void XConv2d_conv2d_InterruptClear(XConv2d_conv2d *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XConv2d_conv2d_WriteReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_ISR, Mask);
}

u32 XConv2d_conv2d_InterruptGetEnabled(XConv2d_conv2d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XConv2d_conv2d_ReadReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_IER);
}

u32 XConv2d_conv2d_InterruptGetStatus(XConv2d_conv2d *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XConv2d_conv2d_ReadReg(InstancePtr->Axilites_BaseAddress, XCONV2D_CONV2D_AXILITES_ADDR_ISR);
}


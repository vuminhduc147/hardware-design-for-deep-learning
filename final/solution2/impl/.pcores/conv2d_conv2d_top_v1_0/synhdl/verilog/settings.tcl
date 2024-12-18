# ==============================================================
# File generated on Wed Dec 18 11:28:12 +0700 2024
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
#
# Settings for Vivado implementation flow
#
set top_module conv2D_conv2D
set language vhdl
set family zynq
set device xc7z020
set package clg484
set speed -1
set clock ap_clk
set fsm_ext "off"

# For customizing the implementation flow
set add_io_buffers false ;# true|false

set src_files [list \
    conv2D_conv2D.v \
    conv2D_conv2D_mul_32s_32s_32_4_1.v \
]

set pcore_syn 1
set pcore_lang verilog

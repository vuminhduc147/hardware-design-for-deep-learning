# ==============================================================
# File generated on Wed Dec 18 11:14:13 +0700 2024
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../testbench.c -cflags { -DHW_COSIM -Wno-unknown-pragmas}
add_files conv2D.c
set_part xc7z020clg484-1
create_clock -name default -period 10
set_clock_uncertainty 27% default
config_sdx -optimization_level=0
config_sdx -target=xocc
config_schedule -effort=medium
config_schedule -enable_dsp_full_reg=1
config_export -vivado_phys_opt=none
config_compile -name_max_length=256
config_compile -pipeline_loops=64
config_bind -effort=medium
config_rtl -auto_prefix=1
config_rtl -enable_maxiConservative=1
config_rtl -register_reset_num=3
config_interface -m_axi_addr64=1
set_directive_pipeline conv2D/conv2D_label1 
set_directive_pipeline conv2D/conv2D_label2 
set_directive_pipeline conv2D/conv2D_label3 
set_directive_pipeline conv2D/conv2D_label4 
set_directive_pipeline conv2D/conv2D_label1 
set_directive_pipeline conv2D/conv2D_label2 
set_directive_pipeline conv2D/conv2D_label3 
set_directive_pipeline conv2D/conv2D_label8 

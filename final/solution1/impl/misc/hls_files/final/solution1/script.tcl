############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project final
set_top conv2D
add_files conv2D.c
add_files -tb testbench.c -cflags "-DHW_COSIM -Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
config_sdx -optimization_level 0 -target xocc
config_schedule -effort medium -enable_dsp_full_reg
config_export -format ip_catalog -rtl vhdl -version 0.0.0 -vivado_phys_opt none -xo C:/Users/Admin/Downloads/btl/conv2D.xo
config_compile -name_max_length 256 -pipeline_loops 64
config_bind -effort medium
config_rtl -auto_prefix  -register_reset_num 3
config_interface -m_axi_addr64
set_clock_uncertainty 27%
source "./final/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl vhdl -format ip_catalog -version "0.0.0" -xo C:/Users/Admin/Downloads/btl/conv2D.xo

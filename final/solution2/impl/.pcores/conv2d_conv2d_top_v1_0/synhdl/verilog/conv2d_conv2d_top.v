// ==============================================================
// File generated on Wed Dec 18 11:28:12 +0700 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module conv2d_conv2d_top (
input_r_Clk_A,
input_r_Rst_A,
input_r_EN_A,
input_r_WEN_A,
input_r_Addr_A,
input_r_Dout_A,
input_r_Din_A,
input_r_Clk_B,
input_r_Rst_B,
input_r_EN_B,
input_r_WEN_B,
input_r_Addr_B,
input_r_Dout_B,
input_r_Din_B,
kernel_Clk_A,
kernel_Rst_A,
kernel_EN_A,
kernel_WEN_A,
kernel_Addr_A,
kernel_Dout_A,
kernel_Din_A,
kernel_Clk_B,
kernel_Rst_B,
kernel_EN_B,
kernel_WEN_B,
kernel_Addr_B,
kernel_Dout_B,
kernel_Din_B,
output_r_Clk_A,
output_r_Rst_A,
output_r_EN_A,
output_r_WEN_A,
output_r_Addr_A,
output_r_Dout_A,
output_r_Din_A,
aresetn,
aclk,
ap_start,
ap_ready,
ap_done,
ap_idle
);

parameter RESET_ACTIVE_LOW = 1;

output input_r_Clk_A ;
output input_r_Rst_A ;
output input_r_EN_A ;
output [4 - 1:0] input_r_WEN_A ;
output [32 - 1:0] input_r_Addr_A ;
output [32 - 1:0] input_r_Dout_A ;
input [32 - 1:0] input_r_Din_A ;
output input_r_Clk_B ;
output input_r_Rst_B ;
output input_r_EN_B ;
output [4 - 1:0] input_r_WEN_B ;
output [32 - 1:0] input_r_Addr_B ;
output [32 - 1:0] input_r_Dout_B ;
input [32 - 1:0] input_r_Din_B ;


output kernel_Clk_A ;
output kernel_Rst_A ;
output kernel_EN_A ;
output [4 - 1:0] kernel_WEN_A ;
output [32 - 1:0] kernel_Addr_A ;
output [32 - 1:0] kernel_Dout_A ;
input [32 - 1:0] kernel_Din_A ;
output kernel_Clk_B ;
output kernel_Rst_B ;
output kernel_EN_B ;
output [4 - 1:0] kernel_WEN_B ;
output [32 - 1:0] kernel_Addr_B ;
output [32 - 1:0] kernel_Dout_B ;
input [32 - 1:0] kernel_Din_B ;


output output_r_Clk_A ;
output output_r_Rst_A ;
output output_r_EN_A ;
output [4 - 1:0] output_r_WEN_A ;
output [32 - 1:0] output_r_Addr_A ;
output [32 - 1:0] output_r_Dout_A ;
input [32 - 1:0] output_r_Din_A ;

input aresetn ;

input aclk ;

input ap_start ;
output ap_ready ;
output ap_done ;
output ap_idle ;


wire input_r_Clk_A;
wire input_r_Rst_A;
wire input_r_EN_A;
wire [4 - 1:0] input_r_WEN_A;
wire [32 - 1:0] input_r_Addr_A;
wire [32 - 1:0] input_r_Dout_A;
wire [32 - 1:0] input_r_Din_A;
wire input_r_Clk_B;
wire input_r_Rst_B;
wire input_r_EN_B;
wire [4 - 1:0] input_r_WEN_B;
wire [32 - 1:0] input_r_Addr_B;
wire [32 - 1:0] input_r_Dout_B;
wire [32 - 1:0] input_r_Din_B;


wire kernel_Clk_A;
wire kernel_Rst_A;
wire kernel_EN_A;
wire [4 - 1:0] kernel_WEN_A;
wire [32 - 1:0] kernel_Addr_A;
wire [32 - 1:0] kernel_Dout_A;
wire [32 - 1:0] kernel_Din_A;
wire kernel_Clk_B;
wire kernel_Rst_B;
wire kernel_EN_B;
wire [4 - 1:0] kernel_WEN_B;
wire [32 - 1:0] kernel_Addr_B;
wire [32 - 1:0] kernel_Dout_B;
wire [32 - 1:0] kernel_Din_B;


wire output_r_Clk_A;
wire output_r_Rst_A;
wire output_r_EN_A;
wire [4 - 1:0] output_r_WEN_A;
wire [32 - 1:0] output_r_Addr_A;
wire [32 - 1:0] output_r_Dout_A;
wire [32 - 1:0] output_r_Din_A;

wire aresetn;



wire [5 - 1:0] sig_conv2D_conv2D_input_r_address0;
wire sig_conv2D_conv2D_input_r_ce0;
wire [32 - 1:0] sig_conv2D_conv2D_input_r_q0;
wire [5 - 1:0] sig_conv2D_conv2D_input_r_address1;
wire sig_conv2D_conv2D_input_r_ce1;
wire [32 - 1:0] sig_conv2D_conv2D_input_r_q1;


wire [4 - 1:0] sig_conv2D_conv2D_kernel_address0;
wire sig_conv2D_conv2D_kernel_ce0;
wire [32 - 1:0] sig_conv2D_conv2D_kernel_q0;
wire [4 - 1:0] sig_conv2D_conv2D_kernel_address1;
wire sig_conv2D_conv2D_kernel_ce1;
wire [32 - 1:0] sig_conv2D_conv2D_kernel_q1;


wire [4 - 1:0] sig_conv2D_conv2D_output_r_address0;
wire sig_conv2D_conv2D_output_r_ce0;
wire sig_conv2D_conv2D_output_r_we0;
wire [32 - 1:0] sig_conv2D_conv2D_output_r_d0;

wire sig_conv2D_conv2D_ap_rst;



conv2D_conv2D conv2D_conv2D_U(
    .input_r_address0(sig_conv2D_conv2D_input_r_address0),
    .input_r_ce0(sig_conv2D_conv2D_input_r_ce0),
    .input_r_q0(sig_conv2D_conv2D_input_r_q0),
    .input_r_address1(sig_conv2D_conv2D_input_r_address1),
    .input_r_ce1(sig_conv2D_conv2D_input_r_ce1),
    .input_r_q1(sig_conv2D_conv2D_input_r_q1),
    .kernel_address0(sig_conv2D_conv2D_kernel_address0),
    .kernel_ce0(sig_conv2D_conv2D_kernel_ce0),
    .kernel_q0(sig_conv2D_conv2D_kernel_q0),
    .kernel_address1(sig_conv2D_conv2D_kernel_address1),
    .kernel_ce1(sig_conv2D_conv2D_kernel_ce1),
    .kernel_q1(sig_conv2D_conv2D_kernel_q1),
    .output_r_address0(sig_conv2D_conv2D_output_r_address0),
    .output_r_ce0(sig_conv2D_conv2D_output_r_ce0),
    .output_r_we0(sig_conv2D_conv2D_output_r_we0),
    .output_r_d0(sig_conv2D_conv2D_output_r_d0),
    .ap_rst(sig_conv2D_conv2D_ap_rst),
    .ap_clk(aclk),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle)
);

conv2D_conv2D_input_r_if conv2D_conv2D_input_r_if_U(
    .clk(aclk),
    .reset(sig_conv2D_conv2D_ap_rst_n),
    .input_r_address0(sig_conv2D_conv2D_input_r_address0),
    .input_r_ce0(sig_conv2D_conv2D_input_r_ce0),
    .input_r_q0(sig_conv2D_conv2D_input_r_q0),
    .input_r_address1(sig_conv2D_conv2D_input_r_address1),
    .input_r_ce1(sig_conv2D_conv2D_input_r_ce1),
    .input_r_q1(sig_conv2D_conv2D_input_r_q1),
    .Clk_A(input_r_Clk_A),
    .Rst_A(input_r_Rst_A),
    .EN_A(input_r_EN_A),
    .WEN_A(input_r_WEN_A),
    .Addr_A(input_r_Addr_A),
    .Dout_A(input_r_Dout_A),
    .Din_A(input_r_Din_A),
    .Clk_B(input_r_Clk_B),
    .Rst_B(input_r_Rst_B),
    .EN_B(input_r_EN_B),
    .WEN_B(input_r_WEN_B),
    .Addr_B(input_r_Addr_B),
    .Dout_B(input_r_Dout_B),
    .Din_B(input_r_Din_B));

conv2D_conv2D_kernel_if conv2D_conv2D_kernel_if_U(
    .clk(aclk),
    .reset(sig_conv2D_conv2D_ap_rst_n),
    .kernel_address0(sig_conv2D_conv2D_kernel_address0),
    .kernel_ce0(sig_conv2D_conv2D_kernel_ce0),
    .kernel_q0(sig_conv2D_conv2D_kernel_q0),
    .kernel_address1(sig_conv2D_conv2D_kernel_address1),
    .kernel_ce1(sig_conv2D_conv2D_kernel_ce1),
    .kernel_q1(sig_conv2D_conv2D_kernel_q1),
    .Clk_A(kernel_Clk_A),
    .Rst_A(kernel_Rst_A),
    .EN_A(kernel_EN_A),
    .WEN_A(kernel_WEN_A),
    .Addr_A(kernel_Addr_A),
    .Dout_A(kernel_Dout_A),
    .Din_A(kernel_Din_A),
    .Clk_B(kernel_Clk_B),
    .Rst_B(kernel_Rst_B),
    .EN_B(kernel_EN_B),
    .WEN_B(kernel_WEN_B),
    .Addr_B(kernel_Addr_B),
    .Dout_B(kernel_Dout_B),
    .Din_B(kernel_Din_B));

conv2D_conv2D_output_r_if conv2D_conv2D_output_r_if_U(
    .clk(aclk),
    .reset(sig_conv2D_conv2D_ap_rst_n),
    .output_r_address0(sig_conv2D_conv2D_output_r_address0),
    .output_r_ce0(sig_conv2D_conv2D_output_r_ce0),
    .output_r_we0(sig_conv2D_conv2D_output_r_we0),
    .output_r_d0(sig_conv2D_conv2D_output_r_d0),
    .Clk_A(output_r_Clk_A),
    .Rst_A(output_r_Rst_A),
    .EN_A(output_r_EN_A),
    .WEN_A(output_r_WEN_A),
    .Addr_A(output_r_Addr_A),
    .Dout_A(output_r_Dout_A),
    .Din_A(output_r_Din_A));

conv2D_conv2D_ap_rst_if #(
    .RESET_ACTIVE_LOW(RESET_ACTIVE_LOW))
ap_rst_if_U(
    .dout(sig_conv2D_conv2D_ap_rst),
    .din(aresetn));

endmodule

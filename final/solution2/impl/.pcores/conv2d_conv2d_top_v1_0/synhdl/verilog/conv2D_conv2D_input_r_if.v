// ==============================================================
// File generated on Wed Dec 18 11:28:12 +0700 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1ns/1ps

module conv2D_conv2D_input_r_if (
    // system singals
    input  wire        clk,
    input  wire        reset,
    // user signals
    input  wire [4:0]  input_r_address0,
    input  wire        input_r_ce0,
    output wire [31:0] input_r_q0,
    input  wire [4:0]  input_r_address1,
    input  wire        input_r_ce1,
    output wire [31:0] input_r_q1,
    // bus signals
    output wire        Clk_A,
    output wire        Rst_A,
    output wire        EN_A,
    output wire [3:0]  WEN_A,
    output wire [31:0] Addr_A,
    output wire [31:0] Dout_A,
    input  wire [31:0] Din_A,
    output wire        Clk_B,
    output wire        Rst_B,
    output wire        EN_B,
    output wire [3:0]  WEN_B,
    output wire [31:0] Addr_B,
    output wire [31:0] Dout_B,
    input  wire [31:0] Din_B
);
//------------------------Body---------------------------
assign Clk_A      = clk;
assign Rst_A      = reset;
assign EN_A       = input_r_ce0;
assign Addr_A     = {input_r_address0, 2'b0};
assign WEN_A      = 4'b0;
assign Dout_A     = 32'b0;
assign input_r_q0 = Din_A[31:0];
assign Clk_B      = clk;
assign Rst_B      = reset;
assign EN_B       = input_r_ce1;
assign Addr_B     = {input_r_address1, 2'b0};
assign input_r_q1 = Din_B[31:0];

endmodule

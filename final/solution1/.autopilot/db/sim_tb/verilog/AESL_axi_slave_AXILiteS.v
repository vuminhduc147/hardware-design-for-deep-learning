// ==============================================================
// File generated on Wed Dec 18 23:06:03 +0700 2024
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_slave_AXILiteS (
    clk,
    reset,
    TRAN_s_axi_AXILiteS_AWADDR,
    TRAN_s_axi_AXILiteS_AWVALID,
    TRAN_s_axi_AXILiteS_AWREADY,
    TRAN_s_axi_AXILiteS_WVALID,
    TRAN_s_axi_AXILiteS_WREADY,
    TRAN_s_axi_AXILiteS_WDATA,
    TRAN_s_axi_AXILiteS_WSTRB,
    TRAN_s_axi_AXILiteS_ARADDR,
    TRAN_s_axi_AXILiteS_ARVALID,
    TRAN_s_axi_AXILiteS_ARREADY,
    TRAN_s_axi_AXILiteS_RVALID,
    TRAN_s_axi_AXILiteS_RREADY,
    TRAN_s_axi_AXILiteS_RDATA,
    TRAN_s_axi_AXILiteS_RRESP,
    TRAN_s_axi_AXILiteS_BVALID,
    TRAN_s_axi_AXILiteS_BREADY,
    TRAN_s_axi_AXILiteS_BRESP,
    TRAN_input_0,
    TRAN_input_1,
    TRAN_input_2,
    TRAN_input_3,
    TRAN_input_4,
    TRAN_kernel_0,
    TRAN_kernel_1,
    TRAN_kernel_2,
    TRAN_output_r,
    TRAN_AXILiteS_write_data_finish,
    TRAN_AXILiteS_start_in,
    TRAN_AXILiteS_idle_out,
    TRAN_AXILiteS_ready_out,
    TRAN_AXILiteS_ready_in,
    TRAN_AXILiteS_done_out,
    TRAN_AXILiteS_write_start_in   ,
    TRAN_AXILiteS_write_start_finish,
    TRAN_AXILiteS_interrupt,
    TRAN_AXILiteS_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_IN_input_0 "./c.conv2D_conv2D.autotvin_input_0.dat"
`define TV_IN_input_1 "./c.conv2D_conv2D.autotvin_input_1.dat"
`define TV_IN_input_2 "./c.conv2D_conv2D.autotvin_input_2.dat"
`define TV_IN_input_3 "./c.conv2D_conv2D.autotvin_input_3.dat"
`define TV_IN_input_4 "./c.conv2D_conv2D.autotvin_input_4.dat"
`define TV_IN_kernel_0 "./c.conv2D_conv2D.autotvin_kernel_0.dat"
`define TV_IN_kernel_1 "./c.conv2D_conv2D.autotvin_kernel_1.dat"
`define TV_IN_kernel_2 "./c.conv2D_conv2D.autotvin_kernel_2.dat"
`define TV_IN_output_r "./c.conv2D_conv2D.autotvin_output_r.dat"
parameter ADDR_WIDTH = 7;
parameter DATA_WIDTH = 32;
parameter input_0_DEPTH = 1;
reg [31 : 0] input_0_OPERATE_DEPTH = 1;
parameter input_0_c_bitwidth = 64;
parameter input_1_DEPTH = 1;
reg [31 : 0] input_1_OPERATE_DEPTH = 1;
parameter input_1_c_bitwidth = 64;
parameter input_2_DEPTH = 1;
reg [31 : 0] input_2_OPERATE_DEPTH = 1;
parameter input_2_c_bitwidth = 64;
parameter input_3_DEPTH = 1;
reg [31 : 0] input_3_OPERATE_DEPTH = 1;
parameter input_3_c_bitwidth = 64;
parameter input_4_DEPTH = 1;
reg [31 : 0] input_4_OPERATE_DEPTH = 1;
parameter input_4_c_bitwidth = 64;
parameter kernel_0_DEPTH = 1;
reg [31 : 0] kernel_0_OPERATE_DEPTH = 1;
parameter kernel_0_c_bitwidth = 64;
parameter kernel_1_DEPTH = 1;
reg [31 : 0] kernel_1_OPERATE_DEPTH = 1;
parameter kernel_1_c_bitwidth = 64;
parameter kernel_2_DEPTH = 1;
reg [31 : 0] kernel_2_OPERATE_DEPTH = 1;
parameter kernel_2_c_bitwidth = 64;
parameter output_r_DEPTH = 1;
reg [31 : 0] output_r_OPERATE_DEPTH = 1;
parameter output_r_c_bitwidth = 64;
parameter START_ADDR = 0;
parameter conv2D_continue_addr = 0;
parameter conv2D_auto_start_addr = 0;
parameter input_0_data_in_addr = 16;
parameter input_1_data_in_addr = 28;
parameter input_2_data_in_addr = 40;
parameter input_3_data_in_addr = 52;
parameter input_4_data_in_addr = 64;
parameter kernel_0_data_in_addr = 76;
parameter kernel_1_data_in_addr = 88;
parameter kernel_2_data_in_addr = 100;
parameter output_r_data_in_addr = 112;
parameter STATUS_ADDR = 0;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_AXILiteS_AWADDR;
output  TRAN_s_axi_AXILiteS_AWVALID;
input  TRAN_s_axi_AXILiteS_AWREADY;
output  TRAN_s_axi_AXILiteS_WVALID;
input  TRAN_s_axi_AXILiteS_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_AXILiteS_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_AXILiteS_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_AXILiteS_ARADDR;
output  TRAN_s_axi_AXILiteS_ARVALID;
input  TRAN_s_axi_AXILiteS_ARREADY;
input  TRAN_s_axi_AXILiteS_RVALID;
output  TRAN_s_axi_AXILiteS_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_AXILiteS_RDATA;
input [2 - 1 : 0] TRAN_s_axi_AXILiteS_RRESP;
input  TRAN_s_axi_AXILiteS_BVALID;
output  TRAN_s_axi_AXILiteS_BREADY;
input [2 - 1 : 0] TRAN_s_axi_AXILiteS_BRESP;
input    [64 - 1 : 0] TRAN_input_0;
input    [64 - 1 : 0] TRAN_input_1;
input    [64 - 1 : 0] TRAN_input_2;
input    [64 - 1 : 0] TRAN_input_3;
input    [64 - 1 : 0] TRAN_input_4;
input    [64 - 1 : 0] TRAN_kernel_0;
input    [64 - 1 : 0] TRAN_kernel_1;
input    [64 - 1 : 0] TRAN_kernel_2;
input    [64 - 1 : 0] TRAN_output_r;
output TRAN_AXILiteS_write_data_finish;
input     clk;
input     reset;
input     TRAN_AXILiteS_start_in;
output    TRAN_AXILiteS_done_out;
output    TRAN_AXILiteS_ready_out;
input     TRAN_AXILiteS_ready_in;
output    TRAN_AXILiteS_idle_out;
input  TRAN_AXILiteS_write_start_in   ;
output TRAN_AXILiteS_write_start_finish;
input     TRAN_AXILiteS_interrupt;
input     TRAN_AXILiteS_transaction_done_in;

reg [ADDR_WIDTH - 1 : 0] AWADDR_reg = 0;
reg  AWVALID_reg = 0;
reg  WVALID_reg = 0;
reg [DATA_WIDTH - 1 : 0] WDATA_reg = 0;
reg [DATA_WIDTH/8 - 1 : 0] WSTRB_reg = 0;
reg [ADDR_WIDTH - 1 : 0] ARADDR_reg = 0;
reg  ARVALID_reg = 0;
reg  RREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] RDATA_reg = 0;
reg  BREADY_reg = 0;
reg [input_0_c_bitwidth - 1 : 0] reg_input_0;
reg input_0_write_data_finish;
reg [input_1_c_bitwidth - 1 : 0] reg_input_1;
reg input_1_write_data_finish;
reg [input_2_c_bitwidth - 1 : 0] reg_input_2;
reg input_2_write_data_finish;
reg [input_3_c_bitwidth - 1 : 0] reg_input_3;
reg input_3_write_data_finish;
reg [input_4_c_bitwidth - 1 : 0] reg_input_4;
reg input_4_write_data_finish;
reg [kernel_0_c_bitwidth - 1 : 0] reg_kernel_0;
reg kernel_0_write_data_finish;
reg [kernel_1_c_bitwidth - 1 : 0] reg_kernel_1;
reg kernel_1_write_data_finish;
reg [kernel_2_c_bitwidth - 1 : 0] reg_kernel_2;
reg kernel_2_write_data_finish;
reg [output_r_c_bitwidth - 1 : 0] reg_output_r;
reg output_r_write_data_finish;
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;
reg process_0_finish = 0;
reg process_1_finish = 0;
reg process_2_finish = 0;
reg process_3_finish = 0;
reg process_4_finish = 0;
reg process_5_finish = 0;
reg process_6_finish = 0;
reg process_7_finish = 0;
reg process_8_finish = 0;
reg process_9_finish = 0;
reg process_10_finish = 0;
//write input_0 reg
reg [31 : 0] write_input_0_count = 0;
reg write_input_0_run_flag = 0;
reg write_one_input_0_data_done = 0;
//write input_1 reg
reg [31 : 0] write_input_1_count = 0;
reg write_input_1_run_flag = 0;
reg write_one_input_1_data_done = 0;
//write input_2 reg
reg [31 : 0] write_input_2_count = 0;
reg write_input_2_run_flag = 0;
reg write_one_input_2_data_done = 0;
//write input_3 reg
reg [31 : 0] write_input_3_count = 0;
reg write_input_3_run_flag = 0;
reg write_one_input_3_data_done = 0;
//write input_4 reg
reg [31 : 0] write_input_4_count = 0;
reg write_input_4_run_flag = 0;
reg write_one_input_4_data_done = 0;
//write kernel_0 reg
reg [31 : 0] write_kernel_0_count = 0;
reg write_kernel_0_run_flag = 0;
reg write_one_kernel_0_data_done = 0;
//write kernel_1 reg
reg [31 : 0] write_kernel_1_count = 0;
reg write_kernel_1_run_flag = 0;
reg write_one_kernel_1_data_done = 0;
//write kernel_2 reg
reg [31 : 0] write_kernel_2_count = 0;
reg write_kernel_2_run_flag = 0;
reg write_one_kernel_2_data_done = 0;
//write output_r reg
reg [31 : 0] write_output_r_count = 0;
reg write_output_r_run_flag = 0;
reg write_one_output_r_data_done = 0;
reg [31 : 0] write_start_count = 0;
reg write_start_run_flag = 0;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_AXILiteS_AWADDR = AWADDR_reg;
assign TRAN_s_axi_AXILiteS_AWVALID = AWVALID_reg;
assign TRAN_s_axi_AXILiteS_WVALID = WVALID_reg;
assign TRAN_s_axi_AXILiteS_WDATA = WDATA_reg;
assign TRAN_s_axi_AXILiteS_WSTRB = WSTRB_reg;
assign TRAN_s_axi_AXILiteS_ARADDR = ARADDR_reg;
assign TRAN_s_axi_AXILiteS_ARVALID = ARVALID_reg;
assign TRAN_s_axi_AXILiteS_RREADY = RREADY_reg;
assign TRAN_s_axi_AXILiteS_BREADY = BREADY_reg;
assign TRAN_AXILiteS_write_start_finish = AESL_write_start_finish;
assign TRAN_AXILiteS_done_out = AESL_done_index_reg;
assign TRAN_AXILiteS_ready_out = AESL_ready_out_index_reg;
assign TRAN_AXILiteS_idle_out = AESL_idle_index_reg;
assign TRAN_AXILiteS_write_data_finish = 1 & input_0_write_data_finish & input_1_write_data_finish & input_2_write_data_finish & input_3_write_data_finish & input_4_write_data_finish & kernel_0_write_data_finish & kernel_1_write_data_finish & kernel_2_write_data_finish & output_r_write_data_finish;
always @(TRAN_AXILiteS_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_AXILiteS_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish or process_2_finish or process_3_finish or process_4_finish or process_5_finish or process_6_finish or process_7_finish or process_8_finish or process_9_finish or process_10_finish ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
    else if (ongoing_process_number == 0 && process_0_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 1 && process_1_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 2 && process_2_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 3 && process_3_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 4 && process_4_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 5 && process_5_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 6 && process_6_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 7 && process_7_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 8 && process_8_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 9 && process_9_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 10 && process_10_finish == 1) begin
            ongoing_process_number <= 0;
    end
end

always @(TRAN_input_0) 
begin
    reg_input_0 = TRAN_input_0;
end
always @(TRAN_input_1) 
begin
    reg_input_1 = TRAN_input_1;
end
always @(TRAN_input_2) 
begin
    reg_input_2 = TRAN_input_2;
end
always @(TRAN_input_3) 
begin
    reg_input_3 = TRAN_input_3;
end
always @(TRAN_input_4) 
begin
    reg_input_4 = TRAN_input_4;
end
always @(TRAN_kernel_0) 
begin
    reg_kernel_0 = TRAN_kernel_0;
end
always @(TRAN_kernel_1) 
begin
    reg_kernel_1 = TRAN_kernel_1;
end
always @(TRAN_kernel_2) 
begin
    reg_kernel_2 = TRAN_kernel_2;
end
always @(TRAN_output_r) 
begin
    reg_output_r = TRAN_output_r;
end
task count_c_data_four_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer i;
begin
    factor = 32;
    for (i = 1; i <= 32; i = i + 1) begin
        if (bitwidth <= factor && bitwidth > factor - 32) begin
            num = i;
        end
        factor = factor + 32;
    end
end    
endtask

task count_seperate_factor_by_bitwidth;
input  integer bitwidth;
output integer factor;
begin
    if (bitwidth <= 8 ) begin
        factor=4;
    end
    if (bitwidth <= 16 & bitwidth > 8 ) begin
        factor=2;
    end
    if (bitwidth <= 32 & bitwidth > 16 ) begin
        factor=1;
    end
    if (bitwidth <= 1024 & bitwidth > 32 ) begin
        factor=1;
    end
end    
endtask

task count_operate_depth_by_bitwidth_and_depth;
input  integer bitwidth;
input  integer depth;
output integer operate_depth;
integer factor;
integer remain;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth = depth / factor;
    remain = depth % factor;
    if (remain > 0) begin
        operate_depth = operate_depth + 1;
    end
end    
endtask

task write; /*{{{*/
    input  reg [ADDR_WIDTH - 1:0] waddr;   // write address
    input  reg [DATA_WIDTH - 1:0] wdata;   // write data
    output reg wresp;
    reg aw_flag;
    reg w_flag;
    reg [DATA_WIDTH/8 - 1:0] wstrb_reg;
    integer i;
begin 
    wresp = 0;
    aw_flag = 0;
    w_flag = 0;
//=======================one single write operate======================
    AWADDR_reg <= waddr;
    AWVALID_reg <= 1;
    WDATA_reg <= wdata;
    WVALID_reg <= 1;
    for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
        wstrb_reg [i] = 1;
    end    
    WSTRB_reg <= wstrb_reg;
    while (!(aw_flag && w_flag)) begin
        @(posedge clk);
        if (aw_flag != 1)
            aw_flag = TRAN_s_axi_AXILiteS_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_AXILiteS_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_AXILiteS_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_AXILiteS_BRESP === 2'b00) begin
        wresp = 1;
        //input success. in fact BRESP is always 2'b00
    end   
//=======================one single write operate======================

end
endtask/*}}}*/

task read (/*{{{*/
    input  [ADDR_WIDTH - 1:0] raddr ,   // write address
    output [DATA_WIDTH - 1:0] RDATA_result ,
    output rresp
);
begin 
    rresp = 0;
//=======================one single read operate======================
    ARADDR_reg <= raddr;
    ARVALID_reg <= 1;
    while (TRAN_s_axi_AXILiteS_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_AXILiteS_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_AXILiteS_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_AXILiteS_RRESP === 2'b00 ) begin
        rresp <= 1;
        //output success. in fact RRESP is always 2'b00
    end  
    @(posedge clk);

//=======================one single read operate end======================

end
endtask/*}}}*/

initial begin : ready_initial_process
    ready_initial = 0;
    wait(reset === 1);
    @(posedge clk);
    ready_initial = 1;
    @(posedge clk);
    ready_initial = 0;
end

initial begin : update_status
    integer process_num ;
    integer read_status_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 0;
    while (1) begin
        process_0_finish = 0;
        AESL_done_index_reg         <= 0;
        AESL_ready_out_index_reg        <= 0;
        if (ongoing_process_number === process_num && process_busy === 0) begin
            process_busy = 1;
            read (STATUS_ADDR, RDATA_reg, read_status_resp);
                AESL_done_index_reg         <= RDATA_reg[1 : 1];
                AESL_ready_out_index_reg    <= RDATA_reg[1 : 1];
                AESL_idle_index_reg         <= RDATA_reg[2 : 2];
            process_0_finish = 1;
            process_busy = 0;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        input_0_write_data_finish <= 0;
        write_input_0_run_flag <= 0; 
        write_input_0_count = 0;
        count_operate_depth_by_bitwidth_and_depth (input_0_c_bitwidth, input_0_DEPTH, input_0_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            input_0_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_input_0_run_flag <= 1; 
            write_input_0_count = 0;
        end
        if (write_one_input_0_data_done === 1) begin
            write_input_0_count = write_input_0_count + 1;
            if (write_input_0_count == input_0_OPERATE_DEPTH) begin
                write_input_0_run_flag <= 0; 
                input_0_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_input_0
    integer write_input_0_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] input_0_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = input_0_c_bitwidth;
    process_num = 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_1_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_input_0_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write input_0 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (input_0_c_bitwidth < 32) begin
                        input_0_data_tmp_reg = reg_input_0;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < input_0_c_bitwidth) begin
                                input_0_data_tmp_reg[j] = reg_input_0[i*32 + j];
                            end
                            else begin
                                input_0_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (input_0_data_in_addr + write_input_0_count * four_byte_num * 4 + i * 4, input_0_data_tmp_reg, write_input_0_resp);
                end
                process_busy = 0;
                write_one_input_0_data_done <= 1;
                @(posedge clk);
                write_one_input_0_data_done <= 0;
            end   
            process_1_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        input_1_write_data_finish <= 0;
        write_input_1_run_flag <= 0; 
        write_input_1_count = 0;
        count_operate_depth_by_bitwidth_and_depth (input_1_c_bitwidth, input_1_DEPTH, input_1_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            input_1_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_input_1_run_flag <= 1; 
            write_input_1_count = 0;
        end
        if (write_one_input_1_data_done === 1) begin
            write_input_1_count = write_input_1_count + 1;
            if (write_input_1_count == input_1_OPERATE_DEPTH) begin
                write_input_1_run_flag <= 0; 
                input_1_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_input_1
    integer write_input_1_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] input_1_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = input_1_c_bitwidth;
    process_num = 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_2_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_input_1_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write input_1 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (input_1_c_bitwidth < 32) begin
                        input_1_data_tmp_reg = reg_input_1;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < input_1_c_bitwidth) begin
                                input_1_data_tmp_reg[j] = reg_input_1[i*32 + j];
                            end
                            else begin
                                input_1_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (input_1_data_in_addr + write_input_1_count * four_byte_num * 4 + i * 4, input_1_data_tmp_reg, write_input_1_resp);
                end
                process_busy = 0;
                write_one_input_1_data_done <= 1;
                @(posedge clk);
                write_one_input_1_data_done <= 0;
            end   
            process_2_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        input_2_write_data_finish <= 0;
        write_input_2_run_flag <= 0; 
        write_input_2_count = 0;
        count_operate_depth_by_bitwidth_and_depth (input_2_c_bitwidth, input_2_DEPTH, input_2_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            input_2_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_input_2_run_flag <= 1; 
            write_input_2_count = 0;
        end
        if (write_one_input_2_data_done === 1) begin
            write_input_2_count = write_input_2_count + 1;
            if (write_input_2_count == input_2_OPERATE_DEPTH) begin
                write_input_2_run_flag <= 0; 
                input_2_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_input_2
    integer write_input_2_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] input_2_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = input_2_c_bitwidth;
    process_num = 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_3_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_input_2_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write input_2 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (input_2_c_bitwidth < 32) begin
                        input_2_data_tmp_reg = reg_input_2;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < input_2_c_bitwidth) begin
                                input_2_data_tmp_reg[j] = reg_input_2[i*32 + j];
                            end
                            else begin
                                input_2_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (input_2_data_in_addr + write_input_2_count * four_byte_num * 4 + i * 4, input_2_data_tmp_reg, write_input_2_resp);
                end
                process_busy = 0;
                write_one_input_2_data_done <= 1;
                @(posedge clk);
                write_one_input_2_data_done <= 0;
            end   
            process_3_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        input_3_write_data_finish <= 0;
        write_input_3_run_flag <= 0; 
        write_input_3_count = 0;
        count_operate_depth_by_bitwidth_and_depth (input_3_c_bitwidth, input_3_DEPTH, input_3_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            input_3_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_input_3_run_flag <= 1; 
            write_input_3_count = 0;
        end
        if (write_one_input_3_data_done === 1) begin
            write_input_3_count = write_input_3_count + 1;
            if (write_input_3_count == input_3_OPERATE_DEPTH) begin
                write_input_3_run_flag <= 0; 
                input_3_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_input_3
    integer write_input_3_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] input_3_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = input_3_c_bitwidth;
    process_num = 4;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_4_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_input_3_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write input_3 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (input_3_c_bitwidth < 32) begin
                        input_3_data_tmp_reg = reg_input_3;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < input_3_c_bitwidth) begin
                                input_3_data_tmp_reg[j] = reg_input_3[i*32 + j];
                            end
                            else begin
                                input_3_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (input_3_data_in_addr + write_input_3_count * four_byte_num * 4 + i * 4, input_3_data_tmp_reg, write_input_3_resp);
                end
                process_busy = 0;
                write_one_input_3_data_done <= 1;
                @(posedge clk);
                write_one_input_3_data_done <= 0;
            end   
            process_4_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        input_4_write_data_finish <= 0;
        write_input_4_run_flag <= 0; 
        write_input_4_count = 0;
        count_operate_depth_by_bitwidth_and_depth (input_4_c_bitwidth, input_4_DEPTH, input_4_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            input_4_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_input_4_run_flag <= 1; 
            write_input_4_count = 0;
        end
        if (write_one_input_4_data_done === 1) begin
            write_input_4_count = write_input_4_count + 1;
            if (write_input_4_count == input_4_OPERATE_DEPTH) begin
                write_input_4_run_flag <= 0; 
                input_4_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_input_4
    integer write_input_4_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] input_4_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = input_4_c_bitwidth;
    process_num = 5;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_5_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_input_4_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write input_4 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (input_4_c_bitwidth < 32) begin
                        input_4_data_tmp_reg = reg_input_4;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < input_4_c_bitwidth) begin
                                input_4_data_tmp_reg[j] = reg_input_4[i*32 + j];
                            end
                            else begin
                                input_4_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (input_4_data_in_addr + write_input_4_count * four_byte_num * 4 + i * 4, input_4_data_tmp_reg, write_input_4_resp);
                end
                process_busy = 0;
                write_one_input_4_data_done <= 1;
                @(posedge clk);
                write_one_input_4_data_done <= 0;
            end   
            process_5_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        kernel_0_write_data_finish <= 0;
        write_kernel_0_run_flag <= 0; 
        write_kernel_0_count = 0;
        count_operate_depth_by_bitwidth_and_depth (kernel_0_c_bitwidth, kernel_0_DEPTH, kernel_0_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            kernel_0_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_kernel_0_run_flag <= 1; 
            write_kernel_0_count = 0;
        end
        if (write_one_kernel_0_data_done === 1) begin
            write_kernel_0_count = write_kernel_0_count + 1;
            if (write_kernel_0_count == kernel_0_OPERATE_DEPTH) begin
                write_kernel_0_run_flag <= 0; 
                kernel_0_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_kernel_0
    integer write_kernel_0_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] kernel_0_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = kernel_0_c_bitwidth;
    process_num = 6;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_6_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_kernel_0_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write kernel_0 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (kernel_0_c_bitwidth < 32) begin
                        kernel_0_data_tmp_reg = reg_kernel_0;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < kernel_0_c_bitwidth) begin
                                kernel_0_data_tmp_reg[j] = reg_kernel_0[i*32 + j];
                            end
                            else begin
                                kernel_0_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (kernel_0_data_in_addr + write_kernel_0_count * four_byte_num * 4 + i * 4, kernel_0_data_tmp_reg, write_kernel_0_resp);
                end
                process_busy = 0;
                write_one_kernel_0_data_done <= 1;
                @(posedge clk);
                write_one_kernel_0_data_done <= 0;
            end   
            process_6_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        kernel_1_write_data_finish <= 0;
        write_kernel_1_run_flag <= 0; 
        write_kernel_1_count = 0;
        count_operate_depth_by_bitwidth_and_depth (kernel_1_c_bitwidth, kernel_1_DEPTH, kernel_1_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            kernel_1_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_kernel_1_run_flag <= 1; 
            write_kernel_1_count = 0;
        end
        if (write_one_kernel_1_data_done === 1) begin
            write_kernel_1_count = write_kernel_1_count + 1;
            if (write_kernel_1_count == kernel_1_OPERATE_DEPTH) begin
                write_kernel_1_run_flag <= 0; 
                kernel_1_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_kernel_1
    integer write_kernel_1_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] kernel_1_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = kernel_1_c_bitwidth;
    process_num = 7;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_7_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_kernel_1_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write kernel_1 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (kernel_1_c_bitwidth < 32) begin
                        kernel_1_data_tmp_reg = reg_kernel_1;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < kernel_1_c_bitwidth) begin
                                kernel_1_data_tmp_reg[j] = reg_kernel_1[i*32 + j];
                            end
                            else begin
                                kernel_1_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (kernel_1_data_in_addr + write_kernel_1_count * four_byte_num * 4 + i * 4, kernel_1_data_tmp_reg, write_kernel_1_resp);
                end
                process_busy = 0;
                write_one_kernel_1_data_done <= 1;
                @(posedge clk);
                write_one_kernel_1_data_done <= 0;
            end   
            process_7_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        kernel_2_write_data_finish <= 0;
        write_kernel_2_run_flag <= 0; 
        write_kernel_2_count = 0;
        count_operate_depth_by_bitwidth_and_depth (kernel_2_c_bitwidth, kernel_2_DEPTH, kernel_2_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            kernel_2_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_kernel_2_run_flag <= 1; 
            write_kernel_2_count = 0;
        end
        if (write_one_kernel_2_data_done === 1) begin
            write_kernel_2_count = write_kernel_2_count + 1;
            if (write_kernel_2_count == kernel_2_OPERATE_DEPTH) begin
                write_kernel_2_run_flag <= 0; 
                kernel_2_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_kernel_2
    integer write_kernel_2_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] kernel_2_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = kernel_2_c_bitwidth;
    process_num = 8;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_8_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_kernel_2_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write kernel_2 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (kernel_2_c_bitwidth < 32) begin
                        kernel_2_data_tmp_reg = reg_kernel_2;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < kernel_2_c_bitwidth) begin
                                kernel_2_data_tmp_reg[j] = reg_kernel_2[i*32 + j];
                            end
                            else begin
                                kernel_2_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (kernel_2_data_in_addr + write_kernel_2_count * four_byte_num * 4 + i * 4, kernel_2_data_tmp_reg, write_kernel_2_resp);
                end
                process_busy = 0;
                write_one_kernel_2_data_done <= 1;
                @(posedge clk);
                write_one_kernel_2_data_done <= 0;
            end   
            process_8_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        output_r_write_data_finish <= 0;
        write_output_r_run_flag <= 0; 
        write_output_r_count = 0;
        count_operate_depth_by_bitwidth_and_depth (output_r_c_bitwidth, output_r_DEPTH, output_r_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_AXILiteS_start_in === 1) begin
            output_r_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_output_r_run_flag <= 1; 
            write_output_r_count = 0;
        end
        if (write_one_output_r_data_done === 1) begin
            write_output_r_count = write_output_r_count + 1;
            if (write_output_r_count == output_r_OPERATE_DEPTH) begin
                write_output_r_run_flag <= 0; 
                output_r_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_output_r
    integer write_output_r_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] output_r_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = output_r_c_bitwidth;
    process_num = 9;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_9_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_output_r_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write output_r data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (output_r_c_bitwidth < 32) begin
                        output_r_data_tmp_reg = reg_output_r;
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < output_r_c_bitwidth) begin
                                output_r_data_tmp_reg[j] = reg_output_r[i*32 + j];
                            end
                            else begin
                                output_r_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    write (output_r_data_in_addr + write_output_r_count * four_byte_num * 4 + i * 4, output_r_data_tmp_reg, write_output_r_resp);
                end
                process_busy = 0;
                write_one_output_r_data_done <= 1;
                @(posedge clk);
                write_one_output_r_data_done <= 0;
            end   
            process_9_finish <= 1;
        end
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_start_run_flag <= 0; 
        write_start_count <= 0;
    end
    else begin
        if (write_start_count >= 1) begin
            write_start_run_flag <= 0; 
        end
        else if (TRAN_AXILiteS_write_start_in === 1) begin
            write_start_run_flag <= 1; 
        end
        if (AESL_write_start_finish === 1) begin
            write_start_count <= write_start_count + 1;
            write_start_run_flag <= 0; 
        end
    end
end

initial begin : write_start
    reg [DATA_WIDTH - 1 : 0] write_start_tmp;
    integer process_num;
    integer write_start_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 10;
    while (1) begin
        process_10_finish = 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (write_start_run_flag === 1) begin
                process_busy = 1;
                write_start_tmp=0;
                write_start_tmp[0 : 0] = 1;
                write (START_ADDR, write_start_tmp, write_start_resp);
                process_busy = 0;
                AESL_write_start_finish <= 1;
                @(posedge clk);
                AESL_write_start_finish <= 0;
            end
            process_10_finish <= 1;
        end 
        @(posedge clk);
    end
end

//------------------------Task and function-------------- 
task read_token; 
    input integer fp; 
    output reg [151 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end 
endtask 
 
endmodule

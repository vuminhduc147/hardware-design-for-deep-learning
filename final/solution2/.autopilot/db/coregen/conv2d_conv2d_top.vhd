-- ==============================================================
-- File generated on Wed Dec 18 11:28:12 +0700 2024
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
-- SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
-- IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity conv2d_conv2d_top is
    generic (
        RESET_ACTIVE_LOW :  integer := 1
    );
    port (
        input_r_Clk_A : out  std_logic;
        input_r_Rst_A : out  std_logic;
        input_r_EN_A : out  std_logic;
        input_r_WEN_A : out  std_logic_vector(4 - 1 downto 0);
        input_r_Addr_A : out  std_logic_vector(32 - 1 downto 0);
        input_r_Dout_A : out  std_logic_vector(32 - 1 downto 0);
        input_r_Din_A : in  std_logic_vector(32 - 1 downto 0);
        input_r_Clk_B : out  std_logic;
        input_r_Rst_B : out  std_logic;
        input_r_EN_B : out  std_logic;
        input_r_WEN_B : out  std_logic_vector(4 - 1 downto 0);
        input_r_Addr_B : out  std_logic_vector(32 - 1 downto 0);
        input_r_Dout_B : out  std_logic_vector(32 - 1 downto 0);
        input_r_Din_B : in  std_logic_vector(32 - 1 downto 0);
        kernel_Clk_A : out  std_logic;
        kernel_Rst_A : out  std_logic;
        kernel_EN_A : out  std_logic;
        kernel_WEN_A : out  std_logic_vector(4 - 1 downto 0);
        kernel_Addr_A : out  std_logic_vector(32 - 1 downto 0);
        kernel_Dout_A : out  std_logic_vector(32 - 1 downto 0);
        kernel_Din_A : in  std_logic_vector(32 - 1 downto 0);
        kernel_Clk_B : out  std_logic;
        kernel_Rst_B : out  std_logic;
        kernel_EN_B : out  std_logic;
        kernel_WEN_B : out  std_logic_vector(4 - 1 downto 0);
        kernel_Addr_B : out  std_logic_vector(32 - 1 downto 0);
        kernel_Dout_B : out  std_logic_vector(32 - 1 downto 0);
        kernel_Din_B : in  std_logic_vector(32 - 1 downto 0);
        output_r_Clk_A : out  std_logic;
        output_r_Rst_A : out  std_logic;
        output_r_EN_A : out  std_logic;
        output_r_WEN_A : out  std_logic_vector(4 - 1 downto 0);
        output_r_Addr_A : out  std_logic_vector(32 - 1 downto 0);
        output_r_Dout_A : out  std_logic_vector(32 - 1 downto 0);
        output_r_Din_A : in  std_logic_vector(32 - 1 downto 0);
        aresetn : in  std_logic;
        aclk : in  std_logic;
        ap_start : in  std_logic;
        ap_ready : out  std_logic;
        ap_done : out  std_logic;
        ap_idle : out  std_logic
    );

-- attributes begin
-- attributes end
end entity;

architecture behav of conv2d_conv2d_top is
    component conv2D_conv2D is
        port (
            input_r_address0 : out  std_logic_vector(5 - 1 downto 0);
            input_r_ce0 : out  std_logic;
            input_r_q0 : in  std_logic_vector(32 - 1 downto 0);
            input_r_address1 : out  std_logic_vector(5 - 1 downto 0);
            input_r_ce1 : out  std_logic;
            input_r_q1 : in  std_logic_vector(32 - 1 downto 0);
            kernel_address0 : out  std_logic_vector(4 - 1 downto 0);
            kernel_ce0 : out  std_logic;
            kernel_q0 : in  std_logic_vector(32 - 1 downto 0);
            kernel_address1 : out  std_logic_vector(4 - 1 downto 0);
            kernel_ce1 : out  std_logic;
            kernel_q1 : in  std_logic_vector(32 - 1 downto 0);
            output_r_address0 : out  std_logic_vector(4 - 1 downto 0);
            output_r_ce0 : out  std_logic;
            output_r_we0 : out  std_logic;
            output_r_d0 : out  std_logic_vector(32 - 1 downto 0);
            ap_rst : in  std_logic;
            ap_clk : in  std_logic;
            ap_start : in  std_logic;
            ap_ready : out  std_logic;
            ap_done : out  std_logic;
            ap_idle : out  std_logic
        );
    end component;

    component conv2D_conv2D_input_r_if is
        port (
            clk :  in std_logic;
            reset :  in std_logic;
            input_r_address0 :  in std_logic_vector(5 - 1 downto 0);
            input_r_ce0 :  in std_logic;
            input_r_q0 :  out std_logic_vector(32 - 1 downto 0);
            input_r_address1 :  in std_logic_vector(5 - 1 downto 0);
            input_r_ce1 :  in std_logic;
            input_r_q1 :  out std_logic_vector(32 - 1 downto 0);
            Clk_A :  out std_logic;
            Rst_A :  out std_logic;
            EN_A :  out std_logic;
            WEN_A :  out std_logic_vector(4 - 1 downto 0);
            Addr_A :  out std_logic_vector(32 - 1 downto 0);
            Dout_A :  out std_logic_vector(32 - 1 downto 0);
            Din_A :  in std_logic_vector(32 - 1 downto 0);
            Clk_B :  out std_logic;
            Rst_B :  out std_logic;
            EN_B :  out std_logic;
            WEN_B :  out std_logic_vector(4 - 1 downto 0);
            Addr_B :  out std_logic_vector(32 - 1 downto 0);
            Dout_B :  out std_logic_vector(32 - 1 downto 0);
            Din_B :  in std_logic_vector(32 - 1 downto 0));
    end component;

    component conv2D_conv2D_kernel_if is
        port (
            clk :  in std_logic;
            reset :  in std_logic;
            kernel_address0 :  in std_logic_vector(4 - 1 downto 0);
            kernel_ce0 :  in std_logic;
            kernel_q0 :  out std_logic_vector(32 - 1 downto 0);
            kernel_address1 :  in std_logic_vector(4 - 1 downto 0);
            kernel_ce1 :  in std_logic;
            kernel_q1 :  out std_logic_vector(32 - 1 downto 0);
            Clk_A :  out std_logic;
            Rst_A :  out std_logic;
            EN_A :  out std_logic;
            WEN_A :  out std_logic_vector(4 - 1 downto 0);
            Addr_A :  out std_logic_vector(32 - 1 downto 0);
            Dout_A :  out std_logic_vector(32 - 1 downto 0);
            Din_A :  in std_logic_vector(32 - 1 downto 0);
            Clk_B :  out std_logic;
            Rst_B :  out std_logic;
            EN_B :  out std_logic;
            WEN_B :  out std_logic_vector(4 - 1 downto 0);
            Addr_B :  out std_logic_vector(32 - 1 downto 0);
            Dout_B :  out std_logic_vector(32 - 1 downto 0);
            Din_B :  in std_logic_vector(32 - 1 downto 0));
    end component;

    component conv2D_conv2D_output_r_if is
        port (
            clk :  in std_logic;
            reset :  in std_logic;
            output_r_address0 :  in std_logic_vector(4 - 1 downto 0);
            output_r_ce0 :  in std_logic;
            output_r_we0 :  in std_logic;
            output_r_d0 :  in std_logic_vector(32 - 1 downto 0);
            Clk_A :  out std_logic;
            Rst_A :  out std_logic;
            EN_A :  out std_logic;
            WEN_A :  out std_logic_vector(4 - 1 downto 0);
            Addr_A :  out std_logic_vector(32 - 1 downto 0);
            Dout_A :  out std_logic_vector(32 - 1 downto 0);
            Din_A :  in std_logic_vector(32 - 1 downto 0));
    end component;

    component conv2D_conv2D_ap_rst_if is
        generic (
            RESET_ACTIVE_LOW :  integer);
        port (
            dout :  out std_logic;
            din :  in std_logic);
    end component;

    signal sig_conv2D_conv2D_input_r_address0 :  std_logic_vector(5 - 1 downto 0);
    signal sig_conv2D_conv2D_input_r_ce0 :  std_logic;
    signal sig_conv2D_conv2D_input_r_q0 :  std_logic_vector(32 - 1 downto 0);
    signal sig_conv2D_conv2D_input_r_address1 :  std_logic_vector(5 - 1 downto 0);
    signal sig_conv2D_conv2D_input_r_ce1 :  std_logic;
    signal sig_conv2D_conv2D_input_r_q1 :  std_logic_vector(32 - 1 downto 0);
    signal sig_conv2D_conv2D_kernel_address0 :  std_logic_vector(4 - 1 downto 0);
    signal sig_conv2D_conv2D_kernel_ce0 :  std_logic;
    signal sig_conv2D_conv2D_kernel_q0 :  std_logic_vector(32 - 1 downto 0);
    signal sig_conv2D_conv2D_kernel_address1 :  std_logic_vector(4 - 1 downto 0);
    signal sig_conv2D_conv2D_kernel_ce1 :  std_logic;
    signal sig_conv2D_conv2D_kernel_q1 :  std_logic_vector(32 - 1 downto 0);
    signal sig_conv2D_conv2D_output_r_address0 :  std_logic_vector(4 - 1 downto 0);
    signal sig_conv2D_conv2D_output_r_ce0 :  std_logic;
    signal sig_conv2D_conv2D_output_r_we0 :  std_logic;
    signal sig_conv2D_conv2D_output_r_d0 :  std_logic_vector(32 - 1 downto 0);
    signal sig_conv2D_conv2D_ap_rst :  std_logic;

begin
    conv2D_conv2D_U  : component conv2D_conv2D
        port map (
            input_r_address0 => sig_conv2D_conv2D_input_r_address0,
            input_r_ce0 => sig_conv2D_conv2D_input_r_ce0,
            input_r_q0 => sig_conv2D_conv2D_input_r_q0,
            input_r_address1 => sig_conv2D_conv2D_input_r_address1,
            input_r_ce1 => sig_conv2D_conv2D_input_r_ce1,
            input_r_q1 => sig_conv2D_conv2D_input_r_q1,
            kernel_address0 => sig_conv2D_conv2D_kernel_address0,
            kernel_ce0 => sig_conv2D_conv2D_kernel_ce0,
            kernel_q0 => sig_conv2D_conv2D_kernel_q0,
            kernel_address1 => sig_conv2D_conv2D_kernel_address1,
            kernel_ce1 => sig_conv2D_conv2D_kernel_ce1,
            kernel_q1 => sig_conv2D_conv2D_kernel_q1,
            output_r_address0 => sig_conv2D_conv2D_output_r_address0,
            output_r_ce0 => sig_conv2D_conv2D_output_r_ce0,
            output_r_we0 => sig_conv2D_conv2D_output_r_we0,
            output_r_d0 => sig_conv2D_conv2D_output_r_d0,
            ap_rst => sig_conv2D_conv2D_ap_rst,
            ap_clk => aclk,
            ap_start => ap_start,
            ap_ready => ap_ready,
            ap_done => ap_done,
            ap_idle => ap_idle
        );

    conv2D_conv2D_input_r_if_U : component conv2D_conv2D_input_r_if
        port map (
            clk => aclk,
            reset => sig_conv2D_conv2D_ap_rst_n,
            input_r_address0 => sig_conv2D_conv2D_input_r_address0,
            input_r_ce0 => sig_conv2D_conv2D_input_r_ce0,
            input_r_q0 => sig_conv2D_conv2D_input_r_q0,
            input_r_address1 => sig_conv2D_conv2D_input_r_address1,
            input_r_ce1 => sig_conv2D_conv2D_input_r_ce1,
            input_r_q1 => sig_conv2D_conv2D_input_r_q1,
            Clk_A => input_r_Clk_A,
            Rst_A => input_r_Rst_A,
            EN_A => input_r_EN_A,
            WEN_A => input_r_WEN_A,
            Addr_A => input_r_Addr_A,
            Dout_A => input_r_Dout_A,
            Din_A => input_r_Din_A,
            Clk_B => input_r_Clk_B,
            Rst_B => input_r_Rst_B,
            EN_B => input_r_EN_B,
            WEN_B => input_r_WEN_B,
            Addr_B => input_r_Addr_B,
            Dout_B => input_r_Dout_B,
            Din_B => input_r_Din_B);

    conv2D_conv2D_kernel_if_U : component conv2D_conv2D_kernel_if
        port map (
            clk => aclk,
            reset => sig_conv2D_conv2D_ap_rst_n,
            kernel_address0 => sig_conv2D_conv2D_kernel_address0,
            kernel_ce0 => sig_conv2D_conv2D_kernel_ce0,
            kernel_q0 => sig_conv2D_conv2D_kernel_q0,
            kernel_address1 => sig_conv2D_conv2D_kernel_address1,
            kernel_ce1 => sig_conv2D_conv2D_kernel_ce1,
            kernel_q1 => sig_conv2D_conv2D_kernel_q1,
            Clk_A => kernel_Clk_A,
            Rst_A => kernel_Rst_A,
            EN_A => kernel_EN_A,
            WEN_A => kernel_WEN_A,
            Addr_A => kernel_Addr_A,
            Dout_A => kernel_Dout_A,
            Din_A => kernel_Din_A,
            Clk_B => kernel_Clk_B,
            Rst_B => kernel_Rst_B,
            EN_B => kernel_EN_B,
            WEN_B => kernel_WEN_B,
            Addr_B => kernel_Addr_B,
            Dout_B => kernel_Dout_B,
            Din_B => kernel_Din_B);

    conv2D_conv2D_output_r_if_U : component conv2D_conv2D_output_r_if
        port map (
            clk => aclk,
            reset => sig_conv2D_conv2D_ap_rst_n,
            output_r_address0 => sig_conv2D_conv2D_output_r_address0,
            output_r_ce0 => sig_conv2D_conv2D_output_r_ce0,
            output_r_we0 => sig_conv2D_conv2D_output_r_we0,
            output_r_d0 => sig_conv2D_conv2D_output_r_d0,
            Clk_A => output_r_Clk_A,
            Rst_A => output_r_Rst_A,
            EN_A => output_r_EN_A,
            WEN_A => output_r_WEN_A,
            Addr_A => output_r_Addr_A,
            Dout_A => output_r_Dout_A,
            Din_A => output_r_Din_A);

    ap_rst_if_U : component conv2D_conv2D_ap_rst_if
        generic map (
            RESET_ACTIVE_LOW => RESET_ACTIVE_LOW)
        port map (
            dout => sig_conv2D_conv2D_ap_rst,
            din => aresetn);

end architecture;


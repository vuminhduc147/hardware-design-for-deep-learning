-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Wed Dec 18 18:29:40 2024
-- Host        : DESKTOP-FTKP38H running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_conv2D_0_0_stub.vhdl
-- Design      : design_1_conv2D_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    s_axi_AXILiteS_AWADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_AXILiteS_AWVALID : in STD_LOGIC;
    s_axi_AXILiteS_AWREADY : out STD_LOGIC;
    s_axi_AXILiteS_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_AXILiteS_WVALID : in STD_LOGIC;
    s_axi_AXILiteS_WREADY : out STD_LOGIC;
    s_axi_AXILiteS_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_BVALID : out STD_LOGIC;
    s_axi_AXILiteS_BREADY : in STD_LOGIC;
    s_axi_AXILiteS_ARADDR : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_AXILiteS_ARVALID : in STD_LOGIC;
    s_axi_AXILiteS_ARREADY : out STD_LOGIC;
    s_axi_AXILiteS_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_AXILiteS_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_AXILiteS_RVALID : out STD_LOGIC;
    s_axi_AXILiteS_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    m_axi_gmem0_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem0_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem0_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem0_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem0_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem0_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem0_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem0_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem0_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem0_AWVALID : out STD_LOGIC;
    m_axi_gmem0_AWREADY : in STD_LOGIC;
    m_axi_gmem0_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_gmem0_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem0_WLAST : out STD_LOGIC;
    m_axi_gmem0_WVALID : out STD_LOGIC;
    m_axi_gmem0_WREADY : in STD_LOGIC;
    m_axi_gmem0_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem0_BVALID : in STD_LOGIC;
    m_axi_gmem0_BREADY : out STD_LOGIC;
    m_axi_gmem0_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem0_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem0_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem0_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem0_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem0_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem0_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem0_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem0_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem0_ARVALID : out STD_LOGIC;
    m_axi_gmem0_ARREADY : in STD_LOGIC;
    m_axi_gmem0_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_gmem0_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem0_RLAST : in STD_LOGIC;
    m_axi_gmem0_RVALID : in STD_LOGIC;
    m_axi_gmem0_RREADY : out STD_LOGIC;
    m_axi_gmem1_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem1_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem1_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem1_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem1_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem1_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem1_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem1_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem1_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem1_AWVALID : out STD_LOGIC;
    m_axi_gmem1_AWREADY : in STD_LOGIC;
    m_axi_gmem1_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_gmem1_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem1_WLAST : out STD_LOGIC;
    m_axi_gmem1_WVALID : out STD_LOGIC;
    m_axi_gmem1_WREADY : in STD_LOGIC;
    m_axi_gmem1_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem1_BVALID : in STD_LOGIC;
    m_axi_gmem1_BREADY : out STD_LOGIC;
    m_axi_gmem1_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem1_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem1_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem1_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem1_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem1_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem1_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem1_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem1_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem1_ARVALID : out STD_LOGIC;
    m_axi_gmem1_ARREADY : in STD_LOGIC;
    m_axi_gmem1_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_gmem1_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem1_RLAST : in STD_LOGIC;
    m_axi_gmem1_RVALID : in STD_LOGIC;
    m_axi_gmem1_RREADY : out STD_LOGIC;
    m_axi_gmem2_AWADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem2_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem2_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem2_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem2_AWLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem2_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem2_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem2_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem2_AWQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem2_AWVALID : out STD_LOGIC;
    m_axi_gmem2_AWREADY : in STD_LOGIC;
    m_axi_gmem2_WDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_gmem2_WSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem2_WLAST : out STD_LOGIC;
    m_axi_gmem2_WVALID : out STD_LOGIC;
    m_axi_gmem2_WREADY : in STD_LOGIC;
    m_axi_gmem2_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem2_BVALID : in STD_LOGIC;
    m_axi_gmem2_BREADY : out STD_LOGIC;
    m_axi_gmem2_ARADDR : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_gmem2_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_gmem2_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem2_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem2_ARLOCK : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem2_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem2_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem2_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_gmem2_ARQOS : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_gmem2_ARVALID : out STD_LOGIC;
    m_axi_gmem2_ARREADY : in STD_LOGIC;
    m_axi_gmem2_RDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_gmem2_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_gmem2_RLAST : in STD_LOGIC;
    m_axi_gmem2_RVALID : in STD_LOGIC;
    m_axi_gmem2_RREADY : out STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "s_axi_AXILiteS_AWADDR[6:0],s_axi_AXILiteS_AWVALID,s_axi_AXILiteS_AWREADY,s_axi_AXILiteS_WDATA[31:0],s_axi_AXILiteS_WSTRB[3:0],s_axi_AXILiteS_WVALID,s_axi_AXILiteS_WREADY,s_axi_AXILiteS_BRESP[1:0],s_axi_AXILiteS_BVALID,s_axi_AXILiteS_BREADY,s_axi_AXILiteS_ARADDR[6:0],s_axi_AXILiteS_ARVALID,s_axi_AXILiteS_ARREADY,s_axi_AXILiteS_RDATA[31:0],s_axi_AXILiteS_RRESP[1:0],s_axi_AXILiteS_RVALID,s_axi_AXILiteS_RREADY,ap_clk,ap_rst_n,interrupt,m_axi_gmem0_AWADDR[63:0],m_axi_gmem0_AWLEN[7:0],m_axi_gmem0_AWSIZE[2:0],m_axi_gmem0_AWBURST[1:0],m_axi_gmem0_AWLOCK[1:0],m_axi_gmem0_AWREGION[3:0],m_axi_gmem0_AWCACHE[3:0],m_axi_gmem0_AWPROT[2:0],m_axi_gmem0_AWQOS[3:0],m_axi_gmem0_AWVALID,m_axi_gmem0_AWREADY,m_axi_gmem0_WDATA[31:0],m_axi_gmem0_WSTRB[3:0],m_axi_gmem0_WLAST,m_axi_gmem0_WVALID,m_axi_gmem0_WREADY,m_axi_gmem0_BRESP[1:0],m_axi_gmem0_BVALID,m_axi_gmem0_BREADY,m_axi_gmem0_ARADDR[63:0],m_axi_gmem0_ARLEN[7:0],m_axi_gmem0_ARSIZE[2:0],m_axi_gmem0_ARBURST[1:0],m_axi_gmem0_ARLOCK[1:0],m_axi_gmem0_ARREGION[3:0],m_axi_gmem0_ARCACHE[3:0],m_axi_gmem0_ARPROT[2:0],m_axi_gmem0_ARQOS[3:0],m_axi_gmem0_ARVALID,m_axi_gmem0_ARREADY,m_axi_gmem0_RDATA[31:0],m_axi_gmem0_RRESP[1:0],m_axi_gmem0_RLAST,m_axi_gmem0_RVALID,m_axi_gmem0_RREADY,m_axi_gmem1_AWADDR[63:0],m_axi_gmem1_AWLEN[7:0],m_axi_gmem1_AWSIZE[2:0],m_axi_gmem1_AWBURST[1:0],m_axi_gmem1_AWLOCK[1:0],m_axi_gmem1_AWREGION[3:0],m_axi_gmem1_AWCACHE[3:0],m_axi_gmem1_AWPROT[2:0],m_axi_gmem1_AWQOS[3:0],m_axi_gmem1_AWVALID,m_axi_gmem1_AWREADY,m_axi_gmem1_WDATA[31:0],m_axi_gmem1_WSTRB[3:0],m_axi_gmem1_WLAST,m_axi_gmem1_WVALID,m_axi_gmem1_WREADY,m_axi_gmem1_BRESP[1:0],m_axi_gmem1_BVALID,m_axi_gmem1_BREADY,m_axi_gmem1_ARADDR[63:0],m_axi_gmem1_ARLEN[7:0],m_axi_gmem1_ARSIZE[2:0],m_axi_gmem1_ARBURST[1:0],m_axi_gmem1_ARLOCK[1:0],m_axi_gmem1_ARREGION[3:0],m_axi_gmem1_ARCACHE[3:0],m_axi_gmem1_ARPROT[2:0],m_axi_gmem1_ARQOS[3:0],m_axi_gmem1_ARVALID,m_axi_gmem1_ARREADY,m_axi_gmem1_RDATA[31:0],m_axi_gmem1_RRESP[1:0],m_axi_gmem1_RLAST,m_axi_gmem1_RVALID,m_axi_gmem1_RREADY,m_axi_gmem2_AWADDR[63:0],m_axi_gmem2_AWLEN[7:0],m_axi_gmem2_AWSIZE[2:0],m_axi_gmem2_AWBURST[1:0],m_axi_gmem2_AWLOCK[1:0],m_axi_gmem2_AWREGION[3:0],m_axi_gmem2_AWCACHE[3:0],m_axi_gmem2_AWPROT[2:0],m_axi_gmem2_AWQOS[3:0],m_axi_gmem2_AWVALID,m_axi_gmem2_AWREADY,m_axi_gmem2_WDATA[31:0],m_axi_gmem2_WSTRB[3:0],m_axi_gmem2_WLAST,m_axi_gmem2_WVALID,m_axi_gmem2_WREADY,m_axi_gmem2_BRESP[1:0],m_axi_gmem2_BVALID,m_axi_gmem2_BREADY,m_axi_gmem2_ARADDR[63:0],m_axi_gmem2_ARLEN[7:0],m_axi_gmem2_ARSIZE[2:0],m_axi_gmem2_ARBURST[1:0],m_axi_gmem2_ARLOCK[1:0],m_axi_gmem2_ARREGION[3:0],m_axi_gmem2_ARCACHE[3:0],m_axi_gmem2_ARPROT[2:0],m_axi_gmem2_ARQOS[3:0],m_axi_gmem2_ARVALID,m_axi_gmem2_ARREADY,m_axi_gmem2_RDATA[31:0],m_axi_gmem2_RRESP[1:0],m_axi_gmem2_RLAST,m_axi_gmem2_RVALID,m_axi_gmem2_RREADY";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "conv2D_conv2D,Vivado 2018.3";
begin
end;

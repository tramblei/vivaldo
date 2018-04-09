-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Tue Mar 20 13:13:33 2018
-- Host        : ug69 running 64-bit Debian GNU/Linux 9.4 (stretch)
-- Command     : write_vhdl -force -mode synth_stub
--               /nfs/ug/homes-1/t/tramblei/vivaldo_fresh_eth_xadc_fft_dma_corr/vivaldo_fresh_eth_xadc_fft_dma_corr.srcs/sources_1/bd/design_1/ip/design_1_geralds_correlation_wrapper_0_0/design_1_geralds_correlation_wrapper_0_0_stub.vhdl
-- Design      : design_1_geralds_correlation_wrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_geralds_correlation_wrapper_0_0 is
  Port ( 
    aresetn : in STD_LOGIC;
    correlation_val_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    correlation_val_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    correlation_val_axi_arready : out STD_LOGIC;
    correlation_val_axi_arvalid : in STD_LOGIC;
    correlation_val_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    correlation_val_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    correlation_val_axi_awready : out STD_LOGIC;
    correlation_val_axi_awvalid : in STD_LOGIC;
    correlation_val_axi_bready : in STD_LOGIC;
    correlation_val_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    correlation_val_axi_bvalid : out STD_LOGIC;
    correlation_val_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    correlation_val_axi_rready : in STD_LOGIC;
    correlation_val_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    correlation_val_axi_rvalid : out STD_LOGIC;
    correlation_val_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    correlation_val_axi_wready : out STD_LOGIC;
    correlation_val_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    correlation_val_axi_wvalid : in STD_LOGIC;
    sclk : in STD_LOGIC;
    sig1_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sig1_axis_tlast : in STD_LOGIC;
    sig1_axis_tready : out STD_LOGIC;
    sig1_axis_tstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sig1_axis_tvalid : in STD_LOGIC;
    sig2_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    sig2_axis_tlast : in STD_LOGIC;
    sig2_axis_tready : out STD_LOGIC;
    sig2_axis_tstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    sig2_axis_tvalid : in STD_LOGIC
  );

end design_1_geralds_correlation_wrapper_0_0;

architecture stub of design_1_geralds_correlation_wrapper_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aresetn,correlation_val_axi_araddr[3:0],correlation_val_axi_arprot[2:0],correlation_val_axi_arready,correlation_val_axi_arvalid,correlation_val_axi_awaddr[3:0],correlation_val_axi_awprot[2:0],correlation_val_axi_awready,correlation_val_axi_awvalid,correlation_val_axi_bready,correlation_val_axi_bresp[1:0],correlation_val_axi_bvalid,correlation_val_axi_rdata[31:0],correlation_val_axi_rready,correlation_val_axi_rresp[1:0],correlation_val_axi_rvalid,correlation_val_axi_wdata[31:0],correlation_val_axi_wready,correlation_val_axi_wstrb[3:0],correlation_val_axi_wvalid,sclk,sig1_axis_tdata[15:0],sig1_axis_tlast,sig1_axis_tready,sig1_axis_tstrb[1:0],sig1_axis_tvalid,sig2_axis_tdata[15:0],sig2_axis_tlast,sig2_axis_tready,sig2_axis_tstrb[1:0],sig2_axis_tvalid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "corr_wrapper_wrapper,Vivado 2017.2";
begin
end;

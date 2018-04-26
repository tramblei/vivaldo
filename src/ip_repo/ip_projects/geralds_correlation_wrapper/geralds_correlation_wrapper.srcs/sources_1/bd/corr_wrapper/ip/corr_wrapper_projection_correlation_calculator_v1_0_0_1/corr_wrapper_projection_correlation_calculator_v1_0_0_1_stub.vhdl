-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Tue Mar 20 12:57:25 2018
-- Host        : ug69 running 64-bit Debian GNU/Linux 9.4 (stretch)
-- Command     : write_vhdl -force -mode synth_stub
--               /nfs/ug/homes-1/t/tramblei/vivaldo/ip_repo/ip_projects/geralds_correlation_wrapper/geralds_correlation_wrapper.srcs/sources_1/bd/corr_wrapper/ip/corr_wrapper_projection_correlation_calculator_v1_0_0_1/corr_wrapper_projection_correlation_calculator_v1_0_0_1_stub.vhdl
-- Design      : corr_wrapper_projection_correlation_calculator_v1_0_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity corr_wrapper_projection_correlation_calculator_v1_0_0_1 is
  Port ( 
    signal_fft_axis_aclk : in STD_LOGIC;
    signal_fft_axis_aresetn : in STD_LOGIC;
    signal_fft_axis_tready : out STD_LOGIC;
    signal_fft_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    signal_fft_axis_tstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    signal_fft_axis_tlast : in STD_LOGIC;
    signal_fft_axis_tvalid : in STD_LOGIC;
    golden_fft_axis_aclk : in STD_LOGIC;
    golden_fft_axis_aresetn : in STD_LOGIC;
    golden_fft_axis_tready : out STD_LOGIC;
    golden_fft_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    golden_fft_axis_tstrb : in STD_LOGIC_VECTOR ( 1 downto 0 );
    golden_fft_axis_tlast : in STD_LOGIC;
    golden_fft_axis_tvalid : in STD_LOGIC;
    correlation_out_axi_aclk : in STD_LOGIC;
    correlation_out_axi_aresetn : in STD_LOGIC;
    correlation_out_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    correlation_out_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    correlation_out_axi_awvalid : in STD_LOGIC;
    correlation_out_axi_awready : out STD_LOGIC;
    correlation_out_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    correlation_out_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    correlation_out_axi_wvalid : in STD_LOGIC;
    correlation_out_axi_wready : out STD_LOGIC;
    correlation_out_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    correlation_out_axi_bvalid : out STD_LOGIC;
    correlation_out_axi_bready : in STD_LOGIC;
    correlation_out_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    correlation_out_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    correlation_out_axi_arvalid : in STD_LOGIC;
    correlation_out_axi_arready : out STD_LOGIC;
    correlation_out_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    correlation_out_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    correlation_out_axi_rvalid : out STD_LOGIC;
    correlation_out_axi_rready : in STD_LOGIC;
    correlation_out_probe : out STD_LOGIC_VECTOR ( 31 downto 0 );
    correlation_normalized : in STD_LOGIC_VECTOR ( 31 downto 0 );
    correlation_normalized_valid : in STD_LOGIC;
    mag1 : out STD_LOGIC_VECTOR ( 47 downto 0 );
    mag2 : out STD_LOGIC_VECTOR ( 47 downto 0 );
    dot_product : out STD_LOGIC_VECTOR ( 47 downto 0 );
    dot_product_valid : out STD_LOGIC;
    dot_product_ready : in STD_LOGIC
  );

end corr_wrapper_projection_correlation_calculator_v1_0_0_1;

architecture stub of corr_wrapper_projection_correlation_calculator_v1_0_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "signal_fft_axis_aclk,signal_fft_axis_aresetn,signal_fft_axis_tready,signal_fft_axis_tdata[15:0],signal_fft_axis_tstrb[1:0],signal_fft_axis_tlast,signal_fft_axis_tvalid,golden_fft_axis_aclk,golden_fft_axis_aresetn,golden_fft_axis_tready,golden_fft_axis_tdata[15:0],golden_fft_axis_tstrb[1:0],golden_fft_axis_tlast,golden_fft_axis_tvalid,correlation_out_axi_aclk,correlation_out_axi_aresetn,correlation_out_axi_awaddr[3:0],correlation_out_axi_awprot[2:0],correlation_out_axi_awvalid,correlation_out_axi_awready,correlation_out_axi_wdata[31:0],correlation_out_axi_wstrb[3:0],correlation_out_axi_wvalid,correlation_out_axi_wready,correlation_out_axi_bresp[1:0],correlation_out_axi_bvalid,correlation_out_axi_bready,correlation_out_axi_araddr[3:0],correlation_out_axi_arprot[2:0],correlation_out_axi_arvalid,correlation_out_axi_arready,correlation_out_axi_rdata[31:0],correlation_out_axi_rresp[1:0],correlation_out_axi_rvalid,correlation_out_axi_rready,correlation_out_probe[31:0],correlation_normalized[31:0],correlation_normalized_valid,mag1[47:0],mag2[47:0],dot_product[47:0],dot_product_valid,dot_product_ready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "projection_correlation_calculator_v1_0,Vivado 2017.2";
begin
end;

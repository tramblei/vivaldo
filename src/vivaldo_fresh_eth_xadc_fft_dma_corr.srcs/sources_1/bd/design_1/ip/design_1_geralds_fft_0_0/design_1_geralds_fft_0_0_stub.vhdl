-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Mon Mar 19 13:21:12 2018
-- Host        : ug73 running 64-bit Debian GNU/Linux 9.4 (stretch)
-- Command     : write_vhdl -force -mode synth_stub
--               /nfs/ug/homes-1/t/tramblei/vivaldo_fresh_eth_xadc_fft_dma_corr/vivaldo_fresh_eth_xadc_fft_dma_corr.srcs/sources_1/bd/design_1/ip/design_1_geralds_fft_0_0/design_1_geralds_fft_0_0_stub.vhdl
-- Design      : design_1_geralds_fft_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_geralds_fft_0_0 is
  Port ( 
    M_AXIS_RESULT_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_RESULT_tlast : out STD_LOGIC;
    M_AXIS_RESULT_tready : in STD_LOGIC;
    M_AXIS_RESULT_tuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_RESULT_tvalid : out STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    event_data_in_channel_halt : out STD_LOGIC;
    event_data_out_channel_halt : out STD_LOGIC;
    event_frame_started : out STD_LOGIC;
    event_status_channel_halt : out STD_LOGIC;
    event_tlast_missing : out STD_LOGIC;
    event_tlast_unexpected : out STD_LOGIC;
    s_axis_data : in STD_LOGIC_VECTOR ( 11 downto 0 );
    s_axis_last : in STD_LOGIC;
    s_axis_ready : out STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC
  );

end design_1_geralds_fft_0_0;

architecture stub of design_1_geralds_fft_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "M_AXIS_RESULT_tdata[31:0],M_AXIS_RESULT_tlast,M_AXIS_RESULT_tready,M_AXIS_RESULT_tuser[0:0],M_AXIS_RESULT_tvalid,aclk,aresetn,event_data_in_channel_halt,event_data_out_channel_halt,event_frame_started,event_status_channel_halt,event_tlast_missing,event_tlast_unexpected,s_axis_data[11:0],s_axis_last,s_axis_ready,s_axis_tvalid";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "design_1_wrapper,Vivado 2017.2";
begin
end;

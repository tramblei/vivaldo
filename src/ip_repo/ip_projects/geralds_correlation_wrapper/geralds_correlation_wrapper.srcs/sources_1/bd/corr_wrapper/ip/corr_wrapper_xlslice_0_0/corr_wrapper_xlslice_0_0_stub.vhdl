-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Sun Mar  4 15:00:30 2018
-- Host        : jcalhome running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -force -mode synth_stub -rename_top corr_wrapper_xlslice_0_0 -prefix
--               corr_wrapper_xlslice_0_0_ corr_wrapper_xlslice_0_0_stub.vhdl
-- Design      : corr_wrapper_xlslice_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity corr_wrapper_xlslice_0_0 is
  Port ( 
    Din : in STD_LOGIC_VECTOR ( 127 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end corr_wrapper_xlslice_0_0;

architecture stub of corr_wrapper_xlslice_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Din[127:0],Dout[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xlslice_v1_0_1_xlslice,Vivado 2017.2";
begin
end;

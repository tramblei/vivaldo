-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Sun Feb 11 00:30:08 2018
-- Host        : ug241 running 64-bit Debian GNU/Linux 9.3 (stretch)
-- Command     : write_vhdl -force -mode synth_stub -rename_top design_1_forward_fft_0 -prefix
--               design_1_forward_fft_0_ design_1_forward_fft_0_stub.vhdl
-- Design      : design_1_forward_fft_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_forward_fft_0 is
  Port ( 
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end design_1_forward_fft_0;

architecture stub of design_1_forward_fft_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "dout[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xlconstant_v1_1_3_xlconstant,Vivado 2017.2";
begin
end;

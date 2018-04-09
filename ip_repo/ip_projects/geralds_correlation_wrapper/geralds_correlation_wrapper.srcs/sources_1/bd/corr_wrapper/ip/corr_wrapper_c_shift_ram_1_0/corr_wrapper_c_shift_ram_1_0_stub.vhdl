-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Sat Mar 17 16:35:48 2018
-- Host        : ug75 running 64-bit Debian GNU/Linux 9.4 (stretch)
-- Command     : write_vhdl -force -mode synth_stub
--               /nfs/ug/homes-1/t/tramblei/vivaldo/ip_repo/ip_projects/geralds_correlation_wrapper/geralds_correlation_wrapper.srcs/sources_1/bd/corr_wrapper/ip/corr_wrapper_c_shift_ram_1_0/corr_wrapper_c_shift_ram_1_0_stub.vhdl
-- Design      : corr_wrapper_c_shift_ram_1_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity corr_wrapper_c_shift_ram_1_0 is
  Port ( 
    D : in STD_LOGIC_VECTOR ( 47 downto 0 );
    CLK : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );

end corr_wrapper_c_shift_ram_1_0;

architecture stub of corr_wrapper_c_shift_ram_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "D[47:0],CLK,SCLR,Q[47:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "c_shift_ram_v12_0_10,Vivado 2017.2";
begin
end;

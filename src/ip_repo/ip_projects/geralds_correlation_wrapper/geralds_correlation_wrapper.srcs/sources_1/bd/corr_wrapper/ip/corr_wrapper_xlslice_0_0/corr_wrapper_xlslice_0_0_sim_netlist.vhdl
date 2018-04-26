-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Sun Mar  4 15:00:30 2018
-- Host        : jcalhome running 64-bit Ubuntu 16.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top corr_wrapper_xlslice_0_0 -prefix
--               corr_wrapper_xlslice_0_0_ corr_wrapper_xlslice_0_0_sim_netlist.vhdl
-- Design      : corr_wrapper_xlslice_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity corr_wrapper_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 127 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of corr_wrapper_xlslice_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of corr_wrapper_xlslice_0_0 : entity is "corr_wrapper_xlslice_0_0,xlslice_v1_0_1_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of corr_wrapper_xlslice_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of corr_wrapper_xlslice_0_0 : entity is "xlslice_v1_0_1_xlslice,Vivado 2017.2";
end corr_wrapper_xlslice_0_0;

architecture STRUCTURE of corr_wrapper_xlslice_0_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 127 downto 0 );
begin
  Dout(31 downto 0) <= \^din\(95 downto 64);
  \^din\(95 downto 64) <= Din(95 downto 64);
end STRUCTURE;

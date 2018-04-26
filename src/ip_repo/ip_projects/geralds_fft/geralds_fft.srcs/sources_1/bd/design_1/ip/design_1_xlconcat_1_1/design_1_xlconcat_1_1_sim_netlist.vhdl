-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Mon Mar 19 11:00:09 2018
-- Host        : ug73 running 64-bit Debian GNU/Linux 9.4 (stretch)
-- Command     : write_vhdl -force -mode funcsim
--               /nfs/ug/homes-1/t/tramblei/vivaldo/ip_repo/ip_projects/geralds_fft/geralds_fft.srcs/sources_1/bd/design_1/ip/design_1_xlconcat_1_1/design_1_xlconcat_1_1_sim_netlist.vhdl
-- Design      : design_1_xlconcat_1_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_xlconcat_1_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_xlconcat_1_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_xlconcat_1_1 : entity is "design_1_xlconcat_1_1,xlconcat_v2_1_1_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_xlconcat_1_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_xlconcat_1_1 : entity is "xlconcat_v2_1_1_xlconcat,Vivado 2017.2";
end design_1_xlconcat_1_1;

architecture STRUCTURE of design_1_xlconcat_1_1 is
  signal \^in0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^in1\ : STD_LOGIC_VECTOR ( 31 downto 0 );
begin
  \^in0\(31 downto 0) <= In0(31 downto 0);
  \^in1\(31 downto 0) <= In1(31 downto 0);
  dout(63 downto 32) <= \^in1\(31 downto 0);
  dout(31 downto 0) <= \^in0\(31 downto 0);
end STRUCTURE;

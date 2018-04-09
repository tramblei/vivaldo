-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Sat Mar 17 16:24:19 2018
-- Host        : ug75 running 64-bit Debian GNU/Linux 9.4 (stretch)
-- Command     : write_vhdl -force -mode funcsim
--               /nfs/ug/homes-1/t/tramblei/vivaldo/ip_repo/ip_projects/geralds_correlation_wrapper/geralds_correlation_wrapper.srcs/sources_1/bd/corr_wrapper/ip/corr_wrapper_xlconcat_0_0/corr_wrapper_xlconcat_0_0_sim_netlist.vhdl
-- Design      : corr_wrapper_xlconcat_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity corr_wrapper_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 47 downto 0 );
    In2 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of corr_wrapper_xlconcat_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of corr_wrapper_xlconcat_0_0 : entity is "corr_wrapper_xlconcat_0_0,xlconcat_v2_1_1_xlconcat,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of corr_wrapper_xlconcat_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of corr_wrapper_xlconcat_0_0 : entity is "xlconcat_v2_1_1_xlconcat,Vivado 2017.2";
end corr_wrapper_xlconcat_0_0;

architecture STRUCTURE of corr_wrapper_xlconcat_0_0 is
  signal \^in0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^in1\ : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal \^in2\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  \^in0\(7 downto 0) <= In0(7 downto 0);
  \^in1\(47 downto 0) <= In1(47 downto 0);
  \^in2\(7 downto 0) <= In2(7 downto 0);
  dout(63 downto 56) <= \^in2\(7 downto 0);
  dout(55 downto 8) <= \^in1\(47 downto 0);
  dout(7 downto 0) <= \^in0\(7 downto 0);
end STRUCTURE;

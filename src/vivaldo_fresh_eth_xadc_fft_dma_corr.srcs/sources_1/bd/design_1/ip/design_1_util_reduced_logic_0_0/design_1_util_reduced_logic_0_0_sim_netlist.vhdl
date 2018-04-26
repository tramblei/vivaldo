-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Sat Mar 17 20:05:07 2018
-- Host        : ug75 running 64-bit Debian GNU/Linux 9.4 (stretch)
-- Command     : write_vhdl -force -mode funcsim
--               /nfs/ug/homes-1/t/tramblei/vivaldo_fresh_eth_xadc_fft_dma_corr/vivaldo_fresh_eth_xadc_fft_dma_corr.srcs/sources_1/bd/design_1/ip/design_1_util_reduced_logic_0_0/design_1_util_reduced_logic_0_0_sim_netlist.vhdl
-- Design      : design_1_util_reduced_logic_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_util_reduced_logic_0_0_util_reduced_logic_v2_0_3_util_reduced_logic is
  port (
    Res : out STD_LOGIC;
    Op1 : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_util_reduced_logic_0_0_util_reduced_logic_v2_0_3_util_reduced_logic : entity is "util_reduced_logic_v2_0_3_util_reduced_logic";
end design_1_util_reduced_logic_0_0_util_reduced_logic_v2_0_3_util_reduced_logic;

architecture STRUCTURE of design_1_util_reduced_logic_0_0_util_reduced_logic_v2_0_3_util_reduced_logic is
begin
Res0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => Op1(3),
      I1 => Op1(5),
      I2 => Op1(4),
      I3 => Op1(2),
      I4 => Op1(0),
      I5 => Op1(1),
      O => Res
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_util_reduced_logic_0_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    Res : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_util_reduced_logic_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_util_reduced_logic_0_0 : entity is "design_1_util_reduced_logic_0_0,util_reduced_logic_v2_0_3_util_reduced_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_util_reduced_logic_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_util_reduced_logic_0_0 : entity is "util_reduced_logic_v2_0_3_util_reduced_logic,Vivado 2017.2";
end design_1_util_reduced_logic_0_0;

architecture STRUCTURE of design_1_util_reduced_logic_0_0 is
begin
inst: entity work.design_1_util_reduced_logic_0_0_util_reduced_logic_v2_0_3_util_reduced_logic
     port map (
      Op1(5 downto 0) => Op1(5 downto 0),
      Res => Res
    );
end STRUCTURE;

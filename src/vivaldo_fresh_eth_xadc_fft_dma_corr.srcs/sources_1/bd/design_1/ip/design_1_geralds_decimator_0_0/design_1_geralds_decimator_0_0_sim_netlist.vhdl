-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Sat Mar 17 20:05:10 2018
-- Host        : ug75 running 64-bit Debian GNU/Linux 9.4 (stretch)
-- Command     : write_vhdl -force -mode funcsim
--               /nfs/ug/homes-1/t/tramblei/vivaldo_fresh_eth_xadc_fft_dma_corr/vivaldo_fresh_eth_xadc_fft_dma_corr.srcs/sources_1/bd/design_1/ip/design_1_geralds_decimator_0_0/design_1_geralds_decimator_0_0_sim_netlist.vhdl
-- Design      : design_1_geralds_decimator_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_geralds_decimator_0_0_geralds_decimator_v1_0_signal_out is
  port (
    signal_out_tvalid : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    signal_out_tlast : out STD_LOGIC;
    signal_out_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    signal_in_aclk : in STD_LOGIC;
    is_last_delay : in STD_LOGIC;
    signal_out_tready : in STD_LOGIC;
    initiate_txn_reg : in STD_LOGIC;
    signal_in_aresetn : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_geralds_decimator_0_0_geralds_decimator_v1_0_signal_out : entity is "geralds_decimator_v1_0_signal_out";
end design_1_geralds_decimator_0_0_geralds_decimator_v1_0_signal_out;

architecture STRUCTURE of design_1_geralds_decimator_0_0_geralds_decimator_v1_0_signal_out is
  signal \__0/i__n_0\ : STD_LOGIC;
  signal mst_exec_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^p_0_in\ : STD_LOGIC;
begin
  p_0_in <= \^p_0_in\;
\__0/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => signal_out_tready,
      I1 => mst_exec_state(1),
      I2 => initiate_txn_reg,
      O => \__0/i__n_0\
    );
axis_tlast_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => is_last_delay,
      Q => signal_out_tlast,
      R => \^p_0_in\
    );
axis_tvalid_delay_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => signal_in_aresetn,
      O => \^p_0_in\
    );
axis_tvalid_delay_reg: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => mst_exec_state(1),
      Q => signal_out_tvalid,
      R => \^p_0_in\
    );
\mst_exec_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => \__0/i__n_0\,
      Q => mst_exec_state(1),
      R => \^p_0_in\
    );
\stream_data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(0),
      Q => signal_out_tdata(0),
      R => \^p_0_in\
    );
\stream_data_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(10),
      Q => signal_out_tdata(10),
      R => \^p_0_in\
    );
\stream_data_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(11),
      Q => signal_out_tdata(11),
      R => \^p_0_in\
    );
\stream_data_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(12),
      Q => signal_out_tdata(12),
      R => \^p_0_in\
    );
\stream_data_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(13),
      Q => signal_out_tdata(13),
      R => \^p_0_in\
    );
\stream_data_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(14),
      Q => signal_out_tdata(14),
      R => \^p_0_in\
    );
\stream_data_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(15),
      Q => signal_out_tdata(15),
      R => \^p_0_in\
    );
\stream_data_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(16),
      Q => signal_out_tdata(16),
      R => \^p_0_in\
    );
\stream_data_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(17),
      Q => signal_out_tdata(17),
      R => \^p_0_in\
    );
\stream_data_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(18),
      Q => signal_out_tdata(18),
      R => \^p_0_in\
    );
\stream_data_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(19),
      Q => signal_out_tdata(19),
      R => \^p_0_in\
    );
\stream_data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(1),
      Q => signal_out_tdata(1),
      R => \^p_0_in\
    );
\stream_data_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(20),
      Q => signal_out_tdata(20),
      R => \^p_0_in\
    );
\stream_data_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(21),
      Q => signal_out_tdata(21),
      R => \^p_0_in\
    );
\stream_data_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(22),
      Q => signal_out_tdata(22),
      R => \^p_0_in\
    );
\stream_data_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(23),
      Q => signal_out_tdata(23),
      R => \^p_0_in\
    );
\stream_data_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(24),
      Q => signal_out_tdata(24),
      R => \^p_0_in\
    );
\stream_data_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(25),
      Q => signal_out_tdata(25),
      R => \^p_0_in\
    );
\stream_data_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(26),
      Q => signal_out_tdata(26),
      R => \^p_0_in\
    );
\stream_data_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(27),
      Q => signal_out_tdata(27),
      R => \^p_0_in\
    );
\stream_data_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(28),
      Q => signal_out_tdata(28),
      R => \^p_0_in\
    );
\stream_data_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(29),
      Q => signal_out_tdata(29),
      R => \^p_0_in\
    );
\stream_data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(2),
      Q => signal_out_tdata(2),
      R => \^p_0_in\
    );
\stream_data_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(30),
      Q => signal_out_tdata(30),
      R => \^p_0_in\
    );
\stream_data_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(31),
      Q => signal_out_tdata(31),
      R => \^p_0_in\
    );
\stream_data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(3),
      Q => signal_out_tdata(3),
      R => \^p_0_in\
    );
\stream_data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(4),
      Q => signal_out_tdata(4),
      R => \^p_0_in\
    );
\stream_data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(5),
      Q => signal_out_tdata(5),
      R => \^p_0_in\
    );
\stream_data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(6),
      Q => signal_out_tdata(6),
      R => \^p_0_in\
    );
\stream_data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(7),
      Q => signal_out_tdata(7),
      R => \^p_0_in\
    );
\stream_data_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(8),
      Q => signal_out_tdata(8),
      R => \^p_0_in\
    );
\stream_data_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => signal_in_aclk,
      CE => '1',
      D => Q(9),
      Q => signal_out_tdata(9),
      R => \^p_0_in\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_geralds_decimator_0_0_geralds_decimator_v1_0 is
  port (
    signal_out_tvalid : out STD_LOGIC;
    signal_out_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    signal_out_tlast : out STD_LOGIC;
    signal_in_aclk : in STD_LOGIC;
    signal_in_tvalid : in STD_LOGIC;
    signal_in_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    signal_in_aresetn : in STD_LOGIC;
    signal_out_tready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_geralds_decimator_0_0_geralds_decimator_v1_0 : entity is "geralds_decimator_v1_0";
end design_1_geralds_decimator_0_0_geralds_decimator_v1_0;

architecture STRUCTURE of design_1_geralds_decimator_0_0_geralds_decimator_v1_0 is
  signal counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \counter0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_1\ : STD_LOGIC;
  signal \counter0_carry__0_n_2\ : STD_LOGIC;
  signal \counter0_carry__0_n_3\ : STD_LOGIC;
  signal \counter0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_n_1\ : STD_LOGIC;
  signal \counter0_carry__1_n_2\ : STD_LOGIC;
  signal \counter0_carry__1_n_3\ : STD_LOGIC;
  signal \counter0_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_n_1\ : STD_LOGIC;
  signal \counter0_carry__2_n_2\ : STD_LOGIC;
  signal \counter0_carry__2_n_3\ : STD_LOGIC;
  signal \counter0_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \counter0_carry__3_n_0\ : STD_LOGIC;
  signal \counter0_carry__3_n_1\ : STD_LOGIC;
  signal \counter0_carry__3_n_2\ : STD_LOGIC;
  signal \counter0_carry__3_n_3\ : STD_LOGIC;
  signal \counter0_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__4_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__4_i_4_n_0\ : STD_LOGIC;
  signal \counter0_carry__4_n_0\ : STD_LOGIC;
  signal \counter0_carry__4_n_1\ : STD_LOGIC;
  signal \counter0_carry__4_n_2\ : STD_LOGIC;
  signal \counter0_carry__4_n_3\ : STD_LOGIC;
  signal \counter0_carry__5_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__5_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__5_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__5_i_4_n_0\ : STD_LOGIC;
  signal \counter0_carry__5_n_0\ : STD_LOGIC;
  signal \counter0_carry__5_n_1\ : STD_LOGIC;
  signal \counter0_carry__5_n_2\ : STD_LOGIC;
  signal \counter0_carry__5_n_3\ : STD_LOGIC;
  signal \counter0_carry__6_i_1_n_0\ : STD_LOGIC;
  signal \counter0_carry__6_i_2_n_0\ : STD_LOGIC;
  signal \counter0_carry__6_i_3_n_0\ : STD_LOGIC;
  signal \counter0_carry__6_n_2\ : STD_LOGIC;
  signal \counter0_carry__6_n_3\ : STD_LOGIC;
  signal counter0_carry_i_1_n_0 : STD_LOGIC;
  signal counter0_carry_i_2_n_0 : STD_LOGIC;
  signal counter0_carry_i_3_n_0 : STD_LOGIC;
  signal counter0_carry_i_4_n_0 : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal \counter[31]_i_2_n_0\ : STD_LOGIC;
  signal \counter[31]_i_3_n_0\ : STD_LOGIC;
  signal \counter[31]_i_4_n_0\ : STD_LOGIC;
  signal \counter[31]_i_5_n_0\ : STD_LOGIC;
  signal \counter[31]_i_6_n_0\ : STD_LOGIC;
  signal \counter[31]_i_7_n_0\ : STD_LOGIC;
  signal \counter[31]_i_8_n_0\ : STD_LOGIC;
  signal \counter[31]_i_9_n_0\ : STD_LOGIC;
  signal counter_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal initiate_txn : STD_LOGIC;
  signal initiate_txn_reg_n_0 : STD_LOGIC;
  signal is_last : STD_LOGIC;
  signal is_last_delay : STD_LOGIC;
  signal is_last_i_1_n_0 : STD_LOGIC;
  signal is_last_i_2_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \packet_counter[9]_i_2_n_0\ : STD_LOGIC;
  signal \packet_counter_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal slave_data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \NLW_counter0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[13]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of is_last_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \packet_counter[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \packet_counter[2]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \packet_counter[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \packet_counter[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \packet_counter[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \packet_counter[8]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \packet_counter[9]_i_1\ : label is "soft_lutpair2";
begin
counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter0_carry_n_0,
      CO(2) => counter0_carry_n_1,
      CO(1) => counter0_carry_n_2,
      CO(0) => counter0_carry_n_3,
      CYINIT => counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => counter0_carry_i_1_n_0,
      S(2) => counter0_carry_i_2_n_0,
      S(1) => counter0_carry_i_3_n_0,
      S(0) => counter0_carry_i_4_n_0
    );
\counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter0_carry_n_0,
      CO(3) => \counter0_carry__0_n_0\,
      CO(2) => \counter0_carry__0_n_1\,
      CO(1) => \counter0_carry__0_n_2\,
      CO(0) => \counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \counter0_carry__0_i_1_n_0\,
      S(2) => \counter0_carry__0_i_2_n_0\,
      S(1) => \counter0_carry__0_i_3_n_0\,
      S(0) => \counter0_carry__0_i_4_n_0\
    );
\counter0_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(8),
      O => \counter0_carry__0_i_1_n_0\
    );
\counter0_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(7),
      O => \counter0_carry__0_i_2_n_0\
    );
\counter0_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(6),
      O => \counter0_carry__0_i_3_n_0\
    );
\counter0_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(5),
      O => \counter0_carry__0_i_4_n_0\
    );
\counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__0_n_0\,
      CO(3) => \counter0_carry__1_n_0\,
      CO(2) => \counter0_carry__1_n_1\,
      CO(1) => \counter0_carry__1_n_2\,
      CO(0) => \counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \counter0_carry__1_i_1_n_0\,
      S(2) => \counter0_carry__1_i_2_n_0\,
      S(1) => \counter0_carry__1_i_3_n_0\,
      S(0) => \counter0_carry__1_i_4_n_0\
    );
\counter0_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(12),
      O => \counter0_carry__1_i_1_n_0\
    );
\counter0_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(11),
      O => \counter0_carry__1_i_2_n_0\
    );
\counter0_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(10),
      O => \counter0_carry__1_i_3_n_0\
    );
\counter0_carry__1_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(9),
      O => \counter0_carry__1_i_4_n_0\
    );
\counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__1_n_0\,
      CO(3) => \counter0_carry__2_n_0\,
      CO(2) => \counter0_carry__2_n_1\,
      CO(1) => \counter0_carry__2_n_2\,
      CO(0) => \counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \counter0_carry__2_i_1_n_0\,
      S(2) => \counter0_carry__2_i_2_n_0\,
      S(1) => \counter0_carry__2_i_3_n_0\,
      S(0) => \counter0_carry__2_i_4_n_0\
    );
\counter0_carry__2_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(16),
      O => \counter0_carry__2_i_1_n_0\
    );
\counter0_carry__2_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(15),
      O => \counter0_carry__2_i_2_n_0\
    );
\counter0_carry__2_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(14),
      O => \counter0_carry__2_i_3_n_0\
    );
\counter0_carry__2_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(13),
      O => \counter0_carry__2_i_4_n_0\
    );
\counter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__2_n_0\,
      CO(3) => \counter0_carry__3_n_0\,
      CO(2) => \counter0_carry__3_n_1\,
      CO(1) => \counter0_carry__3_n_2\,
      CO(0) => \counter0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3) => \counter0_carry__3_i_1_n_0\,
      S(2) => \counter0_carry__3_i_2_n_0\,
      S(1) => \counter0_carry__3_i_3_n_0\,
      S(0) => \counter0_carry__3_i_4_n_0\
    );
\counter0_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(20),
      O => \counter0_carry__3_i_1_n_0\
    );
\counter0_carry__3_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(19),
      O => \counter0_carry__3_i_2_n_0\
    );
\counter0_carry__3_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(18),
      O => \counter0_carry__3_i_3_n_0\
    );
\counter0_carry__3_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(17),
      O => \counter0_carry__3_i_4_n_0\
    );
\counter0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__3_n_0\,
      CO(3) => \counter0_carry__4_n_0\,
      CO(2) => \counter0_carry__4_n_1\,
      CO(1) => \counter0_carry__4_n_2\,
      CO(0) => \counter0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3) => \counter0_carry__4_i_1_n_0\,
      S(2) => \counter0_carry__4_i_2_n_0\,
      S(1) => \counter0_carry__4_i_3_n_0\,
      S(0) => \counter0_carry__4_i_4_n_0\
    );
\counter0_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(24),
      O => \counter0_carry__4_i_1_n_0\
    );
\counter0_carry__4_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(23),
      O => \counter0_carry__4_i_2_n_0\
    );
\counter0_carry__4_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(22),
      O => \counter0_carry__4_i_3_n_0\
    );
\counter0_carry__4_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(21),
      O => \counter0_carry__4_i_4_n_0\
    );
\counter0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__4_n_0\,
      CO(3) => \counter0_carry__5_n_0\,
      CO(2) => \counter0_carry__5_n_1\,
      CO(1) => \counter0_carry__5_n_2\,
      CO(0) => \counter0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3) => \counter0_carry__5_i_1_n_0\,
      S(2) => \counter0_carry__5_i_2_n_0\,
      S(1) => \counter0_carry__5_i_3_n_0\,
      S(0) => \counter0_carry__5_i_4_n_0\
    );
\counter0_carry__5_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(28),
      O => \counter0_carry__5_i_1_n_0\
    );
\counter0_carry__5_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(27),
      O => \counter0_carry__5_i_2_n_0\
    );
\counter0_carry__5_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(26),
      O => \counter0_carry__5_i_3_n_0\
    );
\counter0_carry__5_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(25),
      O => \counter0_carry__5_i_4_n_0\
    );
\counter0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_counter0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter0_carry__6_n_2\,
      CO(0) => \counter0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2) => \counter0_carry__6_i_1_n_0\,
      S(1) => \counter0_carry__6_i_2_n_0\,
      S(0) => \counter0_carry__6_i_3_n_0\
    );
\counter0_carry__6_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(31),
      O => \counter0_carry__6_i_1_n_0\
    );
\counter0_carry__6_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(30),
      O => \counter0_carry__6_i_2_n_0\
    );
\counter0_carry__6_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(29),
      O => \counter0_carry__6_i_3_n_0\
    );
counter0_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(4),
      O => counter0_carry_i_1_n_0
    );
counter0_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(3),
      O => counter0_carry_i_2_n_0
    );
counter0_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(2),
      O => counter0_carry_i_3_n_0
    );
counter0_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counter(1),
      O => counter0_carry_i_4_n_0
    );
\counter[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \counter[31]_i_4_n_0\,
      I1 => \counter[31]_i_3_n_0\,
      I2 => \counter[31]_i_2_n_0\,
      I3 => counter(0),
      O => counter_0(0)
    );
\counter[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(10),
      O => counter_0(10)
    );
\counter[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(11),
      O => counter_0(11)
    );
\counter[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(12),
      O => counter_0(12)
    );
\counter[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(13),
      O => counter_0(13)
    );
\counter[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(14),
      O => counter_0(14)
    );
\counter[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(15),
      O => counter_0(15)
    );
\counter[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(16),
      O => counter_0(16)
    );
\counter[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(17),
      O => counter_0(17)
    );
\counter[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(18),
      O => counter_0(18)
    );
\counter[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(19),
      O => counter_0(19)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(1),
      O => counter_0(1)
    );
\counter[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(20),
      O => counter_0(20)
    );
\counter[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(21),
      O => counter_0(21)
    );
\counter[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(22),
      O => counter_0(22)
    );
\counter[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(23),
      O => counter_0(23)
    );
\counter[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(24),
      O => counter_0(24)
    );
\counter[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(25),
      O => counter_0(25)
    );
\counter[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(26),
      O => counter_0(26)
    );
\counter[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(27),
      O => counter_0(27)
    );
\counter[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(28),
      O => counter_0(28)
    );
\counter[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(29),
      O => counter_0(29)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(2),
      O => counter_0(2)
    );
\counter[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(30),
      O => counter_0(30)
    );
\counter[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(31),
      O => counter_0(31)
    );
\counter[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => counter(12),
      I1 => counter(13),
      I2 => counter(10),
      I3 => counter(11),
      I4 => \counter[31]_i_5_n_0\,
      O => \counter[31]_i_2_n_0\
    );
\counter[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => counter(4),
      I1 => counter(5),
      I2 => counter(2),
      I3 => counter(3),
      I4 => \counter[31]_i_6_n_0\,
      O => \counter[31]_i_3_n_0\
    );
\counter[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \counter[31]_i_7_n_0\,
      I1 => \counter[31]_i_8_n_0\,
      I2 => counter(31),
      I3 => counter(30),
      I4 => counter(1),
      I5 => \counter[31]_i_9_n_0\,
      O => \counter[31]_i_4_n_0\
    );
\counter[31]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(15),
      I1 => counter(14),
      I2 => counter(17),
      I3 => counter(16),
      O => \counter[31]_i_5_n_0\
    );
\counter[31]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => counter(7),
      I1 => counter(6),
      I2 => counter(9),
      I3 => counter(8),
      O => \counter[31]_i_6_n_0\
    );
\counter[31]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(23),
      I1 => counter(22),
      I2 => counter(25),
      I3 => counter(24),
      O => \counter[31]_i_7_n_0\
    );
\counter[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(19),
      I1 => counter(18),
      I2 => counter(21),
      I3 => counter(20),
      O => \counter[31]_i_8_n_0\
    );
\counter[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(27),
      I1 => counter(26),
      I2 => counter(29),
      I3 => counter(28),
      O => \counter[31]_i_9_n_0\
    );
\counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(3),
      O => counter_0(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(4),
      O => counter_0(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(5),
      O => counter_0(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(6),
      O => counter_0(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(7),
      O => counter_0(7)
    );
\counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(8),
      O => counter_0(8)
    );
\counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      I4 => data0(9),
      O => counter_0(9)
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(0),
      Q => counter(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(10),
      Q => counter(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(11),
      Q => counter(11)
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(12),
      Q => counter(12)
    );
\counter_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(13),
      Q => counter(13)
    );
\counter_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(14),
      Q => counter(14)
    );
\counter_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(15),
      Q => counter(15)
    );
\counter_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(16),
      Q => counter(16)
    );
\counter_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(17),
      Q => counter(17)
    );
\counter_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(18),
      Q => counter(18)
    );
\counter_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(19),
      Q => counter(19)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(1),
      Q => counter(1)
    );
\counter_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(20),
      Q => counter(20)
    );
\counter_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(21),
      Q => counter(21)
    );
\counter_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(22),
      Q => counter(22)
    );
\counter_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(23),
      Q => counter(23)
    );
\counter_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(24),
      Q => counter(24)
    );
\counter_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(25),
      Q => counter(25)
    );
\counter_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(26),
      Q => counter(26)
    );
\counter_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(27),
      Q => counter(27)
    );
\counter_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(28),
      Q => counter(28)
    );
\counter_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(29),
      Q => counter(29)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(2),
      Q => counter(2)
    );
\counter_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(30),
      Q => counter(30)
    );
\counter_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(31),
      Q => counter(31)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(3),
      Q => counter(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(4),
      Q => counter(4)
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(5),
      Q => counter(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(6),
      Q => counter(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(7),
      Q => counter(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(8),
      Q => counter(8)
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => counter_0(9),
      Q => counter(9)
    );
geralds_decimator_v1_0_signal_out_inst: entity work.design_1_geralds_decimator_0_0_geralds_decimator_v1_0_signal_out
     port map (
      Q(31 downto 0) => slave_data(31 downto 0),
      initiate_txn_reg => initiate_txn_reg_n_0,
      is_last_delay => is_last_delay,
      p_0_in => p_0_in,
      signal_in_aclk => signal_in_aclk,
      signal_in_aresetn => signal_in_aresetn,
      signal_out_tdata(31 downto 0) => signal_out_tdata(31 downto 0),
      signal_out_tlast => signal_out_tlast,
      signal_out_tready => signal_out_tready,
      signal_out_tvalid => signal_out_tvalid
    );
initiate_txn_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => counter(0),
      I1 => \counter[31]_i_2_n_0\,
      I2 => \counter[31]_i_3_n_0\,
      I3 => \counter[31]_i_4_n_0\,
      O => initiate_txn
    );
initiate_txn_reg: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => initiate_txn,
      Q => initiate_txn_reg_n_0
    );
is_last_delay_reg: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => is_last,
      Q => is_last_delay
    );
is_last_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555700000001"
    )
        port map (
      I0 => is_last_i_2_n_0,
      I1 => counter(0),
      I2 => \counter[31]_i_2_n_0\,
      I3 => \counter[31]_i_3_n_0\,
      I4 => \counter[31]_i_4_n_0\,
      I5 => is_last,
      O => is_last_i_1_n_0
    );
is_last_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => \packet_counter_reg__0\(8),
      I1 => \packet_counter_reg__0\(6),
      I2 => \packet_counter[9]_i_2_n_0\,
      I3 => \packet_counter_reg__0\(7),
      I4 => \packet_counter_reg__0\(9),
      O => is_last_i_2_n_0
    );
is_last_reg: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => '1',
      CLR => p_0_in,
      D => is_last_i_1_n_0,
      Q => is_last
    );
\packet_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \packet_counter_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\packet_counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \packet_counter_reg__0\(0),
      I1 => \packet_counter_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\packet_counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \packet_counter_reg__0\(1),
      I1 => \packet_counter_reg__0\(0),
      I2 => \packet_counter_reg__0\(2),
      O => \p_0_in__0\(2)
    );
\packet_counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \packet_counter_reg__0\(2),
      I1 => \packet_counter_reg__0\(0),
      I2 => \packet_counter_reg__0\(1),
      I3 => \packet_counter_reg__0\(3),
      O => \p_0_in__0\(3)
    );
\packet_counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \packet_counter_reg__0\(3),
      I1 => \packet_counter_reg__0\(1),
      I2 => \packet_counter_reg__0\(0),
      I3 => \packet_counter_reg__0\(2),
      I4 => \packet_counter_reg__0\(4),
      O => \p_0_in__0\(4)
    );
\packet_counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \packet_counter_reg__0\(4),
      I1 => \packet_counter_reg__0\(2),
      I2 => \packet_counter_reg__0\(0),
      I3 => \packet_counter_reg__0\(1),
      I4 => \packet_counter_reg__0\(3),
      I5 => \packet_counter_reg__0\(5),
      O => \p_0_in__0\(5)
    );
\packet_counter[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \packet_counter[9]_i_2_n_0\,
      I1 => \packet_counter_reg__0\(6),
      O => \p_0_in__0\(6)
    );
\packet_counter[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => \packet_counter_reg__0\(6),
      I1 => \packet_counter[9]_i_2_n_0\,
      I2 => \packet_counter_reg__0\(7),
      O => \p_0_in__0\(7)
    );
\packet_counter[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => \packet_counter_reg__0\(7),
      I1 => \packet_counter[9]_i_2_n_0\,
      I2 => \packet_counter_reg__0\(6),
      I3 => \packet_counter_reg__0\(8),
      O => \p_0_in__0\(8)
    );
\packet_counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => \packet_counter_reg__0\(8),
      I1 => \packet_counter_reg__0\(6),
      I2 => \packet_counter[9]_i_2_n_0\,
      I3 => \packet_counter_reg__0\(7),
      I4 => \packet_counter_reg__0\(9),
      O => \p_0_in__0\(9)
    );
\packet_counter[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \packet_counter_reg__0\(4),
      I1 => \packet_counter_reg__0\(2),
      I2 => \packet_counter_reg__0\(0),
      I3 => \packet_counter_reg__0\(1),
      I4 => \packet_counter_reg__0\(3),
      I5 => \packet_counter_reg__0\(5),
      O => \packet_counter[9]_i_2_n_0\
    );
\packet_counter_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => initiate_txn,
      CLR => p_0_in,
      D => \p_0_in__0\(0),
      Q => \packet_counter_reg__0\(0)
    );
\packet_counter_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => initiate_txn,
      CLR => p_0_in,
      D => \p_0_in__0\(1),
      Q => \packet_counter_reg__0\(1)
    );
\packet_counter_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => initiate_txn,
      CLR => p_0_in,
      D => \p_0_in__0\(2),
      Q => \packet_counter_reg__0\(2)
    );
\packet_counter_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => initiate_txn,
      CLR => p_0_in,
      D => \p_0_in__0\(3),
      Q => \packet_counter_reg__0\(3)
    );
\packet_counter_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => initiate_txn,
      CLR => p_0_in,
      D => \p_0_in__0\(4),
      Q => \packet_counter_reg__0\(4)
    );
\packet_counter_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => initiate_txn,
      CLR => p_0_in,
      D => \p_0_in__0\(5),
      Q => \packet_counter_reg__0\(5)
    );
\packet_counter_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => initiate_txn,
      CLR => p_0_in,
      D => \p_0_in__0\(6),
      Q => \packet_counter_reg__0\(6)
    );
\packet_counter_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => initiate_txn,
      CLR => p_0_in,
      D => \p_0_in__0\(7),
      Q => \packet_counter_reg__0\(7)
    );
\packet_counter_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => initiate_txn,
      CLR => p_0_in,
      D => \p_0_in__0\(8),
      Q => \packet_counter_reg__0\(8)
    );
\packet_counter_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => initiate_txn,
      CLR => p_0_in,
      D => \p_0_in__0\(9),
      Q => \packet_counter_reg__0\(9)
    );
\slave_data_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(0),
      Q => slave_data(0)
    );
\slave_data_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(10),
      Q => slave_data(10)
    );
\slave_data_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(11),
      Q => slave_data(11)
    );
\slave_data_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(12),
      Q => slave_data(12)
    );
\slave_data_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(13),
      Q => slave_data(13)
    );
\slave_data_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(14),
      Q => slave_data(14)
    );
\slave_data_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(15),
      Q => slave_data(15)
    );
\slave_data_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(16),
      Q => slave_data(16)
    );
\slave_data_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(17),
      Q => slave_data(17)
    );
\slave_data_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(18),
      Q => slave_data(18)
    );
\slave_data_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(19),
      Q => slave_data(19)
    );
\slave_data_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(1),
      Q => slave_data(1)
    );
\slave_data_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(20),
      Q => slave_data(20)
    );
\slave_data_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(21),
      Q => slave_data(21)
    );
\slave_data_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(22),
      Q => slave_data(22)
    );
\slave_data_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(23),
      Q => slave_data(23)
    );
\slave_data_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(24),
      Q => slave_data(24)
    );
\slave_data_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(25),
      Q => slave_data(25)
    );
\slave_data_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(26),
      Q => slave_data(26)
    );
\slave_data_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(27),
      Q => slave_data(27)
    );
\slave_data_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(28),
      Q => slave_data(28)
    );
\slave_data_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(29),
      Q => slave_data(29)
    );
\slave_data_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(2),
      Q => slave_data(2)
    );
\slave_data_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(30),
      Q => slave_data(30)
    );
\slave_data_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(31),
      Q => slave_data(31)
    );
\slave_data_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(3),
      Q => slave_data(3)
    );
\slave_data_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(4),
      Q => slave_data(4)
    );
\slave_data_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(5),
      Q => slave_data(5)
    );
\slave_data_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(6),
      Q => slave_data(6)
    );
\slave_data_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(7),
      Q => slave_data(7)
    );
\slave_data_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(8),
      Q => slave_data(8)
    );
\slave_data_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => signal_in_aclk,
      CE => signal_in_tvalid,
      CLR => p_0_in,
      D => signal_in_tdata(9),
      Q => slave_data(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_geralds_decimator_0_0 is
  port (
    signal_in_aclk : in STD_LOGIC;
    signal_in_aresetn : in STD_LOGIC;
    signal_in_tready : out STD_LOGIC;
    signal_in_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    signal_in_tstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    signal_in_tlast : in STD_LOGIC;
    signal_in_tvalid : in STD_LOGIC;
    signal_out_tvalid : out STD_LOGIC;
    signal_out_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    signal_out_tstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    signal_out_tlast : out STD_LOGIC;
    signal_out_tready : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_geralds_decimator_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_geralds_decimator_0_0 : entity is "design_1_geralds_decimator_0_0,geralds_decimator_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_geralds_decimator_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_geralds_decimator_0_0 : entity is "geralds_decimator_v1_0,Vivado 2017.2";
end design_1_geralds_decimator_0_0;

architecture STRUCTURE of design_1_geralds_decimator_0_0 is
  signal \<const1>\ : STD_LOGIC;
begin
  signal_in_tready <= \<const1>\;
  signal_out_tstrb(3) <= \<const1>\;
  signal_out_tstrb(2) <= \<const1>\;
  signal_out_tstrb(1) <= \<const1>\;
  signal_out_tstrb(0) <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_geralds_decimator_0_0_geralds_decimator_v1_0
     port map (
      signal_in_aclk => signal_in_aclk,
      signal_in_aresetn => signal_in_aresetn,
      signal_in_tdata(31 downto 0) => signal_in_tdata(31 downto 0),
      signal_in_tvalid => signal_in_tvalid,
      signal_out_tdata(31 downto 0) => signal_out_tdata(31 downto 0),
      signal_out_tlast => signal_out_tlast,
      signal_out_tready => signal_out_tready,
      signal_out_tvalid => signal_out_tvalid
    );
end STRUCTURE;

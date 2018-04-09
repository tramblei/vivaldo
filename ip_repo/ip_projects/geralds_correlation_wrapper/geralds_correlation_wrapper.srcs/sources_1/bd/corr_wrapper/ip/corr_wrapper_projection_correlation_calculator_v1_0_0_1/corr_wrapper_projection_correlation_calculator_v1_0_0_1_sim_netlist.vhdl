-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
-- Date        : Tue Mar 20 12:57:25 2018
-- Host        : ug69 running 64-bit Debian GNU/Linux 9.4 (stretch)
-- Command     : write_vhdl -force -mode funcsim
--               /nfs/ug/homes-1/t/tramblei/vivaldo/ip_repo/ip_projects/geralds_correlation_wrapper/geralds_correlation_wrapper.srcs/sources_1/bd/corr_wrapper/ip/corr_wrapper_projection_correlation_calculator_v1_0_0_1/corr_wrapper_projection_correlation_calculator_v1_0_0_1_sim_netlist.vhdl
-- Design      : corr_wrapper_projection_correlation_calculator_v1_0_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity corr_wrapper_projection_correlation_calculator_v1_0_0_1_projection_correlation_calculator_v1_0_correlation_out_AXI is
  port (
    correlation_out_axi_wready : out STD_LOGIC;
    correlation_out_axi_awready : out STD_LOGIC;
    correlation_out_axi_arready : out STD_LOGIC;
    correlation_out_axi_rvalid : out STD_LOGIC;
    correlation_out_axi_bvalid : out STD_LOGIC;
    correlation_out_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    correlation_out_axi_aclk : in STD_LOGIC;
    correlation_out_axi_arvalid : in STD_LOGIC;
    correlation_out_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    correlation_out_axi_awvalid : in STD_LOGIC;
    correlation_out_axi_wvalid : in STD_LOGIC;
    correlation_out_axi_bready : in STD_LOGIC;
    correlation_out_axi_rready : in STD_LOGIC;
    dot_product_valid : in STD_LOGIC;
    correlation_out_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    correlation_normalized_valid : in STD_LOGIC;
    correlation_normalized : in STD_LOGIC_VECTOR ( 31 downto 0 );
    correlation_out_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    correlation_out_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    correlation_out_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of corr_wrapper_projection_correlation_calculator_v1_0_0_1_projection_correlation_calculator_v1_0_correlation_out_AXI : entity is "projection_correlation_calculator_v1_0_correlation_out_AXI";
end corr_wrapper_projection_correlation_calculator_v1_0_0_1_projection_correlation_calculator_v1_0_correlation_out_AXI;

architecture STRUCTURE of corr_wrapper_projection_correlation_calculator_v1_0_0_1_projection_correlation_calculator_v1_0_correlation_out_AXI is
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal axi_awaddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \^correlation_out_axi_arready\ : STD_LOGIC;
  signal \^correlation_out_axi_awready\ : STD_LOGIC;
  signal \^correlation_out_axi_bvalid\ : STD_LOGIC;
  signal \^correlation_out_axi_rvalid\ : STD_LOGIC;
  signal \^correlation_out_axi_wready\ : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 to 31 );
  signal \slv_reg0[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_2_n_0\ : STD_LOGIC;
  signal \slv_reg0[31]_i_3_n_0\ : STD_LOGIC;
  signal \slv_reg0[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[10]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[11]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[12]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[13]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[14]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[15]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[16]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[17]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[18]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[19]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[1]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[20]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[21]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[22]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[23]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[24]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[25]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[26]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[27]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[28]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[29]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[2]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[30]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[31]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[3]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[4]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[5]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[6]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[7]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[8]\ : STD_LOGIC;
  signal \slv_reg0_reg_n_0_[9]\ : STD_LOGIC;
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[0]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3_reg_n_0_[0]\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_rvalid_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \slv_reg0[31]_i_3\ : label is "soft_lutpair1";
begin
  correlation_out_axi_arready <= \^correlation_out_axi_arready\;
  correlation_out_axi_awready <= \^correlation_out_axi_awready\;
  correlation_out_axi_bvalid <= \^correlation_out_axi_bvalid\;
  correlation_out_axi_rvalid <= \^correlation_out_axi_rvalid\;
  correlation_out_axi_wready <= \^correlation_out_axi_wready\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => correlation_out_axi_wvalid,
      I1 => aw_en_reg_n_0,
      I2 => \^correlation_out_axi_awready\,
      I3 => correlation_out_axi_awvalid,
      I4 => correlation_out_axi_bready,
      I5 => \^correlation_out_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => correlation_out_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => correlation_out_axi_araddr(0),
      I1 => correlation_out_axi_arvalid,
      I2 => \^correlation_out_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => correlation_out_axi_araddr(1),
      I1 => correlation_out_axi_arvalid,
      I2 => \^correlation_out_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => correlation_out_axi_arvalid,
      I1 => \^correlation_out_axi_arready\,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^correlation_out_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => correlation_out_axi_awaddr(0),
      I1 => correlation_out_axi_awvalid,
      I2 => \^correlation_out_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => correlation_out_axi_wvalid,
      I5 => axi_awaddr(2),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => correlation_out_axi_awaddr(1),
      I1 => correlation_out_axi_awvalid,
      I2 => \^correlation_out_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => correlation_out_axi_wvalid,
      I5 => axi_awaddr(3),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => axi_awaddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => axi_awaddr(3),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => correlation_out_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => correlation_out_axi_awvalid,
      I1 => \^correlation_out_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => correlation_out_axi_wvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^correlation_out_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => correlation_out_axi_awvalid,
      I1 => correlation_out_axi_wvalid,
      I2 => \^correlation_out_axi_wready\,
      I3 => \^correlation_out_axi_awready\,
      I4 => correlation_out_axi_bready,
      I5 => \^correlation_out_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^correlation_out_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0AC00AC"
    )
        port map (
      I0 => slv_reg1(0),
      I1 => \slv_reg0_reg_n_0_[0]\,
      I2 => axi_araddr(2),
      I3 => axi_araddr(3),
      I4 => \slv_reg3_reg_n_0_[0]\,
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[10]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[11]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[12]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[13]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[14]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[15]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[16]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[17]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[18]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[19]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[1]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[20]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[21]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[22]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[23]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[24]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[25]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[26]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[27]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[28]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[29]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[2]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[30]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[31]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[3]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[4]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[5]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[6]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[7]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[8]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0E02"
    )
        port map (
      I0 => \slv_reg0_reg_n_0_[9]\,
      I1 => axi_araddr(2),
      I2 => axi_araddr(3),
      I3 => slv_reg1(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => correlation_out_axi_rdata(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => correlation_out_axi_rdata(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => correlation_out_axi_rdata(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => correlation_out_axi_rdata(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => correlation_out_axi_rdata(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => correlation_out_axi_rdata(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => correlation_out_axi_rdata(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => correlation_out_axi_rdata(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => correlation_out_axi_rdata(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => correlation_out_axi_rdata(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => correlation_out_axi_rdata(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => correlation_out_axi_rdata(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => correlation_out_axi_rdata(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => correlation_out_axi_rdata(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => correlation_out_axi_rdata(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => correlation_out_axi_rdata(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => correlation_out_axi_rdata(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => correlation_out_axi_rdata(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => correlation_out_axi_rdata(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => correlation_out_axi_rdata(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => correlation_out_axi_rdata(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => correlation_out_axi_rdata(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => correlation_out_axi_rdata(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => correlation_out_axi_rdata(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => correlation_out_axi_rdata(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => correlation_out_axi_rdata(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => correlation_out_axi_rdata(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => correlation_out_axi_rdata(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => correlation_out_axi_rdata(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => correlation_out_axi_rdata(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => correlation_out_axi_rdata(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => correlation_out_axi_rdata(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^correlation_out_axi_arready\,
      I1 => correlation_out_axi_arvalid,
      I2 => \^correlation_out_axi_rvalid\,
      I3 => correlation_out_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^correlation_out_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^correlation_out_axi_wready\,
      I1 => correlation_out_axi_wvalid,
      I2 => correlation_out_axi_awvalid,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^correlation_out_axi_wready\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBF8"
    )
        port map (
      I0 => correlation_out_axi_wdata(0),
      I1 => \slv_reg0[7]_i_1_n_0\,
      I2 => correlation_normalized_valid,
      I3 => \slv_reg0_reg_n_0_[0]\,
      O => \slv_reg0[0]_i_1_n_0\
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => correlation_out_axi_wstrb(1),
      I3 => \slv_reg0[31]_i_3_n_0\,
      O => \slv_reg0[15]_i_1_n_0\
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => correlation_out_axi_wstrb(2),
      I3 => \slv_reg0[31]_i_3_n_0\,
      O => \slv_reg0[23]_i_1_n_0\
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => correlation_normalized_valid,
      I1 => correlation_out_axi_aresetn,
      O => slv_reg0(31)
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => correlation_out_axi_wstrb(3),
      I3 => \slv_reg0[31]_i_3_n_0\,
      O => \slv_reg0[31]_i_2_n_0\
    );
\slv_reg0[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => correlation_out_axi_awvalid,
      I1 => correlation_out_axi_wvalid,
      I2 => \^correlation_out_axi_wready\,
      I3 => \^correlation_out_axi_awready\,
      O => \slv_reg0[31]_i_3_n_0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => axi_awaddr(3),
      I1 => axi_awaddr(2),
      I2 => correlation_out_axi_wstrb(0),
      I3 => \slv_reg0[31]_i_3_n_0\,
      O => \slv_reg0[7]_i_1_n_0\
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => '1',
      D => \slv_reg0[0]_i_1_n_0\,
      Q => \slv_reg0_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => correlation_out_axi_wdata(10),
      Q => \slv_reg0_reg_n_0_[10]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => correlation_out_axi_wdata(11),
      Q => \slv_reg0_reg_n_0_[11]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => correlation_out_axi_wdata(12),
      Q => \slv_reg0_reg_n_0_[12]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => correlation_out_axi_wdata(13),
      Q => \slv_reg0_reg_n_0_[13]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => correlation_out_axi_wdata(14),
      Q => \slv_reg0_reg_n_0_[14]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => correlation_out_axi_wdata(15),
      Q => \slv_reg0_reg_n_0_[15]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => correlation_out_axi_wdata(16),
      Q => \slv_reg0_reg_n_0_[16]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => correlation_out_axi_wdata(17),
      Q => \slv_reg0_reg_n_0_[17]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => correlation_out_axi_wdata(18),
      Q => \slv_reg0_reg_n_0_[18]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => correlation_out_axi_wdata(19),
      Q => \slv_reg0_reg_n_0_[19]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => correlation_out_axi_wdata(1),
      Q => \slv_reg0_reg_n_0_[1]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => correlation_out_axi_wdata(20),
      Q => \slv_reg0_reg_n_0_[20]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => correlation_out_axi_wdata(21),
      Q => \slv_reg0_reg_n_0_[21]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => correlation_out_axi_wdata(22),
      Q => \slv_reg0_reg_n_0_[22]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[23]_i_1_n_0\,
      D => correlation_out_axi_wdata(23),
      Q => \slv_reg0_reg_n_0_[23]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[31]_i_2_n_0\,
      D => correlation_out_axi_wdata(24),
      Q => \slv_reg0_reg_n_0_[24]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[31]_i_2_n_0\,
      D => correlation_out_axi_wdata(25),
      Q => \slv_reg0_reg_n_0_[25]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[31]_i_2_n_0\,
      D => correlation_out_axi_wdata(26),
      Q => \slv_reg0_reg_n_0_[26]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[31]_i_2_n_0\,
      D => correlation_out_axi_wdata(27),
      Q => \slv_reg0_reg_n_0_[27]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[31]_i_2_n_0\,
      D => correlation_out_axi_wdata(28),
      Q => \slv_reg0_reg_n_0_[28]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[31]_i_2_n_0\,
      D => correlation_out_axi_wdata(29),
      Q => \slv_reg0_reg_n_0_[29]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => correlation_out_axi_wdata(2),
      Q => \slv_reg0_reg_n_0_[2]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[31]_i_2_n_0\,
      D => correlation_out_axi_wdata(30),
      Q => \slv_reg0_reg_n_0_[30]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[31]_i_2_n_0\,
      D => correlation_out_axi_wdata(31),
      Q => \slv_reg0_reg_n_0_[31]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => correlation_out_axi_wdata(3),
      Q => \slv_reg0_reg_n_0_[3]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => correlation_out_axi_wdata(4),
      Q => \slv_reg0_reg_n_0_[4]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => correlation_out_axi_wdata(5),
      Q => \slv_reg0_reg_n_0_[5]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => correlation_out_axi_wdata(6),
      Q => \slv_reg0_reg_n_0_[6]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[7]_i_1_n_0\,
      D => correlation_out_axi_wdata(7),
      Q => \slv_reg0_reg_n_0_[7]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => correlation_out_axi_wdata(8),
      Q => \slv_reg0_reg_n_0_[8]\,
      R => slv_reg0(31)
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => \slv_reg0[15]_i_1_n_0\,
      D => correlation_out_axi_wdata(9),
      Q => \slv_reg0_reg_n_0_[9]\,
      R => slv_reg0(31)
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(0),
      Q => slv_reg1(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(10),
      Q => slv_reg1(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(11),
      Q => slv_reg1(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(12),
      Q => slv_reg1(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(13),
      Q => slv_reg1(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(14),
      Q => slv_reg1(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(15),
      Q => slv_reg1(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(16),
      Q => slv_reg1(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(17),
      Q => slv_reg1(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(18),
      Q => slv_reg1(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(19),
      Q => slv_reg1(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(1),
      Q => slv_reg1(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(20),
      Q => slv_reg1(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(21),
      Q => slv_reg1(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(22),
      Q => slv_reg1(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(23),
      Q => slv_reg1(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(24),
      Q => slv_reg1(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(25),
      Q => slv_reg1(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(26),
      Q => slv_reg1(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(27),
      Q => slv_reg1(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(28),
      Q => slv_reg1(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(29),
      Q => slv_reg1(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(2),
      Q => slv_reg1(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(30),
      Q => slv_reg1(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(31),
      Q => slv_reg1(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(3),
      Q => slv_reg1(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(4),
      Q => slv_reg1(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(5),
      Q => slv_reg1(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(6),
      Q => slv_reg1(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(7),
      Q => slv_reg1(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(8),
      Q => slv_reg1(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => correlation_normalized_valid,
      D => correlation_normalized(9),
      Q => slv_reg1(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg3[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => dot_product_valid,
      I1 => \slv_reg3_reg_n_0_[0]\,
      O => \slv_reg3[0]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => correlation_out_axi_aclk,
      CE => '1',
      D => \slv_reg3[0]_i_1_n_0\,
      Q => \slv_reg3_reg_n_0_[0]\,
      R => axi_awready_i_1_n_0
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^correlation_out_axi_rvalid\,
      I1 => correlation_out_axi_arvalid,
      I2 => \^correlation_out_axi_arready\,
      O => \slv_reg_rden__0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity corr_wrapper_projection_correlation_calculator_v1_0_0_1_projection_correlation_calculator_v1_0_golden_fft_AXIS is
  port (
    golden_fft_axis_tready : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sum_reg[0]\ : out STD_LOGIC;
    \fifo_read_reg[0]_rep__3\ : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \fifo_read_reg[9]\ : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sum0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    sum0_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    B : out STD_LOGIC_VECTOR ( 15 downto 0 );
    golden_fft_axis_aclk : in STD_LOGIC;
    golden_fft_axis_tvalid : in STD_LOGIC;
    data_ready : in STD_LOGIC;
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    \write_pointer_reg[9]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    restart : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 9 downto 0 );
    ADDRA : in STD_LOGIC_VECTOR ( 0 to 0 );
    golden_fft_axis_aresetn : in STD_LOGIC;
    golden_fft_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \fifo_read_reg[3]_rep__3\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ADDRB : in STD_LOGIC_VECTOR ( 0 to 0 );
    ADDRC : in STD_LOGIC_VECTOR ( 0 to 0 );
    \fifo_read_reg[3]_rep__1\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \fifo_read_reg[0]_rep__1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \fifo_read_reg[1]_rep__1\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of corr_wrapper_projection_correlation_calculator_v1_0_0_1_projection_correlation_calculator_v1_0_golden_fft_AXIS : entity is "projection_correlation_calculator_v1_0_golden_fft_AXIS";
end corr_wrapper_projection_correlation_calculator_v1_0_0_1_projection_correlation_calculator_v1_0_golden_fft_AXIS;

architecture STRUCTURE of corr_wrapper_projection_correlation_calculator_v1_0_0_1_projection_correlation_calculator_v1_0_golden_fft_AXIS is
  signal \^fifo_read_reg[9]\ : STD_LOGIC;
  signal \^golden_fft_axis_tready\ : STD_LOGIC;
  signal golden_fifo_write : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal golden_read_data_mag0_i_100_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_101_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_102_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_103_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_104_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_105_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_106_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_107_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_108_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_109_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_110_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_111_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_112_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_17_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_18_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_19_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_20_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_21_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_22_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_23_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_24_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_25_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_26_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_27_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_28_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_29_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_30_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_31_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_32_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_33_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_34_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_35_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_36_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_37_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_38_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_39_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_40_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_41_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_42_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_43_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_44_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_45_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_46_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_47_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_48_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_49_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_50_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_51_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_52_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_53_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_54_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_55_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_56_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_57_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_58_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_59_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_60_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_61_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_62_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_63_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_64_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_65_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_66_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_67_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_68_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_69_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_70_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_71_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_72_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_73_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_74_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_75_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_76_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_77_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_78_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_79_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_80_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_81_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_82_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_83_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_84_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_85_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_86_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_87_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_88_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_89_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_90_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_91_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_92_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_93_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_94_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_95_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_96_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_97_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_98_n_0 : STD_LOGIC;
  signal golden_read_data_mag0_i_99_n_0 : STD_LOGIC;
  signal \mst_exec_state_i_1__0_n_0\ : STD_LOGIC;
  signal \stream_data_fifo_reg_0_63_0_2_i_1__0_n_0\ : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_9_11_n_2 : STD_LOGIC;
  signal \stream_data_fifo_reg_128_191_0_2_i_1__0_n_0\ : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_9_11_n_2 : STD_LOGIC;
  signal \stream_data_fifo_reg_192_255_0_2_i_1__0_n_0\ : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_9_11_n_2 : STD_LOGIC;
  signal \stream_data_fifo_reg_256_319_0_2_i_1__0_n_0\ : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_9_11_n_2 : STD_LOGIC;
  signal \stream_data_fifo_reg_320_383_0_2_i_1__0_n_0\ : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_9_11_n_2 : STD_LOGIC;
  signal \stream_data_fifo_reg_384_447_0_2_i_1__0_n_0\ : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_9_11_n_2 : STD_LOGIC;
  signal \stream_data_fifo_reg_448_511_0_2_i_1__0_n_0\ : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_9_11_n_2 : STD_LOGIC;
  signal \stream_data_fifo_reg_512_575_0_2_i_1__0_n_0\ : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_9_11_n_2 : STD_LOGIC;
  signal \stream_data_fifo_reg_576_639_0_2_i_1__0_n_0\ : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_9_11_n_2 : STD_LOGIC;
  signal \stream_data_fifo_reg_640_703_0_2_i_1__0_n_0\ : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_9_11_n_2 : STD_LOGIC;
  signal \stream_data_fifo_reg_64_127_0_2_i_1__0_n_0\ : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_9_11_n_2 : STD_LOGIC;
  signal \stream_data_fifo_reg_704_767_0_2_i_1__0_n_0\ : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_9_11_n_2 : STD_LOGIC;
  signal \stream_data_fifo_reg_768_831_0_2_i_1__0_n_0\ : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_9_11_n_2 : STD_LOGIC;
  signal \stream_data_fifo_reg_832_895_0_2_i_1__0_n_0\ : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_9_11_n_2 : STD_LOGIC;
  signal \stream_data_fifo_reg_896_959_0_2_i_1__0_n_0\ : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_9_11_n_2 : STD_LOGIC;
  signal \stream_data_fifo_reg_960_1023_0_2_i_1__0_n_0\ : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_9_11_n_2 : STD_LOGIC;
  signal \^sum_reg[0]\ : STD_LOGIC;
  signal \write_pointer[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \write_pointer[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \write_pointer[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \write_pointer[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \write_pointer[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \write_pointer[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \write_pointer[5]_i_2_n_0\ : STD_LOGIC;
  signal \write_pointer[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \write_pointer[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \write_pointer[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \write_pointer[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \write_pointer[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \write_pointer[9]_i_3__0_n_0\ : STD_LOGIC;
  signal \write_pointer[9]_i_4__0_n_0\ : STD_LOGIC;
  signal \write_pointer[9]_i_5__0_n_0\ : STD_LOGIC;
  signal \write_pointer[9]_i_6__0_n_0\ : STD_LOGIC;
  signal \writes_done_i_1__0_n_0\ : STD_LOGIC;
  signal writes_done_i_2_n_0 : STD_LOGIC;
  signal writes_done_reg_n_0 : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_0_63_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_0_63_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_0_63_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_0_63_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_128_191_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_128_191_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_128_191_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_128_191_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_128_191_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_128_191_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_192_255_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_192_255_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_192_255_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_192_255_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_192_255_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_192_255_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_256_319_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_256_319_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_256_319_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_256_319_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_256_319_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_256_319_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_320_383_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_320_383_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_320_383_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_320_383_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_320_383_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_320_383_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_384_447_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_384_447_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_384_447_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_384_447_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_384_447_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_384_447_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_448_511_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_448_511_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_448_511_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_448_511_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_448_511_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_448_511_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_512_575_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_512_575_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_512_575_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_512_575_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_512_575_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_512_575_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_576_639_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_576_639_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_576_639_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_576_639_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_576_639_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_576_639_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_640_703_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_640_703_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_640_703_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_640_703_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_640_703_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_640_703_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_64_127_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_64_127_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_64_127_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_64_127_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_64_127_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_64_127_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_704_767_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_704_767_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_704_767_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_704_767_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_704_767_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_704_767_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_768_831_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_768_831_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_768_831_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_768_831_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_768_831_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_768_831_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_832_895_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_832_895_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_832_895_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_832_895_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_832_895_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_832_895_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_896_959_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_896_959_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_896_959_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_896_959_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_896_959_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_896_959_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_960_1023_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_960_1023_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_960_1023_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_960_1023_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_960_1023_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_960_1023_9_11_DOD_UNCONNECTED : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \fifo_read[9]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \mst_exec_state_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \signal_read_data_mag[47]_i_1\ : label is "soft_lutpair4";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_0_63_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_0_63_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_0_63_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_0_63_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_0_63_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_128_191_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_128_191_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_128_191_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_128_191_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_128_191_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_192_255_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_192_255_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_192_255_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_192_255_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_192_255_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_256_319_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_256_319_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_256_319_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_256_319_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_256_319_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_320_383_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_320_383_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_320_383_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_320_383_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_320_383_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_384_447_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_384_447_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_384_447_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_384_447_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_384_447_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_448_511_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_448_511_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_448_511_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_448_511_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_448_511_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_512_575_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_512_575_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_512_575_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_512_575_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_512_575_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_576_639_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_576_639_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_576_639_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_576_639_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_576_639_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_640_703_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_640_703_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_640_703_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_640_703_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_640_703_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_64_127_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_64_127_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_64_127_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_64_127_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_64_127_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_704_767_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_704_767_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_704_767_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_704_767_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_704_767_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_768_831_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_768_831_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_768_831_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_768_831_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_768_831_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_832_895_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_832_895_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_832_895_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_832_895_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_832_895_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_896_959_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_896_959_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_896_959_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_896_959_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_896_959_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_960_1023_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_960_1023_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_960_1023_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_960_1023_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_960_1023_9_11 : label is "";
  attribute SOFT_HLUTNM of \write_pointer[0]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \write_pointer[1]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \write_pointer[2]_i_1__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \write_pointer[6]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \write_pointer[7]_i_1__0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \write_pointer[9]_i_4__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \writes_done_i_1__0\ : label is "soft_lutpair5";
begin
  \fifo_read_reg[9]\ <= \^fifo_read_reg[9]\;
  golden_fft_axis_tready <= \^golden_fft_axis_tready\;
  \sum_reg[0]\ <= \^sum_reg[0]\;
\fifo_read[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F8"
    )
        port map (
      I0 => CO(0),
      I1 => \write_pointer_reg[9]_0\(0),
      I2 => data_ready,
      O => \fifo_read_reg[0]_rep__3\
    );
\fifo_read[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => Q(4),
      I1 => Q(2),
      I2 => Q(0),
      I3 => Q(1),
      I4 => ADDRA(0),
      I5 => Q(5),
      O => \^fifo_read_reg[9]\
    );
golden_read_data_mag0_i_1: unisim.vcomponents.MUXF8
     port map (
      I0 => golden_read_data_mag0_i_17_n_0,
      I1 => golden_read_data_mag0_i_18_n_0,
      O => B(15),
      S => Q(9)
    );
golden_read_data_mag0_i_10: unisim.vcomponents.MUXF8
     port map (
      I0 => golden_read_data_mag0_i_35_n_0,
      I1 => golden_read_data_mag0_i_36_n_0,
      O => B(6),
      S => Q(9)
    );
golden_read_data_mag0_i_100: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_3_5_n_0,
      I1 => stream_data_fifo_reg_896_959_3_5_n_0,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_832_895_3_5_n_0,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_768_831_3_5_n_0,
      O => golden_read_data_mag0_i_100_n_0
    );
golden_read_data_mag0_i_101: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_0_2_n_2,
      I1 => stream_data_fifo_reg_128_191_0_2_n_2,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_64_127_0_2_n_2,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_0_63_0_2_n_2,
      O => golden_read_data_mag0_i_101_n_0
    );
golden_read_data_mag0_i_102: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_0_2_n_2,
      I1 => stream_data_fifo_reg_384_447_0_2_n_2,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_320_383_0_2_n_2,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_256_319_0_2_n_2,
      O => golden_read_data_mag0_i_102_n_0
    );
golden_read_data_mag0_i_103: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_0_2_n_2,
      I1 => stream_data_fifo_reg_640_703_0_2_n_2,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_576_639_0_2_n_2,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_512_575_0_2_n_2,
      O => golden_read_data_mag0_i_103_n_0
    );
golden_read_data_mag0_i_104: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_0_2_n_2,
      I1 => stream_data_fifo_reg_896_959_0_2_n_2,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_832_895_0_2_n_2,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_768_831_0_2_n_2,
      O => golden_read_data_mag0_i_104_n_0
    );
golden_read_data_mag0_i_105: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_0_2_n_1,
      I1 => stream_data_fifo_reg_128_191_0_2_n_1,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_64_127_0_2_n_1,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_0_63_0_2_n_1,
      O => golden_read_data_mag0_i_105_n_0
    );
golden_read_data_mag0_i_106: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_0_2_n_1,
      I1 => stream_data_fifo_reg_384_447_0_2_n_1,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_320_383_0_2_n_1,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_256_319_0_2_n_1,
      O => golden_read_data_mag0_i_106_n_0
    );
golden_read_data_mag0_i_107: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_0_2_n_1,
      I1 => stream_data_fifo_reg_640_703_0_2_n_1,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_576_639_0_2_n_1,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_512_575_0_2_n_1,
      O => golden_read_data_mag0_i_107_n_0
    );
golden_read_data_mag0_i_108: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_0_2_n_1,
      I1 => stream_data_fifo_reg_896_959_0_2_n_1,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_832_895_0_2_n_1,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_768_831_0_2_n_1,
      O => golden_read_data_mag0_i_108_n_0
    );
golden_read_data_mag0_i_109: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_0_2_n_0,
      I1 => stream_data_fifo_reg_128_191_0_2_n_0,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_64_127_0_2_n_0,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_0_63_0_2_n_0,
      O => golden_read_data_mag0_i_109_n_0
    );
golden_read_data_mag0_i_11: unisim.vcomponents.MUXF8
     port map (
      I0 => golden_read_data_mag0_i_37_n_0,
      I1 => golden_read_data_mag0_i_38_n_0,
      O => B(5),
      S => Q(9)
    );
golden_read_data_mag0_i_110: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_0_2_n_0,
      I1 => stream_data_fifo_reg_384_447_0_2_n_0,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_320_383_0_2_n_0,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_256_319_0_2_n_0,
      O => golden_read_data_mag0_i_110_n_0
    );
golden_read_data_mag0_i_111: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_0_2_n_0,
      I1 => stream_data_fifo_reg_640_703_0_2_n_0,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_576_639_0_2_n_0,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_512_575_0_2_n_0,
      O => golden_read_data_mag0_i_111_n_0
    );
golden_read_data_mag0_i_112: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_0_2_n_0,
      I1 => stream_data_fifo_reg_896_959_0_2_n_0,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_832_895_0_2_n_0,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_768_831_0_2_n_0,
      O => golden_read_data_mag0_i_112_n_0
    );
golden_read_data_mag0_i_12: unisim.vcomponents.MUXF8
     port map (
      I0 => golden_read_data_mag0_i_39_n_0,
      I1 => golden_read_data_mag0_i_40_n_0,
      O => B(4),
      S => Q(9)
    );
golden_read_data_mag0_i_13: unisim.vcomponents.MUXF8
     port map (
      I0 => golden_read_data_mag0_i_41_n_0,
      I1 => golden_read_data_mag0_i_42_n_0,
      O => B(3),
      S => Q(9)
    );
golden_read_data_mag0_i_14: unisim.vcomponents.MUXF8
     port map (
      I0 => golden_read_data_mag0_i_43_n_0,
      I1 => golden_read_data_mag0_i_44_n_0,
      O => B(2),
      S => Q(9)
    );
golden_read_data_mag0_i_15: unisim.vcomponents.MUXF8
     port map (
      I0 => golden_read_data_mag0_i_45_n_0,
      I1 => golden_read_data_mag0_i_46_n_0,
      O => B(1),
      S => Q(9)
    );
golden_read_data_mag0_i_16: unisim.vcomponents.MUXF8
     port map (
      I0 => golden_read_data_mag0_i_47_n_0,
      I1 => golden_read_data_mag0_i_48_n_0,
      O => B(0),
      S => Q(9)
    );
golden_read_data_mag0_i_17: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_49_n_0,
      I1 => golden_read_data_mag0_i_50_n_0,
      O => golden_read_data_mag0_i_17_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_18: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_51_n_0,
      I1 => golden_read_data_mag0_i_52_n_0,
      O => golden_read_data_mag0_i_18_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_19: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_53_n_0,
      I1 => golden_read_data_mag0_i_54_n_0,
      O => golden_read_data_mag0_i_19_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_2: unisim.vcomponents.MUXF8
     port map (
      I0 => golden_read_data_mag0_i_19_n_0,
      I1 => golden_read_data_mag0_i_20_n_0,
      O => B(14),
      S => Q(9)
    );
golden_read_data_mag0_i_20: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_55_n_0,
      I1 => golden_read_data_mag0_i_56_n_0,
      O => golden_read_data_mag0_i_20_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_21: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_57_n_0,
      I1 => golden_read_data_mag0_i_58_n_0,
      O => golden_read_data_mag0_i_21_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_22: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_59_n_0,
      I1 => golden_read_data_mag0_i_60_n_0,
      O => golden_read_data_mag0_i_22_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_23: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_61_n_0,
      I1 => golden_read_data_mag0_i_62_n_0,
      O => golden_read_data_mag0_i_23_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_24: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_63_n_0,
      I1 => golden_read_data_mag0_i_64_n_0,
      O => golden_read_data_mag0_i_24_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_25: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_65_n_0,
      I1 => golden_read_data_mag0_i_66_n_0,
      O => golden_read_data_mag0_i_25_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_26: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_67_n_0,
      I1 => golden_read_data_mag0_i_68_n_0,
      O => golden_read_data_mag0_i_26_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_27: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_69_n_0,
      I1 => golden_read_data_mag0_i_70_n_0,
      O => golden_read_data_mag0_i_27_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_28: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_71_n_0,
      I1 => golden_read_data_mag0_i_72_n_0,
      O => golden_read_data_mag0_i_28_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_29: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_73_n_0,
      I1 => golden_read_data_mag0_i_74_n_0,
      O => golden_read_data_mag0_i_29_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_3: unisim.vcomponents.MUXF8
     port map (
      I0 => golden_read_data_mag0_i_21_n_0,
      I1 => golden_read_data_mag0_i_22_n_0,
      O => B(13),
      S => Q(9)
    );
golden_read_data_mag0_i_30: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_75_n_0,
      I1 => golden_read_data_mag0_i_76_n_0,
      O => golden_read_data_mag0_i_30_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_31: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_77_n_0,
      I1 => golden_read_data_mag0_i_78_n_0,
      O => golden_read_data_mag0_i_31_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_32: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_79_n_0,
      I1 => golden_read_data_mag0_i_80_n_0,
      O => golden_read_data_mag0_i_32_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_33: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_81_n_0,
      I1 => golden_read_data_mag0_i_82_n_0,
      O => golden_read_data_mag0_i_33_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_34: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_83_n_0,
      I1 => golden_read_data_mag0_i_84_n_0,
      O => golden_read_data_mag0_i_34_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_35: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_85_n_0,
      I1 => golden_read_data_mag0_i_86_n_0,
      O => golden_read_data_mag0_i_35_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_36: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_87_n_0,
      I1 => golden_read_data_mag0_i_88_n_0,
      O => golden_read_data_mag0_i_36_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_37: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_89_n_0,
      I1 => golden_read_data_mag0_i_90_n_0,
      O => golden_read_data_mag0_i_37_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_38: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_91_n_0,
      I1 => golden_read_data_mag0_i_92_n_0,
      O => golden_read_data_mag0_i_38_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_39: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_93_n_0,
      I1 => golden_read_data_mag0_i_94_n_0,
      O => golden_read_data_mag0_i_39_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_4: unisim.vcomponents.MUXF8
     port map (
      I0 => golden_read_data_mag0_i_23_n_0,
      I1 => golden_read_data_mag0_i_24_n_0,
      O => B(12),
      S => Q(9)
    );
golden_read_data_mag0_i_40: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_95_n_0,
      I1 => golden_read_data_mag0_i_96_n_0,
      O => golden_read_data_mag0_i_40_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_41: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_97_n_0,
      I1 => golden_read_data_mag0_i_98_n_0,
      O => golden_read_data_mag0_i_41_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_42: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_99_n_0,
      I1 => golden_read_data_mag0_i_100_n_0,
      O => golden_read_data_mag0_i_42_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_43: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_101_n_0,
      I1 => golden_read_data_mag0_i_102_n_0,
      O => golden_read_data_mag0_i_43_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_44: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_103_n_0,
      I1 => golden_read_data_mag0_i_104_n_0,
      O => golden_read_data_mag0_i_44_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_45: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_105_n_0,
      I1 => golden_read_data_mag0_i_106_n_0,
      O => golden_read_data_mag0_i_45_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_46: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_107_n_0,
      I1 => golden_read_data_mag0_i_108_n_0,
      O => golden_read_data_mag0_i_46_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_47: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_109_n_0,
      I1 => golden_read_data_mag0_i_110_n_0,
      O => golden_read_data_mag0_i_47_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_48: unisim.vcomponents.MUXF7
     port map (
      I0 => golden_read_data_mag0_i_111_n_0,
      I1 => golden_read_data_mag0_i_112_n_0,
      O => golden_read_data_mag0_i_48_n_0,
      S => Q(8)
    );
golden_read_data_mag0_i_49: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_15_15_n_0,
      I1 => stream_data_fifo_reg_128_191_15_15_n_0,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_64_127_15_15_n_0,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_0_63_15_15_n_0,
      O => golden_read_data_mag0_i_49_n_0
    );
golden_read_data_mag0_i_5: unisim.vcomponents.MUXF8
     port map (
      I0 => golden_read_data_mag0_i_25_n_0,
      I1 => golden_read_data_mag0_i_26_n_0,
      O => B(11),
      S => Q(9)
    );
golden_read_data_mag0_i_50: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_15_15_n_0,
      I1 => stream_data_fifo_reg_384_447_15_15_n_0,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_320_383_15_15_n_0,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_256_319_15_15_n_0,
      O => golden_read_data_mag0_i_50_n_0
    );
golden_read_data_mag0_i_51: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_15_15_n_0,
      I1 => stream_data_fifo_reg_640_703_15_15_n_0,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_576_639_15_15_n_0,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_512_575_15_15_n_0,
      O => golden_read_data_mag0_i_51_n_0
    );
golden_read_data_mag0_i_52: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_15_15_n_0,
      I1 => stream_data_fifo_reg_896_959_15_15_n_0,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_832_895_15_15_n_0,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_768_831_15_15_n_0,
      O => golden_read_data_mag0_i_52_n_0
    );
golden_read_data_mag0_i_53: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_12_14_n_2,
      I1 => stream_data_fifo_reg_128_191_12_14_n_2,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_64_127_12_14_n_2,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_0_63_12_14_n_2,
      O => golden_read_data_mag0_i_53_n_0
    );
golden_read_data_mag0_i_54: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_12_14_n_2,
      I1 => stream_data_fifo_reg_384_447_12_14_n_2,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_320_383_12_14_n_2,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_256_319_12_14_n_2,
      O => golden_read_data_mag0_i_54_n_0
    );
golden_read_data_mag0_i_55: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_12_14_n_2,
      I1 => stream_data_fifo_reg_640_703_12_14_n_2,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_576_639_12_14_n_2,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_512_575_12_14_n_2,
      O => golden_read_data_mag0_i_55_n_0
    );
golden_read_data_mag0_i_56: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_12_14_n_2,
      I1 => stream_data_fifo_reg_896_959_12_14_n_2,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_832_895_12_14_n_2,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_768_831_12_14_n_2,
      O => golden_read_data_mag0_i_56_n_0
    );
golden_read_data_mag0_i_57: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_12_14_n_1,
      I1 => stream_data_fifo_reg_128_191_12_14_n_1,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_64_127_12_14_n_1,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_0_63_12_14_n_1,
      O => golden_read_data_mag0_i_57_n_0
    );
golden_read_data_mag0_i_58: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_12_14_n_1,
      I1 => stream_data_fifo_reg_384_447_12_14_n_1,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_320_383_12_14_n_1,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_256_319_12_14_n_1,
      O => golden_read_data_mag0_i_58_n_0
    );
golden_read_data_mag0_i_59: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_12_14_n_1,
      I1 => stream_data_fifo_reg_640_703_12_14_n_1,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_576_639_12_14_n_1,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_512_575_12_14_n_1,
      O => golden_read_data_mag0_i_59_n_0
    );
golden_read_data_mag0_i_6: unisim.vcomponents.MUXF8
     port map (
      I0 => golden_read_data_mag0_i_27_n_0,
      I1 => golden_read_data_mag0_i_28_n_0,
      O => B(10),
      S => Q(9)
    );
golden_read_data_mag0_i_60: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_12_14_n_1,
      I1 => stream_data_fifo_reg_896_959_12_14_n_1,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_832_895_12_14_n_1,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_768_831_12_14_n_1,
      O => golden_read_data_mag0_i_60_n_0
    );
golden_read_data_mag0_i_61: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_12_14_n_0,
      I1 => stream_data_fifo_reg_128_191_12_14_n_0,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_64_127_12_14_n_0,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_0_63_12_14_n_0,
      O => golden_read_data_mag0_i_61_n_0
    );
golden_read_data_mag0_i_62: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_12_14_n_0,
      I1 => stream_data_fifo_reg_384_447_12_14_n_0,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_320_383_12_14_n_0,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_256_319_12_14_n_0,
      O => golden_read_data_mag0_i_62_n_0
    );
golden_read_data_mag0_i_63: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_12_14_n_0,
      I1 => stream_data_fifo_reg_640_703_12_14_n_0,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_576_639_12_14_n_0,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_512_575_12_14_n_0,
      O => golden_read_data_mag0_i_63_n_0
    );
golden_read_data_mag0_i_64: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_12_14_n_0,
      I1 => stream_data_fifo_reg_896_959_12_14_n_0,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_832_895_12_14_n_0,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_768_831_12_14_n_0,
      O => golden_read_data_mag0_i_64_n_0
    );
golden_read_data_mag0_i_65: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_9_11_n_2,
      I1 => stream_data_fifo_reg_128_191_9_11_n_2,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_64_127_9_11_n_2,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_0_63_9_11_n_2,
      O => golden_read_data_mag0_i_65_n_0
    );
golden_read_data_mag0_i_66: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_9_11_n_2,
      I1 => stream_data_fifo_reg_384_447_9_11_n_2,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_320_383_9_11_n_2,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_256_319_9_11_n_2,
      O => golden_read_data_mag0_i_66_n_0
    );
golden_read_data_mag0_i_67: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_9_11_n_2,
      I1 => stream_data_fifo_reg_640_703_9_11_n_2,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_576_639_9_11_n_2,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_512_575_9_11_n_2,
      O => golden_read_data_mag0_i_67_n_0
    );
golden_read_data_mag0_i_68: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_9_11_n_2,
      I1 => stream_data_fifo_reg_896_959_9_11_n_2,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_832_895_9_11_n_2,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_768_831_9_11_n_2,
      O => golden_read_data_mag0_i_68_n_0
    );
golden_read_data_mag0_i_69: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_9_11_n_1,
      I1 => stream_data_fifo_reg_128_191_9_11_n_1,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_64_127_9_11_n_1,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_0_63_9_11_n_1,
      O => golden_read_data_mag0_i_69_n_0
    );
golden_read_data_mag0_i_7: unisim.vcomponents.MUXF8
     port map (
      I0 => golden_read_data_mag0_i_29_n_0,
      I1 => golden_read_data_mag0_i_30_n_0,
      O => B(9),
      S => Q(9)
    );
golden_read_data_mag0_i_70: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_9_11_n_1,
      I1 => stream_data_fifo_reg_384_447_9_11_n_1,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_320_383_9_11_n_1,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_256_319_9_11_n_1,
      O => golden_read_data_mag0_i_70_n_0
    );
golden_read_data_mag0_i_71: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_9_11_n_1,
      I1 => stream_data_fifo_reg_640_703_9_11_n_1,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_576_639_9_11_n_1,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_512_575_9_11_n_1,
      O => golden_read_data_mag0_i_71_n_0
    );
golden_read_data_mag0_i_72: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_9_11_n_1,
      I1 => stream_data_fifo_reg_896_959_9_11_n_1,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_832_895_9_11_n_1,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_768_831_9_11_n_1,
      O => golden_read_data_mag0_i_72_n_0
    );
golden_read_data_mag0_i_73: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_9_11_n_0,
      I1 => stream_data_fifo_reg_128_191_9_11_n_0,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_64_127_9_11_n_0,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_0_63_9_11_n_0,
      O => golden_read_data_mag0_i_73_n_0
    );
golden_read_data_mag0_i_74: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_9_11_n_0,
      I1 => stream_data_fifo_reg_384_447_9_11_n_0,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_320_383_9_11_n_0,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_256_319_9_11_n_0,
      O => golden_read_data_mag0_i_74_n_0
    );
golden_read_data_mag0_i_75: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_9_11_n_0,
      I1 => stream_data_fifo_reg_640_703_9_11_n_0,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_576_639_9_11_n_0,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_512_575_9_11_n_0,
      O => golden_read_data_mag0_i_75_n_0
    );
golden_read_data_mag0_i_76: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_9_11_n_0,
      I1 => stream_data_fifo_reg_896_959_9_11_n_0,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_832_895_9_11_n_0,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_768_831_9_11_n_0,
      O => golden_read_data_mag0_i_76_n_0
    );
golden_read_data_mag0_i_77: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_6_8_n_2,
      I1 => stream_data_fifo_reg_128_191_6_8_n_2,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_64_127_6_8_n_2,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_0_63_6_8_n_2,
      O => golden_read_data_mag0_i_77_n_0
    );
golden_read_data_mag0_i_78: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_6_8_n_2,
      I1 => stream_data_fifo_reg_384_447_6_8_n_2,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_320_383_6_8_n_2,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_256_319_6_8_n_2,
      O => golden_read_data_mag0_i_78_n_0
    );
golden_read_data_mag0_i_79: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_6_8_n_2,
      I1 => stream_data_fifo_reg_640_703_6_8_n_2,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_576_639_6_8_n_2,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_512_575_6_8_n_2,
      O => golden_read_data_mag0_i_79_n_0
    );
golden_read_data_mag0_i_8: unisim.vcomponents.MUXF8
     port map (
      I0 => golden_read_data_mag0_i_31_n_0,
      I1 => golden_read_data_mag0_i_32_n_0,
      O => B(8),
      S => Q(9)
    );
golden_read_data_mag0_i_80: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_6_8_n_2,
      I1 => stream_data_fifo_reg_896_959_6_8_n_2,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_832_895_6_8_n_2,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_768_831_6_8_n_2,
      O => golden_read_data_mag0_i_80_n_0
    );
golden_read_data_mag0_i_81: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_6_8_n_1,
      I1 => stream_data_fifo_reg_128_191_6_8_n_1,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_64_127_6_8_n_1,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_0_63_6_8_n_1,
      O => golden_read_data_mag0_i_81_n_0
    );
golden_read_data_mag0_i_82: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_6_8_n_1,
      I1 => stream_data_fifo_reg_384_447_6_8_n_1,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_320_383_6_8_n_1,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_256_319_6_8_n_1,
      O => golden_read_data_mag0_i_82_n_0
    );
golden_read_data_mag0_i_83: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_6_8_n_1,
      I1 => stream_data_fifo_reg_640_703_6_8_n_1,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_576_639_6_8_n_1,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_512_575_6_8_n_1,
      O => golden_read_data_mag0_i_83_n_0
    );
golden_read_data_mag0_i_84: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_6_8_n_1,
      I1 => stream_data_fifo_reg_896_959_6_8_n_1,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_832_895_6_8_n_1,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_768_831_6_8_n_1,
      O => golden_read_data_mag0_i_84_n_0
    );
golden_read_data_mag0_i_85: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_6_8_n_0,
      I1 => stream_data_fifo_reg_128_191_6_8_n_0,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_64_127_6_8_n_0,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_0_63_6_8_n_0,
      O => golden_read_data_mag0_i_85_n_0
    );
golden_read_data_mag0_i_86: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_6_8_n_0,
      I1 => stream_data_fifo_reg_384_447_6_8_n_0,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_320_383_6_8_n_0,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_256_319_6_8_n_0,
      O => golden_read_data_mag0_i_86_n_0
    );
golden_read_data_mag0_i_87: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_6_8_n_0,
      I1 => stream_data_fifo_reg_640_703_6_8_n_0,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_576_639_6_8_n_0,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_512_575_6_8_n_0,
      O => golden_read_data_mag0_i_87_n_0
    );
golden_read_data_mag0_i_88: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_6_8_n_0,
      I1 => stream_data_fifo_reg_896_959_6_8_n_0,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_832_895_6_8_n_0,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_768_831_6_8_n_0,
      O => golden_read_data_mag0_i_88_n_0
    );
golden_read_data_mag0_i_89: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_3_5_n_2,
      I1 => stream_data_fifo_reg_128_191_3_5_n_2,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_64_127_3_5_n_2,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_0_63_3_5_n_2,
      O => golden_read_data_mag0_i_89_n_0
    );
golden_read_data_mag0_i_9: unisim.vcomponents.MUXF8
     port map (
      I0 => golden_read_data_mag0_i_33_n_0,
      I1 => golden_read_data_mag0_i_34_n_0,
      O => B(7),
      S => Q(9)
    );
golden_read_data_mag0_i_90: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_3_5_n_2,
      I1 => stream_data_fifo_reg_384_447_3_5_n_2,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_320_383_3_5_n_2,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_256_319_3_5_n_2,
      O => golden_read_data_mag0_i_90_n_0
    );
golden_read_data_mag0_i_91: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_3_5_n_2,
      I1 => stream_data_fifo_reg_640_703_3_5_n_2,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_576_639_3_5_n_2,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_512_575_3_5_n_2,
      O => golden_read_data_mag0_i_91_n_0
    );
golden_read_data_mag0_i_92: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_3_5_n_2,
      I1 => stream_data_fifo_reg_896_959_3_5_n_2,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_832_895_3_5_n_2,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_768_831_3_5_n_2,
      O => golden_read_data_mag0_i_92_n_0
    );
golden_read_data_mag0_i_93: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_3_5_n_1,
      I1 => stream_data_fifo_reg_128_191_3_5_n_1,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_64_127_3_5_n_1,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_0_63_3_5_n_1,
      O => golden_read_data_mag0_i_93_n_0
    );
golden_read_data_mag0_i_94: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_3_5_n_1,
      I1 => stream_data_fifo_reg_384_447_3_5_n_1,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_320_383_3_5_n_1,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_256_319_3_5_n_1,
      O => golden_read_data_mag0_i_94_n_0
    );
golden_read_data_mag0_i_95: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_3_5_n_1,
      I1 => stream_data_fifo_reg_640_703_3_5_n_1,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_576_639_3_5_n_1,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_512_575_3_5_n_1,
      O => golden_read_data_mag0_i_95_n_0
    );
golden_read_data_mag0_i_96: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_3_5_n_1,
      I1 => stream_data_fifo_reg_896_959_3_5_n_1,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_832_895_3_5_n_1,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_768_831_3_5_n_1,
      O => golden_read_data_mag0_i_96_n_0
    );
golden_read_data_mag0_i_97: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_3_5_n_0,
      I1 => stream_data_fifo_reg_128_191_3_5_n_0,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_64_127_3_5_n_0,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_0_63_3_5_n_0,
      O => golden_read_data_mag0_i_97_n_0
    );
golden_read_data_mag0_i_98: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_3_5_n_0,
      I1 => stream_data_fifo_reg_384_447_3_5_n_0,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_320_383_3_5_n_0,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_256_319_3_5_n_0,
      O => golden_read_data_mag0_i_98_n_0
    );
golden_read_data_mag0_i_99: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_3_5_n_0,
      I1 => stream_data_fifo_reg_640_703_3_5_n_0,
      I2 => Q(7),
      I3 => stream_data_fifo_reg_576_639_3_5_n_0,
      I4 => Q(6),
      I5 => stream_data_fifo_reg_512_575_3_5_n_0,
      O => golden_read_data_mag0_i_99_n_0
    );
\mst_exec_state_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => golden_fft_axis_tvalid,
      I1 => \^golden_fft_axis_tready\,
      I2 => writes_done_reg_n_0,
      I3 => golden_fft_axis_aresetn,
      O => \mst_exec_state_i_1__0_n_0\
    );
mst_exec_state_reg: unisim.vcomponents.FDRE
     port map (
      C => golden_fft_axis_aclk,
      CE => '1',
      D => \mst_exec_state_i_1__0_n_0\,
      Q => \^golden_fft_axis_tready\,
      R => '0'
    );
\restart2_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => golden_fifo_write(9),
      I1 => Q(9),
      I2 => golden_fifo_write(8),
      I3 => Q(8),
      O => sum0(0)
    );
\restart2_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => golden_fifo_write(9),
      I1 => Q(9),
      I2 => golden_fifo_write(8),
      I3 => Q(8),
      O => sum0_0(0)
    );
restart2_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => golden_fifo_write(7),
      I1 => Q(7),
      I2 => golden_fifo_write(6),
      I3 => Q(6),
      O => DI(3)
    );
restart2_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => golden_fifo_write(5),
      I1 => Q(5),
      I2 => golden_fifo_write(4),
      I3 => Q(4),
      O => DI(2)
    );
restart2_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => golden_fifo_write(3),
      I1 => ADDRA(0),
      I2 => golden_fifo_write(2),
      I3 => Q(2),
      O => DI(1)
    );
restart2_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7510"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => golden_fifo_write(0),
      I3 => golden_fifo_write(1),
      O => DI(0)
    );
restart2_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => golden_fifo_write(7),
      I1 => Q(7),
      I2 => golden_fifo_write(6),
      I3 => Q(6),
      O => S(3)
    );
restart2_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => golden_fifo_write(5),
      I1 => Q(5),
      I2 => golden_fifo_write(4),
      I3 => Q(4),
      O => S(2)
    );
restart2_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => golden_fifo_write(3),
      I1 => ADDRA(0),
      I2 => golden_fifo_write(2),
      I3 => Q(2),
      O => S(1)
    );
restart2_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8421"
    )
        port map (
      I0 => golden_fifo_write(1),
      I1 => golden_fifo_write(0),
      I2 => Q(1),
      I3 => Q(0),
      O => S(0)
    );
\signal_read_data_mag[47]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFAAEA"
    )
        port map (
      I0 => data_ready,
      I1 => CO(0),
      I2 => \write_pointer_reg[9]_0\(0),
      I3 => restart,
      I4 => \^sum_reg[0]\,
      O => E(0)
    );
stream_data_fifo_reg_0_63_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => \fifo_read_reg[3]_rep__3\(1 downto 0),
      ADDRB(5 downto 2) => Q(5 downto 2),
      ADDRB(1 downto 0) => \fifo_read_reg[3]_rep__3\(1 downto 0),
      ADDRC(5 downto 2) => Q(5 downto 2),
      ADDRC(1 downto 0) => \fifo_read_reg[3]_rep__3\(1 downto 0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(0),
      DIB => golden_fft_axis_tdata(1),
      DIC => golden_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_0_63_0_2_n_0,
      DOB => stream_data_fifo_reg_0_63_0_2_n_1,
      DOC => stream_data_fifo_reg_0_63_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_0_63_0_2_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_0_63_0_2_i_1__0_n_0\
    );
\stream_data_fifo_reg_0_63_0_2_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \^golden_fft_axis_tready\,
      I1 => golden_fft_axis_tvalid,
      I2 => golden_fifo_write(7),
      I3 => golden_fifo_write(6),
      I4 => golden_fifo_write(9),
      I5 => golden_fifo_write(8),
      O => \stream_data_fifo_reg_0_63_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_0_63_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(12),
      DIB => golden_fft_axis_tdata(13),
      DIC => golden_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_0_63_12_14_n_0,
      DOB => stream_data_fifo_reg_0_63_12_14_n_1,
      DOC => stream_data_fifo_reg_0_63_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_0_63_12_14_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_0_63_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_0_63_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => golden_fifo_write(0),
      A1 => golden_fifo_write(1),
      A2 => golden_fifo_write(2),
      A3 => golden_fifo_write(3),
      A4 => golden_fifo_write(4),
      A5 => golden_fifo_write(5),
      D => golden_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_0_63_15_15_n_0,
      DPRA0 => \fifo_read_reg[3]_rep__1\(0),
      DPRA1 => \fifo_read_reg[1]_rep__1\(0),
      DPRA2 => Q(2),
      DPRA3 => \fifo_read_reg[3]_rep__1\(2),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_stream_data_fifo_reg_0_63_15_15_SPO_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_0_63_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_0_63_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(3),
      DIB => golden_fft_axis_tdata(4),
      DIC => golden_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_0_63_3_5_n_0,
      DOB => stream_data_fifo_reg_0_63_3_5_n_1,
      DOC => stream_data_fifo_reg_0_63_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_0_63_3_5_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_0_63_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_0_63_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(6),
      DIB => golden_fft_axis_tdata(7),
      DIC => golden_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_0_63_6_8_n_0,
      DOB => stream_data_fifo_reg_0_63_6_8_n_1,
      DOC => stream_data_fifo_reg_0_63_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_0_63_6_8_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_0_63_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_0_63_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(9),
      DIB => golden_fft_axis_tdata(10),
      DIC => golden_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_0_63_9_11_n_0,
      DOB => stream_data_fifo_reg_0_63_9_11_n_1,
      DOC => stream_data_fifo_reg_0_63_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_0_63_9_11_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_0_63_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_128_191_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2 downto 1) => Q(2 downto 1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2 downto 1) => Q(2 downto 1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2 downto 1) => Q(2 downto 1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(0),
      DIB => golden_fft_axis_tdata(1),
      DIC => golden_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_128_191_0_2_n_0,
      DOB => stream_data_fifo_reg_128_191_0_2_n_1,
      DOC => stream_data_fifo_reg_128_191_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_128_191_0_2_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_128_191_0_2_i_1__0_n_0\
    );
\stream_data_fifo_reg_128_191_0_2_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^golden_fft_axis_tready\,
      I1 => golden_fft_axis_tvalid,
      I2 => golden_fifo_write(8),
      I3 => golden_fifo_write(6),
      I4 => golden_fifo_write(9),
      I5 => golden_fifo_write(7),
      O => \stream_data_fifo_reg_128_191_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_128_191_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(12),
      DIB => golden_fft_axis_tdata(13),
      DIC => golden_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_128_191_12_14_n_0,
      DOB => stream_data_fifo_reg_128_191_12_14_n_1,
      DOC => stream_data_fifo_reg_128_191_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_128_191_12_14_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_128_191_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_128_191_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => golden_fifo_write(0),
      A1 => golden_fifo_write(1),
      A2 => golden_fifo_write(2),
      A3 => golden_fifo_write(3),
      A4 => golden_fifo_write(4),
      A5 => golden_fifo_write(5),
      D => golden_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_128_191_15_15_n_0,
      DPRA0 => \fifo_read_reg[3]_rep__1\(0),
      DPRA1 => \fifo_read_reg[1]_rep__1\(0),
      DPRA2 => Q(2),
      DPRA3 => \fifo_read_reg[3]_rep__1\(2),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_stream_data_fifo_reg_128_191_15_15_SPO_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_128_191_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_128_191_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(3),
      DIB => golden_fft_axis_tdata(4),
      DIC => golden_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_128_191_3_5_n_0,
      DOB => stream_data_fifo_reg_128_191_3_5_n_1,
      DOC => stream_data_fifo_reg_128_191_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_128_191_3_5_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_128_191_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_128_191_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(6),
      DIB => golden_fft_axis_tdata(7),
      DIC => golden_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_128_191_6_8_n_0,
      DOB => stream_data_fifo_reg_128_191_6_8_n_1,
      DOC => stream_data_fifo_reg_128_191_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_128_191_6_8_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_128_191_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_128_191_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(9),
      DIB => golden_fft_axis_tdata(10),
      DIC => golden_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_128_191_9_11_n_0,
      DOB => stream_data_fifo_reg_128_191_9_11_n_1,
      DOC => stream_data_fifo_reg_128_191_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_128_191_9_11_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_128_191_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_192_255_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2 downto 1) => Q(2 downto 1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2 downto 1) => Q(2 downto 1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2 downto 1) => Q(2 downto 1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(0),
      DIB => golden_fft_axis_tdata(1),
      DIC => golden_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_192_255_0_2_n_0,
      DOB => stream_data_fifo_reg_192_255_0_2_n_1,
      DOC => stream_data_fifo_reg_192_255_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_192_255_0_2_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_192_255_0_2_i_1__0_n_0\
    );
\stream_data_fifo_reg_192_255_0_2_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => golden_fifo_write(9),
      I1 => golden_fifo_write(7),
      I2 => golden_fifo_write(6),
      I3 => golden_fifo_write(8),
      I4 => golden_fft_axis_tvalid,
      I5 => \^golden_fft_axis_tready\,
      O => \stream_data_fifo_reg_192_255_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_192_255_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(12),
      DIB => golden_fft_axis_tdata(13),
      DIC => golden_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_192_255_12_14_n_0,
      DOB => stream_data_fifo_reg_192_255_12_14_n_1,
      DOC => stream_data_fifo_reg_192_255_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_192_255_12_14_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_192_255_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_192_255_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => golden_fifo_write(0),
      A1 => golden_fifo_write(1),
      A2 => golden_fifo_write(2),
      A3 => golden_fifo_write(3),
      A4 => golden_fifo_write(4),
      A5 => golden_fifo_write(5),
      D => golden_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_192_255_15_15_n_0,
      DPRA0 => \fifo_read_reg[3]_rep__1\(0),
      DPRA1 => \fifo_read_reg[1]_rep__1\(0),
      DPRA2 => Q(2),
      DPRA3 => \fifo_read_reg[3]_rep__1\(2),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_stream_data_fifo_reg_192_255_15_15_SPO_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_192_255_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_192_255_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(3),
      DIB => golden_fft_axis_tdata(4),
      DIC => golden_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_192_255_3_5_n_0,
      DOB => stream_data_fifo_reg_192_255_3_5_n_1,
      DOC => stream_data_fifo_reg_192_255_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_192_255_3_5_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_192_255_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_192_255_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(6),
      DIB => golden_fft_axis_tdata(7),
      DIC => golden_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_192_255_6_8_n_0,
      DOB => stream_data_fifo_reg_192_255_6_8_n_1,
      DOC => stream_data_fifo_reg_192_255_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_192_255_6_8_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_192_255_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_192_255_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(9),
      DIB => golden_fft_axis_tdata(10),
      DIC => golden_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_192_255_9_11_n_0,
      DOB => stream_data_fifo_reg_192_255_9_11_n_1,
      DOC => stream_data_fifo_reg_192_255_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_192_255_9_11_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_192_255_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_256_319_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(0),
      DIB => golden_fft_axis_tdata(1),
      DIC => golden_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_256_319_0_2_n_0,
      DOB => stream_data_fifo_reg_256_319_0_2_n_1,
      DOC => stream_data_fifo_reg_256_319_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_256_319_0_2_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_256_319_0_2_i_1__0_n_0\
    );
\stream_data_fifo_reg_256_319_0_2_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^golden_fft_axis_tready\,
      I1 => golden_fft_axis_tvalid,
      I2 => golden_fifo_write(7),
      I3 => golden_fifo_write(6),
      I4 => golden_fifo_write(9),
      I5 => golden_fifo_write(8),
      O => \stream_data_fifo_reg_256_319_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_256_319_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(12),
      DIB => golden_fft_axis_tdata(13),
      DIC => golden_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_256_319_12_14_n_0,
      DOB => stream_data_fifo_reg_256_319_12_14_n_1,
      DOC => stream_data_fifo_reg_256_319_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_256_319_12_14_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_256_319_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_256_319_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => golden_fifo_write(0),
      A1 => golden_fifo_write(1),
      A2 => golden_fifo_write(2),
      A3 => golden_fifo_write(3),
      A4 => golden_fifo_write(4),
      A5 => golden_fifo_write(5),
      D => golden_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_256_319_15_15_n_0,
      DPRA0 => \fifo_read_reg[3]_rep__1\(0),
      DPRA1 => \fifo_read_reg[1]_rep__1\(0),
      DPRA2 => Q(2),
      DPRA3 => \fifo_read_reg[3]_rep__1\(2),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_stream_data_fifo_reg_256_319_15_15_SPO_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_256_319_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_256_319_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(3),
      DIB => golden_fft_axis_tdata(4),
      DIC => golden_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_256_319_3_5_n_0,
      DOB => stream_data_fifo_reg_256_319_3_5_n_1,
      DOC => stream_data_fifo_reg_256_319_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_256_319_3_5_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_256_319_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_256_319_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(6),
      DIB => golden_fft_axis_tdata(7),
      DIC => golden_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_256_319_6_8_n_0,
      DOB => stream_data_fifo_reg_256_319_6_8_n_1,
      DOC => stream_data_fifo_reg_256_319_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_256_319_6_8_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_256_319_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_256_319_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(9),
      DIB => golden_fft_axis_tdata(10),
      DIC => golden_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_256_319_9_11_n_0,
      DOB => stream_data_fifo_reg_256_319_9_11_n_1,
      DOC => stream_data_fifo_reg_256_319_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_256_319_9_11_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_256_319_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_320_383_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(0),
      DIB => golden_fft_axis_tdata(1),
      DIC => golden_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_320_383_0_2_n_0,
      DOB => stream_data_fifo_reg_320_383_0_2_n_1,
      DOC => stream_data_fifo_reg_320_383_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_320_383_0_2_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_320_383_0_2_i_1__0_n_0\
    );
\stream_data_fifo_reg_320_383_0_2_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => golden_fifo_write(9),
      I1 => golden_fifo_write(8),
      I2 => golden_fifo_write(6),
      I3 => golden_fifo_write(7),
      I4 => golden_fft_axis_tvalid,
      I5 => \^golden_fft_axis_tready\,
      O => \stream_data_fifo_reg_320_383_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_320_383_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(12),
      DIB => golden_fft_axis_tdata(13),
      DIC => golden_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_320_383_12_14_n_0,
      DOB => stream_data_fifo_reg_320_383_12_14_n_1,
      DOC => stream_data_fifo_reg_320_383_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_320_383_12_14_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_320_383_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_320_383_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => golden_fifo_write(0),
      A1 => golden_fifo_write(1),
      A2 => golden_fifo_write(2),
      A3 => golden_fifo_write(3),
      A4 => golden_fifo_write(4),
      A5 => golden_fifo_write(5),
      D => golden_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_320_383_15_15_n_0,
      DPRA0 => \fifo_read_reg[3]_rep__1\(0),
      DPRA1 => \fifo_read_reg[1]_rep__1\(0),
      DPRA2 => Q(2),
      DPRA3 => \fifo_read_reg[3]_rep__1\(2),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_stream_data_fifo_reg_320_383_15_15_SPO_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_320_383_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_320_383_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(3),
      DIB => golden_fft_axis_tdata(4),
      DIC => golden_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_320_383_3_5_n_0,
      DOB => stream_data_fifo_reg_320_383_3_5_n_1,
      DOC => stream_data_fifo_reg_320_383_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_320_383_3_5_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_320_383_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_320_383_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(6),
      DIB => golden_fft_axis_tdata(7),
      DIC => golden_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_320_383_6_8_n_0,
      DOB => stream_data_fifo_reg_320_383_6_8_n_1,
      DOC => stream_data_fifo_reg_320_383_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_320_383_6_8_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_320_383_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_320_383_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(9),
      DIB => golden_fft_axis_tdata(10),
      DIC => golden_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_320_383_9_11_n_0,
      DOB => stream_data_fifo_reg_320_383_9_11_n_1,
      DOC => stream_data_fifo_reg_320_383_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_320_383_9_11_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_320_383_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_384_447_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(0),
      DIB => golden_fft_axis_tdata(1),
      DIC => golden_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_384_447_0_2_n_0,
      DOB => stream_data_fifo_reg_384_447_0_2_n_1,
      DOC => stream_data_fifo_reg_384_447_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_384_447_0_2_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_384_447_0_2_i_1__0_n_0\
    );
\stream_data_fifo_reg_384_447_0_2_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => golden_fifo_write(9),
      I1 => golden_fifo_write(8),
      I2 => golden_fifo_write(7),
      I3 => golden_fifo_write(6),
      I4 => golden_fft_axis_tvalid,
      I5 => \^golden_fft_axis_tready\,
      O => \stream_data_fifo_reg_384_447_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_384_447_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(12),
      DIB => golden_fft_axis_tdata(13),
      DIC => golden_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_384_447_12_14_n_0,
      DOB => stream_data_fifo_reg_384_447_12_14_n_1,
      DOC => stream_data_fifo_reg_384_447_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_384_447_12_14_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_384_447_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_384_447_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => golden_fifo_write(0),
      A1 => golden_fifo_write(1),
      A2 => golden_fifo_write(2),
      A3 => golden_fifo_write(3),
      A4 => golden_fifo_write(4),
      A5 => golden_fifo_write(5),
      D => golden_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_384_447_15_15_n_0,
      DPRA0 => \fifo_read_reg[3]_rep__1\(0),
      DPRA1 => \fifo_read_reg[1]_rep__1\(0),
      DPRA2 => Q(2),
      DPRA3 => \fifo_read_reg[3]_rep__1\(2),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_stream_data_fifo_reg_384_447_15_15_SPO_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_384_447_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_384_447_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(3),
      DIB => golden_fft_axis_tdata(4),
      DIC => golden_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_384_447_3_5_n_0,
      DOB => stream_data_fifo_reg_384_447_3_5_n_1,
      DOC => stream_data_fifo_reg_384_447_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_384_447_3_5_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_384_447_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_384_447_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(6),
      DIB => golden_fft_axis_tdata(7),
      DIC => golden_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_384_447_6_8_n_0,
      DOB => stream_data_fifo_reg_384_447_6_8_n_1,
      DOC => stream_data_fifo_reg_384_447_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_384_447_6_8_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_384_447_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_384_447_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(9),
      DIB => golden_fft_axis_tdata(10),
      DIC => golden_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_384_447_9_11_n_0,
      DOB => stream_data_fifo_reg_384_447_9_11_n_1,
      DOC => stream_data_fifo_reg_384_447_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_384_447_9_11_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_384_447_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_448_511_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(0),
      DIB => golden_fft_axis_tdata(1),
      DIC => golden_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_448_511_0_2_n_0,
      DOB => stream_data_fifo_reg_448_511_0_2_n_1,
      DOC => stream_data_fifo_reg_448_511_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_448_511_0_2_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_448_511_0_2_i_1__0_n_0\
    );
\stream_data_fifo_reg_448_511_0_2_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => golden_fifo_write(9),
      I1 => golden_fifo_write(7),
      I2 => golden_fifo_write(6),
      I3 => golden_fifo_write(8),
      I4 => golden_fft_axis_tvalid,
      I5 => \^golden_fft_axis_tready\,
      O => \stream_data_fifo_reg_448_511_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_448_511_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => \fifo_read_reg[3]_rep__1\(1 downto 0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => \fifo_read_reg[3]_rep__1\(1 downto 0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(12),
      DIB => golden_fft_axis_tdata(13),
      DIC => golden_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_448_511_12_14_n_0,
      DOB => stream_data_fifo_reg_448_511_12_14_n_1,
      DOC => stream_data_fifo_reg_448_511_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_448_511_12_14_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_448_511_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_448_511_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => golden_fifo_write(0),
      A1 => golden_fifo_write(1),
      A2 => golden_fifo_write(2),
      A3 => golden_fifo_write(3),
      A4 => golden_fifo_write(4),
      A5 => golden_fifo_write(5),
      D => golden_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_448_511_15_15_n_0,
      DPRA0 => \fifo_read_reg[3]_rep__1\(0),
      DPRA1 => \fifo_read_reg[1]_rep__1\(0),
      DPRA2 => Q(2),
      DPRA3 => \fifo_read_reg[3]_rep__1\(2),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_stream_data_fifo_reg_448_511_15_15_SPO_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_448_511_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_448_511_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(3),
      DIB => golden_fft_axis_tdata(4),
      DIC => golden_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_448_511_3_5_n_0,
      DOB => stream_data_fifo_reg_448_511_3_5_n_1,
      DOC => stream_data_fifo_reg_448_511_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_448_511_3_5_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_448_511_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_448_511_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(6),
      DIB => golden_fft_axis_tdata(7),
      DIC => golden_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_448_511_6_8_n_0,
      DOB => stream_data_fifo_reg_448_511_6_8_n_1,
      DOC => stream_data_fifo_reg_448_511_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_448_511_6_8_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_448_511_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_448_511_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(9),
      DIB => golden_fft_axis_tdata(10),
      DIC => golden_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_448_511_9_11_n_0,
      DOB => stream_data_fifo_reg_448_511_9_11_n_1,
      DOC => stream_data_fifo_reg_448_511_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_448_511_9_11_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_448_511_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_512_575_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(0),
      DIB => golden_fft_axis_tdata(1),
      DIC => golden_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_512_575_0_2_n_0,
      DOB => stream_data_fifo_reg_512_575_0_2_n_1,
      DOC => stream_data_fifo_reg_512_575_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_512_575_0_2_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_512_575_0_2_i_1__0_n_0\
    );
\stream_data_fifo_reg_512_575_0_2_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^golden_fft_axis_tready\,
      I1 => golden_fft_axis_tvalid,
      I2 => golden_fifo_write(7),
      I3 => golden_fifo_write(6),
      I4 => golden_fifo_write(8),
      I5 => golden_fifo_write(9),
      O => \stream_data_fifo_reg_512_575_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_512_575_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[1]_rep__1\(0),
      ADDRA(0) => \fifo_read_reg[3]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[1]_rep__1\(0),
      ADDRB(0) => \fifo_read_reg[3]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[1]_rep__1\(0),
      ADDRC(0) => \fifo_read_reg[3]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(12),
      DIB => golden_fft_axis_tdata(13),
      DIC => golden_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_512_575_12_14_n_0,
      DOB => stream_data_fifo_reg_512_575_12_14_n_1,
      DOC => stream_data_fifo_reg_512_575_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_512_575_12_14_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_512_575_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_512_575_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => golden_fifo_write(0),
      A1 => golden_fifo_write(1),
      A2 => golden_fifo_write(2),
      A3 => golden_fifo_write(3),
      A4 => golden_fifo_write(4),
      A5 => golden_fifo_write(5),
      D => golden_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_512_575_15_15_n_0,
      DPRA0 => \fifo_read_reg[3]_rep__1\(0),
      DPRA1 => \fifo_read_reg[1]_rep__1\(0),
      DPRA2 => Q(2),
      DPRA3 => \fifo_read_reg[3]_rep__1\(2),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_stream_data_fifo_reg_512_575_15_15_SPO_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_512_575_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_512_575_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(3),
      DIB => golden_fft_axis_tdata(4),
      DIC => golden_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_512_575_3_5_n_0,
      DOB => stream_data_fifo_reg_512_575_3_5_n_1,
      DOC => stream_data_fifo_reg_512_575_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_512_575_3_5_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_512_575_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_512_575_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(6),
      DIB => golden_fft_axis_tdata(7),
      DIC => golden_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_512_575_6_8_n_0,
      DOB => stream_data_fifo_reg_512_575_6_8_n_1,
      DOC => stream_data_fifo_reg_512_575_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_512_575_6_8_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_512_575_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_512_575_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(9),
      DIB => golden_fft_axis_tdata(10),
      DIC => golden_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_512_575_9_11_n_0,
      DOB => stream_data_fifo_reg_512_575_9_11_n_1,
      DOC => stream_data_fifo_reg_512_575_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_512_575_9_11_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_512_575_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_576_639_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(0),
      DIB => golden_fft_axis_tdata(1),
      DIC => golden_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_576_639_0_2_n_0,
      DOB => stream_data_fifo_reg_576_639_0_2_n_1,
      DOC => stream_data_fifo_reg_576_639_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_576_639_0_2_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_576_639_0_2_i_1__0_n_0\
    );
\stream_data_fifo_reg_576_639_0_2_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => golden_fifo_write(8),
      I1 => golden_fifo_write(9),
      I2 => golden_fifo_write(6),
      I3 => golden_fifo_write(7),
      I4 => golden_fft_axis_tvalid,
      I5 => \^golden_fft_axis_tready\,
      O => \stream_data_fifo_reg_576_639_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_576_639_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[1]_rep__1\(0),
      ADDRA(0) => \fifo_read_reg[3]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[1]_rep__1\(0),
      ADDRB(0) => \fifo_read_reg[3]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[1]_rep__1\(0),
      ADDRC(0) => \fifo_read_reg[3]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(12),
      DIB => golden_fft_axis_tdata(13),
      DIC => golden_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_576_639_12_14_n_0,
      DOB => stream_data_fifo_reg_576_639_12_14_n_1,
      DOC => stream_data_fifo_reg_576_639_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_576_639_12_14_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_576_639_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_576_639_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => golden_fifo_write(0),
      A1 => golden_fifo_write(1),
      A2 => golden_fifo_write(2),
      A3 => golden_fifo_write(3),
      A4 => golden_fifo_write(4),
      A5 => golden_fifo_write(5),
      D => golden_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_576_639_15_15_n_0,
      DPRA0 => \fifo_read_reg[3]_rep__1\(0),
      DPRA1 => \fifo_read_reg[1]_rep__1\(0),
      DPRA2 => Q(2),
      DPRA3 => \fifo_read_reg[3]_rep__1\(2),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_stream_data_fifo_reg_576_639_15_15_SPO_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_576_639_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_576_639_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(3),
      DIB => golden_fft_axis_tdata(4),
      DIC => golden_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_576_639_3_5_n_0,
      DOB => stream_data_fifo_reg_576_639_3_5_n_1,
      DOC => stream_data_fifo_reg_576_639_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_576_639_3_5_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_576_639_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_576_639_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(6),
      DIB => golden_fft_axis_tdata(7),
      DIC => golden_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_576_639_6_8_n_0,
      DOB => stream_data_fifo_reg_576_639_6_8_n_1,
      DOC => stream_data_fifo_reg_576_639_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_576_639_6_8_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_576_639_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_576_639_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(9),
      DIB => golden_fft_axis_tdata(10),
      DIC => golden_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_576_639_9_11_n_0,
      DOB => stream_data_fifo_reg_576_639_9_11_n_1,
      DOC => stream_data_fifo_reg_576_639_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_576_639_9_11_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_576_639_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_640_703_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(0),
      DIB => golden_fft_axis_tdata(1),
      DIC => golden_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_640_703_0_2_n_0,
      DOB => stream_data_fifo_reg_640_703_0_2_n_1,
      DOC => stream_data_fifo_reg_640_703_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_640_703_0_2_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_640_703_0_2_i_1__0_n_0\
    );
\stream_data_fifo_reg_640_703_0_2_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => golden_fifo_write(8),
      I1 => golden_fifo_write(9),
      I2 => golden_fifo_write(7),
      I3 => golden_fifo_write(6),
      I4 => golden_fft_axis_tvalid,
      I5 => \^golden_fft_axis_tready\,
      O => \stream_data_fifo_reg_640_703_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_640_703_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[1]_rep__1\(0),
      ADDRA(0) => \fifo_read_reg[3]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[1]_rep__1\(0),
      ADDRB(0) => \fifo_read_reg[3]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[1]_rep__1\(0),
      ADDRC(0) => \fifo_read_reg[3]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(12),
      DIB => golden_fft_axis_tdata(13),
      DIC => golden_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_640_703_12_14_n_0,
      DOB => stream_data_fifo_reg_640_703_12_14_n_1,
      DOC => stream_data_fifo_reg_640_703_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_640_703_12_14_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_640_703_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_640_703_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => golden_fifo_write(0),
      A1 => golden_fifo_write(1),
      A2 => golden_fifo_write(2),
      A3 => golden_fifo_write(3),
      A4 => golden_fifo_write(4),
      A5 => golden_fifo_write(5),
      D => golden_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_640_703_15_15_n_0,
      DPRA0 => \fifo_read_reg[3]_rep__1\(0),
      DPRA1 => \fifo_read_reg[1]_rep__1\(0),
      DPRA2 => Q(2),
      DPRA3 => \fifo_read_reg[3]_rep__1\(2),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_stream_data_fifo_reg_640_703_15_15_SPO_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_640_703_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_640_703_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(3),
      DIB => golden_fft_axis_tdata(4),
      DIC => golden_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_640_703_3_5_n_0,
      DOB => stream_data_fifo_reg_640_703_3_5_n_1,
      DOC => stream_data_fifo_reg_640_703_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_640_703_3_5_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_640_703_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_640_703_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(6),
      DIB => golden_fft_axis_tdata(7),
      DIC => golden_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_640_703_6_8_n_0,
      DOB => stream_data_fifo_reg_640_703_6_8_n_1,
      DOC => stream_data_fifo_reg_640_703_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_640_703_6_8_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_640_703_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_640_703_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(9),
      DIB => golden_fft_axis_tdata(10),
      DIC => golden_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_640_703_9_11_n_0,
      DOB => stream_data_fifo_reg_640_703_9_11_n_1,
      DOC => stream_data_fifo_reg_640_703_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_640_703_9_11_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_640_703_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_64_127_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2 downto 1) => Q(2 downto 1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => \fifo_read_reg[3]_rep__3\(1 downto 0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(0),
      DIB => golden_fft_axis_tdata(1),
      DIC => golden_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_64_127_0_2_n_0,
      DOB => stream_data_fifo_reg_64_127_0_2_n_1,
      DOC => stream_data_fifo_reg_64_127_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_64_127_0_2_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_64_127_0_2_i_1__0_n_0\
    );
\stream_data_fifo_reg_64_127_0_2_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^golden_fft_axis_tready\,
      I1 => golden_fft_axis_tvalid,
      I2 => golden_fifo_write(8),
      I3 => golden_fifo_write(7),
      I4 => golden_fifo_write(9),
      I5 => golden_fifo_write(6),
      O => \stream_data_fifo_reg_64_127_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_64_127_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(12),
      DIB => golden_fft_axis_tdata(13),
      DIC => golden_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_64_127_12_14_n_0,
      DOB => stream_data_fifo_reg_64_127_12_14_n_1,
      DOC => stream_data_fifo_reg_64_127_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_64_127_12_14_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_64_127_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_64_127_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => golden_fifo_write(0),
      A1 => golden_fifo_write(1),
      A2 => golden_fifo_write(2),
      A3 => golden_fifo_write(3),
      A4 => golden_fifo_write(4),
      A5 => golden_fifo_write(5),
      D => golden_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_64_127_15_15_n_0,
      DPRA0 => \fifo_read_reg[3]_rep__1\(0),
      DPRA1 => \fifo_read_reg[1]_rep__1\(0),
      DPRA2 => Q(2),
      DPRA3 => \fifo_read_reg[3]_rep__1\(2),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_stream_data_fifo_reg_64_127_15_15_SPO_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_64_127_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_64_127_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(3),
      DIB => golden_fft_axis_tdata(4),
      DIC => golden_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_64_127_3_5_n_0,
      DOB => stream_data_fifo_reg_64_127_3_5_n_1,
      DOC => stream_data_fifo_reg_64_127_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_64_127_3_5_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_64_127_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_64_127_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(6),
      DIB => golden_fft_axis_tdata(7),
      DIC => golden_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_64_127_6_8_n_0,
      DOB => stream_data_fifo_reg_64_127_6_8_n_1,
      DOC => stream_data_fifo_reg_64_127_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_64_127_6_8_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_64_127_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_64_127_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(9),
      DIB => golden_fft_axis_tdata(10),
      DIC => golden_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_64_127_9_11_n_0,
      DOB => stream_data_fifo_reg_64_127_9_11_n_1,
      DOC => stream_data_fifo_reg_64_127_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_64_127_9_11_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_64_127_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_704_767_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(0),
      DIB => golden_fft_axis_tdata(1),
      DIC => golden_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_704_767_0_2_n_0,
      DOB => stream_data_fifo_reg_704_767_0_2_n_1,
      DOC => stream_data_fifo_reg_704_767_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_704_767_0_2_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_704_767_0_2_i_1__0_n_0\
    );
\stream_data_fifo_reg_704_767_0_2_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => golden_fifo_write(8),
      I1 => golden_fifo_write(7),
      I2 => golden_fifo_write(6),
      I3 => golden_fifo_write(9),
      I4 => golden_fft_axis_tvalid,
      I5 => \^golden_fft_axis_tready\,
      O => \stream_data_fifo_reg_704_767_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_704_767_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => \fifo_read_reg[3]_rep__1\(1 downto 0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[1]_rep__1\(0),
      ADDRB(0) => \fifo_read_reg[3]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[1]_rep__1\(0),
      ADDRC(0) => \fifo_read_reg[3]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(12),
      DIB => golden_fft_axis_tdata(13),
      DIC => golden_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_704_767_12_14_n_0,
      DOB => stream_data_fifo_reg_704_767_12_14_n_1,
      DOC => stream_data_fifo_reg_704_767_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_704_767_12_14_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_704_767_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_704_767_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => golden_fifo_write(0),
      A1 => golden_fifo_write(1),
      A2 => golden_fifo_write(2),
      A3 => golden_fifo_write(3),
      A4 => golden_fifo_write(4),
      A5 => golden_fifo_write(5),
      D => golden_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_704_767_15_15_n_0,
      DPRA0 => \fifo_read_reg[3]_rep__1\(0),
      DPRA1 => \fifo_read_reg[1]_rep__1\(0),
      DPRA2 => Q(2),
      DPRA3 => \fifo_read_reg[3]_rep__1\(2),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_stream_data_fifo_reg_704_767_15_15_SPO_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_704_767_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_704_767_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(3),
      DIB => golden_fft_axis_tdata(4),
      DIC => golden_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_704_767_3_5_n_0,
      DOB => stream_data_fifo_reg_704_767_3_5_n_1,
      DOC => stream_data_fifo_reg_704_767_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_704_767_3_5_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_704_767_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_704_767_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(6),
      DIB => golden_fft_axis_tdata(7),
      DIC => golden_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_704_767_6_8_n_0,
      DOB => stream_data_fifo_reg_704_767_6_8_n_1,
      DOC => stream_data_fifo_reg_704_767_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_704_767_6_8_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_704_767_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_704_767_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(9),
      DIB => golden_fft_axis_tdata(10),
      DIC => golden_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_704_767_9_11_n_0,
      DOB => stream_data_fifo_reg_704_767_9_11_n_1,
      DOC => stream_data_fifo_reg_704_767_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_704_767_9_11_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_704_767_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_768_831_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(0),
      DIB => golden_fft_axis_tdata(1),
      DIC => golden_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_768_831_0_2_n_0,
      DOB => stream_data_fifo_reg_768_831_0_2_n_1,
      DOC => stream_data_fifo_reg_768_831_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_768_831_0_2_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_768_831_0_2_i_1__0_n_0\
    );
\stream_data_fifo_reg_768_831_0_2_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => golden_fifo_write(7),
      I1 => golden_fifo_write(9),
      I2 => golden_fifo_write(8),
      I3 => golden_fifo_write(6),
      I4 => golden_fft_axis_tvalid,
      I5 => \^golden_fft_axis_tready\,
      O => \stream_data_fifo_reg_768_831_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_768_831_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[1]_rep__1\(0),
      ADDRA(0) => \fifo_read_reg[3]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[1]_rep__1\(0),
      ADDRB(0) => \fifo_read_reg[3]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[1]_rep__1\(0),
      ADDRC(0) => \fifo_read_reg[3]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(12),
      DIB => golden_fft_axis_tdata(13),
      DIC => golden_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_768_831_12_14_n_0,
      DOB => stream_data_fifo_reg_768_831_12_14_n_1,
      DOC => stream_data_fifo_reg_768_831_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_768_831_12_14_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_768_831_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_768_831_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => golden_fifo_write(0),
      A1 => golden_fifo_write(1),
      A2 => golden_fifo_write(2),
      A3 => golden_fifo_write(3),
      A4 => golden_fifo_write(4),
      A5 => golden_fifo_write(5),
      D => golden_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_768_831_15_15_n_0,
      DPRA0 => \fifo_read_reg[3]_rep__1\(0),
      DPRA1 => \fifo_read_reg[1]_rep__1\(0),
      DPRA2 => Q(2),
      DPRA3 => \fifo_read_reg[3]_rep__1\(2),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_stream_data_fifo_reg_768_831_15_15_SPO_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_768_831_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_768_831_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(3),
      DIB => golden_fft_axis_tdata(4),
      DIC => golden_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_768_831_3_5_n_0,
      DOB => stream_data_fifo_reg_768_831_3_5_n_1,
      DOC => stream_data_fifo_reg_768_831_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_768_831_3_5_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_768_831_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_768_831_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(6),
      DIB => golden_fft_axis_tdata(7),
      DIC => golden_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_768_831_6_8_n_0,
      DOB => stream_data_fifo_reg_768_831_6_8_n_1,
      DOC => stream_data_fifo_reg_768_831_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_768_831_6_8_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_768_831_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_768_831_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(9),
      DIB => golden_fft_axis_tdata(10),
      DIC => golden_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_768_831_9_11_n_0,
      DOB => stream_data_fifo_reg_768_831_9_11_n_1,
      DOC => stream_data_fifo_reg_768_831_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_768_831_9_11_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_768_831_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_832_895_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(0),
      DIB => golden_fft_axis_tdata(1),
      DIC => golden_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_832_895_0_2_n_0,
      DOB => stream_data_fifo_reg_832_895_0_2_n_1,
      DOC => stream_data_fifo_reg_832_895_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_832_895_0_2_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_832_895_0_2_i_1__0_n_0\
    );
\stream_data_fifo_reg_832_895_0_2_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => golden_fifo_write(7),
      I1 => golden_fifo_write(8),
      I2 => golden_fifo_write(6),
      I3 => golden_fifo_write(9),
      I4 => golden_fft_axis_tvalid,
      I5 => \^golden_fft_axis_tready\,
      O => \stream_data_fifo_reg_832_895_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_832_895_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[1]_rep__1\(0),
      ADDRA(0) => \fifo_read_reg[3]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[1]_rep__1\(0),
      ADDRB(0) => \fifo_read_reg[3]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[1]_rep__1\(0),
      ADDRC(0) => \fifo_read_reg[3]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(12),
      DIB => golden_fft_axis_tdata(13),
      DIC => golden_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_832_895_12_14_n_0,
      DOB => stream_data_fifo_reg_832_895_12_14_n_1,
      DOC => stream_data_fifo_reg_832_895_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_832_895_12_14_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_832_895_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_832_895_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => golden_fifo_write(0),
      A1 => golden_fifo_write(1),
      A2 => golden_fifo_write(2),
      A3 => golden_fifo_write(3),
      A4 => golden_fifo_write(4),
      A5 => golden_fifo_write(5),
      D => golden_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_832_895_15_15_n_0,
      DPRA0 => \fifo_read_reg[3]_rep__1\(0),
      DPRA1 => \fifo_read_reg[1]_rep__1\(0),
      DPRA2 => Q(2),
      DPRA3 => \fifo_read_reg[3]_rep__1\(2),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_stream_data_fifo_reg_832_895_15_15_SPO_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_832_895_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_832_895_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(3),
      DIB => golden_fft_axis_tdata(4),
      DIC => golden_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_832_895_3_5_n_0,
      DOB => stream_data_fifo_reg_832_895_3_5_n_1,
      DOC => stream_data_fifo_reg_832_895_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_832_895_3_5_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_832_895_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_832_895_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(6),
      DIB => golden_fft_axis_tdata(7),
      DIC => golden_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_832_895_6_8_n_0,
      DOB => stream_data_fifo_reg_832_895_6_8_n_1,
      DOC => stream_data_fifo_reg_832_895_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_832_895_6_8_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_832_895_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_832_895_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(9),
      DIB => golden_fft_axis_tdata(10),
      DIC => golden_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_832_895_9_11_n_0,
      DOB => stream_data_fifo_reg_832_895_9_11_n_1,
      DOC => stream_data_fifo_reg_832_895_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_832_895_9_11_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_832_895_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_896_959_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(0),
      DIB => golden_fft_axis_tdata(1),
      DIC => golden_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_896_959_0_2_n_0,
      DOB => stream_data_fifo_reg_896_959_0_2_n_1,
      DOC => stream_data_fifo_reg_896_959_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_896_959_0_2_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_896_959_0_2_i_1__0_n_0\
    );
\stream_data_fifo_reg_896_959_0_2_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => golden_fifo_write(6),
      I1 => golden_fifo_write(8),
      I2 => golden_fifo_write(7),
      I3 => golden_fifo_write(9),
      I4 => golden_fft_axis_tvalid,
      I5 => \^golden_fft_axis_tready\,
      O => \stream_data_fifo_reg_896_959_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_896_959_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[1]_rep__1\(0),
      ADDRA(0) => \fifo_read_reg[3]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[1]_rep__1\(0),
      ADDRB(0) => \fifo_read_reg[3]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[1]_rep__1\(0),
      ADDRC(0) => \fifo_read_reg[3]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(12),
      DIB => golden_fft_axis_tdata(13),
      DIC => golden_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_896_959_12_14_n_0,
      DOB => stream_data_fifo_reg_896_959_12_14_n_1,
      DOC => stream_data_fifo_reg_896_959_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_896_959_12_14_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_896_959_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_896_959_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => golden_fifo_write(0),
      A1 => golden_fifo_write(1),
      A2 => golden_fifo_write(2),
      A3 => golden_fifo_write(3),
      A4 => golden_fifo_write(4),
      A5 => golden_fifo_write(5),
      D => golden_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_896_959_15_15_n_0,
      DPRA0 => \fifo_read_reg[3]_rep__1\(0),
      DPRA1 => \fifo_read_reg[1]_rep__1\(0),
      DPRA2 => Q(2),
      DPRA3 => \fifo_read_reg[3]_rep__1\(2),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_stream_data_fifo_reg_896_959_15_15_SPO_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_896_959_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_896_959_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(3),
      DIB => golden_fft_axis_tdata(4),
      DIC => golden_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_896_959_3_5_n_0,
      DOB => stream_data_fifo_reg_896_959_3_5_n_1,
      DOC => stream_data_fifo_reg_896_959_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_896_959_3_5_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_896_959_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_896_959_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(6),
      DIB => golden_fft_axis_tdata(7),
      DIC => golden_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_896_959_6_8_n_0,
      DOB => stream_data_fifo_reg_896_959_6_8_n_1,
      DOC => stream_data_fifo_reg_896_959_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_896_959_6_8_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_896_959_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_896_959_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(9),
      DIB => golden_fft_axis_tdata(10),
      DIC => golden_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_896_959_9_11_n_0,
      DOB => stream_data_fifo_reg_896_959_9_11_n_1,
      DOC => stream_data_fifo_reg_896_959_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_896_959_9_11_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_896_959_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_960_1023_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(0),
      DIB => golden_fft_axis_tdata(1),
      DIC => golden_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_960_1023_0_2_n_0,
      DOB => stream_data_fifo_reg_960_1023_0_2_n_1,
      DOC => stream_data_fifo_reg_960_1023_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_960_1023_0_2_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_960_1023_0_2_i_1__0_n_0\
    );
\stream_data_fifo_reg_960_1023_0_2_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^golden_fft_axis_tready\,
      I1 => golden_fft_axis_tvalid,
      I2 => golden_fifo_write(7),
      I3 => golden_fifo_write(6),
      I4 => golden_fifo_write(9),
      I5 => golden_fifo_write(8),
      O => \stream_data_fifo_reg_960_1023_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_960_1023_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[1]_rep__1\(0),
      ADDRA(0) => \fifo_read_reg[3]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[1]_rep__1\(0),
      ADDRB(0) => \fifo_read_reg[3]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__1\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[1]_rep__1\(0),
      ADDRC(0) => \fifo_read_reg[3]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(12),
      DIB => golden_fft_axis_tdata(13),
      DIC => golden_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_960_1023_12_14_n_0,
      DOB => stream_data_fifo_reg_960_1023_12_14_n_1,
      DOC => stream_data_fifo_reg_960_1023_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_960_1023_12_14_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_960_1023_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_960_1023_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => golden_fifo_write(0),
      A1 => golden_fifo_write(1),
      A2 => golden_fifo_write(2),
      A3 => golden_fifo_write(3),
      A4 => golden_fifo_write(4),
      A5 => golden_fifo_write(5),
      D => golden_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_960_1023_15_15_n_0,
      DPRA0 => \fifo_read_reg[3]_rep__1\(0),
      DPRA1 => \fifo_read_reg[1]_rep__1\(0),
      DPRA2 => Q(2),
      DPRA3 => \fifo_read_reg[3]_rep__1\(2),
      DPRA4 => Q(4),
      DPRA5 => Q(5),
      SPO => NLW_stream_data_fifo_reg_960_1023_15_15_SPO_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_960_1023_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_960_1023_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRA(0) => ADDRB(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRB(0) => ADDRB(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => \fifo_read_reg[3]_rep__3\(2),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__3\(1),
      ADDRC(0) => ADDRB(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(3),
      DIB => golden_fft_axis_tdata(4),
      DIC => golden_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_960_1023_3_5_n_0,
      DOB => stream_data_fifo_reg_960_1023_3_5_n_1,
      DOC => stream_data_fifo_reg_960_1023_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_960_1023_3_5_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_960_1023_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_960_1023_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(6),
      DIB => golden_fft_axis_tdata(7),
      DIC => golden_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_960_1023_6_8_n_0,
      DOB => stream_data_fifo_reg_960_1023_6_8_n_1,
      DOC => stream_data_fifo_reg_960_1023_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_960_1023_6_8_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_960_1023_0_2_i_1__0_n_0\
    );
stream_data_fifo_reg_960_1023_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(5 downto 4),
      ADDRA(3) => ADDRC(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRA(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRB(5 downto 4) => Q(5 downto 4),
      ADDRB(3) => ADDRC(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRB(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRC(5 downto 4) => Q(5 downto 4),
      ADDRC(3) => ADDRC(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => \fifo_read_reg[3]_rep__1\(1),
      ADDRC(0) => \fifo_read_reg[0]_rep__1\(0),
      ADDRD(5 downto 0) => golden_fifo_write(5 downto 0),
      DIA => golden_fft_axis_tdata(9),
      DIB => golden_fft_axis_tdata(10),
      DIC => golden_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_960_1023_9_11_n_0,
      DOB => stream_data_fifo_reg_960_1023_9_11_n_1,
      DOC => stream_data_fifo_reg_960_1023_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_960_1023_9_11_DOD_UNCONNECTED,
      WCLK => golden_fft_axis_aclk,
      WE => \stream_data_fifo_reg_960_1023_0_2_i_1__0_n_0\
    );
\write_pointer[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => \^golden_fft_axis_tready\,
      I1 => golden_fft_axis_tvalid,
      I2 => golden_fifo_write(0),
      O => \write_pointer[0]_i_1__0_n_0\
    );
\write_pointer[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0880"
    )
        port map (
      I0 => golden_fft_axis_tvalid,
      I1 => \^golden_fft_axis_tready\,
      I2 => golden_fifo_write(0),
      I3 => golden_fifo_write(1),
      O => \write_pointer[1]_i_1__0_n_0\
    );
\write_pointer[2]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08888000"
    )
        port map (
      I0 => golden_fft_axis_tvalid,
      I1 => \^golden_fft_axis_tready\,
      I2 => golden_fifo_write(1),
      I3 => golden_fifo_write(0),
      I4 => golden_fifo_write(2),
      O => \write_pointer[2]_i_1__0_n_0\
    );
\write_pointer[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F00000080000000"
    )
        port map (
      I0 => golden_fifo_write(1),
      I1 => golden_fifo_write(0),
      I2 => golden_fifo_write(2),
      I3 => \^golden_fft_axis_tready\,
      I4 => golden_fft_axis_tvalid,
      I5 => golden_fifo_write(3),
      O => \write_pointer[3]_i_1__0_n_0\
    );
\write_pointer[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFF000080000000"
    )
        port map (
      I0 => golden_fifo_write(2),
      I1 => golden_fifo_write(0),
      I2 => golden_fifo_write(1),
      I3 => golden_fifo_write(3),
      I4 => \write_pointer[9]_i_4__0_n_0\,
      I5 => golden_fifo_write(4),
      O => \write_pointer[4]_i_1__0_n_0\
    );
\write_pointer[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFF000020000000"
    )
        port map (
      I0 => golden_fifo_write(3),
      I1 => \write_pointer[5]_i_2_n_0\,
      I2 => golden_fifo_write(2),
      I3 => golden_fifo_write(4),
      I4 => \write_pointer[9]_i_4__0_n_0\,
      I5 => golden_fifo_write(5),
      O => \write_pointer[5]_i_1__0_n_0\
    );
\write_pointer[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => golden_fifo_write(0),
      I1 => golden_fifo_write(1),
      O => \write_pointer[5]_i_2_n_0\
    );
\write_pointer[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8040"
    )
        port map (
      I0 => \write_pointer[9]_i_6__0_n_0\,
      I1 => \^golden_fft_axis_tready\,
      I2 => golden_fft_axis_tvalid,
      I3 => golden_fifo_write(6),
      O => \write_pointer[6]_i_1__0_n_0\
    );
\write_pointer[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B0004000"
    )
        port map (
      I0 => \write_pointer[9]_i_6__0_n_0\,
      I1 => golden_fifo_write(6),
      I2 => \^golden_fft_axis_tready\,
      I3 => golden_fft_axis_tvalid,
      I4 => golden_fifo_write(7),
      O => \write_pointer[7]_i_1__0_n_0\
    );
\write_pointer[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DF00000020000000"
    )
        port map (
      I0 => golden_fifo_write(6),
      I1 => \write_pointer[9]_i_6__0_n_0\,
      I2 => golden_fifo_write(7),
      I3 => \^golden_fft_axis_tready\,
      I4 => golden_fft_axis_tvalid,
      I5 => golden_fifo_write(8),
      O => \write_pointer[8]_i_1__0_n_0\
    );
\write_pointer[9]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => golden_fft_axis_aresetn,
      O => \write_pointer[9]_i_1__0_n_0\
    );
\write_pointer[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AEAAAAAAA2AAAAAA"
    )
        port map (
      I0 => \write_pointer[9]_i_4__0_n_0\,
      I1 => golden_fifo_write(8),
      I2 => \write_pointer[9]_i_5__0_n_0\,
      I3 => golden_fifo_write(7),
      I4 => golden_fifo_write(9),
      I5 => \^sum_reg[0]\,
      O => \write_pointer[9]_i_2__0_n_0\
    );
\write_pointer[9]_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFFF000020000000"
    )
        port map (
      I0 => golden_fifo_write(7),
      I1 => \write_pointer[9]_i_6__0_n_0\,
      I2 => golden_fifo_write(6),
      I3 => golden_fifo_write(8),
      I4 => \write_pointer[9]_i_4__0_n_0\,
      I5 => golden_fifo_write(9),
      O => \write_pointer[9]_i_3__0_n_0\
    );
\write_pointer[9]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => golden_fft_axis_tvalid,
      I1 => \^golden_fft_axis_tready\,
      O => \write_pointer[9]_i_4__0_n_0\
    );
\write_pointer[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => Q(9),
      I1 => Q(8),
      I2 => Q(6),
      I3 => \^fifo_read_reg[9]\,
      I4 => Q(7),
      O => \^sum_reg[0]\
    );
\write_pointer[9]_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFFFFFFFFFF"
    )
        port map (
      I0 => golden_fifo_write(5),
      I1 => golden_fifo_write(3),
      I2 => \write_pointer[5]_i_2_n_0\,
      I3 => golden_fifo_write(2),
      I4 => golden_fifo_write(4),
      I5 => golden_fifo_write(6),
      O => \write_pointer[9]_i_5__0_n_0\
    );
\write_pointer[9]_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => golden_fifo_write(4),
      I1 => golden_fifo_write(2),
      I2 => golden_fifo_write(0),
      I3 => golden_fifo_write(1),
      I4 => golden_fifo_write(3),
      I5 => golden_fifo_write(5),
      O => \write_pointer[9]_i_6__0_n_0\
    );
\write_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => golden_fft_axis_aclk,
      CE => \write_pointer[9]_i_2__0_n_0\,
      D => \write_pointer[0]_i_1__0_n_0\,
      Q => golden_fifo_write(0),
      R => \write_pointer[9]_i_1__0_n_0\
    );
\write_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => golden_fft_axis_aclk,
      CE => \write_pointer[9]_i_2__0_n_0\,
      D => \write_pointer[1]_i_1__0_n_0\,
      Q => golden_fifo_write(1),
      R => \write_pointer[9]_i_1__0_n_0\
    );
\write_pointer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => golden_fft_axis_aclk,
      CE => \write_pointer[9]_i_2__0_n_0\,
      D => \write_pointer[2]_i_1__0_n_0\,
      Q => golden_fifo_write(2),
      R => \write_pointer[9]_i_1__0_n_0\
    );
\write_pointer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => golden_fft_axis_aclk,
      CE => \write_pointer[9]_i_2__0_n_0\,
      D => \write_pointer[3]_i_1__0_n_0\,
      Q => golden_fifo_write(3),
      R => \write_pointer[9]_i_1__0_n_0\
    );
\write_pointer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => golden_fft_axis_aclk,
      CE => \write_pointer[9]_i_2__0_n_0\,
      D => \write_pointer[4]_i_1__0_n_0\,
      Q => golden_fifo_write(4),
      R => \write_pointer[9]_i_1__0_n_0\
    );
\write_pointer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => golden_fft_axis_aclk,
      CE => \write_pointer[9]_i_2__0_n_0\,
      D => \write_pointer[5]_i_1__0_n_0\,
      Q => golden_fifo_write(5),
      R => \write_pointer[9]_i_1__0_n_0\
    );
\write_pointer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => golden_fft_axis_aclk,
      CE => \write_pointer[9]_i_2__0_n_0\,
      D => \write_pointer[6]_i_1__0_n_0\,
      Q => golden_fifo_write(6),
      R => \write_pointer[9]_i_1__0_n_0\
    );
\write_pointer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => golden_fft_axis_aclk,
      CE => \write_pointer[9]_i_2__0_n_0\,
      D => \write_pointer[7]_i_1__0_n_0\,
      Q => golden_fifo_write(7),
      R => \write_pointer[9]_i_1__0_n_0\
    );
\write_pointer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => golden_fft_axis_aclk,
      CE => \write_pointer[9]_i_2__0_n_0\,
      D => \write_pointer[8]_i_1__0_n_0\,
      Q => golden_fifo_write(8),
      R => \write_pointer[9]_i_1__0_n_0\
    );
\write_pointer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => golden_fft_axis_aclk,
      CE => \write_pointer[9]_i_2__0_n_0\,
      D => \write_pointer[9]_i_3__0_n_0\,
      Q => golden_fifo_write(9),
      R => \write_pointer[9]_i_1__0_n_0\
    );
\writes_done_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0C8C8C8C"
    )
        port map (
      I0 => writes_done_reg_n_0,
      I1 => golden_fft_axis_aresetn,
      I2 => writes_done_i_2_n_0,
      I3 => \^golden_fft_axis_tready\,
      I4 => golden_fft_axis_tvalid,
      O => \writes_done_i_1__0_n_0\
    );
writes_done_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => golden_fifo_write(8),
      I1 => golden_fifo_write(6),
      I2 => \write_pointer[9]_i_6__0_n_0\,
      I3 => golden_fifo_write(7),
      I4 => golden_fifo_write(9),
      O => writes_done_i_2_n_0
    );
writes_done_reg: unisim.vcomponents.FDRE
     port map (
      C => golden_fft_axis_aclk,
      CE => '1',
      D => \writes_done_i_1__0_n_0\,
      Q => writes_done_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity corr_wrapper_projection_correlation_calculator_v1_0_0_1_projection_correlation_calculator_v1_0_signal_fft_AXIS is
  port (
    signal_fft_axis_tready : out STD_LOGIC;
    signal_fifo_read_data : out STD_LOGIC;
    S : out STD_LOGIC_VECTOR ( 3 downto 0 );
    writes_done_reg_0 : out STD_LOGIC;
    DI : out STD_LOGIC_VECTOR ( 3 downto 0 );
    sum0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    sum0_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    A : out STD_LOGIC_VECTOR ( 15 downto 0 );
    signal_fft_axis_aclk : in STD_LOGIC;
    \fifo_read_reg[9]\ : in STD_LOGIC;
    \write_pointer_reg[9]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CO : in STD_LOGIC_VECTOR ( 0 to 0 );
    signal_fft_axis_aresetn : in STD_LOGIC;
    data_ready : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 8 downto 0 );
    signal_fft_axis_tvalid : in STD_LOGIC;
    signal_fft_axis_tlast : in STD_LOGIC;
    ADDRA : in STD_LOGIC_VECTOR ( 2 downto 0 );
    signal_fft_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    ADDRC : in STD_LOGIC_VECTOR ( 2 downto 0 );
    ADDRB : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of corr_wrapper_projection_correlation_calculator_v1_0_0_1_projection_correlation_calculator_v1_0_signal_fft_AXIS : entity is "projection_correlation_calculator_v1_0_signal_fft_AXIS";
end corr_wrapper_projection_correlation_calculator_v1_0_0_1_projection_correlation_calculator_v1_0_signal_fft_AXIS;

architecture STRUCTURE of corr_wrapper_projection_correlation_calculator_v1_0_0_1_projection_correlation_calculator_v1_0_signal_fft_AXIS is
  signal mst_exec_state_i_1_n_0 : STD_LOGIC;
  signal \^signal_fft_axis_tready\ : STD_LOGIC;
  signal signal_fifo_write : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal signal_read_data_mag0_i_100_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_101_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_102_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_103_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_104_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_105_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_106_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_107_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_108_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_109_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_110_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_111_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_112_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_113_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_18_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_19_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_20_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_21_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_22_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_23_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_24_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_25_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_26_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_27_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_28_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_29_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_30_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_31_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_32_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_33_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_34_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_35_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_36_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_37_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_38_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_39_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_40_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_41_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_42_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_43_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_44_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_45_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_46_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_47_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_48_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_49_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_50_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_51_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_52_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_53_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_54_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_55_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_56_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_57_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_58_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_59_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_60_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_61_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_62_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_63_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_64_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_65_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_66_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_67_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_68_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_69_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_70_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_71_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_72_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_73_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_74_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_75_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_76_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_77_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_78_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_79_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_80_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_81_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_82_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_83_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_84_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_85_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_86_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_87_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_88_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_89_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_90_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_91_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_92_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_93_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_94_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_95_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_96_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_97_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_98_n_0 : STD_LOGIC;
  signal signal_read_data_mag0_i_99_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_0_2_i_1_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_0_63_9_11_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_0_2_i_1_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_128_191_9_11_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_0_2_i_1_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_192_255_9_11_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_0_2_i_1_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_256_319_9_11_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_0_2_i_1_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_320_383_9_11_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_0_2_i_1_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_384_447_9_11_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_0_2_i_1_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_448_511_9_11_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_0_2_i_1_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_512_575_9_11_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_0_2_i_1_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_576_639_9_11_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_0_2_i_1_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_640_703_9_11_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_0_2_i_1_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_64_127_9_11_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_0_2_i_1_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_704_767_9_11_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_0_2_i_1_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_768_831_9_11_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_0_2_i_1_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_832_895_9_11_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_0_2_i_1_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_896_959_9_11_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_0_2_i_1_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_0_2_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_0_2_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_0_2_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_12_14_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_12_14_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_12_14_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_15_15_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_3_5_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_3_5_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_3_5_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_6_8_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_6_8_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_6_8_n_2 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_9_11_n_0 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_9_11_n_1 : STD_LOGIC;
  signal stream_data_fifo_reg_960_1023_9_11_n_2 : STD_LOGIC;
  signal write_pointer : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \write_pointer[6]_i_2_n_0\ : STD_LOGIC;
  signal \write_pointer[9]_i_1_n_0\ : STD_LOGIC;
  signal \write_pointer[9]_i_2_n_0\ : STD_LOGIC;
  signal \write_pointer[9]_i_6_n_0\ : STD_LOGIC;
  signal writes_done : STD_LOGIC;
  signal writes_done_i_1_n_0 : STD_LOGIC;
  signal \^writes_done_reg_0\ : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_0_63_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_0_63_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_0_63_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_0_63_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_0_63_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_0_63_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_128_191_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_128_191_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_128_191_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_128_191_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_128_191_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_128_191_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_192_255_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_192_255_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_192_255_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_192_255_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_192_255_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_192_255_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_256_319_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_256_319_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_256_319_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_256_319_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_256_319_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_256_319_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_320_383_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_320_383_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_320_383_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_320_383_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_320_383_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_320_383_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_384_447_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_384_447_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_384_447_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_384_447_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_384_447_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_384_447_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_448_511_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_448_511_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_448_511_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_448_511_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_448_511_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_448_511_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_512_575_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_512_575_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_512_575_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_512_575_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_512_575_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_512_575_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_576_639_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_576_639_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_576_639_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_576_639_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_576_639_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_576_639_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_640_703_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_640_703_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_640_703_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_640_703_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_640_703_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_640_703_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_64_127_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_64_127_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_64_127_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_64_127_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_64_127_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_64_127_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_704_767_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_704_767_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_704_767_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_704_767_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_704_767_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_704_767_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_768_831_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_768_831_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_768_831_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_768_831_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_768_831_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_768_831_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_832_895_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_832_895_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_832_895_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_832_895_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_832_895_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_832_895_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_896_959_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_896_959_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_896_959_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_896_959_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_896_959_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_896_959_9_11_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_960_1023_0_2_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_960_1023_12_14_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_960_1023_15_15_SPO_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_960_1023_3_5_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_960_1023_6_8_DOD_UNCONNECTED : STD_LOGIC;
  signal NLW_stream_data_fifo_reg_960_1023_9_11_DOD_UNCONNECTED : STD_LOGIC;
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_0_63_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_0_63_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_0_63_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_0_63_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_0_63_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_128_191_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_128_191_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_128_191_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_128_191_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_128_191_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_192_255_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_192_255_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_192_255_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_192_255_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_192_255_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_256_319_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_256_319_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_256_319_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_256_319_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_256_319_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_320_383_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_320_383_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_320_383_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_320_383_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_320_383_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_384_447_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_384_447_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_384_447_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_384_447_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_384_447_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_448_511_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_448_511_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_448_511_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_448_511_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_448_511_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_512_575_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_512_575_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_512_575_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_512_575_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_512_575_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_576_639_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_576_639_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_576_639_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_576_639_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_576_639_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_640_703_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_640_703_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_640_703_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_640_703_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_640_703_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_64_127_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_64_127_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_64_127_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_64_127_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_64_127_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_704_767_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_704_767_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_704_767_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_704_767_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_704_767_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_768_831_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_768_831_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_768_831_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_768_831_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_768_831_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_832_895_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_832_895_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_832_895_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_832_895_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_832_895_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_896_959_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_896_959_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_896_959_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_896_959_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_896_959_9_11 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_960_1023_0_2 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_960_1023_12_14 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_960_1023_3_5 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_960_1023_6_8 : label is "";
  attribute METHODOLOGY_DRC_VIOS of stream_data_fifo_reg_960_1023_9_11 : label is "";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \write_pointer[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \write_pointer[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \write_pointer[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \write_pointer[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \write_pointer[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \write_pointer[6]_i_2\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \write_pointer[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \write_pointer[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \write_pointer[9]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \write_pointer[9]_i_4\ : label is "soft_lutpair8";
begin
  signal_fft_axis_tready <= \^signal_fft_axis_tready\;
  writes_done_reg_0 <= \^writes_done_reg_0\;
\i__carry_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => signal_fifo_write(7),
      I1 => Q(6),
      I2 => signal_fifo_write(6),
      I3 => Q(5),
      O => DI(3)
    );
\i__carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => signal_fifo_write(9),
      I1 => Q(8),
      I2 => signal_fifo_write(8),
      I3 => Q(7),
      O => sum0(0)
    );
\i__carry_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => signal_fifo_write(5),
      I1 => Q(4),
      I2 => signal_fifo_write(4),
      I3 => Q(3),
      O => DI(2)
    );
\i__carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => signal_fifo_write(9),
      I1 => Q(8),
      I2 => signal_fifo_write(8),
      I3 => Q(7),
      O => sum0_0(0)
    );
\i__carry_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => signal_fifo_write(3),
      I1 => ADDRA(2),
      I2 => signal_fifo_write(2),
      I3 => Q(2),
      O => DI(1)
    );
\i__carry_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7510"
    )
        port map (
      I0 => Q(1),
      I1 => Q(0),
      I2 => signal_fifo_write(0),
      I3 => signal_fifo_write(1),
      O => DI(0)
    );
\i__carry_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => signal_fifo_write(7),
      I1 => Q(6),
      I2 => signal_fifo_write(6),
      I3 => Q(5),
      O => S(3)
    );
\i__carry_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => signal_fifo_write(5),
      I1 => Q(4),
      I2 => signal_fifo_write(4),
      I3 => Q(3),
      O => S(2)
    );
\i__carry_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => signal_fifo_write(3),
      I1 => ADDRA(2),
      I2 => signal_fifo_write(2),
      I3 => Q(2),
      O => S(1)
    );
\i__carry_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8421"
    )
        port map (
      I0 => signal_fifo_write(1),
      I1 => signal_fifo_write(0),
      I2 => Q(1),
      I3 => Q(0),
      O => S(0)
    );
mst_exec_state_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2E00"
    )
        port map (
      I0 => signal_fft_axis_tvalid,
      I1 => \^signal_fft_axis_tready\,
      I2 => writes_done,
      I3 => signal_fft_axis_aresetn,
      O => mst_exec_state_i_1_n_0
    );
mst_exec_state_reg: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => '1',
      D => mst_exec_state_i_1_n_0,
      Q => \^signal_fft_axis_tready\,
      R => '0'
    );
signal_read_data_mag0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA00EA00"
    )
        port map (
      I0 => \fifo_read_reg[9]\,
      I1 => \write_pointer_reg[9]_0\(0),
      I2 => CO(0),
      I3 => signal_fft_axis_aresetn,
      I4 => data_ready,
      O => signal_fifo_read_data
    );
signal_read_data_mag0_i_10: unisim.vcomponents.MUXF8
     port map (
      I0 => signal_read_data_mag0_i_34_n_0,
      I1 => signal_read_data_mag0_i_35_n_0,
      O => A(7),
      S => Q(8)
    );
signal_read_data_mag0_i_100: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_3_5_n_0,
      I1 => stream_data_fifo_reg_640_703_3_5_n_0,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_576_639_3_5_n_0,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_512_575_3_5_n_0,
      O => signal_read_data_mag0_i_100_n_0
    );
signal_read_data_mag0_i_101: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_3_5_n_0,
      I1 => stream_data_fifo_reg_896_959_3_5_n_0,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_832_895_3_5_n_0,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_768_831_3_5_n_0,
      O => signal_read_data_mag0_i_101_n_0
    );
signal_read_data_mag0_i_102: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_0_2_n_2,
      I1 => stream_data_fifo_reg_128_191_0_2_n_2,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_64_127_0_2_n_2,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_0_63_0_2_n_2,
      O => signal_read_data_mag0_i_102_n_0
    );
signal_read_data_mag0_i_103: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_0_2_n_2,
      I1 => stream_data_fifo_reg_384_447_0_2_n_2,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_320_383_0_2_n_2,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_256_319_0_2_n_2,
      O => signal_read_data_mag0_i_103_n_0
    );
signal_read_data_mag0_i_104: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_0_2_n_2,
      I1 => stream_data_fifo_reg_640_703_0_2_n_2,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_576_639_0_2_n_2,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_512_575_0_2_n_2,
      O => signal_read_data_mag0_i_104_n_0
    );
signal_read_data_mag0_i_105: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_0_2_n_2,
      I1 => stream_data_fifo_reg_896_959_0_2_n_2,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_832_895_0_2_n_2,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_768_831_0_2_n_2,
      O => signal_read_data_mag0_i_105_n_0
    );
signal_read_data_mag0_i_106: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_0_2_n_1,
      I1 => stream_data_fifo_reg_128_191_0_2_n_1,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_64_127_0_2_n_1,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_0_63_0_2_n_1,
      O => signal_read_data_mag0_i_106_n_0
    );
signal_read_data_mag0_i_107: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_0_2_n_1,
      I1 => stream_data_fifo_reg_384_447_0_2_n_1,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_320_383_0_2_n_1,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_256_319_0_2_n_1,
      O => signal_read_data_mag0_i_107_n_0
    );
signal_read_data_mag0_i_108: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_0_2_n_1,
      I1 => stream_data_fifo_reg_640_703_0_2_n_1,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_576_639_0_2_n_1,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_512_575_0_2_n_1,
      O => signal_read_data_mag0_i_108_n_0
    );
signal_read_data_mag0_i_109: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_0_2_n_1,
      I1 => stream_data_fifo_reg_896_959_0_2_n_1,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_832_895_0_2_n_1,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_768_831_0_2_n_1,
      O => signal_read_data_mag0_i_109_n_0
    );
signal_read_data_mag0_i_11: unisim.vcomponents.MUXF8
     port map (
      I0 => signal_read_data_mag0_i_36_n_0,
      I1 => signal_read_data_mag0_i_37_n_0,
      O => A(6),
      S => Q(8)
    );
signal_read_data_mag0_i_110: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_0_2_n_0,
      I1 => stream_data_fifo_reg_128_191_0_2_n_0,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_64_127_0_2_n_0,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_0_63_0_2_n_0,
      O => signal_read_data_mag0_i_110_n_0
    );
signal_read_data_mag0_i_111: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_0_2_n_0,
      I1 => stream_data_fifo_reg_384_447_0_2_n_0,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_320_383_0_2_n_0,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_256_319_0_2_n_0,
      O => signal_read_data_mag0_i_111_n_0
    );
signal_read_data_mag0_i_112: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_0_2_n_0,
      I1 => stream_data_fifo_reg_640_703_0_2_n_0,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_576_639_0_2_n_0,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_512_575_0_2_n_0,
      O => signal_read_data_mag0_i_112_n_0
    );
signal_read_data_mag0_i_113: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_0_2_n_0,
      I1 => stream_data_fifo_reg_896_959_0_2_n_0,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_832_895_0_2_n_0,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_768_831_0_2_n_0,
      O => signal_read_data_mag0_i_113_n_0
    );
signal_read_data_mag0_i_12: unisim.vcomponents.MUXF8
     port map (
      I0 => signal_read_data_mag0_i_38_n_0,
      I1 => signal_read_data_mag0_i_39_n_0,
      O => A(5),
      S => Q(8)
    );
signal_read_data_mag0_i_13: unisim.vcomponents.MUXF8
     port map (
      I0 => signal_read_data_mag0_i_40_n_0,
      I1 => signal_read_data_mag0_i_41_n_0,
      O => A(4),
      S => Q(8)
    );
signal_read_data_mag0_i_14: unisim.vcomponents.MUXF8
     port map (
      I0 => signal_read_data_mag0_i_42_n_0,
      I1 => signal_read_data_mag0_i_43_n_0,
      O => A(3),
      S => Q(8)
    );
signal_read_data_mag0_i_15: unisim.vcomponents.MUXF8
     port map (
      I0 => signal_read_data_mag0_i_44_n_0,
      I1 => signal_read_data_mag0_i_45_n_0,
      O => A(2),
      S => Q(8)
    );
signal_read_data_mag0_i_16: unisim.vcomponents.MUXF8
     port map (
      I0 => signal_read_data_mag0_i_46_n_0,
      I1 => signal_read_data_mag0_i_47_n_0,
      O => A(1),
      S => Q(8)
    );
signal_read_data_mag0_i_17: unisim.vcomponents.MUXF8
     port map (
      I0 => signal_read_data_mag0_i_48_n_0,
      I1 => signal_read_data_mag0_i_49_n_0,
      O => A(0),
      S => Q(8)
    );
signal_read_data_mag0_i_18: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_50_n_0,
      I1 => signal_read_data_mag0_i_51_n_0,
      O => signal_read_data_mag0_i_18_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_19: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_52_n_0,
      I1 => signal_read_data_mag0_i_53_n_0,
      O => signal_read_data_mag0_i_19_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_2: unisim.vcomponents.MUXF8
     port map (
      I0 => signal_read_data_mag0_i_18_n_0,
      I1 => signal_read_data_mag0_i_19_n_0,
      O => A(15),
      S => Q(8)
    );
signal_read_data_mag0_i_20: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_54_n_0,
      I1 => signal_read_data_mag0_i_55_n_0,
      O => signal_read_data_mag0_i_20_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_21: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_56_n_0,
      I1 => signal_read_data_mag0_i_57_n_0,
      O => signal_read_data_mag0_i_21_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_22: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_58_n_0,
      I1 => signal_read_data_mag0_i_59_n_0,
      O => signal_read_data_mag0_i_22_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_23: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_60_n_0,
      I1 => signal_read_data_mag0_i_61_n_0,
      O => signal_read_data_mag0_i_23_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_24: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_62_n_0,
      I1 => signal_read_data_mag0_i_63_n_0,
      O => signal_read_data_mag0_i_24_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_25: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_64_n_0,
      I1 => signal_read_data_mag0_i_65_n_0,
      O => signal_read_data_mag0_i_25_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_26: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_66_n_0,
      I1 => signal_read_data_mag0_i_67_n_0,
      O => signal_read_data_mag0_i_26_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_27: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_68_n_0,
      I1 => signal_read_data_mag0_i_69_n_0,
      O => signal_read_data_mag0_i_27_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_28: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_70_n_0,
      I1 => signal_read_data_mag0_i_71_n_0,
      O => signal_read_data_mag0_i_28_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_29: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_72_n_0,
      I1 => signal_read_data_mag0_i_73_n_0,
      O => signal_read_data_mag0_i_29_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_3: unisim.vcomponents.MUXF8
     port map (
      I0 => signal_read_data_mag0_i_20_n_0,
      I1 => signal_read_data_mag0_i_21_n_0,
      O => A(14),
      S => Q(8)
    );
signal_read_data_mag0_i_30: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_74_n_0,
      I1 => signal_read_data_mag0_i_75_n_0,
      O => signal_read_data_mag0_i_30_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_31: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_76_n_0,
      I1 => signal_read_data_mag0_i_77_n_0,
      O => signal_read_data_mag0_i_31_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_32: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_78_n_0,
      I1 => signal_read_data_mag0_i_79_n_0,
      O => signal_read_data_mag0_i_32_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_33: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_80_n_0,
      I1 => signal_read_data_mag0_i_81_n_0,
      O => signal_read_data_mag0_i_33_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_34: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_82_n_0,
      I1 => signal_read_data_mag0_i_83_n_0,
      O => signal_read_data_mag0_i_34_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_35: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_84_n_0,
      I1 => signal_read_data_mag0_i_85_n_0,
      O => signal_read_data_mag0_i_35_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_36: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_86_n_0,
      I1 => signal_read_data_mag0_i_87_n_0,
      O => signal_read_data_mag0_i_36_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_37: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_88_n_0,
      I1 => signal_read_data_mag0_i_89_n_0,
      O => signal_read_data_mag0_i_37_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_38: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_90_n_0,
      I1 => signal_read_data_mag0_i_91_n_0,
      O => signal_read_data_mag0_i_38_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_39: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_92_n_0,
      I1 => signal_read_data_mag0_i_93_n_0,
      O => signal_read_data_mag0_i_39_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_4: unisim.vcomponents.MUXF8
     port map (
      I0 => signal_read_data_mag0_i_22_n_0,
      I1 => signal_read_data_mag0_i_23_n_0,
      O => A(13),
      S => Q(8)
    );
signal_read_data_mag0_i_40: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_94_n_0,
      I1 => signal_read_data_mag0_i_95_n_0,
      O => signal_read_data_mag0_i_40_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_41: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_96_n_0,
      I1 => signal_read_data_mag0_i_97_n_0,
      O => signal_read_data_mag0_i_41_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_42: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_98_n_0,
      I1 => signal_read_data_mag0_i_99_n_0,
      O => signal_read_data_mag0_i_42_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_43: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_100_n_0,
      I1 => signal_read_data_mag0_i_101_n_0,
      O => signal_read_data_mag0_i_43_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_44: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_102_n_0,
      I1 => signal_read_data_mag0_i_103_n_0,
      O => signal_read_data_mag0_i_44_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_45: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_104_n_0,
      I1 => signal_read_data_mag0_i_105_n_0,
      O => signal_read_data_mag0_i_45_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_46: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_106_n_0,
      I1 => signal_read_data_mag0_i_107_n_0,
      O => signal_read_data_mag0_i_46_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_47: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_108_n_0,
      I1 => signal_read_data_mag0_i_109_n_0,
      O => signal_read_data_mag0_i_47_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_48: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_110_n_0,
      I1 => signal_read_data_mag0_i_111_n_0,
      O => signal_read_data_mag0_i_48_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_49: unisim.vcomponents.MUXF7
     port map (
      I0 => signal_read_data_mag0_i_112_n_0,
      I1 => signal_read_data_mag0_i_113_n_0,
      O => signal_read_data_mag0_i_49_n_0,
      S => Q(7)
    );
signal_read_data_mag0_i_5: unisim.vcomponents.MUXF8
     port map (
      I0 => signal_read_data_mag0_i_24_n_0,
      I1 => signal_read_data_mag0_i_25_n_0,
      O => A(12),
      S => Q(8)
    );
signal_read_data_mag0_i_50: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_15_15_n_0,
      I1 => stream_data_fifo_reg_128_191_15_15_n_0,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_64_127_15_15_n_0,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_0_63_15_15_n_0,
      O => signal_read_data_mag0_i_50_n_0
    );
signal_read_data_mag0_i_51: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_15_15_n_0,
      I1 => stream_data_fifo_reg_384_447_15_15_n_0,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_320_383_15_15_n_0,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_256_319_15_15_n_0,
      O => signal_read_data_mag0_i_51_n_0
    );
signal_read_data_mag0_i_52: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_15_15_n_0,
      I1 => stream_data_fifo_reg_640_703_15_15_n_0,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_576_639_15_15_n_0,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_512_575_15_15_n_0,
      O => signal_read_data_mag0_i_52_n_0
    );
signal_read_data_mag0_i_53: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_15_15_n_0,
      I1 => stream_data_fifo_reg_896_959_15_15_n_0,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_832_895_15_15_n_0,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_768_831_15_15_n_0,
      O => signal_read_data_mag0_i_53_n_0
    );
signal_read_data_mag0_i_54: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_12_14_n_2,
      I1 => stream_data_fifo_reg_128_191_12_14_n_2,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_64_127_12_14_n_2,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_0_63_12_14_n_2,
      O => signal_read_data_mag0_i_54_n_0
    );
signal_read_data_mag0_i_55: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_12_14_n_2,
      I1 => stream_data_fifo_reg_384_447_12_14_n_2,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_320_383_12_14_n_2,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_256_319_12_14_n_2,
      O => signal_read_data_mag0_i_55_n_0
    );
signal_read_data_mag0_i_56: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_12_14_n_2,
      I1 => stream_data_fifo_reg_640_703_12_14_n_2,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_576_639_12_14_n_2,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_512_575_12_14_n_2,
      O => signal_read_data_mag0_i_56_n_0
    );
signal_read_data_mag0_i_57: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_12_14_n_2,
      I1 => stream_data_fifo_reg_896_959_12_14_n_2,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_832_895_12_14_n_2,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_768_831_12_14_n_2,
      O => signal_read_data_mag0_i_57_n_0
    );
signal_read_data_mag0_i_58: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_12_14_n_1,
      I1 => stream_data_fifo_reg_128_191_12_14_n_1,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_64_127_12_14_n_1,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_0_63_12_14_n_1,
      O => signal_read_data_mag0_i_58_n_0
    );
signal_read_data_mag0_i_59: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_12_14_n_1,
      I1 => stream_data_fifo_reg_384_447_12_14_n_1,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_320_383_12_14_n_1,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_256_319_12_14_n_1,
      O => signal_read_data_mag0_i_59_n_0
    );
signal_read_data_mag0_i_6: unisim.vcomponents.MUXF8
     port map (
      I0 => signal_read_data_mag0_i_26_n_0,
      I1 => signal_read_data_mag0_i_27_n_0,
      O => A(11),
      S => Q(8)
    );
signal_read_data_mag0_i_60: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_12_14_n_1,
      I1 => stream_data_fifo_reg_640_703_12_14_n_1,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_576_639_12_14_n_1,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_512_575_12_14_n_1,
      O => signal_read_data_mag0_i_60_n_0
    );
signal_read_data_mag0_i_61: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_12_14_n_1,
      I1 => stream_data_fifo_reg_896_959_12_14_n_1,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_832_895_12_14_n_1,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_768_831_12_14_n_1,
      O => signal_read_data_mag0_i_61_n_0
    );
signal_read_data_mag0_i_62: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_12_14_n_0,
      I1 => stream_data_fifo_reg_128_191_12_14_n_0,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_64_127_12_14_n_0,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_0_63_12_14_n_0,
      O => signal_read_data_mag0_i_62_n_0
    );
signal_read_data_mag0_i_63: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_12_14_n_0,
      I1 => stream_data_fifo_reg_384_447_12_14_n_0,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_320_383_12_14_n_0,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_256_319_12_14_n_0,
      O => signal_read_data_mag0_i_63_n_0
    );
signal_read_data_mag0_i_64: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_12_14_n_0,
      I1 => stream_data_fifo_reg_640_703_12_14_n_0,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_576_639_12_14_n_0,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_512_575_12_14_n_0,
      O => signal_read_data_mag0_i_64_n_0
    );
signal_read_data_mag0_i_65: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_12_14_n_0,
      I1 => stream_data_fifo_reg_896_959_12_14_n_0,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_832_895_12_14_n_0,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_768_831_12_14_n_0,
      O => signal_read_data_mag0_i_65_n_0
    );
signal_read_data_mag0_i_66: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_9_11_n_2,
      I1 => stream_data_fifo_reg_128_191_9_11_n_2,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_64_127_9_11_n_2,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_0_63_9_11_n_2,
      O => signal_read_data_mag0_i_66_n_0
    );
signal_read_data_mag0_i_67: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_9_11_n_2,
      I1 => stream_data_fifo_reg_384_447_9_11_n_2,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_320_383_9_11_n_2,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_256_319_9_11_n_2,
      O => signal_read_data_mag0_i_67_n_0
    );
signal_read_data_mag0_i_68: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_9_11_n_2,
      I1 => stream_data_fifo_reg_640_703_9_11_n_2,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_576_639_9_11_n_2,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_512_575_9_11_n_2,
      O => signal_read_data_mag0_i_68_n_0
    );
signal_read_data_mag0_i_69: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_9_11_n_2,
      I1 => stream_data_fifo_reg_896_959_9_11_n_2,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_832_895_9_11_n_2,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_768_831_9_11_n_2,
      O => signal_read_data_mag0_i_69_n_0
    );
signal_read_data_mag0_i_7: unisim.vcomponents.MUXF8
     port map (
      I0 => signal_read_data_mag0_i_28_n_0,
      I1 => signal_read_data_mag0_i_29_n_0,
      O => A(10),
      S => Q(8)
    );
signal_read_data_mag0_i_70: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_9_11_n_1,
      I1 => stream_data_fifo_reg_128_191_9_11_n_1,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_64_127_9_11_n_1,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_0_63_9_11_n_1,
      O => signal_read_data_mag0_i_70_n_0
    );
signal_read_data_mag0_i_71: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_9_11_n_1,
      I1 => stream_data_fifo_reg_384_447_9_11_n_1,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_320_383_9_11_n_1,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_256_319_9_11_n_1,
      O => signal_read_data_mag0_i_71_n_0
    );
signal_read_data_mag0_i_72: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_9_11_n_1,
      I1 => stream_data_fifo_reg_640_703_9_11_n_1,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_576_639_9_11_n_1,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_512_575_9_11_n_1,
      O => signal_read_data_mag0_i_72_n_0
    );
signal_read_data_mag0_i_73: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_9_11_n_1,
      I1 => stream_data_fifo_reg_896_959_9_11_n_1,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_832_895_9_11_n_1,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_768_831_9_11_n_1,
      O => signal_read_data_mag0_i_73_n_0
    );
signal_read_data_mag0_i_74: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_9_11_n_0,
      I1 => stream_data_fifo_reg_128_191_9_11_n_0,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_64_127_9_11_n_0,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_0_63_9_11_n_0,
      O => signal_read_data_mag0_i_74_n_0
    );
signal_read_data_mag0_i_75: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_9_11_n_0,
      I1 => stream_data_fifo_reg_384_447_9_11_n_0,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_320_383_9_11_n_0,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_256_319_9_11_n_0,
      O => signal_read_data_mag0_i_75_n_0
    );
signal_read_data_mag0_i_76: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_9_11_n_0,
      I1 => stream_data_fifo_reg_640_703_9_11_n_0,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_576_639_9_11_n_0,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_512_575_9_11_n_0,
      O => signal_read_data_mag0_i_76_n_0
    );
signal_read_data_mag0_i_77: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_9_11_n_0,
      I1 => stream_data_fifo_reg_896_959_9_11_n_0,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_832_895_9_11_n_0,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_768_831_9_11_n_0,
      O => signal_read_data_mag0_i_77_n_0
    );
signal_read_data_mag0_i_78: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_6_8_n_2,
      I1 => stream_data_fifo_reg_128_191_6_8_n_2,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_64_127_6_8_n_2,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_0_63_6_8_n_2,
      O => signal_read_data_mag0_i_78_n_0
    );
signal_read_data_mag0_i_79: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_6_8_n_2,
      I1 => stream_data_fifo_reg_384_447_6_8_n_2,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_320_383_6_8_n_2,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_256_319_6_8_n_2,
      O => signal_read_data_mag0_i_79_n_0
    );
signal_read_data_mag0_i_8: unisim.vcomponents.MUXF8
     port map (
      I0 => signal_read_data_mag0_i_30_n_0,
      I1 => signal_read_data_mag0_i_31_n_0,
      O => A(9),
      S => Q(8)
    );
signal_read_data_mag0_i_80: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_6_8_n_2,
      I1 => stream_data_fifo_reg_640_703_6_8_n_2,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_576_639_6_8_n_2,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_512_575_6_8_n_2,
      O => signal_read_data_mag0_i_80_n_0
    );
signal_read_data_mag0_i_81: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_6_8_n_2,
      I1 => stream_data_fifo_reg_896_959_6_8_n_2,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_832_895_6_8_n_2,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_768_831_6_8_n_2,
      O => signal_read_data_mag0_i_81_n_0
    );
signal_read_data_mag0_i_82: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_6_8_n_1,
      I1 => stream_data_fifo_reg_128_191_6_8_n_1,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_64_127_6_8_n_1,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_0_63_6_8_n_1,
      O => signal_read_data_mag0_i_82_n_0
    );
signal_read_data_mag0_i_83: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_6_8_n_1,
      I1 => stream_data_fifo_reg_384_447_6_8_n_1,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_320_383_6_8_n_1,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_256_319_6_8_n_1,
      O => signal_read_data_mag0_i_83_n_0
    );
signal_read_data_mag0_i_84: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_6_8_n_1,
      I1 => stream_data_fifo_reg_640_703_6_8_n_1,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_576_639_6_8_n_1,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_512_575_6_8_n_1,
      O => signal_read_data_mag0_i_84_n_0
    );
signal_read_data_mag0_i_85: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_6_8_n_1,
      I1 => stream_data_fifo_reg_896_959_6_8_n_1,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_832_895_6_8_n_1,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_768_831_6_8_n_1,
      O => signal_read_data_mag0_i_85_n_0
    );
signal_read_data_mag0_i_86: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_6_8_n_0,
      I1 => stream_data_fifo_reg_128_191_6_8_n_0,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_64_127_6_8_n_0,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_0_63_6_8_n_0,
      O => signal_read_data_mag0_i_86_n_0
    );
signal_read_data_mag0_i_87: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_6_8_n_0,
      I1 => stream_data_fifo_reg_384_447_6_8_n_0,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_320_383_6_8_n_0,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_256_319_6_8_n_0,
      O => signal_read_data_mag0_i_87_n_0
    );
signal_read_data_mag0_i_88: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_6_8_n_0,
      I1 => stream_data_fifo_reg_640_703_6_8_n_0,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_576_639_6_8_n_0,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_512_575_6_8_n_0,
      O => signal_read_data_mag0_i_88_n_0
    );
signal_read_data_mag0_i_89: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_6_8_n_0,
      I1 => stream_data_fifo_reg_896_959_6_8_n_0,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_832_895_6_8_n_0,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_768_831_6_8_n_0,
      O => signal_read_data_mag0_i_89_n_0
    );
signal_read_data_mag0_i_9: unisim.vcomponents.MUXF8
     port map (
      I0 => signal_read_data_mag0_i_32_n_0,
      I1 => signal_read_data_mag0_i_33_n_0,
      O => A(8),
      S => Q(8)
    );
signal_read_data_mag0_i_90: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_3_5_n_2,
      I1 => stream_data_fifo_reg_128_191_3_5_n_2,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_64_127_3_5_n_2,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_0_63_3_5_n_2,
      O => signal_read_data_mag0_i_90_n_0
    );
signal_read_data_mag0_i_91: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_3_5_n_2,
      I1 => stream_data_fifo_reg_384_447_3_5_n_2,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_320_383_3_5_n_2,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_256_319_3_5_n_2,
      O => signal_read_data_mag0_i_91_n_0
    );
signal_read_data_mag0_i_92: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_3_5_n_2,
      I1 => stream_data_fifo_reg_640_703_3_5_n_2,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_576_639_3_5_n_2,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_512_575_3_5_n_2,
      O => signal_read_data_mag0_i_92_n_0
    );
signal_read_data_mag0_i_93: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_3_5_n_2,
      I1 => stream_data_fifo_reg_896_959_3_5_n_2,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_832_895_3_5_n_2,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_768_831_3_5_n_2,
      O => signal_read_data_mag0_i_93_n_0
    );
signal_read_data_mag0_i_94: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_3_5_n_1,
      I1 => stream_data_fifo_reg_128_191_3_5_n_1,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_64_127_3_5_n_1,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_0_63_3_5_n_1,
      O => signal_read_data_mag0_i_94_n_0
    );
signal_read_data_mag0_i_95: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_3_5_n_1,
      I1 => stream_data_fifo_reg_384_447_3_5_n_1,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_320_383_3_5_n_1,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_256_319_3_5_n_1,
      O => signal_read_data_mag0_i_95_n_0
    );
signal_read_data_mag0_i_96: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_704_767_3_5_n_1,
      I1 => stream_data_fifo_reg_640_703_3_5_n_1,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_576_639_3_5_n_1,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_512_575_3_5_n_1,
      O => signal_read_data_mag0_i_96_n_0
    );
signal_read_data_mag0_i_97: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_960_1023_3_5_n_1,
      I1 => stream_data_fifo_reg_896_959_3_5_n_1,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_832_895_3_5_n_1,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_768_831_3_5_n_1,
      O => signal_read_data_mag0_i_97_n_0
    );
signal_read_data_mag0_i_98: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_192_255_3_5_n_0,
      I1 => stream_data_fifo_reg_128_191_3_5_n_0,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_64_127_3_5_n_0,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_0_63_3_5_n_0,
      O => signal_read_data_mag0_i_98_n_0
    );
signal_read_data_mag0_i_99: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => stream_data_fifo_reg_448_511_3_5_n_0,
      I1 => stream_data_fifo_reg_384_447_3_5_n_0,
      I2 => Q(6),
      I3 => stream_data_fifo_reg_320_383_3_5_n_0,
      I4 => Q(5),
      I5 => stream_data_fifo_reg_256_319_3_5_n_0,
      O => signal_read_data_mag0_i_99_n_0
    );
stream_data_fifo_reg_0_63_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRC(2),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRC(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRC(2),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRC(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRC(2),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRC(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(0),
      DIB => signal_fft_axis_tdata(1),
      DIC => signal_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_0_63_0_2_n_0,
      DOB => stream_data_fifo_reg_0_63_0_2_n_1,
      DOC => stream_data_fifo_reg_0_63_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_0_63_0_2_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_0_63_0_2_i_1_n_0
    );
stream_data_fifo_reg_0_63_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => \^signal_fft_axis_tready\,
      I1 => signal_fft_axis_tvalid,
      I2 => signal_fifo_write(7),
      I3 => signal_fifo_write(6),
      I4 => signal_fifo_write(9),
      I5 => signal_fifo_write(8),
      O => stream_data_fifo_reg_0_63_0_2_i_1_n_0
    );
stream_data_fifo_reg_0_63_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRA(2),
      ADDRA(2 downto 0) => Q(2 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRA(2),
      ADDRB(2 downto 0) => Q(2 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRA(2),
      ADDRC(2 downto 0) => Q(2 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(12),
      DIB => signal_fft_axis_tdata(13),
      DIC => signal_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_0_63_12_14_n_0,
      DOB => stream_data_fifo_reg_0_63_12_14_n_1,
      DOC => stream_data_fifo_reg_0_63_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_0_63_12_14_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_0_63_0_2_i_1_n_0
    );
stream_data_fifo_reg_0_63_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => signal_fifo_write(0),
      A1 => signal_fifo_write(1),
      A2 => signal_fifo_write(2),
      A3 => signal_fifo_write(3),
      A4 => signal_fifo_write(4),
      A5 => signal_fifo_write(5),
      D => signal_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_0_63_15_15_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => ADDRA(2),
      DPRA4 => Q(3),
      DPRA5 => Q(4),
      SPO => NLW_stream_data_fifo_reg_0_63_15_15_SPO_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_0_63_0_2_i_1_n_0
    );
stream_data_fifo_reg_0_63_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRC(2),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRC(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRC(2),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRC(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRC(2),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRC(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(3),
      DIB => signal_fft_axis_tdata(4),
      DIC => signal_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_0_63_3_5_n_0,
      DOB => stream_data_fifo_reg_0_63_3_5_n_1,
      DOC => stream_data_fifo_reg_0_63_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_0_63_3_5_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_0_63_0_2_i_1_n_0
    );
stream_data_fifo_reg_0_63_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(6),
      DIB => signal_fft_axis_tdata(7),
      DIC => signal_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_0_63_6_8_n_0,
      DOB => stream_data_fifo_reg_0_63_6_8_n_1,
      DOC => stream_data_fifo_reg_0_63_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_0_63_6_8_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_0_63_0_2_i_1_n_0
    );
stream_data_fifo_reg_0_63_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(9),
      DIB => signal_fft_axis_tdata(10),
      DIC => signal_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_0_63_9_11_n_0,
      DOB => stream_data_fifo_reg_0_63_9_11_n_1,
      DOC => stream_data_fifo_reg_0_63_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_0_63_9_11_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_0_63_0_2_i_1_n_0
    );
stream_data_fifo_reg_128_191_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRC(2),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRC(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRC(2),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRC(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRC(2),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRC(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(0),
      DIB => signal_fft_axis_tdata(1),
      DIC => signal_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_128_191_0_2_n_0,
      DOB => stream_data_fifo_reg_128_191_0_2_n_1,
      DOC => stream_data_fifo_reg_128_191_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_128_191_0_2_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_128_191_0_2_i_1_n_0
    );
stream_data_fifo_reg_128_191_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^signal_fft_axis_tready\,
      I1 => signal_fft_axis_tvalid,
      I2 => signal_fifo_write(8),
      I3 => signal_fifo_write(6),
      I4 => signal_fifo_write(9),
      I5 => signal_fifo_write(7),
      O => stream_data_fifo_reg_128_191_0_2_i_1_n_0
    );
stream_data_fifo_reg_128_191_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRA(2),
      ADDRA(2 downto 0) => Q(2 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRA(2),
      ADDRB(2 downto 0) => Q(2 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRA(2),
      ADDRC(2 downto 0) => Q(2 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(12),
      DIB => signal_fft_axis_tdata(13),
      DIC => signal_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_128_191_12_14_n_0,
      DOB => stream_data_fifo_reg_128_191_12_14_n_1,
      DOC => stream_data_fifo_reg_128_191_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_128_191_12_14_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_128_191_0_2_i_1_n_0
    );
stream_data_fifo_reg_128_191_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => signal_fifo_write(0),
      A1 => signal_fifo_write(1),
      A2 => signal_fifo_write(2),
      A3 => signal_fifo_write(3),
      A4 => signal_fifo_write(4),
      A5 => signal_fifo_write(5),
      D => signal_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_128_191_15_15_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => ADDRA(2),
      DPRA4 => Q(3),
      DPRA5 => Q(4),
      SPO => NLW_stream_data_fifo_reg_128_191_15_15_SPO_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_128_191_0_2_i_1_n_0
    );
stream_data_fifo_reg_128_191_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRC(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRC(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRC(2),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRC(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(3),
      DIB => signal_fft_axis_tdata(4),
      DIC => signal_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_128_191_3_5_n_0,
      DOB => stream_data_fifo_reg_128_191_3_5_n_1,
      DOC => stream_data_fifo_reg_128_191_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_128_191_3_5_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_128_191_0_2_i_1_n_0
    );
stream_data_fifo_reg_128_191_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(6),
      DIB => signal_fft_axis_tdata(7),
      DIC => signal_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_128_191_6_8_n_0,
      DOB => stream_data_fifo_reg_128_191_6_8_n_1,
      DOC => stream_data_fifo_reg_128_191_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_128_191_6_8_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_128_191_0_2_i_1_n_0
    );
stream_data_fifo_reg_128_191_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(9),
      DIB => signal_fft_axis_tdata(10),
      DIC => signal_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_128_191_9_11_n_0,
      DOB => stream_data_fifo_reg_128_191_9_11_n_1,
      DOC => stream_data_fifo_reg_128_191_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_128_191_9_11_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_128_191_0_2_i_1_n_0
    );
stream_data_fifo_reg_192_255_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRC(2),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRC(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRC(2),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRC(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRC(2),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRC(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(0),
      DIB => signal_fft_axis_tdata(1),
      DIC => signal_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_192_255_0_2_n_0,
      DOB => stream_data_fifo_reg_192_255_0_2_n_1,
      DOC => stream_data_fifo_reg_192_255_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_192_255_0_2_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_192_255_0_2_i_1_n_0
    );
stream_data_fifo_reg_192_255_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => signal_fifo_write(9),
      I1 => signal_fifo_write(7),
      I2 => signal_fifo_write(6),
      I3 => signal_fifo_write(8),
      I4 => \^signal_fft_axis_tready\,
      I5 => signal_fft_axis_tvalid,
      O => stream_data_fifo_reg_192_255_0_2_i_1_n_0
    );
stream_data_fifo_reg_192_255_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRA(2),
      ADDRA(2 downto 0) => Q(2 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRA(2),
      ADDRB(2 downto 0) => Q(2 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRA(2),
      ADDRC(2 downto 0) => Q(2 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(12),
      DIB => signal_fft_axis_tdata(13),
      DIC => signal_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_192_255_12_14_n_0,
      DOB => stream_data_fifo_reg_192_255_12_14_n_1,
      DOC => stream_data_fifo_reg_192_255_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_192_255_12_14_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_192_255_0_2_i_1_n_0
    );
stream_data_fifo_reg_192_255_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => signal_fifo_write(0),
      A1 => signal_fifo_write(1),
      A2 => signal_fifo_write(2),
      A3 => signal_fifo_write(3),
      A4 => signal_fifo_write(4),
      A5 => signal_fifo_write(5),
      D => signal_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_192_255_15_15_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => ADDRA(2),
      DPRA4 => Q(3),
      DPRA5 => Q(4),
      SPO => NLW_stream_data_fifo_reg_192_255_15_15_SPO_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_192_255_0_2_i_1_n_0
    );
stream_data_fifo_reg_192_255_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRC(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRC(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRC(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(3),
      DIB => signal_fft_axis_tdata(4),
      DIC => signal_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_192_255_3_5_n_0,
      DOB => stream_data_fifo_reg_192_255_3_5_n_1,
      DOC => stream_data_fifo_reg_192_255_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_192_255_3_5_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_192_255_0_2_i_1_n_0
    );
stream_data_fifo_reg_192_255_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(6),
      DIB => signal_fft_axis_tdata(7),
      DIC => signal_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_192_255_6_8_n_0,
      DOB => stream_data_fifo_reg_192_255_6_8_n_1,
      DOC => stream_data_fifo_reg_192_255_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_192_255_6_8_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_192_255_0_2_i_1_n_0
    );
stream_data_fifo_reg_192_255_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(9),
      DIB => signal_fft_axis_tdata(10),
      DIC => signal_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_192_255_9_11_n_0,
      DOB => stream_data_fifo_reg_192_255_9_11_n_1,
      DOC => stream_data_fifo_reg_192_255_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_192_255_9_11_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_192_255_0_2_i_1_n_0
    );
stream_data_fifo_reg_256_319_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRC(2),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRC(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRC(2),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRC(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRC(2),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRC(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(0),
      DIB => signal_fft_axis_tdata(1),
      DIC => signal_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_256_319_0_2_n_0,
      DOB => stream_data_fifo_reg_256_319_0_2_n_1,
      DOC => stream_data_fifo_reg_256_319_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_256_319_0_2_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_256_319_0_2_i_1_n_0
    );
stream_data_fifo_reg_256_319_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^signal_fft_axis_tready\,
      I1 => signal_fft_axis_tvalid,
      I2 => signal_fifo_write(7),
      I3 => signal_fifo_write(6),
      I4 => signal_fifo_write(9),
      I5 => signal_fifo_write(8),
      O => stream_data_fifo_reg_256_319_0_2_i_1_n_0
    );
stream_data_fifo_reg_256_319_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRA(2),
      ADDRA(2 downto 0) => Q(2 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRA(2),
      ADDRB(2 downto 0) => Q(2 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRA(2),
      ADDRC(2 downto 0) => Q(2 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(12),
      DIB => signal_fft_axis_tdata(13),
      DIC => signal_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_256_319_12_14_n_0,
      DOB => stream_data_fifo_reg_256_319_12_14_n_1,
      DOC => stream_data_fifo_reg_256_319_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_256_319_12_14_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_256_319_0_2_i_1_n_0
    );
stream_data_fifo_reg_256_319_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => signal_fifo_write(0),
      A1 => signal_fifo_write(1),
      A2 => signal_fifo_write(2),
      A3 => signal_fifo_write(3),
      A4 => signal_fifo_write(4),
      A5 => signal_fifo_write(5),
      D => signal_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_256_319_15_15_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => ADDRA(2),
      DPRA4 => Q(3),
      DPRA5 => Q(4),
      SPO => NLW_stream_data_fifo_reg_256_319_15_15_SPO_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_256_319_0_2_i_1_n_0
    );
stream_data_fifo_reg_256_319_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => ADDRA(1),
      ADDRA(0) => ADDRC(0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => ADDRA(1),
      ADDRB(0) => ADDRC(0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => ADDRA(1),
      ADDRC(0) => ADDRC(0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(3),
      DIB => signal_fft_axis_tdata(4),
      DIC => signal_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_256_319_3_5_n_0,
      DOB => stream_data_fifo_reg_256_319_3_5_n_1,
      DOC => stream_data_fifo_reg_256_319_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_256_319_3_5_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_256_319_0_2_i_1_n_0
    );
stream_data_fifo_reg_256_319_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(6),
      DIB => signal_fft_axis_tdata(7),
      DIC => signal_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_256_319_6_8_n_0,
      DOB => stream_data_fifo_reg_256_319_6_8_n_1,
      DOC => stream_data_fifo_reg_256_319_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_256_319_6_8_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_256_319_0_2_i_1_n_0
    );
stream_data_fifo_reg_256_319_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRA(2),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(9),
      DIB => signal_fft_axis_tdata(10),
      DIC => signal_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_256_319_9_11_n_0,
      DOB => stream_data_fifo_reg_256_319_9_11_n_1,
      DOC => stream_data_fifo_reg_256_319_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_256_319_9_11_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_256_319_0_2_i_1_n_0
    );
stream_data_fifo_reg_320_383_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRC(2),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRC(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRC(2),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRC(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRC(2),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRC(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(0),
      DIB => signal_fft_axis_tdata(1),
      DIC => signal_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_320_383_0_2_n_0,
      DOB => stream_data_fifo_reg_320_383_0_2_n_1,
      DOC => stream_data_fifo_reg_320_383_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_320_383_0_2_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_320_383_0_2_i_1_n_0
    );
stream_data_fifo_reg_320_383_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => signal_fifo_write(9),
      I1 => signal_fifo_write(8),
      I2 => signal_fifo_write(6),
      I3 => signal_fifo_write(7),
      I4 => \^signal_fft_axis_tready\,
      I5 => signal_fft_axis_tvalid,
      O => stream_data_fifo_reg_320_383_0_2_i_1_n_0
    );
stream_data_fifo_reg_320_383_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRA(2),
      ADDRA(2 downto 0) => Q(2 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRA(2),
      ADDRB(2 downto 0) => Q(2 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRA(2),
      ADDRC(2 downto 0) => Q(2 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(12),
      DIB => signal_fft_axis_tdata(13),
      DIC => signal_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_320_383_12_14_n_0,
      DOB => stream_data_fifo_reg_320_383_12_14_n_1,
      DOC => stream_data_fifo_reg_320_383_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_320_383_12_14_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_320_383_0_2_i_1_n_0
    );
stream_data_fifo_reg_320_383_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => signal_fifo_write(0),
      A1 => signal_fifo_write(1),
      A2 => signal_fifo_write(2),
      A3 => signal_fifo_write(3),
      A4 => signal_fifo_write(4),
      A5 => signal_fifo_write(5),
      D => signal_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_320_383_15_15_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => ADDRA(2),
      DPRA4 => Q(3),
      DPRA5 => Q(4),
      SPO => NLW_stream_data_fifo_reg_320_383_15_15_SPO_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_320_383_0_2_i_1_n_0
    );
stream_data_fifo_reg_320_383_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(3),
      DIB => signal_fft_axis_tdata(4),
      DIC => signal_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_320_383_3_5_n_0,
      DOB => stream_data_fifo_reg_320_383_3_5_n_1,
      DOC => stream_data_fifo_reg_320_383_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_320_383_3_5_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_320_383_0_2_i_1_n_0
    );
stream_data_fifo_reg_320_383_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(6),
      DIB => signal_fft_axis_tdata(7),
      DIC => signal_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_320_383_6_8_n_0,
      DOB => stream_data_fifo_reg_320_383_6_8_n_1,
      DOC => stream_data_fifo_reg_320_383_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_320_383_6_8_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_320_383_0_2_i_1_n_0
    );
stream_data_fifo_reg_320_383_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRA(2),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRA(2),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRA(2),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(9),
      DIB => signal_fft_axis_tdata(10),
      DIC => signal_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_320_383_9_11_n_0,
      DOB => stream_data_fifo_reg_320_383_9_11_n_1,
      DOC => stream_data_fifo_reg_320_383_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_320_383_9_11_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_320_383_0_2_i_1_n_0
    );
stream_data_fifo_reg_384_447_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRC(2),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRC(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRC(2),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRC(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRC(2),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRC(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(0),
      DIB => signal_fft_axis_tdata(1),
      DIC => signal_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_384_447_0_2_n_0,
      DOB => stream_data_fifo_reg_384_447_0_2_n_1,
      DOC => stream_data_fifo_reg_384_447_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_384_447_0_2_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_384_447_0_2_i_1_n_0
    );
stream_data_fifo_reg_384_447_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => signal_fifo_write(9),
      I1 => signal_fifo_write(8),
      I2 => signal_fifo_write(7),
      I3 => signal_fifo_write(6),
      I4 => \^signal_fft_axis_tready\,
      I5 => signal_fft_axis_tvalid,
      O => stream_data_fifo_reg_384_447_0_2_i_1_n_0
    );
stream_data_fifo_reg_384_447_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRA(2),
      ADDRA(2 downto 0) => Q(2 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRA(2),
      ADDRB(2 downto 0) => Q(2 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRA(2),
      ADDRC(2 downto 0) => Q(2 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(12),
      DIB => signal_fft_axis_tdata(13),
      DIC => signal_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_384_447_12_14_n_0,
      DOB => stream_data_fifo_reg_384_447_12_14_n_1,
      DOC => stream_data_fifo_reg_384_447_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_384_447_12_14_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_384_447_0_2_i_1_n_0
    );
stream_data_fifo_reg_384_447_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => signal_fifo_write(0),
      A1 => signal_fifo_write(1),
      A2 => signal_fifo_write(2),
      A3 => signal_fifo_write(3),
      A4 => signal_fifo_write(4),
      A5 => signal_fifo_write(5),
      D => signal_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_384_447_15_15_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => ADDRA(2),
      DPRA4 => Q(3),
      DPRA5 => Q(4),
      SPO => NLW_stream_data_fifo_reg_384_447_15_15_SPO_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_384_447_0_2_i_1_n_0
    );
stream_data_fifo_reg_384_447_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => ADDRC(1),
      ADDRA(0) => ADDRA(0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => ADDRC(1),
      ADDRB(0) => ADDRA(0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => ADDRC(1),
      ADDRC(0) => ADDRA(0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(3),
      DIB => signal_fft_axis_tdata(4),
      DIC => signal_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_384_447_3_5_n_0,
      DOB => stream_data_fifo_reg_384_447_3_5_n_1,
      DOC => stream_data_fifo_reg_384_447_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_384_447_3_5_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_384_447_0_2_i_1_n_0
    );
stream_data_fifo_reg_384_447_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(6),
      DIB => signal_fft_axis_tdata(7),
      DIC => signal_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_384_447_6_8_n_0,
      DOB => stream_data_fifo_reg_384_447_6_8_n_1,
      DOC => stream_data_fifo_reg_384_447_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_384_447_6_8_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_384_447_0_2_i_1_n_0
    );
stream_data_fifo_reg_384_447_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRA(2),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRA(2),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRA(2),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(9),
      DIB => signal_fft_axis_tdata(10),
      DIC => signal_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_384_447_9_11_n_0,
      DOB => stream_data_fifo_reg_384_447_9_11_n_1,
      DOC => stream_data_fifo_reg_384_447_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_384_447_9_11_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_384_447_0_2_i_1_n_0
    );
stream_data_fifo_reg_448_511_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRC(2),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRC(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRC(2),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRC(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRC(2),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRC(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(0),
      DIB => signal_fft_axis_tdata(1),
      DIC => signal_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_448_511_0_2_n_0,
      DOB => stream_data_fifo_reg_448_511_0_2_n_1,
      DOC => stream_data_fifo_reg_448_511_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_448_511_0_2_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_448_511_0_2_i_1_n_0
    );
stream_data_fifo_reg_448_511_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => signal_fifo_write(9),
      I1 => signal_fifo_write(7),
      I2 => signal_fifo_write(6),
      I3 => \^signal_fft_axis_tready\,
      I4 => signal_fft_axis_tvalid,
      I5 => signal_fifo_write(8),
      O => stream_data_fifo_reg_448_511_0_2_i_1_n_0
    );
stream_data_fifo_reg_448_511_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRA(2),
      ADDRA(2 downto 0) => Q(2 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRA(2),
      ADDRB(2 downto 0) => Q(2 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRA(2),
      ADDRC(2 downto 0) => Q(2 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(12),
      DIB => signal_fft_axis_tdata(13),
      DIC => signal_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_448_511_12_14_n_0,
      DOB => stream_data_fifo_reg_448_511_12_14_n_1,
      DOC => stream_data_fifo_reg_448_511_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_448_511_12_14_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_448_511_0_2_i_1_n_0
    );
stream_data_fifo_reg_448_511_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => signal_fifo_write(0),
      A1 => signal_fifo_write(1),
      A2 => signal_fifo_write(2),
      A3 => signal_fifo_write(3),
      A4 => signal_fifo_write(4),
      A5 => signal_fifo_write(5),
      D => signal_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_448_511_15_15_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => ADDRA(2),
      DPRA4 => Q(3),
      DPRA5 => Q(4),
      SPO => NLW_stream_data_fifo_reg_448_511_15_15_SPO_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_448_511_0_2_i_1_n_0
    );
stream_data_fifo_reg_448_511_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1) => ADDRC(1),
      ADDRA(0) => ADDRA(0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1) => ADDRC(1),
      ADDRB(0) => ADDRA(0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1) => ADDRC(1),
      ADDRC(0) => ADDRA(0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(3),
      DIB => signal_fft_axis_tdata(4),
      DIC => signal_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_448_511_3_5_n_0,
      DOB => stream_data_fifo_reg_448_511_3_5_n_1,
      DOC => stream_data_fifo_reg_448_511_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_448_511_3_5_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_448_511_0_2_i_1_n_0
    );
stream_data_fifo_reg_448_511_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(6),
      DIB => signal_fft_axis_tdata(7),
      DIC => signal_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_448_511_6_8_n_0,
      DOB => stream_data_fifo_reg_448_511_6_8_n_1,
      DOC => stream_data_fifo_reg_448_511_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_448_511_6_8_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_448_511_0_2_i_1_n_0
    );
stream_data_fifo_reg_448_511_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRA(2),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRA(2),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRA(2),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(9),
      DIB => signal_fft_axis_tdata(10),
      DIC => signal_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_448_511_9_11_n_0,
      DOB => stream_data_fifo_reg_448_511_9_11_n_1,
      DOC => stream_data_fifo_reg_448_511_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_448_511_9_11_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_448_511_0_2_i_1_n_0
    );
stream_data_fifo_reg_512_575_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRC(2),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRC(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRC(2),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRC(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRC(2),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRC(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(0),
      DIB => signal_fft_axis_tdata(1),
      DIC => signal_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_512_575_0_2_n_0,
      DOB => stream_data_fifo_reg_512_575_0_2_n_1,
      DOC => stream_data_fifo_reg_512_575_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_512_575_0_2_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_512_575_0_2_i_1_n_0
    );
stream_data_fifo_reg_512_575_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^signal_fft_axis_tready\,
      I1 => signal_fft_axis_tvalid,
      I2 => signal_fifo_write(7),
      I3 => signal_fifo_write(6),
      I4 => signal_fifo_write(8),
      I5 => signal_fifo_write(9),
      O => stream_data_fifo_reg_512_575_0_2_i_1_n_0
    );
stream_data_fifo_reg_512_575_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRA(2),
      ADDRA(2 downto 0) => Q(2 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRA(2),
      ADDRB(2 downto 0) => Q(2 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRA(2),
      ADDRC(2 downto 0) => Q(2 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(12),
      DIB => signal_fft_axis_tdata(13),
      DIC => signal_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_512_575_12_14_n_0,
      DOB => stream_data_fifo_reg_512_575_12_14_n_1,
      DOC => stream_data_fifo_reg_512_575_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_512_575_12_14_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_512_575_0_2_i_1_n_0
    );
stream_data_fifo_reg_512_575_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => signal_fifo_write(0),
      A1 => signal_fifo_write(1),
      A2 => signal_fifo_write(2),
      A3 => signal_fifo_write(3),
      A4 => signal_fifo_write(4),
      A5 => signal_fifo_write(5),
      D => signal_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_512_575_15_15_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => ADDRA(2),
      DPRA4 => Q(3),
      DPRA5 => Q(4),
      SPO => NLW_stream_data_fifo_reg_512_575_15_15_SPO_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_512_575_0_2_i_1_n_0
    );
stream_data_fifo_reg_512_575_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(3),
      DIB => signal_fft_axis_tdata(4),
      DIC => signal_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_512_575_3_5_n_0,
      DOB => stream_data_fifo_reg_512_575_3_5_n_1,
      DOC => stream_data_fifo_reg_512_575_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_512_575_3_5_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_512_575_0_2_i_1_n_0
    );
stream_data_fifo_reg_512_575_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(6),
      DIB => signal_fft_axis_tdata(7),
      DIC => signal_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_512_575_6_8_n_0,
      DOB => stream_data_fifo_reg_512_575_6_8_n_1,
      DOC => stream_data_fifo_reg_512_575_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_512_575_6_8_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_512_575_0_2_i_1_n_0
    );
stream_data_fifo_reg_512_575_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRA(2),
      ADDRA(2 downto 0) => Q(2 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRA(2),
      ADDRB(2 downto 0) => Q(2 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRA(2),
      ADDRC(2 downto 0) => Q(2 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(9),
      DIB => signal_fft_axis_tdata(10),
      DIC => signal_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_512_575_9_11_n_0,
      DOB => stream_data_fifo_reg_512_575_9_11_n_1,
      DOC => stream_data_fifo_reg_512_575_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_512_575_9_11_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_512_575_0_2_i_1_n_0
    );
stream_data_fifo_reg_576_639_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRC(2),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRC(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRC(2),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRC(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRC(2),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRC(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(0),
      DIB => signal_fft_axis_tdata(1),
      DIC => signal_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_576_639_0_2_n_0,
      DOB => stream_data_fifo_reg_576_639_0_2_n_1,
      DOC => stream_data_fifo_reg_576_639_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_576_639_0_2_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_576_639_0_2_i_1_n_0
    );
stream_data_fifo_reg_576_639_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => signal_fifo_write(8),
      I1 => signal_fifo_write(9),
      I2 => signal_fifo_write(6),
      I3 => signal_fifo_write(7),
      I4 => \^signal_fft_axis_tready\,
      I5 => signal_fft_axis_tvalid,
      O => stream_data_fifo_reg_576_639_0_2_i_1_n_0
    );
stream_data_fifo_reg_576_639_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRA(2),
      ADDRA(2 downto 0) => Q(2 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRA(2),
      ADDRB(2 downto 0) => Q(2 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRA(2),
      ADDRC(2 downto 0) => Q(2 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(12),
      DIB => signal_fft_axis_tdata(13),
      DIC => signal_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_576_639_12_14_n_0,
      DOB => stream_data_fifo_reg_576_639_12_14_n_1,
      DOC => stream_data_fifo_reg_576_639_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_576_639_12_14_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_576_639_0_2_i_1_n_0
    );
stream_data_fifo_reg_576_639_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => signal_fifo_write(0),
      A1 => signal_fifo_write(1),
      A2 => signal_fifo_write(2),
      A3 => signal_fifo_write(3),
      A4 => signal_fifo_write(4),
      A5 => signal_fifo_write(5),
      D => signal_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_576_639_15_15_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => ADDRA(2),
      DPRA4 => Q(3),
      DPRA5 => Q(4),
      SPO => NLW_stream_data_fifo_reg_576_639_15_15_SPO_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_576_639_0_2_i_1_n_0
    );
stream_data_fifo_reg_576_639_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(3),
      DIB => signal_fft_axis_tdata(4),
      DIC => signal_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_576_639_3_5_n_0,
      DOB => stream_data_fifo_reg_576_639_3_5_n_1,
      DOC => stream_data_fifo_reg_576_639_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_576_639_3_5_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_576_639_0_2_i_1_n_0
    );
stream_data_fifo_reg_576_639_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(6),
      DIB => signal_fft_axis_tdata(7),
      DIC => signal_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_576_639_6_8_n_0,
      DOB => stream_data_fifo_reg_576_639_6_8_n_1,
      DOC => stream_data_fifo_reg_576_639_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_576_639_6_8_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_576_639_0_2_i_1_n_0
    );
stream_data_fifo_reg_576_639_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRA(2),
      ADDRA(2 downto 0) => Q(2 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRA(2),
      ADDRB(2 downto 0) => Q(2 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRA(2),
      ADDRC(2 downto 0) => Q(2 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(9),
      DIB => signal_fft_axis_tdata(10),
      DIC => signal_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_576_639_9_11_n_0,
      DOB => stream_data_fifo_reg_576_639_9_11_n_1,
      DOC => stream_data_fifo_reg_576_639_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_576_639_9_11_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_576_639_0_2_i_1_n_0
    );
stream_data_fifo_reg_640_703_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRC(2),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRC(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRC(2),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRC(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRC(2),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRC(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(0),
      DIB => signal_fft_axis_tdata(1),
      DIC => signal_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_640_703_0_2_n_0,
      DOB => stream_data_fifo_reg_640_703_0_2_n_1,
      DOC => stream_data_fifo_reg_640_703_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_640_703_0_2_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_640_703_0_2_i_1_n_0
    );
stream_data_fifo_reg_640_703_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => signal_fifo_write(8),
      I1 => signal_fifo_write(9),
      I2 => signal_fifo_write(7),
      I3 => signal_fifo_write(6),
      I4 => \^signal_fft_axis_tready\,
      I5 => signal_fft_axis_tvalid,
      O => stream_data_fifo_reg_640_703_0_2_i_1_n_0
    );
stream_data_fifo_reg_640_703_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRA(2),
      ADDRA(2 downto 0) => Q(2 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRA(2),
      ADDRB(2 downto 0) => Q(2 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRA(2),
      ADDRC(2 downto 0) => Q(2 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(12),
      DIB => signal_fft_axis_tdata(13),
      DIC => signal_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_640_703_12_14_n_0,
      DOB => stream_data_fifo_reg_640_703_12_14_n_1,
      DOC => stream_data_fifo_reg_640_703_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_640_703_12_14_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_640_703_0_2_i_1_n_0
    );
stream_data_fifo_reg_640_703_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => signal_fifo_write(0),
      A1 => signal_fifo_write(1),
      A2 => signal_fifo_write(2),
      A3 => signal_fifo_write(3),
      A4 => signal_fifo_write(4),
      A5 => signal_fifo_write(5),
      D => signal_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_640_703_15_15_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => ADDRA(2),
      DPRA4 => Q(3),
      DPRA5 => Q(4),
      SPO => NLW_stream_data_fifo_reg_640_703_15_15_SPO_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_640_703_0_2_i_1_n_0
    );
stream_data_fifo_reg_640_703_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(3),
      DIB => signal_fft_axis_tdata(4),
      DIC => signal_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_640_703_3_5_n_0,
      DOB => stream_data_fifo_reg_640_703_3_5_n_1,
      DOC => stream_data_fifo_reg_640_703_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_640_703_3_5_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_640_703_0_2_i_1_n_0
    );
stream_data_fifo_reg_640_703_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(6),
      DIB => signal_fft_axis_tdata(7),
      DIC => signal_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_640_703_6_8_n_0,
      DOB => stream_data_fifo_reg_640_703_6_8_n_1,
      DOC => stream_data_fifo_reg_640_703_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_640_703_6_8_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_640_703_0_2_i_1_n_0
    );
stream_data_fifo_reg_640_703_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRA(2),
      ADDRA(2 downto 0) => Q(2 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRA(2),
      ADDRB(2 downto 0) => Q(2 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRA(2),
      ADDRC(2 downto 0) => Q(2 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(9),
      DIB => signal_fft_axis_tdata(10),
      DIC => signal_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_640_703_9_11_n_0,
      DOB => stream_data_fifo_reg_640_703_9_11_n_1,
      DOC => stream_data_fifo_reg_640_703_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_640_703_9_11_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_640_703_0_2_i_1_n_0
    );
stream_data_fifo_reg_64_127_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRC(2),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRC(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRC(2),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRC(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRC(2),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRC(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(0),
      DIB => signal_fft_axis_tdata(1),
      DIC => signal_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_64_127_0_2_n_0,
      DOB => stream_data_fifo_reg_64_127_0_2_n_1,
      DOC => stream_data_fifo_reg_64_127_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_64_127_0_2_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_64_127_0_2_i_1_n_0
    );
stream_data_fifo_reg_64_127_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000800000000"
    )
        port map (
      I0 => \^signal_fft_axis_tready\,
      I1 => signal_fft_axis_tvalid,
      I2 => signal_fifo_write(8),
      I3 => signal_fifo_write(7),
      I4 => signal_fifo_write(9),
      I5 => signal_fifo_write(6),
      O => stream_data_fifo_reg_64_127_0_2_i_1_n_0
    );
stream_data_fifo_reg_64_127_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRA(2),
      ADDRA(2 downto 0) => Q(2 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRA(2),
      ADDRB(2 downto 0) => Q(2 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRA(2),
      ADDRC(2 downto 0) => Q(2 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(12),
      DIB => signal_fft_axis_tdata(13),
      DIC => signal_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_64_127_12_14_n_0,
      DOB => stream_data_fifo_reg_64_127_12_14_n_1,
      DOC => stream_data_fifo_reg_64_127_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_64_127_12_14_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_64_127_0_2_i_1_n_0
    );
stream_data_fifo_reg_64_127_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => signal_fifo_write(0),
      A1 => signal_fifo_write(1),
      A2 => signal_fifo_write(2),
      A3 => signal_fifo_write(3),
      A4 => signal_fifo_write(4),
      A5 => signal_fifo_write(5),
      D => signal_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_64_127_15_15_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => ADDRA(2),
      DPRA4 => Q(3),
      DPRA5 => Q(4),
      SPO => NLW_stream_data_fifo_reg_64_127_15_15_SPO_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_64_127_0_2_i_1_n_0
    );
stream_data_fifo_reg_64_127_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRC(2),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRC(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRC(2),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRC(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRC(2),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRC(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(3),
      DIB => signal_fft_axis_tdata(4),
      DIC => signal_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_64_127_3_5_n_0,
      DOB => stream_data_fifo_reg_64_127_3_5_n_1,
      DOC => stream_data_fifo_reg_64_127_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_64_127_3_5_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_64_127_0_2_i_1_n_0
    );
stream_data_fifo_reg_64_127_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(6),
      DIB => signal_fft_axis_tdata(7),
      DIC => signal_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_64_127_6_8_n_0,
      DOB => stream_data_fifo_reg_64_127_6_8_n_1,
      DOC => stream_data_fifo_reg_64_127_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_64_127_6_8_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_64_127_0_2_i_1_n_0
    );
stream_data_fifo_reg_64_127_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(9),
      DIB => signal_fft_axis_tdata(10),
      DIC => signal_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_64_127_9_11_n_0,
      DOB => stream_data_fifo_reg_64_127_9_11_n_1,
      DOC => stream_data_fifo_reg_64_127_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_64_127_9_11_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_64_127_0_2_i_1_n_0
    );
stream_data_fifo_reg_704_767_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRC(2),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRC(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRC(2),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRC(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRC(2),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRC(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(0),
      DIB => signal_fft_axis_tdata(1),
      DIC => signal_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_704_767_0_2_n_0,
      DOB => stream_data_fifo_reg_704_767_0_2_n_1,
      DOC => stream_data_fifo_reg_704_767_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_704_767_0_2_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_704_767_0_2_i_1_n_0
    );
stream_data_fifo_reg_704_767_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => signal_fifo_write(8),
      I1 => signal_fifo_write(7),
      I2 => signal_fifo_write(6),
      I3 => \^signal_fft_axis_tready\,
      I4 => signal_fft_axis_tvalid,
      I5 => signal_fifo_write(9),
      O => stream_data_fifo_reg_704_767_0_2_i_1_n_0
    );
stream_data_fifo_reg_704_767_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRA(2),
      ADDRA(2 downto 0) => Q(2 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRA(2),
      ADDRB(2 downto 0) => Q(2 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRA(2),
      ADDRC(2 downto 0) => Q(2 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(12),
      DIB => signal_fft_axis_tdata(13),
      DIC => signal_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_704_767_12_14_n_0,
      DOB => stream_data_fifo_reg_704_767_12_14_n_1,
      DOC => stream_data_fifo_reg_704_767_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_704_767_12_14_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_704_767_0_2_i_1_n_0
    );
stream_data_fifo_reg_704_767_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => signal_fifo_write(0),
      A1 => signal_fifo_write(1),
      A2 => signal_fifo_write(2),
      A3 => signal_fifo_write(3),
      A4 => signal_fifo_write(4),
      A5 => signal_fifo_write(5),
      D => signal_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_704_767_15_15_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => ADDRA(2),
      DPRA4 => Q(3),
      DPRA5 => Q(4),
      SPO => NLW_stream_data_fifo_reg_704_767_15_15_SPO_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_704_767_0_2_i_1_n_0
    );
stream_data_fifo_reg_704_767_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(3),
      DIB => signal_fft_axis_tdata(4),
      DIC => signal_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_704_767_3_5_n_0,
      DOB => stream_data_fifo_reg_704_767_3_5_n_1,
      DOC => stream_data_fifo_reg_704_767_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_704_767_3_5_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_704_767_0_2_i_1_n_0
    );
stream_data_fifo_reg_704_767_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(6),
      DIB => signal_fft_axis_tdata(7),
      DIC => signal_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_704_767_6_8_n_0,
      DOB => stream_data_fifo_reg_704_767_6_8_n_1,
      DOC => stream_data_fifo_reg_704_767_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_704_767_6_8_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_704_767_0_2_i_1_n_0
    );
stream_data_fifo_reg_704_767_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRA(2),
      ADDRA(2 downto 0) => Q(2 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRA(2),
      ADDRB(2 downto 0) => Q(2 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRA(2),
      ADDRC(2 downto 0) => Q(2 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(9),
      DIB => signal_fft_axis_tdata(10),
      DIC => signal_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_704_767_9_11_n_0,
      DOB => stream_data_fifo_reg_704_767_9_11_n_1,
      DOC => stream_data_fifo_reg_704_767_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_704_767_9_11_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_704_767_0_2_i_1_n_0
    );
stream_data_fifo_reg_768_831_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRC(2),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRC(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRC(2),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRC(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRC(2),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRC(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(0),
      DIB => signal_fft_axis_tdata(1),
      DIC => signal_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_768_831_0_2_n_0,
      DOB => stream_data_fifo_reg_768_831_0_2_n_1,
      DOC => stream_data_fifo_reg_768_831_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_768_831_0_2_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_768_831_0_2_i_1_n_0
    );
stream_data_fifo_reg_768_831_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040000000000000"
    )
        port map (
      I0 => signal_fifo_write(7),
      I1 => signal_fifo_write(9),
      I2 => signal_fifo_write(8),
      I3 => signal_fifo_write(6),
      I4 => \^signal_fft_axis_tready\,
      I5 => signal_fft_axis_tvalid,
      O => stream_data_fifo_reg_768_831_0_2_i_1_n_0
    );
stream_data_fifo_reg_768_831_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRA(2),
      ADDRA(2 downto 0) => Q(2 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRA(2),
      ADDRB(2 downto 0) => Q(2 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRA(2),
      ADDRC(2 downto 0) => Q(2 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(12),
      DIB => signal_fft_axis_tdata(13),
      DIC => signal_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_768_831_12_14_n_0,
      DOB => stream_data_fifo_reg_768_831_12_14_n_1,
      DOC => stream_data_fifo_reg_768_831_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_768_831_12_14_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_768_831_0_2_i_1_n_0
    );
stream_data_fifo_reg_768_831_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => signal_fifo_write(0),
      A1 => signal_fifo_write(1),
      A2 => signal_fifo_write(2),
      A3 => signal_fifo_write(3),
      A4 => signal_fifo_write(4),
      A5 => signal_fifo_write(5),
      D => signal_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_768_831_15_15_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => ADDRA(2),
      DPRA4 => Q(3),
      DPRA5 => Q(4),
      SPO => NLW_stream_data_fifo_reg_768_831_15_15_SPO_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_768_831_0_2_i_1_n_0
    );
stream_data_fifo_reg_768_831_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(3),
      DIB => signal_fft_axis_tdata(4),
      DIC => signal_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_768_831_3_5_n_0,
      DOB => stream_data_fifo_reg_768_831_3_5_n_1,
      DOC => stream_data_fifo_reg_768_831_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_768_831_3_5_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_768_831_0_2_i_1_n_0
    );
stream_data_fifo_reg_768_831_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(6),
      DIB => signal_fft_axis_tdata(7),
      DIC => signal_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_768_831_6_8_n_0,
      DOB => stream_data_fifo_reg_768_831_6_8_n_1,
      DOC => stream_data_fifo_reg_768_831_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_768_831_6_8_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_768_831_0_2_i_1_n_0
    );
stream_data_fifo_reg_768_831_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRA(2),
      ADDRA(2 downto 0) => Q(2 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRA(2),
      ADDRB(2 downto 0) => Q(2 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRA(2),
      ADDRC(2 downto 0) => Q(2 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(9),
      DIB => signal_fft_axis_tdata(10),
      DIC => signal_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_768_831_9_11_n_0,
      DOB => stream_data_fifo_reg_768_831_9_11_n_1,
      DOC => stream_data_fifo_reg_768_831_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_768_831_9_11_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_768_831_0_2_i_1_n_0
    );
stream_data_fifo_reg_832_895_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRC(2),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRC(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRC(2),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRC(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRC(2),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRC(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(0),
      DIB => signal_fft_axis_tdata(1),
      DIC => signal_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_832_895_0_2_n_0,
      DOB => stream_data_fifo_reg_832_895_0_2_n_1,
      DOC => stream_data_fifo_reg_832_895_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_832_895_0_2_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_832_895_0_2_i_1_n_0
    );
stream_data_fifo_reg_832_895_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => signal_fifo_write(7),
      I1 => signal_fifo_write(8),
      I2 => signal_fifo_write(6),
      I3 => \^signal_fft_axis_tready\,
      I4 => signal_fft_axis_tvalid,
      I5 => signal_fifo_write(9),
      O => stream_data_fifo_reg_832_895_0_2_i_1_n_0
    );
stream_data_fifo_reg_832_895_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRA(2),
      ADDRA(2 downto 0) => Q(2 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRA(2),
      ADDRB(2 downto 0) => Q(2 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRA(2),
      ADDRC(2 downto 0) => Q(2 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(12),
      DIB => signal_fft_axis_tdata(13),
      DIC => signal_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_832_895_12_14_n_0,
      DOB => stream_data_fifo_reg_832_895_12_14_n_1,
      DOC => stream_data_fifo_reg_832_895_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_832_895_12_14_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_832_895_0_2_i_1_n_0
    );
stream_data_fifo_reg_832_895_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => signal_fifo_write(0),
      A1 => signal_fifo_write(1),
      A2 => signal_fifo_write(2),
      A3 => signal_fifo_write(3),
      A4 => signal_fifo_write(4),
      A5 => signal_fifo_write(5),
      D => signal_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_832_895_15_15_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => ADDRA(2),
      DPRA4 => Q(3),
      DPRA5 => Q(4),
      SPO => NLW_stream_data_fifo_reg_832_895_15_15_SPO_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_832_895_0_2_i_1_n_0
    );
stream_data_fifo_reg_832_895_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(3),
      DIB => signal_fft_axis_tdata(4),
      DIC => signal_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_832_895_3_5_n_0,
      DOB => stream_data_fifo_reg_832_895_3_5_n_1,
      DOC => stream_data_fifo_reg_832_895_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_832_895_3_5_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_832_895_0_2_i_1_n_0
    );
stream_data_fifo_reg_832_895_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(6),
      DIB => signal_fft_axis_tdata(7),
      DIC => signal_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_832_895_6_8_n_0,
      DOB => stream_data_fifo_reg_832_895_6_8_n_1,
      DOC => stream_data_fifo_reg_832_895_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_832_895_6_8_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_832_895_0_2_i_1_n_0
    );
stream_data_fifo_reg_832_895_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRA(2),
      ADDRA(2 downto 0) => Q(2 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRA(2),
      ADDRB(2 downto 0) => Q(2 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRA(2),
      ADDRC(2 downto 0) => Q(2 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(9),
      DIB => signal_fft_axis_tdata(10),
      DIC => signal_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_832_895_9_11_n_0,
      DOB => stream_data_fifo_reg_832_895_9_11_n_1,
      DOC => stream_data_fifo_reg_832_895_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_832_895_9_11_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_832_895_0_2_i_1_n_0
    );
stream_data_fifo_reg_896_959_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRC(2),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRC(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRC(2),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRC(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRC(2),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRC(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(0),
      DIB => signal_fft_axis_tdata(1),
      DIC => signal_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_896_959_0_2_n_0,
      DOB => stream_data_fifo_reg_896_959_0_2_n_1,
      DOC => stream_data_fifo_reg_896_959_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_896_959_0_2_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_896_959_0_2_i_1_n_0
    );
stream_data_fifo_reg_896_959_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4000000000000000"
    )
        port map (
      I0 => signal_fifo_write(6),
      I1 => signal_fifo_write(8),
      I2 => signal_fifo_write(7),
      I3 => \^signal_fft_axis_tready\,
      I4 => signal_fft_axis_tvalid,
      I5 => signal_fifo_write(9),
      O => stream_data_fifo_reg_896_959_0_2_i_1_n_0
    );
stream_data_fifo_reg_896_959_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRA(2),
      ADDRA(2 downto 0) => Q(2 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRA(2),
      ADDRB(2 downto 0) => Q(2 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRA(2),
      ADDRC(2 downto 0) => Q(2 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(12),
      DIB => signal_fft_axis_tdata(13),
      DIC => signal_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_896_959_12_14_n_0,
      DOB => stream_data_fifo_reg_896_959_12_14_n_1,
      DOC => stream_data_fifo_reg_896_959_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_896_959_12_14_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_896_959_0_2_i_1_n_0
    );
stream_data_fifo_reg_896_959_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => signal_fifo_write(0),
      A1 => signal_fifo_write(1),
      A2 => signal_fifo_write(2),
      A3 => signal_fifo_write(3),
      A4 => signal_fifo_write(4),
      A5 => signal_fifo_write(5),
      D => signal_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_896_959_15_15_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => ADDRA(2),
      DPRA4 => Q(3),
      DPRA5 => Q(4),
      SPO => NLW_stream_data_fifo_reg_896_959_15_15_SPO_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_896_959_0_2_i_1_n_0
    );
stream_data_fifo_reg_896_959_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(3),
      DIB => signal_fft_axis_tdata(4),
      DIC => signal_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_896_959_3_5_n_0,
      DOB => stream_data_fifo_reg_896_959_3_5_n_1,
      DOC => stream_data_fifo_reg_896_959_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_896_959_3_5_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_896_959_0_2_i_1_n_0
    );
stream_data_fifo_reg_896_959_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(6),
      DIB => signal_fft_axis_tdata(7),
      DIC => signal_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_896_959_6_8_n_0,
      DOB => stream_data_fifo_reg_896_959_6_8_n_1,
      DOC => stream_data_fifo_reg_896_959_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_896_959_6_8_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_896_959_0_2_i_1_n_0
    );
stream_data_fifo_reg_896_959_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRA(2),
      ADDRA(2 downto 0) => Q(2 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRA(2),
      ADDRB(2 downto 0) => Q(2 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRA(2),
      ADDRC(2 downto 0) => Q(2 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(9),
      DIB => signal_fft_axis_tdata(10),
      DIC => signal_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_896_959_9_11_n_0,
      DOB => stream_data_fifo_reg_896_959_9_11_n_1,
      DOC => stream_data_fifo_reg_896_959_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_896_959_9_11_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_896_959_0_2_i_1_n_0
    );
stream_data_fifo_reg_960_1023_0_2: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRC(2),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRC(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRC(2),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRC(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRC(2),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRC(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(0),
      DIB => signal_fft_axis_tdata(1),
      DIC => signal_fft_axis_tdata(2),
      DID => '0',
      DOA => stream_data_fifo_reg_960_1023_0_2_n_0,
      DOB => stream_data_fifo_reg_960_1023_0_2_n_1,
      DOC => stream_data_fifo_reg_960_1023_0_2_n_2,
      DOD => NLW_stream_data_fifo_reg_960_1023_0_2_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_960_1023_0_2_i_1_n_0
    );
stream_data_fifo_reg_960_1023_0_2_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^signal_fft_axis_tready\,
      I1 => signal_fft_axis_tvalid,
      I2 => signal_fifo_write(7),
      I3 => signal_fifo_write(6),
      I4 => signal_fifo_write(9),
      I5 => signal_fifo_write(8),
      O => stream_data_fifo_reg_960_1023_0_2_i_1_n_0
    );
stream_data_fifo_reg_960_1023_12_14: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRA(2),
      ADDRA(2 downto 0) => Q(2 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRA(2),
      ADDRB(2 downto 0) => Q(2 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRA(2),
      ADDRC(2 downto 0) => Q(2 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(12),
      DIB => signal_fft_axis_tdata(13),
      DIC => signal_fft_axis_tdata(14),
      DID => '0',
      DOA => stream_data_fifo_reg_960_1023_12_14_n_0,
      DOB => stream_data_fifo_reg_960_1023_12_14_n_1,
      DOC => stream_data_fifo_reg_960_1023_12_14_n_2,
      DOD => NLW_stream_data_fifo_reg_960_1023_12_14_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_960_1023_0_2_i_1_n_0
    );
stream_data_fifo_reg_960_1023_15_15: unisim.vcomponents.RAM64X1D
     port map (
      A0 => signal_fifo_write(0),
      A1 => signal_fifo_write(1),
      A2 => signal_fifo_write(2),
      A3 => signal_fifo_write(3),
      A4 => signal_fifo_write(4),
      A5 => signal_fifo_write(5),
      D => signal_fft_axis_tdata(15),
      DPO => stream_data_fifo_reg_960_1023_15_15_n_0,
      DPRA0 => Q(0),
      DPRA1 => Q(1),
      DPRA2 => Q(2),
      DPRA3 => ADDRA(2),
      DPRA4 => Q(3),
      DPRA5 => Q(4),
      SPO => NLW_stream_data_fifo_reg_960_1023_15_15_SPO_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_960_1023_0_2_i_1_n_0
    );
stream_data_fifo_reg_960_1023_3_5: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(3),
      DIB => signal_fft_axis_tdata(4),
      DIC => signal_fft_axis_tdata(5),
      DID => '0',
      DOA => stream_data_fifo_reg_960_1023_3_5_n_0,
      DOB => stream_data_fifo_reg_960_1023_3_5_n_1,
      DOC => stream_data_fifo_reg_960_1023_3_5_n_2,
      DOD => NLW_stream_data_fifo_reg_960_1023_3_5_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_960_1023_0_2_i_1_n_0
    );
stream_data_fifo_reg_960_1023_6_8: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRB(0),
      ADDRA(2) => Q(2),
      ADDRA(1 downto 0) => ADDRA(1 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRB(0),
      ADDRB(2) => Q(2),
      ADDRB(1 downto 0) => ADDRA(1 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRB(0),
      ADDRC(2) => Q(2),
      ADDRC(1 downto 0) => ADDRA(1 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(6),
      DIB => signal_fft_axis_tdata(7),
      DIC => signal_fft_axis_tdata(8),
      DID => '0',
      DOA => stream_data_fifo_reg_960_1023_6_8_n_0,
      DOB => stream_data_fifo_reg_960_1023_6_8_n_1,
      DOC => stream_data_fifo_reg_960_1023_6_8_n_2,
      DOD => NLW_stream_data_fifo_reg_960_1023_6_8_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_960_1023_0_2_i_1_n_0
    );
stream_data_fifo_reg_960_1023_9_11: unisim.vcomponents.RAM64M
     port map (
      ADDRA(5 downto 4) => Q(4 downto 3),
      ADDRA(3) => ADDRA(2),
      ADDRA(2 downto 0) => Q(2 downto 0),
      ADDRB(5 downto 4) => Q(4 downto 3),
      ADDRB(3) => ADDRA(2),
      ADDRB(2 downto 0) => Q(2 downto 0),
      ADDRC(5 downto 4) => Q(4 downto 3),
      ADDRC(3) => ADDRA(2),
      ADDRC(2 downto 0) => Q(2 downto 0),
      ADDRD(5 downto 0) => signal_fifo_write(5 downto 0),
      DIA => signal_fft_axis_tdata(9),
      DIB => signal_fft_axis_tdata(10),
      DIC => signal_fft_axis_tdata(11),
      DID => '0',
      DOA => stream_data_fifo_reg_960_1023_9_11_n_0,
      DOB => stream_data_fifo_reg_960_1023_9_11_n_1,
      DOC => stream_data_fifo_reg_960_1023_9_11_n_2,
      DOD => NLW_stream_data_fifo_reg_960_1023_9_11_DOD_UNCONNECTED,
      WCLK => signal_fft_axis_aclk,
      WE => stream_data_fifo_reg_960_1023_0_2_i_1_n_0
    );
\write_pointer[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => signal_fifo_write(0),
      O => write_pointer(0)
    );
\write_pointer[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => signal_fifo_write(0),
      I1 => signal_fifo_write(1),
      O => write_pointer(1)
    );
\write_pointer[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => signal_fifo_write(1),
      I1 => signal_fifo_write(0),
      I2 => signal_fifo_write(2),
      O => write_pointer(2)
    );
\write_pointer[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => signal_fifo_write(2),
      I1 => signal_fifo_write(0),
      I2 => signal_fifo_write(1),
      I3 => signal_fifo_write(3),
      O => write_pointer(3)
    );
\write_pointer[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => signal_fifo_write(3),
      I1 => signal_fifo_write(1),
      I2 => signal_fifo_write(0),
      I3 => signal_fifo_write(2),
      I4 => signal_fifo_write(4),
      O => write_pointer(4)
    );
\write_pointer[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => signal_fifo_write(4),
      I1 => signal_fifo_write(2),
      I2 => signal_fifo_write(0),
      I3 => signal_fifo_write(1),
      I4 => signal_fifo_write(3),
      I5 => signal_fifo_write(5),
      O => write_pointer(5)
    );
\write_pointer[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFFFFF08000000"
    )
        port map (
      I0 => signal_fifo_write(5),
      I1 => signal_fifo_write(3),
      I2 => \write_pointer[6]_i_2_n_0\,
      I3 => signal_fifo_write(2),
      I4 => signal_fifo_write(4),
      I5 => signal_fifo_write(6),
      O => write_pointer(6)
    );
\write_pointer[6]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => signal_fifo_write(0),
      I1 => signal_fifo_write(1),
      O => \write_pointer[6]_i_2_n_0\
    );
\write_pointer[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => signal_fifo_write(6),
      I1 => \write_pointer[9]_i_6_n_0\,
      I2 => signal_fifo_write(7),
      O => write_pointer(7)
    );
\write_pointer[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DF20"
    )
        port map (
      I0 => signal_fifo_write(7),
      I1 => \write_pointer[9]_i_6_n_0\,
      I2 => signal_fifo_write(6),
      I3 => signal_fifo_write(8),
      O => write_pointer(8)
    );
\write_pointer[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => signal_fft_axis_tlast,
      I1 => \^writes_done_reg_0\,
      I2 => signal_fft_axis_aresetn,
      O => \write_pointer[9]_i_1_n_0\
    );
\write_pointer[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E222"
    )
        port map (
      I0 => \fifo_read_reg[9]\,
      I1 => \^writes_done_reg_0\,
      I2 => signal_fft_axis_tvalid,
      I3 => \^signal_fft_axis_tready\,
      O => \write_pointer[9]_i_2_n_0\
    );
\write_pointer[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FF0800"
    )
        port map (
      I0 => signal_fifo_write(8),
      I1 => signal_fifo_write(6),
      I2 => \write_pointer[9]_i_6_n_0\,
      I3 => signal_fifo_write(7),
      I4 => signal_fifo_write(9),
      O => write_pointer(9)
    );
\write_pointer[9]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F7FFFFFF"
    )
        port map (
      I0 => signal_fifo_write(8),
      I1 => signal_fifo_write(6),
      I2 => \write_pointer[9]_i_6_n_0\,
      I3 => signal_fifo_write(7),
      I4 => signal_fifo_write(9),
      O => \^writes_done_reg_0\
    );
\write_pointer[9]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => signal_fifo_write(4),
      I1 => signal_fifo_write(2),
      I2 => signal_fifo_write(0),
      I3 => signal_fifo_write(1),
      I4 => signal_fifo_write(3),
      I5 => signal_fifo_write(5),
      O => \write_pointer[9]_i_6_n_0\
    );
\write_pointer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => \write_pointer[9]_i_2_n_0\,
      D => write_pointer(0),
      Q => signal_fifo_write(0),
      R => \write_pointer[9]_i_1_n_0\
    );
\write_pointer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => \write_pointer[9]_i_2_n_0\,
      D => write_pointer(1),
      Q => signal_fifo_write(1),
      R => \write_pointer[9]_i_1_n_0\
    );
\write_pointer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => \write_pointer[9]_i_2_n_0\,
      D => write_pointer(2),
      Q => signal_fifo_write(2),
      R => \write_pointer[9]_i_1_n_0\
    );
\write_pointer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => \write_pointer[9]_i_2_n_0\,
      D => write_pointer(3),
      Q => signal_fifo_write(3),
      R => \write_pointer[9]_i_1_n_0\
    );
\write_pointer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => \write_pointer[9]_i_2_n_0\,
      D => write_pointer(4),
      Q => signal_fifo_write(4),
      R => \write_pointer[9]_i_1_n_0\
    );
\write_pointer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => \write_pointer[9]_i_2_n_0\,
      D => write_pointer(5),
      Q => signal_fifo_write(5),
      R => \write_pointer[9]_i_1_n_0\
    );
\write_pointer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => \write_pointer[9]_i_2_n_0\,
      D => write_pointer(6),
      Q => signal_fifo_write(6),
      R => \write_pointer[9]_i_1_n_0\
    );
\write_pointer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => \write_pointer[9]_i_2_n_0\,
      D => write_pointer(7),
      Q => signal_fifo_write(7),
      R => \write_pointer[9]_i_1_n_0\
    );
\write_pointer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => \write_pointer[9]_i_2_n_0\,
      D => write_pointer(8),
      Q => signal_fifo_write(8),
      R => \write_pointer[9]_i_1_n_0\
    );
\write_pointer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => \write_pointer[9]_i_2_n_0\,
      D => write_pointer(9),
      Q => signal_fifo_write(9),
      R => \write_pointer[9]_i_1_n_0\
    );
writes_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B3BBBBBB00000000"
    )
        port map (
      I0 => writes_done,
      I1 => \^writes_done_reg_0\,
      I2 => signal_fft_axis_tlast,
      I3 => \^signal_fft_axis_tready\,
      I4 => signal_fft_axis_tvalid,
      I5 => signal_fft_axis_aresetn,
      O => writes_done_i_1_n_0
    );
writes_done_reg: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => '1',
      D => writes_done_i_1_n_0,
      Q => writes_done,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity corr_wrapper_projection_correlation_calculator_v1_0_0_1_projection_correlation_calculator_v1_0 is
  port (
    correlation_out_axi_arready : out STD_LOGIC;
    golden_fft_axis_tready : out STD_LOGIC;
    signal_fft_axis_tready : out STD_LOGIC;
    correlation_out_axi_wready : out STD_LOGIC;
    correlation_out_axi_awready : out STD_LOGIC;
    correlation_out_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    mag1 : out STD_LOGIC_VECTOR ( 47 downto 0 );
    mag2 : out STD_LOGIC_VECTOR ( 47 downto 0 );
    dot_product : out STD_LOGIC_VECTOR ( 47 downto 0 );
    correlation_out_axi_rvalid : out STD_LOGIC;
    correlation_out_axi_bvalid : out STD_LOGIC;
    dot_product_valid : out STD_LOGIC;
    correlation_out_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    correlation_out_axi_arvalid : in STD_LOGIC;
    golden_fft_axis_tvalid : in STD_LOGIC;
    signal_fft_axis_aclk : in STD_LOGIC;
    signal_fft_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    signal_fft_axis_tvalid : in STD_LOGIC;
    golden_fft_axis_aclk : in STD_LOGIC;
    golden_fft_axis_tdata : in STD_LOGIC_VECTOR ( 15 downto 0 );
    correlation_out_axi_aclk : in STD_LOGIC;
    correlation_out_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    correlation_normalized_valid : in STD_LOGIC;
    correlation_normalized : in STD_LOGIC_VECTOR ( 31 downto 0 );
    correlation_out_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    correlation_out_axi_awvalid : in STD_LOGIC;
    correlation_out_axi_wvalid : in STD_LOGIC;
    correlation_out_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    signal_fft_axis_aresetn : in STD_LOGIC;
    signal_fft_axis_tlast : in STD_LOGIC;
    golden_fft_axis_aresetn : in STD_LOGIC;
    correlation_out_axi_aresetn : in STD_LOGIC;
    correlation_out_axi_bready : in STD_LOGIC;
    correlation_out_axi_rready : in STD_LOGIC;
    dot_product_ready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of corr_wrapper_projection_correlation_calculator_v1_0_0_1_projection_correlation_calculator_v1_0 : entity is "projection_correlation_calculator_v1_0";
end corr_wrapper_projection_correlation_calculator_v1_0_0_1_projection_correlation_calculator_v1_0;

architecture STRUCTURE of corr_wrapper_projection_correlation_calculator_v1_0_0_1_projection_correlation_calculator_v1_0 is
  signal correlation_valid_i_1_n_0 : STD_LOGIC;
  signal correlation_valid_i_2_n_0 : STD_LOGIC;
  signal data_ready : STD_LOGIC;
  signal data_ready_i_1_n_0 : STD_LOGIC;
  signal \^dot_product_valid\ : STD_LOGIC;
  signal \fifo_read[0]_i_1_n_0\ : STD_LOGIC;
  signal \fifo_read[0]_rep_i_1__0_n_0\ : STD_LOGIC;
  signal \fifo_read[0]_rep_i_1__1_n_0\ : STD_LOGIC;
  signal \fifo_read[0]_rep_i_1__2_n_0\ : STD_LOGIC;
  signal \fifo_read[0]_rep_i_1__3_n_0\ : STD_LOGIC;
  signal \fifo_read[0]_rep_i_1_n_0\ : STD_LOGIC;
  signal \fifo_read[1]_rep_i_1__0_n_0\ : STD_LOGIC;
  signal \fifo_read[1]_rep_i_1__1_n_0\ : STD_LOGIC;
  signal \fifo_read[1]_rep_i_1__2_n_0\ : STD_LOGIC;
  signal \fifo_read[1]_rep_i_1_n_0\ : STD_LOGIC;
  signal \fifo_read[3]_rep_i_1__0_n_0\ : STD_LOGIC;
  signal \fifo_read[3]_rep_i_1__1_n_0\ : STD_LOGIC;
  signal \fifo_read[3]_rep_i_1__2_n_0\ : STD_LOGIC;
  signal \fifo_read[3]_rep_i_1__3_n_0\ : STD_LOGIC;
  signal \fifo_read[3]_rep_i_1_n_0\ : STD_LOGIC;
  signal \fifo_read[5]_i_2_n_0\ : STD_LOGIC;
  signal \fifo_read_reg[0]_rep__0_n_0\ : STD_LOGIC;
  signal \fifo_read_reg[0]_rep__1_n_0\ : STD_LOGIC;
  signal \fifo_read_reg[0]_rep__2_n_0\ : STD_LOGIC;
  signal \fifo_read_reg[0]_rep__3_n_0\ : STD_LOGIC;
  signal \fifo_read_reg[0]_rep_n_0\ : STD_LOGIC;
  signal \fifo_read_reg[1]_rep__0_n_0\ : STD_LOGIC;
  signal \fifo_read_reg[1]_rep__1_n_0\ : STD_LOGIC;
  signal \fifo_read_reg[1]_rep__2_n_0\ : STD_LOGIC;
  signal \fifo_read_reg[1]_rep_n_0\ : STD_LOGIC;
  signal \fifo_read_reg[3]_rep__0_n_0\ : STD_LOGIC;
  signal \fifo_read_reg[3]_rep__1_n_0\ : STD_LOGIC;
  signal \fifo_read_reg[3]_rep__2_n_0\ : STD_LOGIC;
  signal \fifo_read_reg[3]_rep__3_n_0\ : STD_LOGIC;
  signal \fifo_read_reg[3]_rep_n_0\ : STD_LOGIC;
  signal \fifo_read_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal golden_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal golden_read_data_mag : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal golden_read_data_mag0_n_100 : STD_LOGIC;
  signal golden_read_data_mag0_n_101 : STD_LOGIC;
  signal golden_read_data_mag0_n_102 : STD_LOGIC;
  signal golden_read_data_mag0_n_103 : STD_LOGIC;
  signal golden_read_data_mag0_n_104 : STD_LOGIC;
  signal golden_read_data_mag0_n_105 : STD_LOGIC;
  signal golden_read_data_mag0_n_58 : STD_LOGIC;
  signal golden_read_data_mag0_n_59 : STD_LOGIC;
  signal golden_read_data_mag0_n_60 : STD_LOGIC;
  signal golden_read_data_mag0_n_61 : STD_LOGIC;
  signal golden_read_data_mag0_n_62 : STD_LOGIC;
  signal golden_read_data_mag0_n_63 : STD_LOGIC;
  signal golden_read_data_mag0_n_64 : STD_LOGIC;
  signal golden_read_data_mag0_n_65 : STD_LOGIC;
  signal golden_read_data_mag0_n_66 : STD_LOGIC;
  signal golden_read_data_mag0_n_67 : STD_LOGIC;
  signal golden_read_data_mag0_n_68 : STD_LOGIC;
  signal golden_read_data_mag0_n_69 : STD_LOGIC;
  signal golden_read_data_mag0_n_70 : STD_LOGIC;
  signal golden_read_data_mag0_n_71 : STD_LOGIC;
  signal golden_read_data_mag0_n_72 : STD_LOGIC;
  signal golden_read_data_mag0_n_73 : STD_LOGIC;
  signal golden_read_data_mag0_n_74 : STD_LOGIC;
  signal golden_read_data_mag0_n_75 : STD_LOGIC;
  signal golden_read_data_mag0_n_76 : STD_LOGIC;
  signal golden_read_data_mag0_n_77 : STD_LOGIC;
  signal golden_read_data_mag0_n_78 : STD_LOGIC;
  signal golden_read_data_mag0_n_79 : STD_LOGIC;
  signal golden_read_data_mag0_n_80 : STD_LOGIC;
  signal golden_read_data_mag0_n_81 : STD_LOGIC;
  signal golden_read_data_mag0_n_82 : STD_LOGIC;
  signal golden_read_data_mag0_n_83 : STD_LOGIC;
  signal golden_read_data_mag0_n_84 : STD_LOGIC;
  signal golden_read_data_mag0_n_85 : STD_LOGIC;
  signal golden_read_data_mag0_n_86 : STD_LOGIC;
  signal golden_read_data_mag0_n_87 : STD_LOGIC;
  signal golden_read_data_mag0_n_88 : STD_LOGIC;
  signal golden_read_data_mag0_n_89 : STD_LOGIC;
  signal golden_read_data_mag0_n_90 : STD_LOGIC;
  signal golden_read_data_mag0_n_91 : STD_LOGIC;
  signal golden_read_data_mag0_n_92 : STD_LOGIC;
  signal golden_read_data_mag0_n_93 : STD_LOGIC;
  signal golden_read_data_mag0_n_94 : STD_LOGIC;
  signal golden_read_data_mag0_n_95 : STD_LOGIC;
  signal golden_read_data_mag0_n_96 : STD_LOGIC;
  signal golden_read_data_mag0_n_97 : STD_LOGIC;
  signal golden_read_data_mag0_n_98 : STD_LOGIC;
  signal golden_read_data_mag0_n_99 : STD_LOGIC;
  signal \golden_read_data_mag[0]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[10]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[11]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[12]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[13]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[14]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[15]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[16]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[17]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[18]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[19]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[1]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[20]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[21]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[22]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[23]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[24]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[25]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[26]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[27]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[28]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[29]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[2]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[30]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[31]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[32]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[33]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[34]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[35]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[36]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[37]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[38]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[39]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[3]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[40]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[41]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[42]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[43]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[44]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[45]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[46]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[47]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[4]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[5]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[6]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[7]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[8]_i_1_n_0\ : STD_LOGIC;
  signal \golden_read_data_mag[9]_i_1_n_0\ : STD_LOGIC;
  signal golden_read_data_mag_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 1 );
  signal projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_10 : STD_LOGIC;
  signal projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_11 : STD_LOGIC;
  signal projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_12 : STD_LOGIC;
  signal projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_13 : STD_LOGIC;
  signal projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_14 : STD_LOGIC;
  signal projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_2 : STD_LOGIC;
  signal projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3 : STD_LOGIC;
  signal projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_4 : STD_LOGIC;
  signal projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_5 : STD_LOGIC;
  signal projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_6 : STD_LOGIC;
  signal projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_7 : STD_LOGIC;
  signal projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_8 : STD_LOGIC;
  signal projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_9 : STD_LOGIC;
  signal projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_10 : STD_LOGIC;
  signal projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_11 : STD_LOGIC;
  signal projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_12 : STD_LOGIC;
  signal projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_2 : STD_LOGIC;
  signal projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_3 : STD_LOGIC;
  signal projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_4 : STD_LOGIC;
  signal projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_5 : STD_LOGIC;
  signal projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_6 : STD_LOGIC;
  signal projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_7 : STD_LOGIC;
  signal projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_8 : STD_LOGIC;
  signal projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_9 : STD_LOGIC;
  signal restart : STD_LOGIC;
  signal restart25_in : STD_LOGIC;
  signal \restart2__4\ : STD_LOGIC;
  signal restart2_carry_n_0 : STD_LOGIC;
  signal restart2_carry_n_1 : STD_LOGIC;
  signal restart2_carry_n_2 : STD_LOGIC;
  signal restart2_carry_n_3 : STD_LOGIC;
  signal \restart2_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \restart2_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \restart2_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \restart2_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal restart_i_1_n_0 : STD_LOGIC;
  signal signal_data : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal signal_fifo_read_data : STD_LOGIC;
  signal signal_read_data_mag : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal signal_read_data_mag0_n_100 : STD_LOGIC;
  signal signal_read_data_mag0_n_101 : STD_LOGIC;
  signal signal_read_data_mag0_n_102 : STD_LOGIC;
  signal signal_read_data_mag0_n_103 : STD_LOGIC;
  signal signal_read_data_mag0_n_104 : STD_LOGIC;
  signal signal_read_data_mag0_n_105 : STD_LOGIC;
  signal signal_read_data_mag0_n_58 : STD_LOGIC;
  signal signal_read_data_mag0_n_59 : STD_LOGIC;
  signal signal_read_data_mag0_n_60 : STD_LOGIC;
  signal signal_read_data_mag0_n_61 : STD_LOGIC;
  signal signal_read_data_mag0_n_62 : STD_LOGIC;
  signal signal_read_data_mag0_n_63 : STD_LOGIC;
  signal signal_read_data_mag0_n_64 : STD_LOGIC;
  signal signal_read_data_mag0_n_65 : STD_LOGIC;
  signal signal_read_data_mag0_n_66 : STD_LOGIC;
  signal signal_read_data_mag0_n_67 : STD_LOGIC;
  signal signal_read_data_mag0_n_68 : STD_LOGIC;
  signal signal_read_data_mag0_n_69 : STD_LOGIC;
  signal signal_read_data_mag0_n_70 : STD_LOGIC;
  signal signal_read_data_mag0_n_71 : STD_LOGIC;
  signal signal_read_data_mag0_n_72 : STD_LOGIC;
  signal signal_read_data_mag0_n_73 : STD_LOGIC;
  signal signal_read_data_mag0_n_74 : STD_LOGIC;
  signal signal_read_data_mag0_n_75 : STD_LOGIC;
  signal signal_read_data_mag0_n_76 : STD_LOGIC;
  signal signal_read_data_mag0_n_77 : STD_LOGIC;
  signal signal_read_data_mag0_n_78 : STD_LOGIC;
  signal signal_read_data_mag0_n_79 : STD_LOGIC;
  signal signal_read_data_mag0_n_80 : STD_LOGIC;
  signal signal_read_data_mag0_n_81 : STD_LOGIC;
  signal signal_read_data_mag0_n_82 : STD_LOGIC;
  signal signal_read_data_mag0_n_83 : STD_LOGIC;
  signal signal_read_data_mag0_n_84 : STD_LOGIC;
  signal signal_read_data_mag0_n_85 : STD_LOGIC;
  signal signal_read_data_mag0_n_86 : STD_LOGIC;
  signal signal_read_data_mag0_n_87 : STD_LOGIC;
  signal signal_read_data_mag0_n_88 : STD_LOGIC;
  signal signal_read_data_mag0_n_89 : STD_LOGIC;
  signal signal_read_data_mag0_n_90 : STD_LOGIC;
  signal signal_read_data_mag0_n_91 : STD_LOGIC;
  signal signal_read_data_mag0_n_92 : STD_LOGIC;
  signal signal_read_data_mag0_n_93 : STD_LOGIC;
  signal signal_read_data_mag0_n_94 : STD_LOGIC;
  signal signal_read_data_mag0_n_95 : STD_LOGIC;
  signal signal_read_data_mag0_n_96 : STD_LOGIC;
  signal signal_read_data_mag0_n_97 : STD_LOGIC;
  signal signal_read_data_mag0_n_98 : STD_LOGIC;
  signal signal_read_data_mag0_n_99 : STD_LOGIC;
  signal \signal_read_data_mag[0]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[10]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[11]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[12]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[13]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[14]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[15]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[16]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[17]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[18]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[19]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[1]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[20]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[21]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[22]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[23]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[24]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[25]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[26]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[27]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[28]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[29]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[2]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[30]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[31]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[32]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[33]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[34]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[35]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[36]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[37]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[38]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[39]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[3]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[40]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[41]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[42]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[43]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[44]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[45]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[46]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[47]_i_2_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[4]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[5]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[6]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[7]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[8]_i_1_n_0\ : STD_LOGIC;
  signal \signal_read_data_mag[9]_i_1_n_0\ : STD_LOGIC;
  signal signal_read_data_out : STD_LOGIC;
  signal sum : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal sum0_n_100 : STD_LOGIC;
  signal sum0_n_101 : STD_LOGIC;
  signal sum0_n_102 : STD_LOGIC;
  signal sum0_n_103 : STD_LOGIC;
  signal sum0_n_104 : STD_LOGIC;
  signal sum0_n_105 : STD_LOGIC;
  signal sum0_n_58 : STD_LOGIC;
  signal sum0_n_59 : STD_LOGIC;
  signal sum0_n_60 : STD_LOGIC;
  signal sum0_n_61 : STD_LOGIC;
  signal sum0_n_62 : STD_LOGIC;
  signal sum0_n_63 : STD_LOGIC;
  signal sum0_n_64 : STD_LOGIC;
  signal sum0_n_65 : STD_LOGIC;
  signal sum0_n_66 : STD_LOGIC;
  signal sum0_n_67 : STD_LOGIC;
  signal sum0_n_68 : STD_LOGIC;
  signal sum0_n_69 : STD_LOGIC;
  signal sum0_n_70 : STD_LOGIC;
  signal sum0_n_71 : STD_LOGIC;
  signal sum0_n_72 : STD_LOGIC;
  signal sum0_n_73 : STD_LOGIC;
  signal sum0_n_74 : STD_LOGIC;
  signal sum0_n_75 : STD_LOGIC;
  signal sum0_n_76 : STD_LOGIC;
  signal sum0_n_77 : STD_LOGIC;
  signal sum0_n_78 : STD_LOGIC;
  signal sum0_n_79 : STD_LOGIC;
  signal sum0_n_80 : STD_LOGIC;
  signal sum0_n_81 : STD_LOGIC;
  signal sum0_n_82 : STD_LOGIC;
  signal sum0_n_83 : STD_LOGIC;
  signal sum0_n_84 : STD_LOGIC;
  signal sum0_n_85 : STD_LOGIC;
  signal sum0_n_86 : STD_LOGIC;
  signal sum0_n_87 : STD_LOGIC;
  signal sum0_n_88 : STD_LOGIC;
  signal sum0_n_89 : STD_LOGIC;
  signal sum0_n_90 : STD_LOGIC;
  signal sum0_n_91 : STD_LOGIC;
  signal sum0_n_92 : STD_LOGIC;
  signal sum0_n_93 : STD_LOGIC;
  signal sum0_n_94 : STD_LOGIC;
  signal sum0_n_95 : STD_LOGIC;
  signal sum0_n_96 : STD_LOGIC;
  signal sum0_n_97 : STD_LOGIC;
  signal sum0_n_98 : STD_LOGIC;
  signal sum0_n_99 : STD_LOGIC;
  signal \sum[0]_i_1_n_0\ : STD_LOGIC;
  signal \sum[10]_i_1_n_0\ : STD_LOGIC;
  signal \sum[11]_i_1_n_0\ : STD_LOGIC;
  signal \sum[12]_i_1_n_0\ : STD_LOGIC;
  signal \sum[13]_i_1_n_0\ : STD_LOGIC;
  signal \sum[14]_i_1_n_0\ : STD_LOGIC;
  signal \sum[15]_i_1_n_0\ : STD_LOGIC;
  signal \sum[16]_i_1_n_0\ : STD_LOGIC;
  signal \sum[17]_i_1_n_0\ : STD_LOGIC;
  signal \sum[18]_i_1_n_0\ : STD_LOGIC;
  signal \sum[19]_i_1_n_0\ : STD_LOGIC;
  signal \sum[1]_i_1_n_0\ : STD_LOGIC;
  signal \sum[20]_i_1_n_0\ : STD_LOGIC;
  signal \sum[21]_i_1_n_0\ : STD_LOGIC;
  signal \sum[22]_i_1_n_0\ : STD_LOGIC;
  signal \sum[23]_i_1_n_0\ : STD_LOGIC;
  signal \sum[24]_i_1_n_0\ : STD_LOGIC;
  signal \sum[25]_i_1_n_0\ : STD_LOGIC;
  signal \sum[26]_i_1_n_0\ : STD_LOGIC;
  signal \sum[27]_i_1_n_0\ : STD_LOGIC;
  signal \sum[28]_i_1_n_0\ : STD_LOGIC;
  signal \sum[29]_i_1_n_0\ : STD_LOGIC;
  signal \sum[2]_i_1_n_0\ : STD_LOGIC;
  signal \sum[30]_i_1_n_0\ : STD_LOGIC;
  signal \sum[31]_i_1_n_0\ : STD_LOGIC;
  signal \sum[32]_i_1_n_0\ : STD_LOGIC;
  signal \sum[33]_i_1_n_0\ : STD_LOGIC;
  signal \sum[34]_i_1_n_0\ : STD_LOGIC;
  signal \sum[35]_i_1_n_0\ : STD_LOGIC;
  signal \sum[36]_i_1_n_0\ : STD_LOGIC;
  signal \sum[37]_i_1_n_0\ : STD_LOGIC;
  signal \sum[38]_i_1_n_0\ : STD_LOGIC;
  signal \sum[39]_i_1_n_0\ : STD_LOGIC;
  signal \sum[3]_i_1_n_0\ : STD_LOGIC;
  signal \sum[40]_i_1_n_0\ : STD_LOGIC;
  signal \sum[41]_i_1_n_0\ : STD_LOGIC;
  signal \sum[42]_i_1_n_0\ : STD_LOGIC;
  signal \sum[43]_i_1_n_0\ : STD_LOGIC;
  signal \sum[44]_i_1_n_0\ : STD_LOGIC;
  signal \sum[45]_i_1_n_0\ : STD_LOGIC;
  signal \sum[46]_i_1_n_0\ : STD_LOGIC;
  signal \sum[47]_i_1_n_0\ : STD_LOGIC;
  signal \sum[4]_i_1_n_0\ : STD_LOGIC;
  signal \sum[5]_i_1_n_0\ : STD_LOGIC;
  signal \sum[6]_i_1_n_0\ : STD_LOGIC;
  signal \sum[7]_i_1_n_0\ : STD_LOGIC;
  signal \sum[8]_i_1_n_0\ : STD_LOGIC;
  signal \sum[9]_i_1_n_0\ : STD_LOGIC;
  signal NLW_golden_read_data_mag0_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_golden_read_data_mag0_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_golden_read_data_mag0_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_golden_read_data_mag0_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_golden_read_data_mag0_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_golden_read_data_mag0_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_golden_read_data_mag0_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_golden_read_data_mag0_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_golden_read_data_mag0_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_golden_read_data_mag0_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_restart2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_restart2_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_restart2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_restart2_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_restart2_inferred__0/i__carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_restart2_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_signal_read_data_mag0_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_signal_read_data_mag0_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_signal_read_data_mag0_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_signal_read_data_mag0_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_signal_read_data_mag0_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_signal_read_data_mag0_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_signal_read_data_mag0_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_signal_read_data_mag0_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_signal_read_data_mag0_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_signal_read_data_mag0_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  signal NLW_sum0_CARRYCASCOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum0_MULTSIGNOUT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum0_OVERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum0_PATTERNBDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum0_PATTERNDETECT_UNCONNECTED : STD_LOGIC;
  signal NLW_sum0_UNDERFLOW_UNCONNECTED : STD_LOGIC;
  signal NLW_sum0_ACOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal NLW_sum0_BCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 17 downto 0 );
  signal NLW_sum0_CARRYOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_sum0_PCOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 47 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of correlation_valid_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of data_ready_i_1 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \fifo_read[0]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \fifo_read[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \fifo_read[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \fifo_read[6]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \fifo_read[7]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \fifo_read[8]_i_1\ : label is "soft_lutpair12";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \fifo_read_reg[0]\ : label is "fifo_read_reg[0]";
  attribute ORIG_CELL_NAME of \fifo_read_reg[0]_rep\ : label is "fifo_read_reg[0]";
  attribute ORIG_CELL_NAME of \fifo_read_reg[0]_rep__0\ : label is "fifo_read_reg[0]";
  attribute ORIG_CELL_NAME of \fifo_read_reg[0]_rep__1\ : label is "fifo_read_reg[0]";
  attribute ORIG_CELL_NAME of \fifo_read_reg[0]_rep__2\ : label is "fifo_read_reg[0]";
  attribute ORIG_CELL_NAME of \fifo_read_reg[0]_rep__3\ : label is "fifo_read_reg[0]";
  attribute ORIG_CELL_NAME of \fifo_read_reg[1]\ : label is "fifo_read_reg[1]";
  attribute ORIG_CELL_NAME of \fifo_read_reg[1]_rep\ : label is "fifo_read_reg[1]";
  attribute ORIG_CELL_NAME of \fifo_read_reg[1]_rep__0\ : label is "fifo_read_reg[1]";
  attribute ORIG_CELL_NAME of \fifo_read_reg[1]_rep__1\ : label is "fifo_read_reg[1]";
  attribute ORIG_CELL_NAME of \fifo_read_reg[1]_rep__2\ : label is "fifo_read_reg[1]";
  attribute ORIG_CELL_NAME of \fifo_read_reg[3]\ : label is "fifo_read_reg[3]";
  attribute ORIG_CELL_NAME of \fifo_read_reg[3]_rep\ : label is "fifo_read_reg[3]";
  attribute ORIG_CELL_NAME of \fifo_read_reg[3]_rep__0\ : label is "fifo_read_reg[3]";
  attribute ORIG_CELL_NAME of \fifo_read_reg[3]_rep__1\ : label is "fifo_read_reg[3]";
  attribute ORIG_CELL_NAME of \fifo_read_reg[3]_rep__2\ : label is "fifo_read_reg[3]";
  attribute ORIG_CELL_NAME of \fifo_read_reg[3]_rep__3\ : label is "fifo_read_reg[3]";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of golden_read_data_mag0 : label is "{SYNTH-11 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \golden_read_data_mag[0]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \golden_read_data_mag[10]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \golden_read_data_mag[11]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \golden_read_data_mag[12]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \golden_read_data_mag[13]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \golden_read_data_mag[14]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \golden_read_data_mag[15]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \golden_read_data_mag[16]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \golden_read_data_mag[17]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \golden_read_data_mag[18]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \golden_read_data_mag[19]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \golden_read_data_mag[1]_i_1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \golden_read_data_mag[20]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \golden_read_data_mag[21]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \golden_read_data_mag[22]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \golden_read_data_mag[23]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \golden_read_data_mag[24]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \golden_read_data_mag[25]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \golden_read_data_mag[26]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \golden_read_data_mag[27]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \golden_read_data_mag[28]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \golden_read_data_mag[29]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \golden_read_data_mag[2]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \golden_read_data_mag[30]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \golden_read_data_mag[31]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \golden_read_data_mag[32]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \golden_read_data_mag[33]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \golden_read_data_mag[34]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \golden_read_data_mag[35]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \golden_read_data_mag[36]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \golden_read_data_mag[37]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \golden_read_data_mag[38]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \golden_read_data_mag[39]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \golden_read_data_mag[3]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \golden_read_data_mag[40]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \golden_read_data_mag[41]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \golden_read_data_mag[42]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \golden_read_data_mag[43]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \golden_read_data_mag[44]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \golden_read_data_mag[45]_i_1\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \golden_read_data_mag[46]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \golden_read_data_mag[47]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \golden_read_data_mag[4]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \golden_read_data_mag[5]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \golden_read_data_mag[6]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \golden_read_data_mag[7]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \golden_read_data_mag[8]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \golden_read_data_mag[9]_i_1\ : label is "soft_lutpair59";
  attribute METHODOLOGY_DRC_VIOS of signal_read_data_mag0 : label is "{SYNTH-11 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \signal_read_data_mag[0]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \signal_read_data_mag[10]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \signal_read_data_mag[11]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \signal_read_data_mag[12]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \signal_read_data_mag[13]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \signal_read_data_mag[14]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \signal_read_data_mag[15]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \signal_read_data_mag[16]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \signal_read_data_mag[17]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \signal_read_data_mag[18]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \signal_read_data_mag[19]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \signal_read_data_mag[1]_i_1\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \signal_read_data_mag[20]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \signal_read_data_mag[21]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \signal_read_data_mag[22]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \signal_read_data_mag[23]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \signal_read_data_mag[24]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \signal_read_data_mag[25]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \signal_read_data_mag[26]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \signal_read_data_mag[27]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \signal_read_data_mag[28]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \signal_read_data_mag[29]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \signal_read_data_mag[2]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \signal_read_data_mag[30]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \signal_read_data_mag[31]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \signal_read_data_mag[32]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \signal_read_data_mag[33]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \signal_read_data_mag[34]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \signal_read_data_mag[35]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \signal_read_data_mag[36]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \signal_read_data_mag[37]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \signal_read_data_mag[38]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \signal_read_data_mag[39]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \signal_read_data_mag[3]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \signal_read_data_mag[40]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \signal_read_data_mag[41]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \signal_read_data_mag[42]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \signal_read_data_mag[43]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \signal_read_data_mag[44]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \signal_read_data_mag[45]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \signal_read_data_mag[46]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \signal_read_data_mag[47]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \signal_read_data_mag[4]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \signal_read_data_mag[5]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \signal_read_data_mag[6]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \signal_read_data_mag[7]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \signal_read_data_mag[8]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \signal_read_data_mag[9]_i_1\ : label is "soft_lutpair35";
  attribute METHODOLOGY_DRC_VIOS of sum0 : label is "{SYNTH-11 {cell *THIS*}}";
  attribute SOFT_HLUTNM of \sum[0]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \sum[10]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \sum[11]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \sum[12]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \sum[13]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \sum[14]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \sum[15]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \sum[16]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \sum[17]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \sum[18]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \sum[19]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \sum[1]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \sum[20]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \sum[21]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \sum[22]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \sum[23]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \sum[24]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \sum[25]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \sum[26]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \sum[27]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \sum[28]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \sum[29]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \sum[2]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \sum[30]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \sum[31]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \sum[32]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \sum[33]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \sum[34]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \sum[35]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \sum[36]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \sum[37]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \sum[38]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \sum[39]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \sum[3]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \sum[40]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \sum[41]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \sum[42]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \sum[43]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \sum[44]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \sum[45]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \sum[46]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \sum[47]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \sum[4]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \sum[5]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \sum[6]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \sum[7]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \sum[8]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \sum[9]_i_1\ : label is "soft_lutpair83";
begin
  dot_product_valid <= \^dot_product_valid\;
correlation_valid_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => data_ready,
      I1 => dot_product_ready,
      I2 => \^dot_product_valid\,
      O => correlation_valid_i_1_n_0
    );
correlation_valid_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => signal_fft_axis_aresetn,
      O => correlation_valid_i_2_n_0
    );
correlation_valid_reg: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => '1',
      CLR => correlation_valid_i_2_n_0,
      D => correlation_valid_i_1_n_0,
      Q => \^dot_product_valid\
    );
data_ready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_2,
      I1 => data_ready,
      O => data_ready_i_1_n_0
    );
data_ready_reg: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => '1',
      CLR => correlation_valid_i_2_n_0,
      D => data_ready_i_1_n_0,
      Q => data_ready
    );
\fifo_read[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fifo_read_reg[0]_rep__3_n_0\,
      I1 => data_ready,
      O => \fifo_read[0]_i_1_n_0\
    );
\fifo_read[0]_rep_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fifo_read_reg[0]_rep__3_n_0\,
      I1 => data_ready,
      O => \fifo_read[0]_rep_i_1_n_0\
    );
\fifo_read[0]_rep_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fifo_read_reg[0]_rep__3_n_0\,
      I1 => data_ready,
      O => \fifo_read[0]_rep_i_1__0_n_0\
    );
\fifo_read[0]_rep_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fifo_read_reg[0]_rep__3_n_0\,
      I1 => data_ready,
      O => \fifo_read[0]_rep_i_1__1_n_0\
    );
\fifo_read[0]_rep_i_1__2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fifo_read_reg[0]_rep__3_n_0\,
      I1 => data_ready,
      O => \fifo_read[0]_rep_i_1__2_n_0\
    );
\fifo_read[0]_rep_i_1__3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \fifo_read_reg[0]_rep__3_n_0\,
      I1 => data_ready,
      O => \fifo_read[0]_rep_i_1__3_n_0\
    );
\fifo_read[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \fifo_read_reg[0]_rep__3_n_0\,
      I1 => \fifo_read_reg__0\(1),
      I2 => data_ready,
      O => p_0_in(1)
    );
\fifo_read[1]_rep_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \fifo_read_reg__0\(0),
      I1 => \fifo_read_reg__0\(1),
      I2 => data_ready,
      O => \fifo_read[1]_rep_i_1_n_0\
    );
\fifo_read[1]_rep_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \fifo_read_reg__0\(0),
      I1 => \fifo_read_reg__0\(1),
      I2 => data_ready,
      O => \fifo_read[1]_rep_i_1__0_n_0\
    );
\fifo_read[1]_rep_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \fifo_read_reg__0\(0),
      I1 => \fifo_read_reg__0\(1),
      I2 => data_ready,
      O => \fifo_read[1]_rep_i_1__1_n_0\
    );
\fifo_read[1]_rep_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => \fifo_read_reg__0\(0),
      I1 => \fifo_read_reg__0\(1),
      I2 => data_ready,
      O => \fifo_read[1]_rep_i_1__2_n_0\
    );
\fifo_read[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0078"
    )
        port map (
      I0 => \fifo_read_reg[0]_rep__3_n_0\,
      I1 => \fifo_read_reg__0\(1),
      I2 => \fifo_read_reg__0\(2),
      I3 => data_ready,
      O => p_0_in(2)
    );
\fifo_read[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \fifo_read_reg__0\(1),
      I1 => \fifo_read_reg__0\(0),
      I2 => \fifo_read_reg__0\(2),
      I3 => \fifo_read_reg__0\(3),
      I4 => data_ready,
      O => p_0_in(3)
    );
\fifo_read[3]_rep_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \fifo_read_reg[1]_rep__2_n_0\,
      I1 => \fifo_read_reg__0\(0),
      I2 => \fifo_read_reg__0\(2),
      I3 => \fifo_read_reg__0\(3),
      I4 => data_ready,
      O => \fifo_read[3]_rep_i_1_n_0\
    );
\fifo_read[3]_rep_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \fifo_read_reg__0\(1),
      I1 => \fifo_read_reg__0\(0),
      I2 => \fifo_read_reg__0\(2),
      I3 => \fifo_read_reg__0\(3),
      I4 => data_ready,
      O => \fifo_read[3]_rep_i_1__0_n_0\
    );
\fifo_read[3]_rep_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \fifo_read_reg__0\(1),
      I1 => \fifo_read_reg__0\(0),
      I2 => \fifo_read_reg__0\(2),
      I3 => \fifo_read_reg__0\(3),
      I4 => data_ready,
      O => \fifo_read[3]_rep_i_1__1_n_0\
    );
\fifo_read[3]_rep_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \fifo_read_reg__0\(1),
      I1 => \fifo_read_reg__0\(0),
      I2 => \fifo_read_reg__0\(2),
      I3 => \fifo_read_reg__0\(3),
      I4 => data_ready,
      O => \fifo_read[3]_rep_i_1__2_n_0\
    );
\fifo_read[3]_rep_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F80"
    )
        port map (
      I0 => \fifo_read_reg__0\(1),
      I1 => \fifo_read_reg__0\(0),
      I2 => \fifo_read_reg__0\(2),
      I3 => \fifo_read_reg__0\(3),
      I4 => data_ready,
      O => \fifo_read[3]_rep_i_1__3_n_0\
    );
\fifo_read[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => \fifo_read_reg__0\(2),
      I1 => \fifo_read_reg__0\(0),
      I2 => \fifo_read_reg[1]_rep__2_n_0\,
      I3 => \fifo_read_reg__0\(3),
      I4 => \fifo_read_reg__0\(4),
      I5 => data_ready,
      O => p_0_in(4)
    );
\fifo_read[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DFFF2000"
    )
        port map (
      I0 => \fifo_read_reg__0\(3),
      I1 => \fifo_read[5]_i_2_n_0\,
      I2 => \fifo_read_reg__0\(2),
      I3 => \fifo_read_reg__0\(4),
      I4 => \fifo_read_reg__0\(5),
      I5 => data_ready,
      O => p_0_in(5)
    );
\fifo_read[5]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \fifo_read_reg__0\(0),
      I1 => \fifo_read_reg[1]_rep__2_n_0\,
      O => \fifo_read[5]_i_2_n_0\
    );
\fifo_read[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_8,
      I1 => \fifo_read_reg__0\(6),
      I2 => data_ready,
      O => p_0_in(6)
    );
\fifo_read[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00B4"
    )
        port map (
      I0 => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_8,
      I1 => \fifo_read_reg__0\(6),
      I2 => \fifo_read_reg__0\(7),
      I3 => data_ready,
      O => p_0_in(7)
    );
\fifo_read[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000DF20"
    )
        port map (
      I0 => \fifo_read_reg__0\(6),
      I1 => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_8,
      I2 => \fifo_read_reg__0\(7),
      I3 => \fifo_read_reg__0\(8),
      I4 => data_ready,
      O => p_0_in(8)
    );
\fifo_read[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000DFFF2000"
    )
        port map (
      I0 => \fifo_read_reg__0\(7),
      I1 => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_8,
      I2 => \fifo_read_reg__0\(6),
      I3 => \fifo_read_reg__0\(8),
      I4 => \fifo_read_reg__0\(9),
      I5 => data_ready,
      O => p_0_in(9)
    );
\fifo_read_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3,
      CLR => correlation_valid_i_2_n_0,
      D => \fifo_read[0]_i_1_n_0\,
      Q => \fifo_read_reg__0\(0)
    );
\fifo_read_reg[0]_rep\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3,
      CLR => correlation_valid_i_2_n_0,
      D => \fifo_read[0]_rep_i_1_n_0\,
      Q => \fifo_read_reg[0]_rep_n_0\
    );
\fifo_read_reg[0]_rep__0\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3,
      CLR => correlation_valid_i_2_n_0,
      D => \fifo_read[0]_rep_i_1__0_n_0\,
      Q => \fifo_read_reg[0]_rep__0_n_0\
    );
\fifo_read_reg[0]_rep__1\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3,
      CLR => correlation_valid_i_2_n_0,
      D => \fifo_read[0]_rep_i_1__1_n_0\,
      Q => \fifo_read_reg[0]_rep__1_n_0\
    );
\fifo_read_reg[0]_rep__2\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3,
      CLR => correlation_valid_i_2_n_0,
      D => \fifo_read[0]_rep_i_1__2_n_0\,
      Q => \fifo_read_reg[0]_rep__2_n_0\
    );
\fifo_read_reg[0]_rep__3\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3,
      CLR => correlation_valid_i_2_n_0,
      D => \fifo_read[0]_rep_i_1__3_n_0\,
      Q => \fifo_read_reg[0]_rep__3_n_0\
    );
\fifo_read_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3,
      CLR => correlation_valid_i_2_n_0,
      D => p_0_in(1),
      Q => \fifo_read_reg__0\(1)
    );
\fifo_read_reg[1]_rep\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3,
      CLR => correlation_valid_i_2_n_0,
      D => \fifo_read[1]_rep_i_1_n_0\,
      Q => \fifo_read_reg[1]_rep_n_0\
    );
\fifo_read_reg[1]_rep__0\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3,
      CLR => correlation_valid_i_2_n_0,
      D => \fifo_read[1]_rep_i_1__0_n_0\,
      Q => \fifo_read_reg[1]_rep__0_n_0\
    );
\fifo_read_reg[1]_rep__1\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3,
      CLR => correlation_valid_i_2_n_0,
      D => \fifo_read[1]_rep_i_1__1_n_0\,
      Q => \fifo_read_reg[1]_rep__1_n_0\
    );
\fifo_read_reg[1]_rep__2\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3,
      CLR => correlation_valid_i_2_n_0,
      D => \fifo_read[1]_rep_i_1__2_n_0\,
      Q => \fifo_read_reg[1]_rep__2_n_0\
    );
\fifo_read_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3,
      CLR => correlation_valid_i_2_n_0,
      D => p_0_in(2),
      Q => \fifo_read_reg__0\(2)
    );
\fifo_read_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3,
      CLR => correlation_valid_i_2_n_0,
      D => p_0_in(3),
      Q => \fifo_read_reg__0\(3)
    );
\fifo_read_reg[3]_rep\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3,
      CLR => correlation_valid_i_2_n_0,
      D => \fifo_read[3]_rep_i_1_n_0\,
      Q => \fifo_read_reg[3]_rep_n_0\
    );
\fifo_read_reg[3]_rep__0\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3,
      CLR => correlation_valid_i_2_n_0,
      D => \fifo_read[3]_rep_i_1__0_n_0\,
      Q => \fifo_read_reg[3]_rep__0_n_0\
    );
\fifo_read_reg[3]_rep__1\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3,
      CLR => correlation_valid_i_2_n_0,
      D => \fifo_read[3]_rep_i_1__1_n_0\,
      Q => \fifo_read_reg[3]_rep__1_n_0\
    );
\fifo_read_reg[3]_rep__2\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3,
      CLR => correlation_valid_i_2_n_0,
      D => \fifo_read[3]_rep_i_1__2_n_0\,
      Q => \fifo_read_reg[3]_rep__2_n_0\
    );
\fifo_read_reg[3]_rep__3\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3,
      CLR => correlation_valid_i_2_n_0,
      D => \fifo_read[3]_rep_i_1__3_n_0\,
      Q => \fifo_read_reg[3]_rep__3_n_0\
    );
\fifo_read_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3,
      CLR => correlation_valid_i_2_n_0,
      D => p_0_in(4),
      Q => \fifo_read_reg__0\(4)
    );
\fifo_read_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3,
      CLR => correlation_valid_i_2_n_0,
      D => p_0_in(5),
      Q => \fifo_read_reg__0\(5)
    );
\fifo_read_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3,
      CLR => correlation_valid_i_2_n_0,
      D => p_0_in(6),
      Q => \fifo_read_reg__0\(6)
    );
\fifo_read_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3,
      CLR => correlation_valid_i_2_n_0,
      D => p_0_in(7),
      Q => \fifo_read_reg__0\(7)
    );
\fifo_read_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3,
      CLR => correlation_valid_i_2_n_0,
      D => p_0_in(8),
      Q => \fifo_read_reg__0\(8)
    );
\fifo_read_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3,
      CLR => correlation_valid_i_2_n_0,
      D => p_0_in(9),
      Q => \fifo_read_reg__0\(9)
    );
golden_read_data_mag0: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 16) => B"00000000000000",
      A(15 downto 0) => golden_data(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_golden_read_data_mag0_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 16) => B"00",
      B(15 downto 0) => golden_data(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_golden_read_data_mag0_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => golden_read_data_mag(47 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_golden_read_data_mag0_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_golden_read_data_mag0_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => signal_fifo_read_data,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => signal_fifo_read_data,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => signal_fft_axis_aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_golden_read_data_mag0_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_golden_read_data_mag0_OVERFLOW_UNCONNECTED,
      P(47) => golden_read_data_mag0_n_58,
      P(46) => golden_read_data_mag0_n_59,
      P(45) => golden_read_data_mag0_n_60,
      P(44) => golden_read_data_mag0_n_61,
      P(43) => golden_read_data_mag0_n_62,
      P(42) => golden_read_data_mag0_n_63,
      P(41) => golden_read_data_mag0_n_64,
      P(40) => golden_read_data_mag0_n_65,
      P(39) => golden_read_data_mag0_n_66,
      P(38) => golden_read_data_mag0_n_67,
      P(37) => golden_read_data_mag0_n_68,
      P(36) => golden_read_data_mag0_n_69,
      P(35) => golden_read_data_mag0_n_70,
      P(34) => golden_read_data_mag0_n_71,
      P(33) => golden_read_data_mag0_n_72,
      P(32) => golden_read_data_mag0_n_73,
      P(31) => golden_read_data_mag0_n_74,
      P(30) => golden_read_data_mag0_n_75,
      P(29) => golden_read_data_mag0_n_76,
      P(28) => golden_read_data_mag0_n_77,
      P(27) => golden_read_data_mag0_n_78,
      P(26) => golden_read_data_mag0_n_79,
      P(25) => golden_read_data_mag0_n_80,
      P(24) => golden_read_data_mag0_n_81,
      P(23) => golden_read_data_mag0_n_82,
      P(22) => golden_read_data_mag0_n_83,
      P(21) => golden_read_data_mag0_n_84,
      P(20) => golden_read_data_mag0_n_85,
      P(19) => golden_read_data_mag0_n_86,
      P(18) => golden_read_data_mag0_n_87,
      P(17) => golden_read_data_mag0_n_88,
      P(16) => golden_read_data_mag0_n_89,
      P(15) => golden_read_data_mag0_n_90,
      P(14) => golden_read_data_mag0_n_91,
      P(13) => golden_read_data_mag0_n_92,
      P(12) => golden_read_data_mag0_n_93,
      P(11) => golden_read_data_mag0_n_94,
      P(10) => golden_read_data_mag0_n_95,
      P(9) => golden_read_data_mag0_n_96,
      P(8) => golden_read_data_mag0_n_97,
      P(7) => golden_read_data_mag0_n_98,
      P(6) => golden_read_data_mag0_n_99,
      P(5) => golden_read_data_mag0_n_100,
      P(4) => golden_read_data_mag0_n_101,
      P(3) => golden_read_data_mag0_n_102,
      P(2) => golden_read_data_mag0_n_103,
      P(1) => golden_read_data_mag0_n_104,
      P(0) => golden_read_data_mag0_n_105,
      PATTERNBDETECT => NLW_golden_read_data_mag0_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_golden_read_data_mag0_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_golden_read_data_mag0_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_golden_read_data_mag0_UNDERFLOW_UNCONNECTED
    );
\golden_read_data_mag[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_105,
      I1 => data_ready,
      O => \golden_read_data_mag[0]_i_1_n_0\
    );
\golden_read_data_mag[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_95,
      I1 => data_ready,
      O => \golden_read_data_mag[10]_i_1_n_0\
    );
\golden_read_data_mag[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_94,
      I1 => data_ready,
      O => \golden_read_data_mag[11]_i_1_n_0\
    );
\golden_read_data_mag[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_93,
      I1 => data_ready,
      O => \golden_read_data_mag[12]_i_1_n_0\
    );
\golden_read_data_mag[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_92,
      I1 => data_ready,
      O => \golden_read_data_mag[13]_i_1_n_0\
    );
\golden_read_data_mag[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_91,
      I1 => data_ready,
      O => \golden_read_data_mag[14]_i_1_n_0\
    );
\golden_read_data_mag[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_90,
      I1 => data_ready,
      O => \golden_read_data_mag[15]_i_1_n_0\
    );
\golden_read_data_mag[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_89,
      I1 => data_ready,
      O => \golden_read_data_mag[16]_i_1_n_0\
    );
\golden_read_data_mag[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_88,
      I1 => data_ready,
      O => \golden_read_data_mag[17]_i_1_n_0\
    );
\golden_read_data_mag[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_87,
      I1 => data_ready,
      O => \golden_read_data_mag[18]_i_1_n_0\
    );
\golden_read_data_mag[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_86,
      I1 => data_ready,
      O => \golden_read_data_mag[19]_i_1_n_0\
    );
\golden_read_data_mag[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_104,
      I1 => data_ready,
      O => \golden_read_data_mag[1]_i_1_n_0\
    );
\golden_read_data_mag[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_85,
      I1 => data_ready,
      O => \golden_read_data_mag[20]_i_1_n_0\
    );
\golden_read_data_mag[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_84,
      I1 => data_ready,
      O => \golden_read_data_mag[21]_i_1_n_0\
    );
\golden_read_data_mag[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_83,
      I1 => data_ready,
      O => \golden_read_data_mag[22]_i_1_n_0\
    );
\golden_read_data_mag[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_82,
      I1 => data_ready,
      O => \golden_read_data_mag[23]_i_1_n_0\
    );
\golden_read_data_mag[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_81,
      I1 => data_ready,
      O => \golden_read_data_mag[24]_i_1_n_0\
    );
\golden_read_data_mag[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_80,
      I1 => data_ready,
      O => \golden_read_data_mag[25]_i_1_n_0\
    );
\golden_read_data_mag[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_79,
      I1 => data_ready,
      O => \golden_read_data_mag[26]_i_1_n_0\
    );
\golden_read_data_mag[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_78,
      I1 => data_ready,
      O => \golden_read_data_mag[27]_i_1_n_0\
    );
\golden_read_data_mag[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_77,
      I1 => data_ready,
      O => \golden_read_data_mag[28]_i_1_n_0\
    );
\golden_read_data_mag[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_76,
      I1 => data_ready,
      O => \golden_read_data_mag[29]_i_1_n_0\
    );
\golden_read_data_mag[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_103,
      I1 => data_ready,
      O => \golden_read_data_mag[2]_i_1_n_0\
    );
\golden_read_data_mag[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_75,
      I1 => data_ready,
      O => \golden_read_data_mag[30]_i_1_n_0\
    );
\golden_read_data_mag[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_74,
      I1 => data_ready,
      O => \golden_read_data_mag[31]_i_1_n_0\
    );
\golden_read_data_mag[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_73,
      I1 => data_ready,
      O => \golden_read_data_mag[32]_i_1_n_0\
    );
\golden_read_data_mag[33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_72,
      I1 => data_ready,
      O => \golden_read_data_mag[33]_i_1_n_0\
    );
\golden_read_data_mag[34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_71,
      I1 => data_ready,
      O => \golden_read_data_mag[34]_i_1_n_0\
    );
\golden_read_data_mag[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_70,
      I1 => data_ready,
      O => \golden_read_data_mag[35]_i_1_n_0\
    );
\golden_read_data_mag[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_69,
      I1 => data_ready,
      O => \golden_read_data_mag[36]_i_1_n_0\
    );
\golden_read_data_mag[37]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_68,
      I1 => data_ready,
      O => \golden_read_data_mag[37]_i_1_n_0\
    );
\golden_read_data_mag[38]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_67,
      I1 => data_ready,
      O => \golden_read_data_mag[38]_i_1_n_0\
    );
\golden_read_data_mag[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_66,
      I1 => data_ready,
      O => \golden_read_data_mag[39]_i_1_n_0\
    );
\golden_read_data_mag[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_102,
      I1 => data_ready,
      O => \golden_read_data_mag[3]_i_1_n_0\
    );
\golden_read_data_mag[40]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_65,
      I1 => data_ready,
      O => \golden_read_data_mag[40]_i_1_n_0\
    );
\golden_read_data_mag[41]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_64,
      I1 => data_ready,
      O => \golden_read_data_mag[41]_i_1_n_0\
    );
\golden_read_data_mag[42]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_63,
      I1 => data_ready,
      O => \golden_read_data_mag[42]_i_1_n_0\
    );
\golden_read_data_mag[43]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_62,
      I1 => data_ready,
      O => \golden_read_data_mag[43]_i_1_n_0\
    );
\golden_read_data_mag[44]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_61,
      I1 => data_ready,
      O => \golden_read_data_mag[44]_i_1_n_0\
    );
\golden_read_data_mag[45]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_60,
      I1 => data_ready,
      O => \golden_read_data_mag[45]_i_1_n_0\
    );
\golden_read_data_mag[46]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_59,
      I1 => data_ready,
      O => \golden_read_data_mag[46]_i_1_n_0\
    );
\golden_read_data_mag[47]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_58,
      I1 => data_ready,
      O => \golden_read_data_mag[47]_i_1_n_0\
    );
\golden_read_data_mag[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_101,
      I1 => data_ready,
      O => \golden_read_data_mag[4]_i_1_n_0\
    );
\golden_read_data_mag[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_100,
      I1 => data_ready,
      O => \golden_read_data_mag[5]_i_1_n_0\
    );
\golden_read_data_mag[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_99,
      I1 => data_ready,
      O => \golden_read_data_mag[6]_i_1_n_0\
    );
\golden_read_data_mag[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_98,
      I1 => data_ready,
      O => \golden_read_data_mag[7]_i_1_n_0\
    );
\golden_read_data_mag[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_97,
      I1 => data_ready,
      O => \golden_read_data_mag[8]_i_1_n_0\
    );
\golden_read_data_mag[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => golden_read_data_mag0_n_96,
      I1 => data_ready,
      O => \golden_read_data_mag[9]_i_1_n_0\
    );
\golden_read_data_mag_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[0]_i_1_n_0\,
      Q => golden_read_data_mag(0)
    );
\golden_read_data_mag_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[10]_i_1_n_0\,
      Q => golden_read_data_mag(10)
    );
\golden_read_data_mag_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[11]_i_1_n_0\,
      Q => golden_read_data_mag(11)
    );
\golden_read_data_mag_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[12]_i_1_n_0\,
      Q => golden_read_data_mag(12)
    );
\golden_read_data_mag_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[13]_i_1_n_0\,
      Q => golden_read_data_mag(13)
    );
\golden_read_data_mag_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[14]_i_1_n_0\,
      Q => golden_read_data_mag(14)
    );
\golden_read_data_mag_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[15]_i_1_n_0\,
      Q => golden_read_data_mag(15)
    );
\golden_read_data_mag_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[16]_i_1_n_0\,
      Q => golden_read_data_mag(16)
    );
\golden_read_data_mag_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[17]_i_1_n_0\,
      Q => golden_read_data_mag(17)
    );
\golden_read_data_mag_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[18]_i_1_n_0\,
      Q => golden_read_data_mag(18)
    );
\golden_read_data_mag_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[19]_i_1_n_0\,
      Q => golden_read_data_mag(19)
    );
\golden_read_data_mag_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[1]_i_1_n_0\,
      Q => golden_read_data_mag(1)
    );
\golden_read_data_mag_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[20]_i_1_n_0\,
      Q => golden_read_data_mag(20)
    );
\golden_read_data_mag_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[21]_i_1_n_0\,
      Q => golden_read_data_mag(21)
    );
\golden_read_data_mag_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[22]_i_1_n_0\,
      Q => golden_read_data_mag(22)
    );
\golden_read_data_mag_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[23]_i_1_n_0\,
      Q => golden_read_data_mag(23)
    );
\golden_read_data_mag_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[24]_i_1_n_0\,
      Q => golden_read_data_mag(24)
    );
\golden_read_data_mag_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[25]_i_1_n_0\,
      Q => golden_read_data_mag(25)
    );
\golden_read_data_mag_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[26]_i_1_n_0\,
      Q => golden_read_data_mag(26)
    );
\golden_read_data_mag_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[27]_i_1_n_0\,
      Q => golden_read_data_mag(27)
    );
\golden_read_data_mag_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[28]_i_1_n_0\,
      Q => golden_read_data_mag(28)
    );
\golden_read_data_mag_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[29]_i_1_n_0\,
      Q => golden_read_data_mag(29)
    );
\golden_read_data_mag_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[2]_i_1_n_0\,
      Q => golden_read_data_mag(2)
    );
\golden_read_data_mag_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[30]_i_1_n_0\,
      Q => golden_read_data_mag(30)
    );
\golden_read_data_mag_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[31]_i_1_n_0\,
      Q => golden_read_data_mag(31)
    );
\golden_read_data_mag_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[32]_i_1_n_0\,
      Q => golden_read_data_mag(32)
    );
\golden_read_data_mag_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[33]_i_1_n_0\,
      Q => golden_read_data_mag(33)
    );
\golden_read_data_mag_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[34]_i_1_n_0\,
      Q => golden_read_data_mag(34)
    );
\golden_read_data_mag_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[35]_i_1_n_0\,
      Q => golden_read_data_mag(35)
    );
\golden_read_data_mag_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[36]_i_1_n_0\,
      Q => golden_read_data_mag(36)
    );
\golden_read_data_mag_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[37]_i_1_n_0\,
      Q => golden_read_data_mag(37)
    );
\golden_read_data_mag_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[38]_i_1_n_0\,
      Q => golden_read_data_mag(38)
    );
\golden_read_data_mag_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[39]_i_1_n_0\,
      Q => golden_read_data_mag(39)
    );
\golden_read_data_mag_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[3]_i_1_n_0\,
      Q => golden_read_data_mag(3)
    );
\golden_read_data_mag_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[40]_i_1_n_0\,
      Q => golden_read_data_mag(40)
    );
\golden_read_data_mag_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[41]_i_1_n_0\,
      Q => golden_read_data_mag(41)
    );
\golden_read_data_mag_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[42]_i_1_n_0\,
      Q => golden_read_data_mag(42)
    );
\golden_read_data_mag_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[43]_i_1_n_0\,
      Q => golden_read_data_mag(43)
    );
\golden_read_data_mag_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[44]_i_1_n_0\,
      Q => golden_read_data_mag(44)
    );
\golden_read_data_mag_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[45]_i_1_n_0\,
      Q => golden_read_data_mag(45)
    );
\golden_read_data_mag_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[46]_i_1_n_0\,
      Q => golden_read_data_mag(46)
    );
\golden_read_data_mag_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[47]_i_1_n_0\,
      Q => golden_read_data_mag(47)
    );
\golden_read_data_mag_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[4]_i_1_n_0\,
      Q => golden_read_data_mag(4)
    );
\golden_read_data_mag_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[5]_i_1_n_0\,
      Q => golden_read_data_mag(5)
    );
\golden_read_data_mag_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[6]_i_1_n_0\,
      Q => golden_read_data_mag(6)
    );
\golden_read_data_mag_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[7]_i_1_n_0\,
      Q => golden_read_data_mag(7)
    );
\golden_read_data_mag_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[8]_i_1_n_0\,
      Q => golden_read_data_mag(8)
    );
\golden_read_data_mag_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \golden_read_data_mag[9]_i_1_n_0\,
      Q => golden_read_data_mag(9)
    );
\golden_read_data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_105,
      Q => mag2(0),
      R => '0'
    );
\golden_read_data_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_95,
      Q => mag2(10),
      R => '0'
    );
\golden_read_data_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_94,
      Q => mag2(11),
      R => '0'
    );
\golden_read_data_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_93,
      Q => mag2(12),
      R => '0'
    );
\golden_read_data_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_92,
      Q => mag2(13),
      R => '0'
    );
\golden_read_data_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_91,
      Q => mag2(14),
      R => '0'
    );
\golden_read_data_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_90,
      Q => mag2(15),
      R => '0'
    );
\golden_read_data_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_89,
      Q => mag2(16),
      R => '0'
    );
\golden_read_data_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_88,
      Q => mag2(17),
      R => '0'
    );
\golden_read_data_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_87,
      Q => mag2(18),
      R => '0'
    );
\golden_read_data_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_86,
      Q => mag2(19),
      R => '0'
    );
\golden_read_data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_104,
      Q => mag2(1),
      R => '0'
    );
\golden_read_data_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_85,
      Q => mag2(20),
      R => '0'
    );
\golden_read_data_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_84,
      Q => mag2(21),
      R => '0'
    );
\golden_read_data_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_83,
      Q => mag2(22),
      R => '0'
    );
\golden_read_data_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_82,
      Q => mag2(23),
      R => '0'
    );
\golden_read_data_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_81,
      Q => mag2(24),
      R => '0'
    );
\golden_read_data_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_80,
      Q => mag2(25),
      R => '0'
    );
\golden_read_data_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_79,
      Q => mag2(26),
      R => '0'
    );
\golden_read_data_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_78,
      Q => mag2(27),
      R => '0'
    );
\golden_read_data_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_77,
      Q => mag2(28),
      R => '0'
    );
\golden_read_data_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_76,
      Q => mag2(29),
      R => '0'
    );
\golden_read_data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_103,
      Q => mag2(2),
      R => '0'
    );
\golden_read_data_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_75,
      Q => mag2(30),
      R => '0'
    );
\golden_read_data_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_74,
      Q => mag2(31),
      R => '0'
    );
\golden_read_data_out_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_73,
      Q => mag2(32),
      R => '0'
    );
\golden_read_data_out_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_72,
      Q => mag2(33),
      R => '0'
    );
\golden_read_data_out_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_71,
      Q => mag2(34),
      R => '0'
    );
\golden_read_data_out_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_70,
      Q => mag2(35),
      R => '0'
    );
\golden_read_data_out_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_69,
      Q => mag2(36),
      R => '0'
    );
\golden_read_data_out_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_68,
      Q => mag2(37),
      R => '0'
    );
\golden_read_data_out_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_67,
      Q => mag2(38),
      R => '0'
    );
\golden_read_data_out_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_66,
      Q => mag2(39),
      R => '0'
    );
\golden_read_data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_102,
      Q => mag2(3),
      R => '0'
    );
\golden_read_data_out_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_65,
      Q => mag2(40),
      R => '0'
    );
\golden_read_data_out_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_64,
      Q => mag2(41),
      R => '0'
    );
\golden_read_data_out_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_63,
      Q => mag2(42),
      R => '0'
    );
\golden_read_data_out_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_62,
      Q => mag2(43),
      R => '0'
    );
\golden_read_data_out_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_61,
      Q => mag2(44),
      R => '0'
    );
\golden_read_data_out_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_60,
      Q => mag2(45),
      R => '0'
    );
\golden_read_data_out_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_59,
      Q => mag2(46),
      R => '0'
    );
\golden_read_data_out_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_58,
      Q => mag2(47),
      R => '0'
    );
\golden_read_data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_101,
      Q => mag2(4),
      R => '0'
    );
\golden_read_data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_100,
      Q => mag2(5),
      R => '0'
    );
\golden_read_data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_99,
      Q => mag2(6),
      R => '0'
    );
\golden_read_data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_98,
      Q => mag2(7),
      R => '0'
    );
\golden_read_data_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_97,
      Q => mag2(8),
      R => '0'
    );
\golden_read_data_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => golden_read_data_mag0_n_96,
      Q => mag2(9),
      R => '0'
    );
projection_correlation_calculator_v1_0_correlation_out_AXI_inst: entity work.corr_wrapper_projection_correlation_calculator_v1_0_0_1_projection_correlation_calculator_v1_0_correlation_out_AXI
     port map (
      correlation_normalized(31 downto 0) => correlation_normalized(31 downto 0),
      correlation_normalized_valid => correlation_normalized_valid,
      correlation_out_axi_aclk => correlation_out_axi_aclk,
      correlation_out_axi_araddr(1 downto 0) => correlation_out_axi_araddr(1 downto 0),
      correlation_out_axi_aresetn => correlation_out_axi_aresetn,
      correlation_out_axi_arready => correlation_out_axi_arready,
      correlation_out_axi_arvalid => correlation_out_axi_arvalid,
      correlation_out_axi_awaddr(1 downto 0) => correlation_out_axi_awaddr(1 downto 0),
      correlation_out_axi_awready => correlation_out_axi_awready,
      correlation_out_axi_awvalid => correlation_out_axi_awvalid,
      correlation_out_axi_bready => correlation_out_axi_bready,
      correlation_out_axi_bvalid => correlation_out_axi_bvalid,
      correlation_out_axi_rdata(31 downto 0) => correlation_out_axi_rdata(31 downto 0),
      correlation_out_axi_rready => correlation_out_axi_rready,
      correlation_out_axi_rvalid => correlation_out_axi_rvalid,
      correlation_out_axi_wdata(31 downto 0) => correlation_out_axi_wdata(31 downto 0),
      correlation_out_axi_wready => correlation_out_axi_wready,
      correlation_out_axi_wstrb(3 downto 0) => correlation_out_axi_wstrb(3 downto 0),
      correlation_out_axi_wvalid => correlation_out_axi_wvalid,
      dot_product_valid => \^dot_product_valid\
    );
projection_correlation_calculator_v1_0_golden_fft_AXIS_inst: entity work.corr_wrapper_projection_correlation_calculator_v1_0_0_1_projection_correlation_calculator_v1_0_golden_fft_AXIS
     port map (
      ADDRA(0) => \fifo_read_reg[3]_rep_n_0\,
      ADDRB(0) => \fifo_read_reg[0]_rep__2_n_0\,
      ADDRC(0) => \fifo_read_reg[3]_rep__2_n_0\,
      B(15 downto 0) => golden_data(15 downto 0),
      CO(0) => \restart2__4\,
      DI(3) => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_9,
      DI(2) => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_10,
      DI(1) => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_11,
      DI(0) => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_12,
      E(0) => golden_read_data_mag_0,
      Q(9 downto 0) => \fifo_read_reg__0\(9 downto 0),
      S(3) => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_4,
      S(2) => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_5,
      S(1) => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_6,
      S(0) => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_7,
      data_ready => data_ready,
      \fifo_read_reg[0]_rep__1\(0) => \fifo_read_reg[0]_rep__1_n_0\,
      \fifo_read_reg[0]_rep__3\ => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3,
      \fifo_read_reg[1]_rep__1\(0) => \fifo_read_reg[1]_rep__1_n_0\,
      \fifo_read_reg[3]_rep__1\(2) => \fifo_read_reg[3]_rep__1_n_0\,
      \fifo_read_reg[3]_rep__1\(1) => \fifo_read_reg[1]_rep__0_n_0\,
      \fifo_read_reg[3]_rep__1\(0) => \fifo_read_reg[0]_rep__0_n_0\,
      \fifo_read_reg[3]_rep__3\(2) => \fifo_read_reg[3]_rep__3_n_0\,
      \fifo_read_reg[3]_rep__3\(1) => \fifo_read_reg[1]_rep_n_0\,
      \fifo_read_reg[3]_rep__3\(0) => \fifo_read_reg[0]_rep__3_n_0\,
      \fifo_read_reg[9]\ => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_8,
      golden_fft_axis_aclk => golden_fft_axis_aclk,
      golden_fft_axis_aresetn => golden_fft_axis_aresetn,
      golden_fft_axis_tdata(15 downto 0) => golden_fft_axis_tdata(15 downto 0),
      golden_fft_axis_tready => golden_fft_axis_tready,
      golden_fft_axis_tvalid => golden_fft_axis_tvalid,
      restart => restart,
      sum0(0) => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_13,
      sum0_0(0) => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_14,
      \sum_reg[0]\ => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_2,
      \write_pointer_reg[9]_0\(0) => restart25_in
    );
projection_correlation_calculator_v1_0_signal_fft_AXIS_inst: entity work.corr_wrapper_projection_correlation_calculator_v1_0_0_1_projection_correlation_calculator_v1_0_signal_fft_AXIS
     port map (
      A(15 downto 0) => signal_data(15 downto 0),
      ADDRA(2) => \fifo_read_reg[3]_rep_n_0\,
      ADDRA(1) => \fifo_read_reg[1]_rep__2_n_0\,
      ADDRA(0) => \fifo_read_reg[0]_rep_n_0\,
      ADDRB(0) => \fifo_read_reg[3]_rep__0_n_0\,
      ADDRC(2) => \fifo_read_reg[3]_rep__1_n_0\,
      ADDRC(1) => \fifo_read_reg[1]_rep__1_n_0\,
      ADDRC(0) => \fifo_read_reg[0]_rep__0_n_0\,
      CO(0) => \restart2__4\,
      DI(3) => projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_7,
      DI(2) => projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_8,
      DI(1) => projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_9,
      DI(0) => projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_10,
      Q(8 downto 3) => \fifo_read_reg__0\(9 downto 4),
      Q(2 downto 0) => \fifo_read_reg__0\(2 downto 0),
      S(3) => projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_2,
      S(2) => projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_3,
      S(1) => projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_4,
      S(0) => projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_5,
      data_ready => data_ready,
      \fifo_read_reg[9]\ => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_2,
      signal_fft_axis_aclk => signal_fft_axis_aclk,
      signal_fft_axis_aresetn => signal_fft_axis_aresetn,
      signal_fft_axis_tdata(15 downto 0) => signal_fft_axis_tdata(15 downto 0),
      signal_fft_axis_tlast => signal_fft_axis_tlast,
      signal_fft_axis_tready => signal_fft_axis_tready,
      signal_fft_axis_tvalid => signal_fft_axis_tvalid,
      signal_fifo_read_data => signal_fifo_read_data,
      sum0(0) => projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_11,
      sum0_0(0) => projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_12,
      \write_pointer_reg[9]_0\(0) => restart25_in,
      writes_done_reg_0 => projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_6
    );
restart2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => restart2_carry_n_0,
      CO(2) => restart2_carry_n_1,
      CO(1) => restart2_carry_n_2,
      CO(0) => restart2_carry_n_3,
      CYINIT => '0',
      DI(3) => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_9,
      DI(2) => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_10,
      DI(1) => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_11,
      DI(0) => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_12,
      O(3 downto 0) => NLW_restart2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_4,
      S(2) => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_5,
      S(1) => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_6,
      S(0) => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_7
    );
\restart2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => restart2_carry_n_0,
      CO(3 downto 1) => \NLW_restart2_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \restart2__4\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_13,
      O(3 downto 0) => \NLW_restart2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_14
    );
\restart2_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \restart2_inferred__0/i__carry_n_0\,
      CO(2) => \restart2_inferred__0/i__carry_n_1\,
      CO(1) => \restart2_inferred__0/i__carry_n_2\,
      CO(0) => \restart2_inferred__0/i__carry_n_3\,
      CYINIT => '0',
      DI(3) => projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_7,
      DI(2) => projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_8,
      DI(1) => projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_9,
      DI(0) => projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_10,
      O(3 downto 0) => \NLW_restart2_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_2,
      S(2) => projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_3,
      S(1) => projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_4,
      S(0) => projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_5
    );
\restart2_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \restart2_inferred__0/i__carry_n_0\,
      CO(3 downto 1) => \NLW_restart2_inferred__0/i__carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => restart25_in,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_11,
      O(3 downto 0) => \NLW_restart2_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_12
    );
restart_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF070F070F070"
    )
        port map (
      I0 => restart25_in,
      I1 => \restart2__4\,
      I2 => restart,
      I3 => data_ready,
      I4 => signal_fft_axis_tlast,
      I5 => projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_6,
      O => restart_i_1_n_0
    );
restart_reg: unisim.vcomponents.FDPE
     port map (
      C => signal_fft_axis_aclk,
      CE => '1',
      D => restart_i_1_n_0,
      PRE => correlation_valid_i_2_n_0,
      Q => restart
    );
signal_read_data_mag0: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 16) => B"00000000000000",
      A(15 downto 0) => signal_data(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_signal_read_data_mag0_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 16) => B"00",
      B(15 downto 0) => signal_data(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_signal_read_data_mag0_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => signal_read_data_mag(47 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_signal_read_data_mag0_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_signal_read_data_mag0_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => signal_fifo_read_data,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => signal_fifo_read_data,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => signal_fft_axis_aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_signal_read_data_mag0_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_signal_read_data_mag0_OVERFLOW_UNCONNECTED,
      P(47) => signal_read_data_mag0_n_58,
      P(46) => signal_read_data_mag0_n_59,
      P(45) => signal_read_data_mag0_n_60,
      P(44) => signal_read_data_mag0_n_61,
      P(43) => signal_read_data_mag0_n_62,
      P(42) => signal_read_data_mag0_n_63,
      P(41) => signal_read_data_mag0_n_64,
      P(40) => signal_read_data_mag0_n_65,
      P(39) => signal_read_data_mag0_n_66,
      P(38) => signal_read_data_mag0_n_67,
      P(37) => signal_read_data_mag0_n_68,
      P(36) => signal_read_data_mag0_n_69,
      P(35) => signal_read_data_mag0_n_70,
      P(34) => signal_read_data_mag0_n_71,
      P(33) => signal_read_data_mag0_n_72,
      P(32) => signal_read_data_mag0_n_73,
      P(31) => signal_read_data_mag0_n_74,
      P(30) => signal_read_data_mag0_n_75,
      P(29) => signal_read_data_mag0_n_76,
      P(28) => signal_read_data_mag0_n_77,
      P(27) => signal_read_data_mag0_n_78,
      P(26) => signal_read_data_mag0_n_79,
      P(25) => signal_read_data_mag0_n_80,
      P(24) => signal_read_data_mag0_n_81,
      P(23) => signal_read_data_mag0_n_82,
      P(22) => signal_read_data_mag0_n_83,
      P(21) => signal_read_data_mag0_n_84,
      P(20) => signal_read_data_mag0_n_85,
      P(19) => signal_read_data_mag0_n_86,
      P(18) => signal_read_data_mag0_n_87,
      P(17) => signal_read_data_mag0_n_88,
      P(16) => signal_read_data_mag0_n_89,
      P(15) => signal_read_data_mag0_n_90,
      P(14) => signal_read_data_mag0_n_91,
      P(13) => signal_read_data_mag0_n_92,
      P(12) => signal_read_data_mag0_n_93,
      P(11) => signal_read_data_mag0_n_94,
      P(10) => signal_read_data_mag0_n_95,
      P(9) => signal_read_data_mag0_n_96,
      P(8) => signal_read_data_mag0_n_97,
      P(7) => signal_read_data_mag0_n_98,
      P(6) => signal_read_data_mag0_n_99,
      P(5) => signal_read_data_mag0_n_100,
      P(4) => signal_read_data_mag0_n_101,
      P(3) => signal_read_data_mag0_n_102,
      P(2) => signal_read_data_mag0_n_103,
      P(1) => signal_read_data_mag0_n_104,
      P(0) => signal_read_data_mag0_n_105,
      PATTERNBDETECT => NLW_signal_read_data_mag0_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_signal_read_data_mag0_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_signal_read_data_mag0_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_signal_read_data_mag0_UNDERFLOW_UNCONNECTED
    );
\signal_read_data_mag[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_105,
      I1 => data_ready,
      O => \signal_read_data_mag[0]_i_1_n_0\
    );
\signal_read_data_mag[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_95,
      I1 => data_ready,
      O => \signal_read_data_mag[10]_i_1_n_0\
    );
\signal_read_data_mag[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_94,
      I1 => data_ready,
      O => \signal_read_data_mag[11]_i_1_n_0\
    );
\signal_read_data_mag[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_93,
      I1 => data_ready,
      O => \signal_read_data_mag[12]_i_1_n_0\
    );
\signal_read_data_mag[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_92,
      I1 => data_ready,
      O => \signal_read_data_mag[13]_i_1_n_0\
    );
\signal_read_data_mag[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_91,
      I1 => data_ready,
      O => \signal_read_data_mag[14]_i_1_n_0\
    );
\signal_read_data_mag[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_90,
      I1 => data_ready,
      O => \signal_read_data_mag[15]_i_1_n_0\
    );
\signal_read_data_mag[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_89,
      I1 => data_ready,
      O => \signal_read_data_mag[16]_i_1_n_0\
    );
\signal_read_data_mag[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_88,
      I1 => data_ready,
      O => \signal_read_data_mag[17]_i_1_n_0\
    );
\signal_read_data_mag[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_87,
      I1 => data_ready,
      O => \signal_read_data_mag[18]_i_1_n_0\
    );
\signal_read_data_mag[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_86,
      I1 => data_ready,
      O => \signal_read_data_mag[19]_i_1_n_0\
    );
\signal_read_data_mag[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_104,
      I1 => data_ready,
      O => \signal_read_data_mag[1]_i_1_n_0\
    );
\signal_read_data_mag[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_85,
      I1 => data_ready,
      O => \signal_read_data_mag[20]_i_1_n_0\
    );
\signal_read_data_mag[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_84,
      I1 => data_ready,
      O => \signal_read_data_mag[21]_i_1_n_0\
    );
\signal_read_data_mag[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_83,
      I1 => data_ready,
      O => \signal_read_data_mag[22]_i_1_n_0\
    );
\signal_read_data_mag[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_82,
      I1 => data_ready,
      O => \signal_read_data_mag[23]_i_1_n_0\
    );
\signal_read_data_mag[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_81,
      I1 => data_ready,
      O => \signal_read_data_mag[24]_i_1_n_0\
    );
\signal_read_data_mag[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_80,
      I1 => data_ready,
      O => \signal_read_data_mag[25]_i_1_n_0\
    );
\signal_read_data_mag[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_79,
      I1 => data_ready,
      O => \signal_read_data_mag[26]_i_1_n_0\
    );
\signal_read_data_mag[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_78,
      I1 => data_ready,
      O => \signal_read_data_mag[27]_i_1_n_0\
    );
\signal_read_data_mag[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_77,
      I1 => data_ready,
      O => \signal_read_data_mag[28]_i_1_n_0\
    );
\signal_read_data_mag[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_76,
      I1 => data_ready,
      O => \signal_read_data_mag[29]_i_1_n_0\
    );
\signal_read_data_mag[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_103,
      I1 => data_ready,
      O => \signal_read_data_mag[2]_i_1_n_0\
    );
\signal_read_data_mag[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_75,
      I1 => data_ready,
      O => \signal_read_data_mag[30]_i_1_n_0\
    );
\signal_read_data_mag[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_74,
      I1 => data_ready,
      O => \signal_read_data_mag[31]_i_1_n_0\
    );
\signal_read_data_mag[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_73,
      I1 => data_ready,
      O => \signal_read_data_mag[32]_i_1_n_0\
    );
\signal_read_data_mag[33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_72,
      I1 => data_ready,
      O => \signal_read_data_mag[33]_i_1_n_0\
    );
\signal_read_data_mag[34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_71,
      I1 => data_ready,
      O => \signal_read_data_mag[34]_i_1_n_0\
    );
\signal_read_data_mag[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_70,
      I1 => data_ready,
      O => \signal_read_data_mag[35]_i_1_n_0\
    );
\signal_read_data_mag[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_69,
      I1 => data_ready,
      O => \signal_read_data_mag[36]_i_1_n_0\
    );
\signal_read_data_mag[37]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_68,
      I1 => data_ready,
      O => \signal_read_data_mag[37]_i_1_n_0\
    );
\signal_read_data_mag[38]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_67,
      I1 => data_ready,
      O => \signal_read_data_mag[38]_i_1_n_0\
    );
\signal_read_data_mag[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_66,
      I1 => data_ready,
      O => \signal_read_data_mag[39]_i_1_n_0\
    );
\signal_read_data_mag[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_102,
      I1 => data_ready,
      O => \signal_read_data_mag[3]_i_1_n_0\
    );
\signal_read_data_mag[40]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_65,
      I1 => data_ready,
      O => \signal_read_data_mag[40]_i_1_n_0\
    );
\signal_read_data_mag[41]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_64,
      I1 => data_ready,
      O => \signal_read_data_mag[41]_i_1_n_0\
    );
\signal_read_data_mag[42]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_63,
      I1 => data_ready,
      O => \signal_read_data_mag[42]_i_1_n_0\
    );
\signal_read_data_mag[43]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_62,
      I1 => data_ready,
      O => \signal_read_data_mag[43]_i_1_n_0\
    );
\signal_read_data_mag[44]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_61,
      I1 => data_ready,
      O => \signal_read_data_mag[44]_i_1_n_0\
    );
\signal_read_data_mag[45]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_60,
      I1 => data_ready,
      O => \signal_read_data_mag[45]_i_1_n_0\
    );
\signal_read_data_mag[46]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_59,
      I1 => data_ready,
      O => \signal_read_data_mag[46]_i_1_n_0\
    );
\signal_read_data_mag[47]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_58,
      I1 => data_ready,
      O => \signal_read_data_mag[47]_i_2_n_0\
    );
\signal_read_data_mag[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_101,
      I1 => data_ready,
      O => \signal_read_data_mag[4]_i_1_n_0\
    );
\signal_read_data_mag[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_100,
      I1 => data_ready,
      O => \signal_read_data_mag[5]_i_1_n_0\
    );
\signal_read_data_mag[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_99,
      I1 => data_ready,
      O => \signal_read_data_mag[6]_i_1_n_0\
    );
\signal_read_data_mag[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_98,
      I1 => data_ready,
      O => \signal_read_data_mag[7]_i_1_n_0\
    );
\signal_read_data_mag[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_97,
      I1 => data_ready,
      O => \signal_read_data_mag[8]_i_1_n_0\
    );
\signal_read_data_mag[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => signal_read_data_mag0_n_96,
      I1 => data_ready,
      O => \signal_read_data_mag[9]_i_1_n_0\
    );
\signal_read_data_mag_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[0]_i_1_n_0\,
      Q => signal_read_data_mag(0)
    );
\signal_read_data_mag_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[10]_i_1_n_0\,
      Q => signal_read_data_mag(10)
    );
\signal_read_data_mag_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[11]_i_1_n_0\,
      Q => signal_read_data_mag(11)
    );
\signal_read_data_mag_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[12]_i_1_n_0\,
      Q => signal_read_data_mag(12)
    );
\signal_read_data_mag_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[13]_i_1_n_0\,
      Q => signal_read_data_mag(13)
    );
\signal_read_data_mag_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[14]_i_1_n_0\,
      Q => signal_read_data_mag(14)
    );
\signal_read_data_mag_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[15]_i_1_n_0\,
      Q => signal_read_data_mag(15)
    );
\signal_read_data_mag_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[16]_i_1_n_0\,
      Q => signal_read_data_mag(16)
    );
\signal_read_data_mag_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[17]_i_1_n_0\,
      Q => signal_read_data_mag(17)
    );
\signal_read_data_mag_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[18]_i_1_n_0\,
      Q => signal_read_data_mag(18)
    );
\signal_read_data_mag_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[19]_i_1_n_0\,
      Q => signal_read_data_mag(19)
    );
\signal_read_data_mag_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[1]_i_1_n_0\,
      Q => signal_read_data_mag(1)
    );
\signal_read_data_mag_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[20]_i_1_n_0\,
      Q => signal_read_data_mag(20)
    );
\signal_read_data_mag_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[21]_i_1_n_0\,
      Q => signal_read_data_mag(21)
    );
\signal_read_data_mag_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[22]_i_1_n_0\,
      Q => signal_read_data_mag(22)
    );
\signal_read_data_mag_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[23]_i_1_n_0\,
      Q => signal_read_data_mag(23)
    );
\signal_read_data_mag_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[24]_i_1_n_0\,
      Q => signal_read_data_mag(24)
    );
\signal_read_data_mag_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[25]_i_1_n_0\,
      Q => signal_read_data_mag(25)
    );
\signal_read_data_mag_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[26]_i_1_n_0\,
      Q => signal_read_data_mag(26)
    );
\signal_read_data_mag_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[27]_i_1_n_0\,
      Q => signal_read_data_mag(27)
    );
\signal_read_data_mag_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[28]_i_1_n_0\,
      Q => signal_read_data_mag(28)
    );
\signal_read_data_mag_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[29]_i_1_n_0\,
      Q => signal_read_data_mag(29)
    );
\signal_read_data_mag_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[2]_i_1_n_0\,
      Q => signal_read_data_mag(2)
    );
\signal_read_data_mag_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[30]_i_1_n_0\,
      Q => signal_read_data_mag(30)
    );
\signal_read_data_mag_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[31]_i_1_n_0\,
      Q => signal_read_data_mag(31)
    );
\signal_read_data_mag_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[32]_i_1_n_0\,
      Q => signal_read_data_mag(32)
    );
\signal_read_data_mag_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[33]_i_1_n_0\,
      Q => signal_read_data_mag(33)
    );
\signal_read_data_mag_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[34]_i_1_n_0\,
      Q => signal_read_data_mag(34)
    );
\signal_read_data_mag_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[35]_i_1_n_0\,
      Q => signal_read_data_mag(35)
    );
\signal_read_data_mag_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[36]_i_1_n_0\,
      Q => signal_read_data_mag(36)
    );
\signal_read_data_mag_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[37]_i_1_n_0\,
      Q => signal_read_data_mag(37)
    );
\signal_read_data_mag_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[38]_i_1_n_0\,
      Q => signal_read_data_mag(38)
    );
\signal_read_data_mag_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[39]_i_1_n_0\,
      Q => signal_read_data_mag(39)
    );
\signal_read_data_mag_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[3]_i_1_n_0\,
      Q => signal_read_data_mag(3)
    );
\signal_read_data_mag_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[40]_i_1_n_0\,
      Q => signal_read_data_mag(40)
    );
\signal_read_data_mag_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[41]_i_1_n_0\,
      Q => signal_read_data_mag(41)
    );
\signal_read_data_mag_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[42]_i_1_n_0\,
      Q => signal_read_data_mag(42)
    );
\signal_read_data_mag_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[43]_i_1_n_0\,
      Q => signal_read_data_mag(43)
    );
\signal_read_data_mag_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[44]_i_1_n_0\,
      Q => signal_read_data_mag(44)
    );
\signal_read_data_mag_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[45]_i_1_n_0\,
      Q => signal_read_data_mag(45)
    );
\signal_read_data_mag_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[46]_i_1_n_0\,
      Q => signal_read_data_mag(46)
    );
\signal_read_data_mag_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[47]_i_2_n_0\,
      Q => signal_read_data_mag(47)
    );
\signal_read_data_mag_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[4]_i_1_n_0\,
      Q => signal_read_data_mag(4)
    );
\signal_read_data_mag_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[5]_i_1_n_0\,
      Q => signal_read_data_mag(5)
    );
\signal_read_data_mag_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[6]_i_1_n_0\,
      Q => signal_read_data_mag(6)
    );
\signal_read_data_mag_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[7]_i_1_n_0\,
      Q => signal_read_data_mag(7)
    );
\signal_read_data_mag_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[8]_i_1_n_0\,
      Q => signal_read_data_mag(8)
    );
\signal_read_data_mag_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \signal_read_data_mag[9]_i_1_n_0\,
      Q => signal_read_data_mag(9)
    );
\signal_read_data_out[47]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => signal_fft_axis_aresetn,
      I1 => data_ready,
      O => signal_read_data_out
    );
\signal_read_data_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_105,
      Q => mag1(0),
      R => '0'
    );
\signal_read_data_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_95,
      Q => mag1(10),
      R => '0'
    );
\signal_read_data_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_94,
      Q => mag1(11),
      R => '0'
    );
\signal_read_data_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_93,
      Q => mag1(12),
      R => '0'
    );
\signal_read_data_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_92,
      Q => mag1(13),
      R => '0'
    );
\signal_read_data_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_91,
      Q => mag1(14),
      R => '0'
    );
\signal_read_data_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_90,
      Q => mag1(15),
      R => '0'
    );
\signal_read_data_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_89,
      Q => mag1(16),
      R => '0'
    );
\signal_read_data_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_88,
      Q => mag1(17),
      R => '0'
    );
\signal_read_data_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_87,
      Q => mag1(18),
      R => '0'
    );
\signal_read_data_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_86,
      Q => mag1(19),
      R => '0'
    );
\signal_read_data_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_104,
      Q => mag1(1),
      R => '0'
    );
\signal_read_data_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_85,
      Q => mag1(20),
      R => '0'
    );
\signal_read_data_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_84,
      Q => mag1(21),
      R => '0'
    );
\signal_read_data_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_83,
      Q => mag1(22),
      R => '0'
    );
\signal_read_data_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_82,
      Q => mag1(23),
      R => '0'
    );
\signal_read_data_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_81,
      Q => mag1(24),
      R => '0'
    );
\signal_read_data_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_80,
      Q => mag1(25),
      R => '0'
    );
\signal_read_data_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_79,
      Q => mag1(26),
      R => '0'
    );
\signal_read_data_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_78,
      Q => mag1(27),
      R => '0'
    );
\signal_read_data_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_77,
      Q => mag1(28),
      R => '0'
    );
\signal_read_data_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_76,
      Q => mag1(29),
      R => '0'
    );
\signal_read_data_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_103,
      Q => mag1(2),
      R => '0'
    );
\signal_read_data_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_75,
      Q => mag1(30),
      R => '0'
    );
\signal_read_data_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_74,
      Q => mag1(31),
      R => '0'
    );
\signal_read_data_out_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_73,
      Q => mag1(32),
      R => '0'
    );
\signal_read_data_out_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_72,
      Q => mag1(33),
      R => '0'
    );
\signal_read_data_out_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_71,
      Q => mag1(34),
      R => '0'
    );
\signal_read_data_out_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_70,
      Q => mag1(35),
      R => '0'
    );
\signal_read_data_out_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_69,
      Q => mag1(36),
      R => '0'
    );
\signal_read_data_out_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_68,
      Q => mag1(37),
      R => '0'
    );
\signal_read_data_out_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_67,
      Q => mag1(38),
      R => '0'
    );
\signal_read_data_out_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_66,
      Q => mag1(39),
      R => '0'
    );
\signal_read_data_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_102,
      Q => mag1(3),
      R => '0'
    );
\signal_read_data_out_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_65,
      Q => mag1(40),
      R => '0'
    );
\signal_read_data_out_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_64,
      Q => mag1(41),
      R => '0'
    );
\signal_read_data_out_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_63,
      Q => mag1(42),
      R => '0'
    );
\signal_read_data_out_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_62,
      Q => mag1(43),
      R => '0'
    );
\signal_read_data_out_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_61,
      Q => mag1(44),
      R => '0'
    );
\signal_read_data_out_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_60,
      Q => mag1(45),
      R => '0'
    );
\signal_read_data_out_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_59,
      Q => mag1(46),
      R => '0'
    );
\signal_read_data_out_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_58,
      Q => mag1(47),
      R => '0'
    );
\signal_read_data_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_101,
      Q => mag1(4),
      R => '0'
    );
\signal_read_data_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_100,
      Q => mag1(5),
      R => '0'
    );
\signal_read_data_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_99,
      Q => mag1(6),
      R => '0'
    );
\signal_read_data_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_98,
      Q => mag1(7),
      R => '0'
    );
\signal_read_data_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_97,
      Q => mag1(8),
      R => '0'
    );
\signal_read_data_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => signal_read_data_mag0_n_96,
      Q => mag1(9),
      R => '0'
    );
sum0: unisim.vcomponents.DSP48E1
    generic map(
      ACASCREG => 1,
      ADREG => 1,
      ALUMODEREG => 0,
      AREG => 1,
      AUTORESET_PATDET => "NO_RESET",
      A_INPUT => "DIRECT",
      BCASCREG => 1,
      BREG => 1,
      B_INPUT => "DIRECT",
      CARRYINREG => 0,
      CARRYINSELREG => 0,
      CREG => 0,
      DREG => 1,
      INMODEREG => 0,
      MASK => X"3FFFFFFFFFFF",
      MREG => 0,
      OPMODEREG => 0,
      PATTERN => X"000000000000",
      PREG => 0,
      SEL_MASK => "MASK",
      SEL_PATTERN => "PATTERN",
      USE_DPORT => false,
      USE_MULT => "MULTIPLY",
      USE_PATTERN_DETECT => "NO_PATDET",
      USE_SIMD => "ONE48"
    )
        port map (
      A(29 downto 16) => B"00000000000000",
      A(15 downto 0) => signal_data(15 downto 0),
      ACIN(29 downto 0) => B"000000000000000000000000000000",
      ACOUT(29 downto 0) => NLW_sum0_ACOUT_UNCONNECTED(29 downto 0),
      ALUMODE(3 downto 0) => B"0000",
      B(17 downto 16) => B"00",
      B(15 downto 0) => golden_data(15 downto 0),
      BCIN(17 downto 0) => B"000000000000000000",
      BCOUT(17 downto 0) => NLW_sum0_BCOUT_UNCONNECTED(17 downto 0),
      C(47 downto 0) => sum(47 downto 0),
      CARRYCASCIN => '0',
      CARRYCASCOUT => NLW_sum0_CARRYCASCOUT_UNCONNECTED,
      CARRYIN => '0',
      CARRYINSEL(2 downto 0) => B"000",
      CARRYOUT(3 downto 0) => NLW_sum0_CARRYOUT_UNCONNECTED(3 downto 0),
      CEA1 => '0',
      CEA2 => signal_fifo_read_data,
      CEAD => '0',
      CEALUMODE => '0',
      CEB1 => '0',
      CEB2 => signal_fifo_read_data,
      CEC => '0',
      CECARRYIN => '0',
      CECTRL => '0',
      CED => '0',
      CEINMODE => '0',
      CEM => '0',
      CEP => '0',
      CLK => signal_fft_axis_aclk,
      D(24 downto 0) => B"0000000000000000000000000",
      INMODE(4 downto 0) => B"00000",
      MULTSIGNIN => '0',
      MULTSIGNOUT => NLW_sum0_MULTSIGNOUT_UNCONNECTED,
      OPMODE(6 downto 0) => B"0110101",
      OVERFLOW => NLW_sum0_OVERFLOW_UNCONNECTED,
      P(47) => sum0_n_58,
      P(46) => sum0_n_59,
      P(45) => sum0_n_60,
      P(44) => sum0_n_61,
      P(43) => sum0_n_62,
      P(42) => sum0_n_63,
      P(41) => sum0_n_64,
      P(40) => sum0_n_65,
      P(39) => sum0_n_66,
      P(38) => sum0_n_67,
      P(37) => sum0_n_68,
      P(36) => sum0_n_69,
      P(35) => sum0_n_70,
      P(34) => sum0_n_71,
      P(33) => sum0_n_72,
      P(32) => sum0_n_73,
      P(31) => sum0_n_74,
      P(30) => sum0_n_75,
      P(29) => sum0_n_76,
      P(28) => sum0_n_77,
      P(27) => sum0_n_78,
      P(26) => sum0_n_79,
      P(25) => sum0_n_80,
      P(24) => sum0_n_81,
      P(23) => sum0_n_82,
      P(22) => sum0_n_83,
      P(21) => sum0_n_84,
      P(20) => sum0_n_85,
      P(19) => sum0_n_86,
      P(18) => sum0_n_87,
      P(17) => sum0_n_88,
      P(16) => sum0_n_89,
      P(15) => sum0_n_90,
      P(14) => sum0_n_91,
      P(13) => sum0_n_92,
      P(12) => sum0_n_93,
      P(11) => sum0_n_94,
      P(10) => sum0_n_95,
      P(9) => sum0_n_96,
      P(8) => sum0_n_97,
      P(7) => sum0_n_98,
      P(6) => sum0_n_99,
      P(5) => sum0_n_100,
      P(4) => sum0_n_101,
      P(3) => sum0_n_102,
      P(2) => sum0_n_103,
      P(1) => sum0_n_104,
      P(0) => sum0_n_105,
      PATTERNBDETECT => NLW_sum0_PATTERNBDETECT_UNCONNECTED,
      PATTERNDETECT => NLW_sum0_PATTERNDETECT_UNCONNECTED,
      PCIN(47 downto 0) => B"000000000000000000000000000000000000000000000000",
      PCOUT(47 downto 0) => NLW_sum0_PCOUT_UNCONNECTED(47 downto 0),
      RSTA => '0',
      RSTALLCARRYIN => '0',
      RSTALUMODE => '0',
      RSTB => '0',
      RSTC => '0',
      RSTCTRL => '0',
      RSTD => '0',
      RSTINMODE => '0',
      RSTM => '0',
      RSTP => '0',
      UNDERFLOW => NLW_sum0_UNDERFLOW_UNCONNECTED
    );
\sum[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_105,
      I1 => data_ready,
      O => \sum[0]_i_1_n_0\
    );
\sum[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_95,
      I1 => data_ready,
      O => \sum[10]_i_1_n_0\
    );
\sum[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_94,
      I1 => data_ready,
      O => \sum[11]_i_1_n_0\
    );
\sum[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_93,
      I1 => data_ready,
      O => \sum[12]_i_1_n_0\
    );
\sum[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_92,
      I1 => data_ready,
      O => \sum[13]_i_1_n_0\
    );
\sum[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_91,
      I1 => data_ready,
      O => \sum[14]_i_1_n_0\
    );
\sum[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_90,
      I1 => data_ready,
      O => \sum[15]_i_1_n_0\
    );
\sum[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_89,
      I1 => data_ready,
      O => \sum[16]_i_1_n_0\
    );
\sum[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_88,
      I1 => data_ready,
      O => \sum[17]_i_1_n_0\
    );
\sum[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_87,
      I1 => data_ready,
      O => \sum[18]_i_1_n_0\
    );
\sum[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_86,
      I1 => data_ready,
      O => \sum[19]_i_1_n_0\
    );
\sum[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_104,
      I1 => data_ready,
      O => \sum[1]_i_1_n_0\
    );
\sum[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_85,
      I1 => data_ready,
      O => \sum[20]_i_1_n_0\
    );
\sum[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_84,
      I1 => data_ready,
      O => \sum[21]_i_1_n_0\
    );
\sum[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_83,
      I1 => data_ready,
      O => \sum[22]_i_1_n_0\
    );
\sum[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_82,
      I1 => data_ready,
      O => \sum[23]_i_1_n_0\
    );
\sum[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_81,
      I1 => data_ready,
      O => \sum[24]_i_1_n_0\
    );
\sum[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_80,
      I1 => data_ready,
      O => \sum[25]_i_1_n_0\
    );
\sum[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_79,
      I1 => data_ready,
      O => \sum[26]_i_1_n_0\
    );
\sum[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_78,
      I1 => data_ready,
      O => \sum[27]_i_1_n_0\
    );
\sum[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_77,
      I1 => data_ready,
      O => \sum[28]_i_1_n_0\
    );
\sum[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_76,
      I1 => data_ready,
      O => \sum[29]_i_1_n_0\
    );
\sum[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_103,
      I1 => data_ready,
      O => \sum[2]_i_1_n_0\
    );
\sum[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_75,
      I1 => data_ready,
      O => \sum[30]_i_1_n_0\
    );
\sum[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_74,
      I1 => data_ready,
      O => \sum[31]_i_1_n_0\
    );
\sum[32]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_73,
      I1 => data_ready,
      O => \sum[32]_i_1_n_0\
    );
\sum[33]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_72,
      I1 => data_ready,
      O => \sum[33]_i_1_n_0\
    );
\sum[34]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_71,
      I1 => data_ready,
      O => \sum[34]_i_1_n_0\
    );
\sum[35]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_70,
      I1 => data_ready,
      O => \sum[35]_i_1_n_0\
    );
\sum[36]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_69,
      I1 => data_ready,
      O => \sum[36]_i_1_n_0\
    );
\sum[37]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_68,
      I1 => data_ready,
      O => \sum[37]_i_1_n_0\
    );
\sum[38]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_67,
      I1 => data_ready,
      O => \sum[38]_i_1_n_0\
    );
\sum[39]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_66,
      I1 => data_ready,
      O => \sum[39]_i_1_n_0\
    );
\sum[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_102,
      I1 => data_ready,
      O => \sum[3]_i_1_n_0\
    );
\sum[40]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_65,
      I1 => data_ready,
      O => \sum[40]_i_1_n_0\
    );
\sum[41]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_64,
      I1 => data_ready,
      O => \sum[41]_i_1_n_0\
    );
\sum[42]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_63,
      I1 => data_ready,
      O => \sum[42]_i_1_n_0\
    );
\sum[43]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_62,
      I1 => data_ready,
      O => \sum[43]_i_1_n_0\
    );
\sum[44]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_61,
      I1 => data_ready,
      O => \sum[44]_i_1_n_0\
    );
\sum[45]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_60,
      I1 => data_ready,
      O => \sum[45]_i_1_n_0\
    );
\sum[46]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_59,
      I1 => data_ready,
      O => \sum[46]_i_1_n_0\
    );
\sum[47]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_58,
      I1 => data_ready,
      O => \sum[47]_i_1_n_0\
    );
\sum[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_101,
      I1 => data_ready,
      O => \sum[4]_i_1_n_0\
    );
\sum[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_100,
      I1 => data_ready,
      O => \sum[5]_i_1_n_0\
    );
\sum[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_99,
      I1 => data_ready,
      O => \sum[6]_i_1_n_0\
    );
\sum[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_98,
      I1 => data_ready,
      O => \sum[7]_i_1_n_0\
    );
\sum[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_97,
      I1 => data_ready,
      O => \sum[8]_i_1_n_0\
    );
\sum[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sum0_n_96,
      I1 => data_ready,
      O => \sum[9]_i_1_n_0\
    );
\sum_out_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_105,
      Q => dot_product(0),
      R => '0'
    );
\sum_out_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_95,
      Q => dot_product(10),
      R => '0'
    );
\sum_out_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_94,
      Q => dot_product(11),
      R => '0'
    );
\sum_out_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_93,
      Q => dot_product(12),
      R => '0'
    );
\sum_out_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_92,
      Q => dot_product(13),
      R => '0'
    );
\sum_out_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_91,
      Q => dot_product(14),
      R => '0'
    );
\sum_out_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_90,
      Q => dot_product(15),
      R => '0'
    );
\sum_out_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_89,
      Q => dot_product(16),
      R => '0'
    );
\sum_out_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_88,
      Q => dot_product(17),
      R => '0'
    );
\sum_out_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_87,
      Q => dot_product(18),
      R => '0'
    );
\sum_out_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_86,
      Q => dot_product(19),
      R => '0'
    );
\sum_out_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_104,
      Q => dot_product(1),
      R => '0'
    );
\sum_out_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_85,
      Q => dot_product(20),
      R => '0'
    );
\sum_out_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_84,
      Q => dot_product(21),
      R => '0'
    );
\sum_out_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_83,
      Q => dot_product(22),
      R => '0'
    );
\sum_out_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_82,
      Q => dot_product(23),
      R => '0'
    );
\sum_out_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_81,
      Q => dot_product(24),
      R => '0'
    );
\sum_out_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_80,
      Q => dot_product(25),
      R => '0'
    );
\sum_out_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_79,
      Q => dot_product(26),
      R => '0'
    );
\sum_out_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_78,
      Q => dot_product(27),
      R => '0'
    );
\sum_out_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_77,
      Q => dot_product(28),
      R => '0'
    );
\sum_out_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_76,
      Q => dot_product(29),
      R => '0'
    );
\sum_out_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_103,
      Q => dot_product(2),
      R => '0'
    );
\sum_out_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_75,
      Q => dot_product(30),
      R => '0'
    );
\sum_out_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_74,
      Q => dot_product(31),
      R => '0'
    );
\sum_out_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_73,
      Q => dot_product(32),
      R => '0'
    );
\sum_out_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_72,
      Q => dot_product(33),
      R => '0'
    );
\sum_out_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_71,
      Q => dot_product(34),
      R => '0'
    );
\sum_out_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_70,
      Q => dot_product(35),
      R => '0'
    );
\sum_out_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_69,
      Q => dot_product(36),
      R => '0'
    );
\sum_out_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_68,
      Q => dot_product(37),
      R => '0'
    );
\sum_out_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_67,
      Q => dot_product(38),
      R => '0'
    );
\sum_out_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_66,
      Q => dot_product(39),
      R => '0'
    );
\sum_out_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_102,
      Q => dot_product(3),
      R => '0'
    );
\sum_out_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_65,
      Q => dot_product(40),
      R => '0'
    );
\sum_out_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_64,
      Q => dot_product(41),
      R => '0'
    );
\sum_out_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_63,
      Q => dot_product(42),
      R => '0'
    );
\sum_out_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_62,
      Q => dot_product(43),
      R => '0'
    );
\sum_out_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_61,
      Q => dot_product(44),
      R => '0'
    );
\sum_out_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_60,
      Q => dot_product(45),
      R => '0'
    );
\sum_out_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_59,
      Q => dot_product(46),
      R => '0'
    );
\sum_out_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_58,
      Q => dot_product(47),
      R => '0'
    );
\sum_out_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_101,
      Q => dot_product(4),
      R => '0'
    );
\sum_out_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_100,
      Q => dot_product(5),
      R => '0'
    );
\sum_out_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_99,
      Q => dot_product(6),
      R => '0'
    );
\sum_out_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_98,
      Q => dot_product(7),
      R => '0'
    );
\sum_out_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_97,
      Q => dot_product(8),
      R => '0'
    );
\sum_out_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => signal_fft_axis_aclk,
      CE => signal_read_data_out,
      D => sum0_n_96,
      Q => dot_product(9),
      R => '0'
    );
\sum_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[0]_i_1_n_0\,
      Q => sum(0)
    );
\sum_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[10]_i_1_n_0\,
      Q => sum(10)
    );
\sum_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[11]_i_1_n_0\,
      Q => sum(11)
    );
\sum_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[12]_i_1_n_0\,
      Q => sum(12)
    );
\sum_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[13]_i_1_n_0\,
      Q => sum(13)
    );
\sum_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[14]_i_1_n_0\,
      Q => sum(14)
    );
\sum_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[15]_i_1_n_0\,
      Q => sum(15)
    );
\sum_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[16]_i_1_n_0\,
      Q => sum(16)
    );
\sum_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[17]_i_1_n_0\,
      Q => sum(17)
    );
\sum_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[18]_i_1_n_0\,
      Q => sum(18)
    );
\sum_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[19]_i_1_n_0\,
      Q => sum(19)
    );
\sum_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[1]_i_1_n_0\,
      Q => sum(1)
    );
\sum_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[20]_i_1_n_0\,
      Q => sum(20)
    );
\sum_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[21]_i_1_n_0\,
      Q => sum(21)
    );
\sum_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[22]_i_1_n_0\,
      Q => sum(22)
    );
\sum_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[23]_i_1_n_0\,
      Q => sum(23)
    );
\sum_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[24]_i_1_n_0\,
      Q => sum(24)
    );
\sum_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[25]_i_1_n_0\,
      Q => sum(25)
    );
\sum_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[26]_i_1_n_0\,
      Q => sum(26)
    );
\sum_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[27]_i_1_n_0\,
      Q => sum(27)
    );
\sum_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[28]_i_1_n_0\,
      Q => sum(28)
    );
\sum_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[29]_i_1_n_0\,
      Q => sum(29)
    );
\sum_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[2]_i_1_n_0\,
      Q => sum(2)
    );
\sum_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[30]_i_1_n_0\,
      Q => sum(30)
    );
\sum_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[31]_i_1_n_0\,
      Q => sum(31)
    );
\sum_reg[32]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[32]_i_1_n_0\,
      Q => sum(32)
    );
\sum_reg[33]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[33]_i_1_n_0\,
      Q => sum(33)
    );
\sum_reg[34]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[34]_i_1_n_0\,
      Q => sum(34)
    );
\sum_reg[35]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[35]_i_1_n_0\,
      Q => sum(35)
    );
\sum_reg[36]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[36]_i_1_n_0\,
      Q => sum(36)
    );
\sum_reg[37]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[37]_i_1_n_0\,
      Q => sum(37)
    );
\sum_reg[38]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[38]_i_1_n_0\,
      Q => sum(38)
    );
\sum_reg[39]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[39]_i_1_n_0\,
      Q => sum(39)
    );
\sum_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[3]_i_1_n_0\,
      Q => sum(3)
    );
\sum_reg[40]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[40]_i_1_n_0\,
      Q => sum(40)
    );
\sum_reg[41]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[41]_i_1_n_0\,
      Q => sum(41)
    );
\sum_reg[42]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[42]_i_1_n_0\,
      Q => sum(42)
    );
\sum_reg[43]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[43]_i_1_n_0\,
      Q => sum(43)
    );
\sum_reg[44]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[44]_i_1_n_0\,
      Q => sum(44)
    );
\sum_reg[45]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[45]_i_1_n_0\,
      Q => sum(45)
    );
\sum_reg[46]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[46]_i_1_n_0\,
      Q => sum(46)
    );
\sum_reg[47]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[47]_i_1_n_0\,
      Q => sum(47)
    );
\sum_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[4]_i_1_n_0\,
      Q => sum(4)
    );
\sum_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[5]_i_1_n_0\,
      Q => sum(5)
    );
\sum_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[6]_i_1_n_0\,
      Q => sum(6)
    );
\sum_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[7]_i_1_n_0\,
      Q => sum(7)
    );
\sum_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[8]_i_1_n_0\,
      Q => sum(8)
    );
\sum_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => signal_fft_axis_aclk,
      CE => golden_read_data_mag_0,
      CLR => correlation_valid_i_2_n_0,
      D => \sum[9]_i_1_n_0\,
      Q => sum(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity corr_wrapper_projection_correlation_calculator_v1_0_0_1 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of corr_wrapper_projection_correlation_calculator_v1_0_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of corr_wrapper_projection_correlation_calculator_v1_0_0_1 : entity is "corr_wrapper_projection_correlation_calculator_v1_0_0_1,projection_correlation_calculator_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of corr_wrapper_projection_correlation_calculator_v1_0_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of corr_wrapper_projection_correlation_calculator_v1_0_0_1 : entity is "projection_correlation_calculator_v1_0,Vivado 2017.2";
end corr_wrapper_projection_correlation_calculator_v1_0_0_1;

architecture STRUCTURE of corr_wrapper_projection_correlation_calculator_v1_0_0_1 is
  signal \<const0>\ : STD_LOGIC;
begin
  correlation_out_axi_bresp(1) <= \<const0>\;
  correlation_out_axi_bresp(0) <= \<const0>\;
  correlation_out_axi_rresp(1) <= \<const0>\;
  correlation_out_axi_rresp(0) <= \<const0>\;
  correlation_out_probe(31) <= \<const0>\;
  correlation_out_probe(30) <= \<const0>\;
  correlation_out_probe(29) <= \<const0>\;
  correlation_out_probe(28) <= \<const0>\;
  correlation_out_probe(27) <= \<const0>\;
  correlation_out_probe(26) <= \<const0>\;
  correlation_out_probe(25) <= \<const0>\;
  correlation_out_probe(24) <= \<const0>\;
  correlation_out_probe(23) <= \<const0>\;
  correlation_out_probe(22) <= \<const0>\;
  correlation_out_probe(21) <= \<const0>\;
  correlation_out_probe(20) <= \<const0>\;
  correlation_out_probe(19) <= \<const0>\;
  correlation_out_probe(18) <= \<const0>\;
  correlation_out_probe(17) <= \<const0>\;
  correlation_out_probe(16) <= \<const0>\;
  correlation_out_probe(15) <= \<const0>\;
  correlation_out_probe(14) <= \<const0>\;
  correlation_out_probe(13) <= \<const0>\;
  correlation_out_probe(12) <= \<const0>\;
  correlation_out_probe(11) <= \<const0>\;
  correlation_out_probe(10) <= \<const0>\;
  correlation_out_probe(9) <= \<const0>\;
  correlation_out_probe(8) <= \<const0>\;
  correlation_out_probe(7) <= \<const0>\;
  correlation_out_probe(6) <= \<const0>\;
  correlation_out_probe(5) <= \<const0>\;
  correlation_out_probe(4) <= \<const0>\;
  correlation_out_probe(3) <= \<const0>\;
  correlation_out_probe(2) <= \<const0>\;
  correlation_out_probe(1) <= \<const0>\;
  correlation_out_probe(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.corr_wrapper_projection_correlation_calculator_v1_0_0_1_projection_correlation_calculator_v1_0
     port map (
      correlation_normalized(31 downto 0) => correlation_normalized(31 downto 0),
      correlation_normalized_valid => correlation_normalized_valid,
      correlation_out_axi_aclk => correlation_out_axi_aclk,
      correlation_out_axi_araddr(1 downto 0) => correlation_out_axi_araddr(3 downto 2),
      correlation_out_axi_aresetn => correlation_out_axi_aresetn,
      correlation_out_axi_arready => correlation_out_axi_arready,
      correlation_out_axi_arvalid => correlation_out_axi_arvalid,
      correlation_out_axi_awaddr(1 downto 0) => correlation_out_axi_awaddr(3 downto 2),
      correlation_out_axi_awready => correlation_out_axi_awready,
      correlation_out_axi_awvalid => correlation_out_axi_awvalid,
      correlation_out_axi_bready => correlation_out_axi_bready,
      correlation_out_axi_bvalid => correlation_out_axi_bvalid,
      correlation_out_axi_rdata(31 downto 0) => correlation_out_axi_rdata(31 downto 0),
      correlation_out_axi_rready => correlation_out_axi_rready,
      correlation_out_axi_rvalid => correlation_out_axi_rvalid,
      correlation_out_axi_wdata(31 downto 0) => correlation_out_axi_wdata(31 downto 0),
      correlation_out_axi_wready => correlation_out_axi_wready,
      correlation_out_axi_wstrb(3 downto 0) => correlation_out_axi_wstrb(3 downto 0),
      correlation_out_axi_wvalid => correlation_out_axi_wvalid,
      dot_product(47 downto 0) => dot_product(47 downto 0),
      dot_product_ready => dot_product_ready,
      dot_product_valid => dot_product_valid,
      golden_fft_axis_aclk => golden_fft_axis_aclk,
      golden_fft_axis_aresetn => golden_fft_axis_aresetn,
      golden_fft_axis_tdata(15 downto 0) => golden_fft_axis_tdata(15 downto 0),
      golden_fft_axis_tready => golden_fft_axis_tready,
      golden_fft_axis_tvalid => golden_fft_axis_tvalid,
      mag1(47 downto 0) => mag1(47 downto 0),
      mag2(47 downto 0) => mag2(47 downto 0),
      signal_fft_axis_aclk => signal_fft_axis_aclk,
      signal_fft_axis_aresetn => signal_fft_axis_aresetn,
      signal_fft_axis_tdata(15 downto 0) => signal_fft_axis_tdata(15 downto 0),
      signal_fft_axis_tlast => signal_fft_axis_tlast,
      signal_fft_axis_tready => signal_fft_axis_tready,
      signal_fft_axis_tvalid => signal_fft_axis_tvalid
    );
end STRUCTURE;

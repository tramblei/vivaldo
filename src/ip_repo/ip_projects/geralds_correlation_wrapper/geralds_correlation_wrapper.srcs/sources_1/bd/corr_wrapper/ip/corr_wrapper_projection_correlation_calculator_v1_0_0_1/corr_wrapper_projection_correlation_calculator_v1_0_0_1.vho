-- (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: user.org:user:projection_correlation_calculator_v1_0:1.0
-- IP Revision: 15

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT corr_wrapper_projection_correlation_calculator_v1_0_0_1
  PORT (
    signal_fft_axis_aclk : IN STD_LOGIC;
    signal_fft_axis_aresetn : IN STD_LOGIC;
    signal_fft_axis_tready : OUT STD_LOGIC;
    signal_fft_axis_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    signal_fft_axis_tstrb : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    signal_fft_axis_tlast : IN STD_LOGIC;
    signal_fft_axis_tvalid : IN STD_LOGIC;
    golden_fft_axis_aclk : IN STD_LOGIC;
    golden_fft_axis_aresetn : IN STD_LOGIC;
    golden_fft_axis_tready : OUT STD_LOGIC;
    golden_fft_axis_tdata : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    golden_fft_axis_tstrb : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    golden_fft_axis_tlast : IN STD_LOGIC;
    golden_fft_axis_tvalid : IN STD_LOGIC;
    correlation_out_axi_aclk : IN STD_LOGIC;
    correlation_out_axi_aresetn : IN STD_LOGIC;
    correlation_out_axi_awaddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    correlation_out_axi_awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    correlation_out_axi_awvalid : IN STD_LOGIC;
    correlation_out_axi_awready : OUT STD_LOGIC;
    correlation_out_axi_wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    correlation_out_axi_wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    correlation_out_axi_wvalid : IN STD_LOGIC;
    correlation_out_axi_wready : OUT STD_LOGIC;
    correlation_out_axi_bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    correlation_out_axi_bvalid : OUT STD_LOGIC;
    correlation_out_axi_bready : IN STD_LOGIC;
    correlation_out_axi_araddr : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    correlation_out_axi_arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    correlation_out_axi_arvalid : IN STD_LOGIC;
    correlation_out_axi_arready : OUT STD_LOGIC;
    correlation_out_axi_rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    correlation_out_axi_rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    correlation_out_axi_rvalid : OUT STD_LOGIC;
    correlation_out_axi_rready : IN STD_LOGIC;
    correlation_out_probe : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    correlation_normalized : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    correlation_normalized_valid : IN STD_LOGIC;
    mag1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    mag2 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    dot_product : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    dot_product_valid : OUT STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : corr_wrapper_projection_correlation_calculator_v1_0_0_1
  PORT MAP (
    signal_fft_axis_aclk => signal_fft_axis_aclk,
    signal_fft_axis_aresetn => signal_fft_axis_aresetn,
    signal_fft_axis_tready => signal_fft_axis_tready,
    signal_fft_axis_tdata => signal_fft_axis_tdata,
    signal_fft_axis_tstrb => signal_fft_axis_tstrb,
    signal_fft_axis_tlast => signal_fft_axis_tlast,
    signal_fft_axis_tvalid => signal_fft_axis_tvalid,
    golden_fft_axis_aclk => golden_fft_axis_aclk,
    golden_fft_axis_aresetn => golden_fft_axis_aresetn,
    golden_fft_axis_tready => golden_fft_axis_tready,
    golden_fft_axis_tdata => golden_fft_axis_tdata,
    golden_fft_axis_tstrb => golden_fft_axis_tstrb,
    golden_fft_axis_tlast => golden_fft_axis_tlast,
    golden_fft_axis_tvalid => golden_fft_axis_tvalid,
    correlation_out_axi_aclk => correlation_out_axi_aclk,
    correlation_out_axi_aresetn => correlation_out_axi_aresetn,
    correlation_out_axi_awaddr => correlation_out_axi_awaddr,
    correlation_out_axi_awprot => correlation_out_axi_awprot,
    correlation_out_axi_awvalid => correlation_out_axi_awvalid,
    correlation_out_axi_awready => correlation_out_axi_awready,
    correlation_out_axi_wdata => correlation_out_axi_wdata,
    correlation_out_axi_wstrb => correlation_out_axi_wstrb,
    correlation_out_axi_wvalid => correlation_out_axi_wvalid,
    correlation_out_axi_wready => correlation_out_axi_wready,
    correlation_out_axi_bresp => correlation_out_axi_bresp,
    correlation_out_axi_bvalid => correlation_out_axi_bvalid,
    correlation_out_axi_bready => correlation_out_axi_bready,
    correlation_out_axi_araddr => correlation_out_axi_araddr,
    correlation_out_axi_arprot => correlation_out_axi_arprot,
    correlation_out_axi_arvalid => correlation_out_axi_arvalid,
    correlation_out_axi_arready => correlation_out_axi_arready,
    correlation_out_axi_rdata => correlation_out_axi_rdata,
    correlation_out_axi_rresp => correlation_out_axi_rresp,
    correlation_out_axi_rvalid => correlation_out_axi_rvalid,
    correlation_out_axi_rready => correlation_out_axi_rready,
    correlation_out_probe => correlation_out_probe,
    correlation_normalized => correlation_normalized,
    correlation_normalized_valid => correlation_normalized_valid,
    mag1 => mag1,
    mag2 => mag2,
    dot_product => dot_product,
    dot_product_valid => dot_product_valid
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------


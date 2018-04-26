// (c) Copyright 1995-2018 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: user.org:user:projection_correlation_calculator_v1_0:1.0
// IP Revision: 42

(* X_CORE_INFO = "projection_correlation_calculator_v1_0,Vivado 2017.2" *)
(* CHECK_LICENSE_TYPE = "corr_wrapper_projection_correlation_calculator_v1_0_0_1,projection_correlation_calculator_v1_0,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module corr_wrapper_projection_correlation_calculator_v1_0_0_1 (
  signal_fft_axis_aclk,
  signal_fft_axis_aresetn,
  signal_fft_axis_tready,
  signal_fft_axis_tdata,
  signal_fft_axis_tstrb,
  signal_fft_axis_tlast,
  signal_fft_axis_tvalid,
  golden_fft_axis_aclk,
  golden_fft_axis_aresetn,
  golden_fft_axis_tready,
  golden_fft_axis_tdata,
  golden_fft_axis_tstrb,
  golden_fft_axis_tlast,
  golden_fft_axis_tvalid,
  correlation_out_axi_aclk,
  correlation_out_axi_aresetn,
  correlation_out_axi_awaddr,
  correlation_out_axi_awprot,
  correlation_out_axi_awvalid,
  correlation_out_axi_awready,
  correlation_out_axi_wdata,
  correlation_out_axi_wstrb,
  correlation_out_axi_wvalid,
  correlation_out_axi_wready,
  correlation_out_axi_bresp,
  correlation_out_axi_bvalid,
  correlation_out_axi_bready,
  correlation_out_axi_araddr,
  correlation_out_axi_arprot,
  correlation_out_axi_arvalid,
  correlation_out_axi_arready,
  correlation_out_axi_rdata,
  correlation_out_axi_rresp,
  correlation_out_axi_rvalid,
  correlation_out_axi_rready,
  correlation_out_probe,
  correlation_normalized,
  correlation_normalized_valid,
  mag1,
  mag2,
  dot_product,
  dot_product_valid,
  dot_product_ready
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 signal_fft_axis_aclk CLK" *)
input wire signal_fft_axis_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 signal_fft_axis_aresetn RST" *)
input wire signal_fft_axis_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_fft_axis TREADY" *)
output wire signal_fft_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_fft_axis TDATA" *)
input wire [15 : 0] signal_fft_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_fft_axis TSTRB" *)
input wire [1 : 0] signal_fft_axis_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_fft_axis TLAST" *)
input wire signal_fft_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_fft_axis TVALID" *)
input wire signal_fft_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 golden_fft_axis_aclk CLK" *)
input wire golden_fft_axis_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 golden_fft_axis_aresetn RST" *)
input wire golden_fft_axis_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 golden_fft_axis TREADY" *)
output wire golden_fft_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 golden_fft_axis TDATA" *)
input wire [15 : 0] golden_fft_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 golden_fft_axis TSTRB" *)
input wire [1 : 0] golden_fft_axis_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 golden_fft_axis TLAST" *)
input wire golden_fft_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 golden_fft_axis TVALID" *)
input wire golden_fft_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 correlation_out_axi_aclk CLK" *)
input wire correlation_out_axi_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 correlation_out_axi_aresetn RST" *)
input wire correlation_out_axi_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi AWADDR" *)
input wire [3 : 0] correlation_out_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi AWPROT" *)
input wire [2 : 0] correlation_out_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi AWVALID" *)
input wire correlation_out_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi AWREADY" *)
output wire correlation_out_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi WDATA" *)
input wire [31 : 0] correlation_out_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi WSTRB" *)
input wire [3 : 0] correlation_out_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi WVALID" *)
input wire correlation_out_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi WREADY" *)
output wire correlation_out_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi BRESP" *)
output wire [1 : 0] correlation_out_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi BVALID" *)
output wire correlation_out_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi BREADY" *)
input wire correlation_out_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi ARADDR" *)
input wire [3 : 0] correlation_out_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi ARPROT" *)
input wire [2 : 0] correlation_out_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi ARVALID" *)
input wire correlation_out_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi ARREADY" *)
output wire correlation_out_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi RDATA" *)
output wire [31 : 0] correlation_out_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi RRESP" *)
output wire [1 : 0] correlation_out_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi RVALID" *)
output wire correlation_out_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi RREADY" *)
input wire correlation_out_axi_rready;
output wire [31 : 0] correlation_out_probe;
input wire [31 : 0] correlation_normalized;
input wire correlation_normalized_valid;
output wire [47 : 0] mag1;
output wire [47 : 0] mag2;
output wire [47 : 0] dot_product;
output wire dot_product_valid;
input wire dot_product_ready;

  projection_correlation_calculator_v1_0 #(
    .CORRELATION_SIZE(32),
    .FFT_BITS(10),
    .C_fft_AXIS_TDATA_WIDTH(16),
    .C_fft_FIFO_BLOCK_SIZE(10),
    .C_correlation_out_AXI_DATA_WIDTH(32),
    .C_correlation_out_AXI_ADDR_WIDTH(4),
    .CORRELATION_SHIFT(8),
    .DOT_PRODUCT_SIZE(48)
  ) inst (
    .signal_fft_axis_aclk(signal_fft_axis_aclk),
    .signal_fft_axis_aresetn(signal_fft_axis_aresetn),
    .signal_fft_axis_tready(signal_fft_axis_tready),
    .signal_fft_axis_tdata(signal_fft_axis_tdata),
    .signal_fft_axis_tstrb(signal_fft_axis_tstrb),
    .signal_fft_axis_tlast(signal_fft_axis_tlast),
    .signal_fft_axis_tvalid(signal_fft_axis_tvalid),
    .golden_fft_axis_aclk(golden_fft_axis_aclk),
    .golden_fft_axis_aresetn(golden_fft_axis_aresetn),
    .golden_fft_axis_tready(golden_fft_axis_tready),
    .golden_fft_axis_tdata(golden_fft_axis_tdata),
    .golden_fft_axis_tstrb(golden_fft_axis_tstrb),
    .golden_fft_axis_tlast(golden_fft_axis_tlast),
    .golden_fft_axis_tvalid(golden_fft_axis_tvalid),
    .correlation_out_axi_aclk(correlation_out_axi_aclk),
    .correlation_out_axi_aresetn(correlation_out_axi_aresetn),
    .correlation_out_axi_awaddr(correlation_out_axi_awaddr),
    .correlation_out_axi_awprot(correlation_out_axi_awprot),
    .correlation_out_axi_awvalid(correlation_out_axi_awvalid),
    .correlation_out_axi_awready(correlation_out_axi_awready),
    .correlation_out_axi_wdata(correlation_out_axi_wdata),
    .correlation_out_axi_wstrb(correlation_out_axi_wstrb),
    .correlation_out_axi_wvalid(correlation_out_axi_wvalid),
    .correlation_out_axi_wready(correlation_out_axi_wready),
    .correlation_out_axi_bresp(correlation_out_axi_bresp),
    .correlation_out_axi_bvalid(correlation_out_axi_bvalid),
    .correlation_out_axi_bready(correlation_out_axi_bready),
    .correlation_out_axi_araddr(correlation_out_axi_araddr),
    .correlation_out_axi_arprot(correlation_out_axi_arprot),
    .correlation_out_axi_arvalid(correlation_out_axi_arvalid),
    .correlation_out_axi_arready(correlation_out_axi_arready),
    .correlation_out_axi_rdata(correlation_out_axi_rdata),
    .correlation_out_axi_rresp(correlation_out_axi_rresp),
    .correlation_out_axi_rvalid(correlation_out_axi_rvalid),
    .correlation_out_axi_rready(correlation_out_axi_rready),
    .correlation_out_probe(correlation_out_probe),
    .correlation_normalized(correlation_normalized),
    .correlation_normalized_valid(correlation_normalized_valid),
    .mag1(mag1),
    .mag2(mag2),
    .dot_product(dot_product),
    .dot_product_valid(dot_product_valid),
    .dot_product_ready(dot_product_ready)
  );
endmodule

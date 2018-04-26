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


// IP VLNV: user.org:user:geralds_correlation_wrapper:1.0
// IP Revision: 1

(* X_CORE_INFO = "corr_wrapper_wrapper,Vivado 2017.2" *)
(* CHECK_LICENSE_TYPE = "design_1_geralds_correlation_wrapper_0_0,corr_wrapper_wrapper,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_geralds_correlation_wrapper_0_0 (
  aresetn,
  correlation_val_axi_araddr,
  correlation_val_axi_arprot,
  correlation_val_axi_arready,
  correlation_val_axi_arvalid,
  correlation_val_axi_awaddr,
  correlation_val_axi_awprot,
  correlation_val_axi_awready,
  correlation_val_axi_awvalid,
  correlation_val_axi_bready,
  correlation_val_axi_bresp,
  correlation_val_axi_bvalid,
  correlation_val_axi_rdata,
  correlation_val_axi_rready,
  correlation_val_axi_rresp,
  correlation_val_axi_rvalid,
  correlation_val_axi_wdata,
  correlation_val_axi_wready,
  correlation_val_axi_wstrb,
  correlation_val_axi_wvalid,
  sclk,
  sig1_axis_tdata,
  sig1_axis_tlast,
  sig1_axis_tready,
  sig1_axis_tstrb,
  sig1_axis_tvalid,
  sig2_axis_tdata,
  sig2_axis_tlast,
  sig2_axis_tready,
  sig2_axis_tstrb,
  sig2_axis_tvalid
);

(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_val_axi ARADDR" *)
input wire [3 : 0] correlation_val_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_val_axi ARPROT" *)
input wire [2 : 0] correlation_val_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_val_axi ARREADY" *)
output wire correlation_val_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_val_axi ARVALID" *)
input wire correlation_val_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_val_axi AWADDR" *)
input wire [3 : 0] correlation_val_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_val_axi AWPROT" *)
input wire [2 : 0] correlation_val_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_val_axi AWREADY" *)
output wire correlation_val_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_val_axi AWVALID" *)
input wire correlation_val_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_val_axi BREADY" *)
input wire correlation_val_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_val_axi BRESP" *)
output wire [1 : 0] correlation_val_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_val_axi BVALID" *)
output wire correlation_val_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_val_axi RDATA" *)
output wire [31 : 0] correlation_val_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_val_axi RREADY" *)
input wire correlation_val_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_val_axi RRESP" *)
output wire [1 : 0] correlation_val_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_val_axi RVALID" *)
output wire correlation_val_axi_rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_val_axi WDATA" *)
input wire [31 : 0] correlation_val_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_val_axi WREADY" *)
output wire correlation_val_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_val_axi WSTRB" *)
input wire [3 : 0] correlation_val_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_val_axi WVALID" *)
input wire correlation_val_axi_wvalid;
input wire sclk;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 sig1_axis TDATA" *)
input wire [15 : 0] sig1_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 sig1_axis TLAST" *)
input wire sig1_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 sig1_axis TREADY" *)
output wire sig1_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 sig1_axis TSTRB" *)
input wire [1 : 0] sig1_axis_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 sig1_axis TVALID" *)
input wire sig1_axis_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 sig2_axis TDATA" *)
input wire [15 : 0] sig2_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 sig2_axis TLAST" *)
input wire sig2_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 sig2_axis TREADY" *)
output wire sig2_axis_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 sig2_axis TSTRB" *)
input wire [1 : 0] sig2_axis_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 sig2_axis TVALID" *)
input wire sig2_axis_tvalid;

  corr_wrapper_wrapper inst (
    .aresetn(aresetn),
    .correlation_val_axi_araddr(correlation_val_axi_araddr),
    .correlation_val_axi_arprot(correlation_val_axi_arprot),
    .correlation_val_axi_arready(correlation_val_axi_arready),
    .correlation_val_axi_arvalid(correlation_val_axi_arvalid),
    .correlation_val_axi_awaddr(correlation_val_axi_awaddr),
    .correlation_val_axi_awprot(correlation_val_axi_awprot),
    .correlation_val_axi_awready(correlation_val_axi_awready),
    .correlation_val_axi_awvalid(correlation_val_axi_awvalid),
    .correlation_val_axi_bready(correlation_val_axi_bready),
    .correlation_val_axi_bresp(correlation_val_axi_bresp),
    .correlation_val_axi_bvalid(correlation_val_axi_bvalid),
    .correlation_val_axi_rdata(correlation_val_axi_rdata),
    .correlation_val_axi_rready(correlation_val_axi_rready),
    .correlation_val_axi_rresp(correlation_val_axi_rresp),
    .correlation_val_axi_rvalid(correlation_val_axi_rvalid),
    .correlation_val_axi_wdata(correlation_val_axi_wdata),
    .correlation_val_axi_wready(correlation_val_axi_wready),
    .correlation_val_axi_wstrb(correlation_val_axi_wstrb),
    .correlation_val_axi_wvalid(correlation_val_axi_wvalid),
    .sclk(sclk),
    .sig1_axis_tdata(sig1_axis_tdata),
    .sig1_axis_tlast(sig1_axis_tlast),
    .sig1_axis_tready(sig1_axis_tready),
    .sig1_axis_tstrb(sig1_axis_tstrb),
    .sig1_axis_tvalid(sig1_axis_tvalid),
    .sig2_axis_tdata(sig2_axis_tdata),
    .sig2_axis_tlast(sig2_axis_tlast),
    .sig2_axis_tready(sig2_axis_tready),
    .sig2_axis_tstrb(sig2_axis_tstrb),
    .sig2_axis_tvalid(sig2_axis_tvalid)
  );
endmodule

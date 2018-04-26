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


// IP VLNV: user.org:user:geralds_decimator:1.0
// IP Revision: 3

(* X_CORE_INFO = "geralds_decimator_v1_0,Vivado 2017.2" *)
(* CHECK_LICENSE_TYPE = "design_1_geralds_decimator_0_0,geralds_decimator_v1_0,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_geralds_decimator_0_0 (
  signal_in_aclk,
  signal_in_aresetn,
  signal_in_tready,
  signal_in_tdata,
  signal_in_tstrb,
  signal_in_tlast,
  signal_in_tvalid,
  signal_out_tvalid,
  signal_out_tdata,
  signal_out_tstrb,
  signal_out_tlast,
  signal_out_tready
);

(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 signal_in_aclk CLK" *)
input wire signal_in_aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 signal_in_aresetn RST" *)
input wire signal_in_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_in TREADY" *)
output wire signal_in_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_in TDATA" *)
input wire [31 : 0] signal_in_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_in TSTRB" *)
input wire [3 : 0] signal_in_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_in TLAST" *)
input wire signal_in_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_in TVALID" *)
input wire signal_in_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_out TVALID" *)
output wire signal_out_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_out TDATA" *)
output wire [31 : 0] signal_out_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_out TSTRB" *)
output wire [3 : 0] signal_out_tstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_out TLAST" *)
output wire signal_out_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_out TREADY" *)
input wire signal_out_tready;

  geralds_decimator_v1_0 #(
    .CLK_TO_TARGET_FRQ_RATIO(2273),
    .COUNTER_WIDTH(32),
    .C_signal_in_TDATA_WIDTH(32),
    .C_signal_out_TDATA_WIDTH(32),
    .C_signal_out_START_COUNT(32),
    .FFT_SIZE(10)
  ) inst (
    .signal_in_aclk(signal_in_aclk),
    .signal_in_aresetn(signal_in_aresetn),
    .signal_in_tready(signal_in_tready),
    .signal_in_tdata(signal_in_tdata),
    .signal_in_tstrb(signal_in_tstrb),
    .signal_in_tlast(signal_in_tlast),
    .signal_in_tvalid(signal_in_tvalid),
    .signal_out_tvalid(signal_out_tvalid),
    .signal_out_tdata(signal_out_tdata),
    .signal_out_tstrb(signal_out_tstrb),
    .signal_out_tlast(signal_out_tlast),
    .signal_out_tready(signal_out_tready)
  );
endmodule

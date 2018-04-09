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


// IP VLNV: user.org:user:geralds_fft:1.0
// IP Revision: 1

(* X_CORE_INFO = "design_1_wrapper,Vivado 2017.2" *)
(* CHECK_LICENSE_TYPE = "design_1_geralds_fft_0_0,design_1_wrapper,{}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_geralds_fft_0_0 (
  M_AXIS_RESULT_tdata,
  M_AXIS_RESULT_tlast,
  M_AXIS_RESULT_tready,
  M_AXIS_RESULT_tuser,
  M_AXIS_RESULT_tvalid,
  aclk,
  aresetn,
  event_data_in_channel_halt,
  event_data_out_channel_halt,
  event_frame_started,
  event_status_channel_halt,
  event_tlast_missing,
  event_tlast_unexpected,
  s_axis_data,
  s_axis_last,
  s_axis_ready,
  s_axis_tvalid
);

(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TDATA" *)
output wire [31 : 0] M_AXIS_RESULT_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TLAST" *)
output wire M_AXIS_RESULT_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TREADY" *)
input wire M_AXIS_RESULT_tready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TUSER" *)
output wire [0 : 0] M_AXIS_RESULT_tuser;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_RESULT TVALID" *)
output wire M_AXIS_RESULT_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;
output wire event_data_in_channel_halt;
output wire event_data_out_channel_halt;
output wire event_frame_started;
output wire event_status_channel_halt;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 event_missing TLAST" *)
output wire event_tlast_missing;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 event_unexpected TLAST" *)
output wire event_tlast_unexpected;
input wire [11 : 0] s_axis_data;
input wire s_axis_last;
output wire s_axis_ready;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *)
input wire s_axis_tvalid;

  design_1_wrapper inst (
    .M_AXIS_RESULT_tdata(M_AXIS_RESULT_tdata),
    .M_AXIS_RESULT_tlast(M_AXIS_RESULT_tlast),
    .M_AXIS_RESULT_tready(M_AXIS_RESULT_tready),
    .M_AXIS_RESULT_tuser(M_AXIS_RESULT_tuser),
    .M_AXIS_RESULT_tvalid(M_AXIS_RESULT_tvalid),
    .aclk(aclk),
    .aresetn(aresetn),
    .event_data_in_channel_halt(event_data_in_channel_halt),
    .event_data_out_channel_halt(event_data_out_channel_halt),
    .event_frame_started(event_frame_started),
    .event_status_channel_halt(event_status_channel_halt),
    .event_tlast_missing(event_tlast_missing),
    .event_tlast_unexpected(event_tlast_unexpected),
    .s_axis_data(s_axis_data),
    .s_axis_last(s_axis_last),
    .s_axis_ready(s_axis_ready),
    .s_axis_tvalid(s_axis_tvalid)
  );
endmodule

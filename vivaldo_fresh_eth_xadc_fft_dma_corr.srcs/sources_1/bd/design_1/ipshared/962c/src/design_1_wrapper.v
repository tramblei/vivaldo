//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Mon Mar 19 11:28:19 2018
//Host        : ug73 running 64-bit Debian GNU/Linux 9.4 (stretch)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (M_AXIS_RESULT_tdata,
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
    s_axis_tvalid);
  output [31:0]M_AXIS_RESULT_tdata;
  output M_AXIS_RESULT_tlast;
  input M_AXIS_RESULT_tready;
  output [0:0]M_AXIS_RESULT_tuser;
  output M_AXIS_RESULT_tvalid;
  input aclk;
  input aresetn;
  output event_data_in_channel_halt;
  output event_data_out_channel_halt;
  output event_frame_started;
  output event_status_channel_halt;
  output event_tlast_missing;
  output event_tlast_unexpected;
  input [11:0]s_axis_data;
  input s_axis_last;
  output s_axis_ready;
  input s_axis_tvalid;

  wire [31:0]M_AXIS_RESULT_tdata;
  wire M_AXIS_RESULT_tlast;
  wire M_AXIS_RESULT_tready;
  wire [0:0]M_AXIS_RESULT_tuser;
  wire M_AXIS_RESULT_tvalid;
  wire aclk;
  wire aresetn;
  wire event_data_in_channel_halt;
  wire event_data_out_channel_halt;
  wire event_frame_started;
  wire event_status_channel_halt;
  wire event_tlast_missing;
  wire event_tlast_unexpected;
  wire [11:0]s_axis_data;
  wire s_axis_last;
  wire s_axis_ready;
  wire s_axis_tvalid;

  design_1 design_1_i
       (.M_AXIS_RESULT_tdata(M_AXIS_RESULT_tdata),
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
        .s_axis_tvalid(s_axis_tvalid));
endmodule

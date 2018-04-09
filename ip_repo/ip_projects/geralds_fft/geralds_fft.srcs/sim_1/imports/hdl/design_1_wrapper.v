//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Sun Feb 11 16:34:07 2018
//Host        : ug241 running 64-bit Debian GNU/Linux 9.3 (stretch)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (M_AXIS_RESULT_tdata,
    M_AXIS_RESULT_tready,
    M_AXIS_RESULT_tvalid,
    aclk,
    config_ready,
    fft_last,
    fft_valid,
    int_in,
    int_in_last,
    int_in_ready,
    s_axis_a_tvalid);
  output [15:0]M_AXIS_RESULT_tdata;
  input M_AXIS_RESULT_tready;
  output M_AXIS_RESULT_tvalid;
  input aclk;
  output config_ready;
  output fft_last;
  output fft_valid;
  input [11:0]int_in;
  input int_in_last;
  output int_in_ready;
  input s_axis_a_tvalid;

  wire [15:0]M_AXIS_RESULT_tdata;
  wire M_AXIS_RESULT_tready;
  wire M_AXIS_RESULT_tvalid;
  wire aclk;
  wire config_ready;
  wire fft_last;
  wire fft_out_ready;
  wire fft_valid;
  wire [11:0]int_in;
  wire int_in_last;
  wire int_in_ready;
  wire mult_0_ready;
  wire mult_0_ready1;
  wire mult_1_ready;
  wire mult_1_ready1;
  wire s_axis_a_tvalid;

  assign fft_out_ready = mult_0_ready & mult_1_ready1 & mult_1_ready & mult_0_ready1;
  design_1 design_1_i
       (.M_AXIS_RESULT_tdata(M_AXIS_RESULT_tdata),
        .M_AXIS_RESULT_tready(M_AXIS_RESULT_tready),
        .M_AXIS_RESULT_tvalid(M_AXIS_RESULT_tvalid),
        .aclk(aclk),
        .config_ready(config_ready),
        .fft_last(fft_last),
        .fft_out_ready(fft_out_ready),
        .fft_valid(fft_valid),
        .int_in(int_in),
        .int_in_last(int_in_last),
        .int_in_ready(int_in_ready),
        .mult_0_ready(mult_0_ready),
        .mult_0_ready1(mult_0_ready1),
        .mult_1_ready(mult_1_ready),
        .mult_1_ready1(mult_1_ready1),
        .s_axis_a_tvalid(s_axis_a_tvalid));
endmodule

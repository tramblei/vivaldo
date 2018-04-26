// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Fri Mar 16 19:19:55 2018
// Host        : ug51 running 64-bit Debian GNU/Linux 9.4 (stretch)
// Command     : write_verilog -force -mode synth_stub -rename_top corr_wrapper_div_gen_0_0 -prefix
//               corr_wrapper_div_gen_0_0_ corr_wrapper_div_gen_0_0_stub.v
// Design      : corr_wrapper_div_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "div_gen_v5_1_11,Vivado 2017.2" *)
module corr_wrapper_div_gen_0_0(aclk, s_axis_divisor_tvalid, 
  s_axis_divisor_tdata, s_axis_dividend_tvalid, s_axis_dividend_tdata, 
  m_axis_dout_tvalid, m_axis_dout_tuser, m_axis_dout_tdata)
/* synthesis syn_black_box black_box_pad_pin="aclk,s_axis_divisor_tvalid,s_axis_divisor_tdata[63:0],s_axis_dividend_tvalid,s_axis_dividend_tdata[63:0],m_axis_dout_tvalid,m_axis_dout_tuser[0:0],m_axis_dout_tdata[127:0]" */;
  input aclk;
  input s_axis_divisor_tvalid;
  input [63:0]s_axis_divisor_tdata;
  input s_axis_dividend_tvalid;
  input [63:0]s_axis_dividend_tdata;
  output m_axis_dout_tvalid;
  output [0:0]m_axis_dout_tuser;
  output [127:0]m_axis_dout_tdata;
endmodule

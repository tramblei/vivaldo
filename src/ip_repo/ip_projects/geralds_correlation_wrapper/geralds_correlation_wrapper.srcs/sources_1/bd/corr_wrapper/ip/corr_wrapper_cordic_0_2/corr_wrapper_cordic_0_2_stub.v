// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Sat Mar 17 16:36:01 2018
// Host        : ug75 running 64-bit Debian GNU/Linux 9.4 (stretch)
// Command     : write_verilog -force -mode synth_stub
//               /nfs/ug/homes-1/t/tramblei/vivaldo/ip_repo/ip_projects/geralds_correlation_wrapper/geralds_correlation_wrapper.srcs/sources_1/bd/corr_wrapper/ip/corr_wrapper_cordic_0_2/corr_wrapper_cordic_0_2_stub.v
// Design      : corr_wrapper_cordic_0_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "cordic_v6_0_11,Vivado 2017.2" *)
module corr_wrapper_cordic_0_2(aclk, s_axis_cartesian_tvalid, 
  s_axis_cartesian_tready, s_axis_cartesian_tdata, m_axis_dout_tvalid, m_axis_dout_tdata)
/* synthesis syn_black_box black_box_pad_pin="aclk,s_axis_cartesian_tvalid,s_axis_cartesian_tready,s_axis_cartesian_tdata[47:0],m_axis_dout_tvalid,m_axis_dout_tdata[31:0]" */;
  input aclk;
  input s_axis_cartesian_tvalid;
  output s_axis_cartesian_tready;
  input [47:0]s_axis_cartesian_tdata;
  output m_axis_dout_tvalid;
  output [31:0]m_axis_dout_tdata;
endmodule

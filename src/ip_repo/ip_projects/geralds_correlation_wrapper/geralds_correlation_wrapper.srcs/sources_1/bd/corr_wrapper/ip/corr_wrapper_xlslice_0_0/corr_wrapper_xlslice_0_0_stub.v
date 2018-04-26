// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Sun Mar  4 15:00:30 2018
// Host        : jcalhome running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode synth_stub -rename_top corr_wrapper_xlslice_0_0 -prefix
//               corr_wrapper_xlslice_0_0_ corr_wrapper_xlslice_0_0_stub.v
// Design      : corr_wrapper_xlslice_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlslice_v1_0_1_xlslice,Vivado 2017.2" *)
module corr_wrapper_xlslice_0_0(Din, Dout)
/* synthesis syn_black_box black_box_pad_pin="Din[127:0],Dout[31:0]" */;
  input [127:0]Din;
  output [31:0]Dout;
endmodule
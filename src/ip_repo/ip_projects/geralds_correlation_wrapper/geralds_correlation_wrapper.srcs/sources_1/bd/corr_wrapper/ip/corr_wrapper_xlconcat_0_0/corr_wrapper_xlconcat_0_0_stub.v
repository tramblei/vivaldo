// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Sat Mar 17 16:24:19 2018
// Host        : ug75 running 64-bit Debian GNU/Linux 9.4 (stretch)
// Command     : write_verilog -force -mode synth_stub
//               /nfs/ug/homes-1/t/tramblei/vivaldo/ip_repo/ip_projects/geralds_correlation_wrapper/geralds_correlation_wrapper.srcs/sources_1/bd/corr_wrapper/ip/corr_wrapper_xlconcat_0_0/corr_wrapper_xlconcat_0_0_stub.v
// Design      : corr_wrapper_xlconcat_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlconcat_v2_1_1_xlconcat,Vivado 2017.2" *)
module corr_wrapper_xlconcat_0_0(In0, In1, In2, dout)
/* synthesis syn_black_box black_box_pad_pin="In0[7:0],In1[47:0],In2[7:0],dout[63:0]" */;
  input [7:0]In0;
  input [47:0]In1;
  input [7:0]In2;
  output [63:0]dout;
endmodule

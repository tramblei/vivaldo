// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Sun Feb 11 15:35:58 2018
// Host        : jcalhome running 64-bit Ubuntu 16.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/joshua/engsci/git_repos/ECE532/audio_in_out/xadc_input_and_audio_out/xadc_input_and_audio_out.srcs/sources_1/bd/xadc_axi_to_audio_out/ip/xadc_axi_to_audio_out_xlconstant_0_0/xadc_axi_to_audio_out_xlconstant_0_0_stub.v
// Design      : xadc_axi_to_audio_out_xlconstant_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xlconstant_v1_1_3_xlconstant,Vivado 2017.2" *)
module xadc_axi_to_audio_out_xlconstant_0_0(dout)
/* synthesis syn_black_box black_box_pad_pin="dout[0:0]" */;
  output [0:0]dout;
endmodule

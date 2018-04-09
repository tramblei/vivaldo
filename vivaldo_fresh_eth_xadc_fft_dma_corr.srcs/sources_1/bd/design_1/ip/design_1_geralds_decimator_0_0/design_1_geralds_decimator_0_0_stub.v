// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Sat Mar 17 20:05:10 2018
// Host        : ug75 running 64-bit Debian GNU/Linux 9.4 (stretch)
// Command     : write_verilog -force -mode synth_stub
//               /nfs/ug/homes-1/t/tramblei/vivaldo_fresh_eth_xadc_fft_dma_corr/vivaldo_fresh_eth_xadc_fft_dma_corr.srcs/sources_1/bd/design_1/ip/design_1_geralds_decimator_0_0/design_1_geralds_decimator_0_0_stub.v
// Design      : design_1_geralds_decimator_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "geralds_decimator_v1_0,Vivado 2017.2" *)
module design_1_geralds_decimator_0_0(signal_in_aclk, signal_in_aresetn, 
  signal_in_tready, signal_in_tdata, signal_in_tstrb, signal_in_tlast, signal_in_tvalid, 
  signal_out_tvalid, signal_out_tdata, signal_out_tstrb, signal_out_tlast, 
  signal_out_tready)
/* synthesis syn_black_box black_box_pad_pin="signal_in_aclk,signal_in_aresetn,signal_in_tready,signal_in_tdata[31:0],signal_in_tstrb[3:0],signal_in_tlast,signal_in_tvalid,signal_out_tvalid,signal_out_tdata[31:0],signal_out_tstrb[3:0],signal_out_tlast,signal_out_tready" */;
  input signal_in_aclk;
  input signal_in_aresetn;
  output signal_in_tready;
  input [31:0]signal_in_tdata;
  input [3:0]signal_in_tstrb;
  input signal_in_tlast;
  input signal_in_tvalid;
  output signal_out_tvalid;
  output [31:0]signal_out_tdata;
  output [3:0]signal_out_tstrb;
  output signal_out_tlast;
  input signal_out_tready;
endmodule

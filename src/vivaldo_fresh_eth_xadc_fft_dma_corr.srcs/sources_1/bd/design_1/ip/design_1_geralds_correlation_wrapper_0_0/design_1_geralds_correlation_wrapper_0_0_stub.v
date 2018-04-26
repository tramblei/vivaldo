// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Tue Mar 20 13:13:33 2018
// Host        : ug69 running 64-bit Debian GNU/Linux 9.4 (stretch)
// Command     : write_verilog -force -mode synth_stub
//               /nfs/ug/homes-1/t/tramblei/vivaldo_fresh_eth_xadc_fft_dma_corr/vivaldo_fresh_eth_xadc_fft_dma_corr.srcs/sources_1/bd/design_1/ip/design_1_geralds_correlation_wrapper_0_0/design_1_geralds_correlation_wrapper_0_0_stub.v
// Design      : design_1_geralds_correlation_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "corr_wrapper_wrapper,Vivado 2017.2" *)
module design_1_geralds_correlation_wrapper_0_0(aresetn, correlation_val_axi_araddr, 
  correlation_val_axi_arprot, correlation_val_axi_arready, correlation_val_axi_arvalid, 
  correlation_val_axi_awaddr, correlation_val_axi_awprot, correlation_val_axi_awready, 
  correlation_val_axi_awvalid, correlation_val_axi_bready, correlation_val_axi_bresp, 
  correlation_val_axi_bvalid, correlation_val_axi_rdata, correlation_val_axi_rready, 
  correlation_val_axi_rresp, correlation_val_axi_rvalid, correlation_val_axi_wdata, 
  correlation_val_axi_wready, correlation_val_axi_wstrb, correlation_val_axi_wvalid, 
  sclk, sig1_axis_tdata, sig1_axis_tlast, sig1_axis_tready, sig1_axis_tstrb, 
  sig1_axis_tvalid, sig2_axis_tdata, sig2_axis_tlast, sig2_axis_tready, sig2_axis_tstrb, 
  sig2_axis_tvalid)
/* synthesis syn_black_box black_box_pad_pin="aresetn,correlation_val_axi_araddr[3:0],correlation_val_axi_arprot[2:0],correlation_val_axi_arready,correlation_val_axi_arvalid,correlation_val_axi_awaddr[3:0],correlation_val_axi_awprot[2:0],correlation_val_axi_awready,correlation_val_axi_awvalid,correlation_val_axi_bready,correlation_val_axi_bresp[1:0],correlation_val_axi_bvalid,correlation_val_axi_rdata[31:0],correlation_val_axi_rready,correlation_val_axi_rresp[1:0],correlation_val_axi_rvalid,correlation_val_axi_wdata[31:0],correlation_val_axi_wready,correlation_val_axi_wstrb[3:0],correlation_val_axi_wvalid,sclk,sig1_axis_tdata[15:0],sig1_axis_tlast,sig1_axis_tready,sig1_axis_tstrb[1:0],sig1_axis_tvalid,sig2_axis_tdata[15:0],sig2_axis_tlast,sig2_axis_tready,sig2_axis_tstrb[1:0],sig2_axis_tvalid" */;
  input aresetn;
  input [3:0]correlation_val_axi_araddr;
  input [2:0]correlation_val_axi_arprot;
  output correlation_val_axi_arready;
  input correlation_val_axi_arvalid;
  input [3:0]correlation_val_axi_awaddr;
  input [2:0]correlation_val_axi_awprot;
  output correlation_val_axi_awready;
  input correlation_val_axi_awvalid;
  input correlation_val_axi_bready;
  output [1:0]correlation_val_axi_bresp;
  output correlation_val_axi_bvalid;
  output [31:0]correlation_val_axi_rdata;
  input correlation_val_axi_rready;
  output [1:0]correlation_val_axi_rresp;
  output correlation_val_axi_rvalid;
  input [31:0]correlation_val_axi_wdata;
  output correlation_val_axi_wready;
  input [3:0]correlation_val_axi_wstrb;
  input correlation_val_axi_wvalid;
  input sclk;
  input [15:0]sig1_axis_tdata;
  input sig1_axis_tlast;
  output sig1_axis_tready;
  input [1:0]sig1_axis_tstrb;
  input sig1_axis_tvalid;
  input [15:0]sig2_axis_tdata;
  input sig2_axis_tlast;
  output sig2_axis_tready;
  input [1:0]sig2_axis_tstrb;
  input sig2_axis_tvalid;
endmodule

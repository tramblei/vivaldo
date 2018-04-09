// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Tue Mar 20 12:57:25 2018
// Host        : ug69 running 64-bit Debian GNU/Linux 9.4 (stretch)
// Command     : write_verilog -force -mode synth_stub
//               /nfs/ug/homes-1/t/tramblei/vivaldo/ip_repo/ip_projects/geralds_correlation_wrapper/geralds_correlation_wrapper.srcs/sources_1/bd/corr_wrapper/ip/corr_wrapper_projection_correlation_calculator_v1_0_0_1/corr_wrapper_projection_correlation_calculator_v1_0_0_1_stub.v
// Design      : corr_wrapper_projection_correlation_calculator_v1_0_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "projection_correlation_calculator_v1_0,Vivado 2017.2" *)
module corr_wrapper_projection_correlation_calculator_v1_0_0_1(signal_fft_axis_aclk, 
  signal_fft_axis_aresetn, signal_fft_axis_tready, signal_fft_axis_tdata, 
  signal_fft_axis_tstrb, signal_fft_axis_tlast, signal_fft_axis_tvalid, 
  golden_fft_axis_aclk, golden_fft_axis_aresetn, golden_fft_axis_tready, 
  golden_fft_axis_tdata, golden_fft_axis_tstrb, golden_fft_axis_tlast, 
  golden_fft_axis_tvalid, correlation_out_axi_aclk, correlation_out_axi_aresetn, 
  correlation_out_axi_awaddr, correlation_out_axi_awprot, correlation_out_axi_awvalid, 
  correlation_out_axi_awready, correlation_out_axi_wdata, correlation_out_axi_wstrb, 
  correlation_out_axi_wvalid, correlation_out_axi_wready, correlation_out_axi_bresp, 
  correlation_out_axi_bvalid, correlation_out_axi_bready, correlation_out_axi_araddr, 
  correlation_out_axi_arprot, correlation_out_axi_arvalid, correlation_out_axi_arready, 
  correlation_out_axi_rdata, correlation_out_axi_rresp, correlation_out_axi_rvalid, 
  correlation_out_axi_rready, correlation_out_probe, correlation_normalized, 
  correlation_normalized_valid, mag1, mag2, dot_product, dot_product_valid, 
  dot_product_ready)
/* synthesis syn_black_box black_box_pad_pin="signal_fft_axis_aclk,signal_fft_axis_aresetn,signal_fft_axis_tready,signal_fft_axis_tdata[15:0],signal_fft_axis_tstrb[1:0],signal_fft_axis_tlast,signal_fft_axis_tvalid,golden_fft_axis_aclk,golden_fft_axis_aresetn,golden_fft_axis_tready,golden_fft_axis_tdata[15:0],golden_fft_axis_tstrb[1:0],golden_fft_axis_tlast,golden_fft_axis_tvalid,correlation_out_axi_aclk,correlation_out_axi_aresetn,correlation_out_axi_awaddr[3:0],correlation_out_axi_awprot[2:0],correlation_out_axi_awvalid,correlation_out_axi_awready,correlation_out_axi_wdata[31:0],correlation_out_axi_wstrb[3:0],correlation_out_axi_wvalid,correlation_out_axi_wready,correlation_out_axi_bresp[1:0],correlation_out_axi_bvalid,correlation_out_axi_bready,correlation_out_axi_araddr[3:0],correlation_out_axi_arprot[2:0],correlation_out_axi_arvalid,correlation_out_axi_arready,correlation_out_axi_rdata[31:0],correlation_out_axi_rresp[1:0],correlation_out_axi_rvalid,correlation_out_axi_rready,correlation_out_probe[31:0],correlation_normalized[31:0],correlation_normalized_valid,mag1[47:0],mag2[47:0],dot_product[47:0],dot_product_valid,dot_product_ready" */;
  input signal_fft_axis_aclk;
  input signal_fft_axis_aresetn;
  output signal_fft_axis_tready;
  input [15:0]signal_fft_axis_tdata;
  input [1:0]signal_fft_axis_tstrb;
  input signal_fft_axis_tlast;
  input signal_fft_axis_tvalid;
  input golden_fft_axis_aclk;
  input golden_fft_axis_aresetn;
  output golden_fft_axis_tready;
  input [15:0]golden_fft_axis_tdata;
  input [1:0]golden_fft_axis_tstrb;
  input golden_fft_axis_tlast;
  input golden_fft_axis_tvalid;
  input correlation_out_axi_aclk;
  input correlation_out_axi_aresetn;
  input [3:0]correlation_out_axi_awaddr;
  input [2:0]correlation_out_axi_awprot;
  input correlation_out_axi_awvalid;
  output correlation_out_axi_awready;
  input [31:0]correlation_out_axi_wdata;
  input [3:0]correlation_out_axi_wstrb;
  input correlation_out_axi_wvalid;
  output correlation_out_axi_wready;
  output [1:0]correlation_out_axi_bresp;
  output correlation_out_axi_bvalid;
  input correlation_out_axi_bready;
  input [3:0]correlation_out_axi_araddr;
  input [2:0]correlation_out_axi_arprot;
  input correlation_out_axi_arvalid;
  output correlation_out_axi_arready;
  output [31:0]correlation_out_axi_rdata;
  output [1:0]correlation_out_axi_rresp;
  output correlation_out_axi_rvalid;
  input correlation_out_axi_rready;
  output [31:0]correlation_out_probe;
  input [31:0]correlation_normalized;
  input correlation_normalized_valid;
  output [47:0]mag1;
  output [47:0]mag2;
  output [47:0]dot_product;
  output dot_product_valid;
  input dot_product_ready;
endmodule

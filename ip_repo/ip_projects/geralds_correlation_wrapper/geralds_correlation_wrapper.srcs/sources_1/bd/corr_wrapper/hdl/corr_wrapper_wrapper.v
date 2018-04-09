//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Tue Mar 20 12:56:57 2018
//Host        : ug69 running 64-bit Debian GNU/Linux 9.4 (stretch)
//Command     : generate_target corr_wrapper_wrapper.bd
//Design      : corr_wrapper_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module corr_wrapper_wrapper
   (aresetn,
    correlation_val_axi_araddr,
    correlation_val_axi_arprot,
    correlation_val_axi_arready,
    correlation_val_axi_arvalid,
    correlation_val_axi_awaddr,
    correlation_val_axi_awprot,
    correlation_val_axi_awready,
    correlation_val_axi_awvalid,
    correlation_val_axi_bready,
    correlation_val_axi_bresp,
    correlation_val_axi_bvalid,
    correlation_val_axi_rdata,
    correlation_val_axi_rready,
    correlation_val_axi_rresp,
    correlation_val_axi_rvalid,
    correlation_val_axi_wdata,
    correlation_val_axi_wready,
    correlation_val_axi_wstrb,
    correlation_val_axi_wvalid,
    sclk,
    sig1_axis_tdata,
    sig1_axis_tlast,
    sig1_axis_tready,
    sig1_axis_tstrb,
    sig1_axis_tvalid,
    sig2_axis_tdata,
    sig2_axis_tlast,
    sig2_axis_tready,
    sig2_axis_tstrb,
    sig2_axis_tvalid);
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

  wire aresetn;
  wire [3:0]correlation_val_axi_araddr;
  wire [2:0]correlation_val_axi_arprot;
  wire correlation_val_axi_arready;
  wire correlation_val_axi_arvalid;
  wire [3:0]correlation_val_axi_awaddr;
  wire [2:0]correlation_val_axi_awprot;
  wire correlation_val_axi_awready;
  wire correlation_val_axi_awvalid;
  wire correlation_val_axi_bready;
  wire [1:0]correlation_val_axi_bresp;
  wire correlation_val_axi_bvalid;
  wire [31:0]correlation_val_axi_rdata;
  wire correlation_val_axi_rready;
  wire [1:0]correlation_val_axi_rresp;
  wire correlation_val_axi_rvalid;
  wire [31:0]correlation_val_axi_wdata;
  wire correlation_val_axi_wready;
  wire [3:0]correlation_val_axi_wstrb;
  wire correlation_val_axi_wvalid;
  wire sclk;
  wire [15:0]sig1_axis_tdata;
  wire sig1_axis_tlast;
  wire sig1_axis_tready;
  wire [1:0]sig1_axis_tstrb;
  wire sig1_axis_tvalid;
  wire [15:0]sig2_axis_tdata;
  wire sig2_axis_tlast;
  wire sig2_axis_tready;
  wire [1:0]sig2_axis_tstrb;
  wire sig2_axis_tvalid;

  corr_wrapper corr_wrapper_i
       (.aresetn(aresetn),
        .correlation_val_axi_araddr(correlation_val_axi_araddr),
        .correlation_val_axi_arprot(correlation_val_axi_arprot),
        .correlation_val_axi_arready(correlation_val_axi_arready),
        .correlation_val_axi_arvalid(correlation_val_axi_arvalid),
        .correlation_val_axi_awaddr(correlation_val_axi_awaddr),
        .correlation_val_axi_awprot(correlation_val_axi_awprot),
        .correlation_val_axi_awready(correlation_val_axi_awready),
        .correlation_val_axi_awvalid(correlation_val_axi_awvalid),
        .correlation_val_axi_bready(correlation_val_axi_bready),
        .correlation_val_axi_bresp(correlation_val_axi_bresp),
        .correlation_val_axi_bvalid(correlation_val_axi_bvalid),
        .correlation_val_axi_rdata(correlation_val_axi_rdata),
        .correlation_val_axi_rready(correlation_val_axi_rready),
        .correlation_val_axi_rresp(correlation_val_axi_rresp),
        .correlation_val_axi_rvalid(correlation_val_axi_rvalid),
        .correlation_val_axi_wdata(correlation_val_axi_wdata),
        .correlation_val_axi_wready(correlation_val_axi_wready),
        .correlation_val_axi_wstrb(correlation_val_axi_wstrb),
        .correlation_val_axi_wvalid(correlation_val_axi_wvalid),
        .sclk(sclk),
        .sig1_axis_tdata(sig1_axis_tdata),
        .sig1_axis_tlast(sig1_axis_tlast),
        .sig1_axis_tready(sig1_axis_tready),
        .sig1_axis_tstrb(sig1_axis_tstrb),
        .sig1_axis_tvalid(sig1_axis_tvalid),
        .sig2_axis_tdata(sig2_axis_tdata),
        .sig2_axis_tlast(sig2_axis_tlast),
        .sig2_axis_tready(sig2_axis_tready),
        .sig2_axis_tstrb(sig2_axis_tstrb),
        .sig2_axis_tvalid(sig2_axis_tvalid));
endmodule

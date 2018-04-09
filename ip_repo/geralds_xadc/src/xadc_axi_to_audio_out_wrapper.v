//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Thu Mar  8 16:18:03 2018
//Host        : ug53 running 64-bit Debian GNU/Linux 9.3 (stretch)
//Command     : generate_target xadc_axi_to_audio_out_wrapper.bd
//Design      : xadc_axi_to_audio_out_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module xadc_axi_to_audio_out_wrapper
   (M_AXIS_tdata,
    M_AXIS_tid,
    M_AXIS_tready,
    M_AXIS_tvalid,
    channel_out,
    s_axi_aclk,
    s_axi_aresetn,
    s_axi_lite_araddr,
    s_axi_lite_arready,
    s_axi_lite_arvalid,
    s_axi_lite_awaddr,
    s_axi_lite_awready,
    s_axi_lite_awvalid,
    s_axi_lite_bready,
    s_axi_lite_bresp,
    s_axi_lite_bvalid,
    s_axi_lite_rdata,
    s_axi_lite_rready,
    s_axi_lite_rresp,
    s_axi_lite_rvalid,
    s_axi_lite_wdata,
    s_axi_lite_wready,
    s_axi_lite_wstrb,
    s_axi_lite_wvalid,
    s_axis_aclk,
    temp_out,
    vauxn3,
    vauxp3);
  output [15:0]M_AXIS_tdata;
  output [4:0]M_AXIS_tid;
  input M_AXIS_tready;
  output M_AXIS_tvalid;
  output [4:0]channel_out;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [10:0]s_axi_lite_araddr;
  output s_axi_lite_arready;
  input s_axi_lite_arvalid;
  input [10:0]s_axi_lite_awaddr;
  output s_axi_lite_awready;
  input s_axi_lite_awvalid;
  input s_axi_lite_bready;
  output [1:0]s_axi_lite_bresp;
  output s_axi_lite_bvalid;
  output [31:0]s_axi_lite_rdata;
  input s_axi_lite_rready;
  output [1:0]s_axi_lite_rresp;
  output s_axi_lite_rvalid;
  input [31:0]s_axi_lite_wdata;
  output s_axi_lite_wready;
  input [3:0]s_axi_lite_wstrb;
  input s_axi_lite_wvalid;
  input s_axis_aclk;
  output [11:0]temp_out;
  input vauxn3;
  input vauxp3;

  wire [15:0]M_AXIS_tdata;
  wire [4:0]M_AXIS_tid;
  wire M_AXIS_tready;
  wire M_AXIS_tvalid;
  wire [4:0]channel_out;
  wire s_axi_aclk;
  wire s_axi_aresetn;
  wire [10:0]s_axi_lite_araddr;
  wire s_axi_lite_arready;
  wire s_axi_lite_arvalid;
  wire [10:0]s_axi_lite_awaddr;
  wire s_axi_lite_awready;
  wire s_axi_lite_awvalid;
  wire s_axi_lite_bready;
  wire [1:0]s_axi_lite_bresp;
  wire s_axi_lite_bvalid;
  wire [31:0]s_axi_lite_rdata;
  wire s_axi_lite_rready;
  wire [1:0]s_axi_lite_rresp;
  wire s_axi_lite_rvalid;
  wire [31:0]s_axi_lite_wdata;
  wire s_axi_lite_wready;
  wire [3:0]s_axi_lite_wstrb;
  wire s_axi_lite_wvalid;
  wire s_axis_aclk;
  wire [11:0]temp_out;
  wire vauxn3;
  wire vauxp3;

  xadc_axi_to_audio_out xadc_axi_to_audio_out_i
       (.M_AXIS_tdata(M_AXIS_tdata),
        .M_AXIS_tid(M_AXIS_tid),
        .M_AXIS_tready(M_AXIS_tready),
        .M_AXIS_tvalid(M_AXIS_tvalid),
        .channel_out(channel_out),
        .s_axi_aclk(s_axi_aclk),
        .s_axi_aresetn(s_axi_aresetn),
        .s_axi_lite_araddr(s_axi_lite_araddr),
        .s_axi_lite_arready(s_axi_lite_arready),
        .s_axi_lite_arvalid(s_axi_lite_arvalid),
        .s_axi_lite_awaddr(s_axi_lite_awaddr),
        .s_axi_lite_awready(s_axi_lite_awready),
        .s_axi_lite_awvalid(s_axi_lite_awvalid),
        .s_axi_lite_bready(s_axi_lite_bready),
        .s_axi_lite_bresp(s_axi_lite_bresp),
        .s_axi_lite_bvalid(s_axi_lite_bvalid),
        .s_axi_lite_rdata(s_axi_lite_rdata),
        .s_axi_lite_rready(s_axi_lite_rready),
        .s_axi_lite_rresp(s_axi_lite_rresp),
        .s_axi_lite_rvalid(s_axi_lite_rvalid),
        .s_axi_lite_wdata(s_axi_lite_wdata),
        .s_axi_lite_wready(s_axi_lite_wready),
        .s_axi_lite_wstrb(s_axi_lite_wstrb),
        .s_axi_lite_wvalid(s_axi_lite_wvalid),
        .s_axis_aclk(s_axis_aclk),
        .temp_out(temp_out),
        .vauxn3(vauxn3),
        .vauxp3(vauxp3));
endmodule

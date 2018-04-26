//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Thu Mar  8 16:18:03 2018
//Host        : ug53 running 64-bit Debian GNU/Linux 9.3 (stretch)
//Command     : generate_target xadc_axi_to_audio_out.bd
//Design      : xadc_axi_to_audio_out
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "xadc_axi_to_audio_out,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=xadc_axi_to_audio_out,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=7,da_board_cnt=5,da_clkrst_cnt=10,da_mb_cnt=2,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "xadc_axi_to_audio_out.hwdef" *) 
module xadc_axi_to_audio_out
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

  wire s_axi_aclk_1;
  wire s_axi_aresetn_1;
  wire [10:0]s_axi_lite_1_ARADDR;
  wire s_axi_lite_1_ARREADY;
  wire s_axi_lite_1_ARVALID;
  wire [10:0]s_axi_lite_1_AWADDR;
  wire s_axi_lite_1_AWREADY;
  wire s_axi_lite_1_AWVALID;
  wire s_axi_lite_1_BREADY;
  wire [1:0]s_axi_lite_1_BRESP;
  wire s_axi_lite_1_BVALID;
  wire [31:0]s_axi_lite_1_RDATA;
  wire s_axi_lite_1_RREADY;
  wire [1:0]s_axi_lite_1_RRESP;
  wire s_axi_lite_1_RVALID;
  wire [31:0]s_axi_lite_1_WDATA;
  wire s_axi_lite_1_WREADY;
  wire [3:0]s_axi_lite_1_WSTRB;
  wire s_axi_lite_1_WVALID;
  wire s_axis_aclk_1;
  wire vauxn3_1;
  wire vauxp3_1;
  wire [15:0]xadc_wiz_0_M_AXIS_TDATA;
  wire [4:0]xadc_wiz_0_M_AXIS_TID;
  wire xadc_wiz_0_M_AXIS_TREADY;
  wire xadc_wiz_0_M_AXIS_TVALID;
  wire [4:0]xadc_wiz_0_channel_out;
  wire [11:0]xadc_wiz_0_temp_out;
  wire [0:0]xlconstant_0_dout;

  assign M_AXIS_tdata[15:0] = xadc_wiz_0_M_AXIS_TDATA;
  assign M_AXIS_tid[4:0] = xadc_wiz_0_M_AXIS_TID;
  assign M_AXIS_tvalid = xadc_wiz_0_M_AXIS_TVALID;
  assign channel_out[4:0] = xadc_wiz_0_channel_out;
  assign s_axi_aclk_1 = s_axi_aclk;
  assign s_axi_aresetn_1 = s_axi_aresetn;
  assign s_axi_lite_1_ARADDR = s_axi_lite_araddr[10:0];
  assign s_axi_lite_1_ARVALID = s_axi_lite_arvalid;
  assign s_axi_lite_1_AWADDR = s_axi_lite_awaddr[10:0];
  assign s_axi_lite_1_AWVALID = s_axi_lite_awvalid;
  assign s_axi_lite_1_BREADY = s_axi_lite_bready;
  assign s_axi_lite_1_RREADY = s_axi_lite_rready;
  assign s_axi_lite_1_WDATA = s_axi_lite_wdata[31:0];
  assign s_axi_lite_1_WSTRB = s_axi_lite_wstrb[3:0];
  assign s_axi_lite_1_WVALID = s_axi_lite_wvalid;
  assign s_axi_lite_arready = s_axi_lite_1_ARREADY;
  assign s_axi_lite_awready = s_axi_lite_1_AWREADY;
  assign s_axi_lite_bresp[1:0] = s_axi_lite_1_BRESP;
  assign s_axi_lite_bvalid = s_axi_lite_1_BVALID;
  assign s_axi_lite_rdata[31:0] = s_axi_lite_1_RDATA;
  assign s_axi_lite_rresp[1:0] = s_axi_lite_1_RRESP;
  assign s_axi_lite_rvalid = s_axi_lite_1_RVALID;
  assign s_axi_lite_wready = s_axi_lite_1_WREADY;
  assign s_axis_aclk_1 = s_axis_aclk;
  assign temp_out[11:0] = xadc_wiz_0_temp_out;
  assign vauxn3_1 = vauxn3;
  assign vauxp3_1 = vauxp3;
  assign xadc_wiz_0_M_AXIS_TREADY = M_AXIS_tready;
  xadc_axi_to_audio_out_xadc_wiz_0_2 xadc_wiz_0
       (.channel_out(xadc_wiz_0_channel_out),
        .m_axis_tdata(xadc_wiz_0_M_AXIS_TDATA),
        .m_axis_tid(xadc_wiz_0_M_AXIS_TID),
        .m_axis_tready(xadc_wiz_0_M_AXIS_TREADY),
        .m_axis_tvalid(xadc_wiz_0_M_AXIS_TVALID),
        .s_axi_aclk(s_axi_aclk_1),
        .s_axi_araddr(s_axi_lite_1_ARADDR),
        .s_axi_aresetn(s_axi_aresetn_1),
        .s_axi_arready(s_axi_lite_1_ARREADY),
        .s_axi_arvalid(s_axi_lite_1_ARVALID),
        .s_axi_awaddr(s_axi_lite_1_AWADDR),
        .s_axi_awready(s_axi_lite_1_AWREADY),
        .s_axi_awvalid(s_axi_lite_1_AWVALID),
        .s_axi_bready(s_axi_lite_1_BREADY),
        .s_axi_bresp(s_axi_lite_1_BRESP),
        .s_axi_bvalid(s_axi_lite_1_BVALID),
        .s_axi_rdata(s_axi_lite_1_RDATA),
        .s_axi_rready(s_axi_lite_1_RREADY),
        .s_axi_rresp(s_axi_lite_1_RRESP),
        .s_axi_rvalid(s_axi_lite_1_RVALID),
        .s_axi_wdata(s_axi_lite_1_WDATA),
        .s_axi_wready(s_axi_lite_1_WREADY),
        .s_axi_wstrb(s_axi_lite_1_WSTRB),
        .s_axi_wvalid(s_axi_lite_1_WVALID),
        .s_axis_aclk(s_axis_aclk_1),
        .temp_out(xadc_wiz_0_temp_out),
        .vauxn3(vauxn3_1),
        .vauxp3(vauxp3_1),
        .vn_in(xlconstant_0_dout),
        .vp_in(xlconstant_0_dout));
  xadc_axi_to_audio_out_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule

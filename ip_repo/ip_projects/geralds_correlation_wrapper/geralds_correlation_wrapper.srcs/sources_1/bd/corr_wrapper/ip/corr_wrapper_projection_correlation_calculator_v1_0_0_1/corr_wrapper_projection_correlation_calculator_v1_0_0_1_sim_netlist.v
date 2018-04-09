// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Tue Mar 20 12:57:25 2018
// Host        : ug69 running 64-bit Debian GNU/Linux 9.4 (stretch)
// Command     : write_verilog -force -mode funcsim
//               /nfs/ug/homes-1/t/tramblei/vivaldo/ip_repo/ip_projects/geralds_correlation_wrapper/geralds_correlation_wrapper.srcs/sources_1/bd/corr_wrapper/ip/corr_wrapper_projection_correlation_calculator_v1_0_0_1/corr_wrapper_projection_correlation_calculator_v1_0_0_1_sim_netlist.v
// Design      : corr_wrapper_projection_correlation_calculator_v1_0_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "corr_wrapper_projection_correlation_calculator_v1_0_0_1,projection_correlation_calculator_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "projection_correlation_calculator_v1_0,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module corr_wrapper_projection_correlation_calculator_v1_0_0_1
   (signal_fft_axis_aclk,
    signal_fft_axis_aresetn,
    signal_fft_axis_tready,
    signal_fft_axis_tdata,
    signal_fft_axis_tstrb,
    signal_fft_axis_tlast,
    signal_fft_axis_tvalid,
    golden_fft_axis_aclk,
    golden_fft_axis_aresetn,
    golden_fft_axis_tready,
    golden_fft_axis_tdata,
    golden_fft_axis_tstrb,
    golden_fft_axis_tlast,
    golden_fft_axis_tvalid,
    correlation_out_axi_aclk,
    correlation_out_axi_aresetn,
    correlation_out_axi_awaddr,
    correlation_out_axi_awprot,
    correlation_out_axi_awvalid,
    correlation_out_axi_awready,
    correlation_out_axi_wdata,
    correlation_out_axi_wstrb,
    correlation_out_axi_wvalid,
    correlation_out_axi_wready,
    correlation_out_axi_bresp,
    correlation_out_axi_bvalid,
    correlation_out_axi_bready,
    correlation_out_axi_araddr,
    correlation_out_axi_arprot,
    correlation_out_axi_arvalid,
    correlation_out_axi_arready,
    correlation_out_axi_rdata,
    correlation_out_axi_rresp,
    correlation_out_axi_rvalid,
    correlation_out_axi_rready,
    correlation_out_probe,
    correlation_normalized,
    correlation_normalized_valid,
    mag1,
    mag2,
    dot_product,
    dot_product_valid,
    dot_product_ready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 signal_fft_axis_aclk CLK" *) input signal_fft_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 signal_fft_axis_aresetn RST" *) input signal_fft_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_fft_axis TREADY" *) output signal_fft_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_fft_axis TDATA" *) input [15:0]signal_fft_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_fft_axis TSTRB" *) input [1:0]signal_fft_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_fft_axis TLAST" *) input signal_fft_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_fft_axis TVALID" *) input signal_fft_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 golden_fft_axis_aclk CLK" *) input golden_fft_axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 golden_fft_axis_aresetn RST" *) input golden_fft_axis_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 golden_fft_axis TREADY" *) output golden_fft_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 golden_fft_axis TDATA" *) input [15:0]golden_fft_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 golden_fft_axis TSTRB" *) input [1:0]golden_fft_axis_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 golden_fft_axis TLAST" *) input golden_fft_axis_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 golden_fft_axis TVALID" *) input golden_fft_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 correlation_out_axi_aclk CLK" *) input correlation_out_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 correlation_out_axi_aresetn RST" *) input correlation_out_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi AWADDR" *) input [3:0]correlation_out_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi AWPROT" *) input [2:0]correlation_out_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi AWVALID" *) input correlation_out_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi AWREADY" *) output correlation_out_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi WDATA" *) input [31:0]correlation_out_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi WSTRB" *) input [3:0]correlation_out_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi WVALID" *) input correlation_out_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi WREADY" *) output correlation_out_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi BRESP" *) output [1:0]correlation_out_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi BVALID" *) output correlation_out_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi BREADY" *) input correlation_out_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi ARADDR" *) input [3:0]correlation_out_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi ARPROT" *) input [2:0]correlation_out_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi ARVALID" *) input correlation_out_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi ARREADY" *) output correlation_out_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi RDATA" *) output [31:0]correlation_out_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi RRESP" *) output [1:0]correlation_out_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi RVALID" *) output correlation_out_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 correlation_out_axi RREADY" *) input correlation_out_axi_rready;
  output [31:0]correlation_out_probe;
  input [31:0]correlation_normalized;
  input correlation_normalized_valid;
  output [47:0]mag1;
  output [47:0]mag2;
  output [47:0]dot_product;
  output dot_product_valid;
  input dot_product_ready;

  wire \<const0> ;
  wire [31:0]correlation_normalized;
  wire correlation_normalized_valid;
  wire correlation_out_axi_aclk;
  wire [3:0]correlation_out_axi_araddr;
  wire correlation_out_axi_aresetn;
  wire correlation_out_axi_arready;
  wire correlation_out_axi_arvalid;
  wire [3:0]correlation_out_axi_awaddr;
  wire correlation_out_axi_awready;
  wire correlation_out_axi_awvalid;
  wire correlation_out_axi_bready;
  wire correlation_out_axi_bvalid;
  wire [31:0]correlation_out_axi_rdata;
  wire correlation_out_axi_rready;
  wire correlation_out_axi_rvalid;
  wire [31:0]correlation_out_axi_wdata;
  wire correlation_out_axi_wready;
  wire [3:0]correlation_out_axi_wstrb;
  wire correlation_out_axi_wvalid;
  wire [47:0]dot_product;
  wire dot_product_ready;
  wire dot_product_valid;
  wire golden_fft_axis_aclk;
  wire golden_fft_axis_aresetn;
  wire [15:0]golden_fft_axis_tdata;
  wire golden_fft_axis_tready;
  wire golden_fft_axis_tvalid;
  wire [47:0]mag1;
  wire [47:0]mag2;
  wire signal_fft_axis_aclk;
  wire signal_fft_axis_aresetn;
  wire [15:0]signal_fft_axis_tdata;
  wire signal_fft_axis_tlast;
  wire signal_fft_axis_tready;
  wire signal_fft_axis_tvalid;

  assign correlation_out_axi_bresp[1] = \<const0> ;
  assign correlation_out_axi_bresp[0] = \<const0> ;
  assign correlation_out_axi_rresp[1] = \<const0> ;
  assign correlation_out_axi_rresp[0] = \<const0> ;
  assign correlation_out_probe[31] = \<const0> ;
  assign correlation_out_probe[30] = \<const0> ;
  assign correlation_out_probe[29] = \<const0> ;
  assign correlation_out_probe[28] = \<const0> ;
  assign correlation_out_probe[27] = \<const0> ;
  assign correlation_out_probe[26] = \<const0> ;
  assign correlation_out_probe[25] = \<const0> ;
  assign correlation_out_probe[24] = \<const0> ;
  assign correlation_out_probe[23] = \<const0> ;
  assign correlation_out_probe[22] = \<const0> ;
  assign correlation_out_probe[21] = \<const0> ;
  assign correlation_out_probe[20] = \<const0> ;
  assign correlation_out_probe[19] = \<const0> ;
  assign correlation_out_probe[18] = \<const0> ;
  assign correlation_out_probe[17] = \<const0> ;
  assign correlation_out_probe[16] = \<const0> ;
  assign correlation_out_probe[15] = \<const0> ;
  assign correlation_out_probe[14] = \<const0> ;
  assign correlation_out_probe[13] = \<const0> ;
  assign correlation_out_probe[12] = \<const0> ;
  assign correlation_out_probe[11] = \<const0> ;
  assign correlation_out_probe[10] = \<const0> ;
  assign correlation_out_probe[9] = \<const0> ;
  assign correlation_out_probe[8] = \<const0> ;
  assign correlation_out_probe[7] = \<const0> ;
  assign correlation_out_probe[6] = \<const0> ;
  assign correlation_out_probe[5] = \<const0> ;
  assign correlation_out_probe[4] = \<const0> ;
  assign correlation_out_probe[3] = \<const0> ;
  assign correlation_out_probe[2] = \<const0> ;
  assign correlation_out_probe[1] = \<const0> ;
  assign correlation_out_probe[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  corr_wrapper_projection_correlation_calculator_v1_0_0_1_projection_correlation_calculator_v1_0 inst
       (.correlation_normalized(correlation_normalized),
        .correlation_normalized_valid(correlation_normalized_valid),
        .correlation_out_axi_aclk(correlation_out_axi_aclk),
        .correlation_out_axi_araddr(correlation_out_axi_araddr[3:2]),
        .correlation_out_axi_aresetn(correlation_out_axi_aresetn),
        .correlation_out_axi_arready(correlation_out_axi_arready),
        .correlation_out_axi_arvalid(correlation_out_axi_arvalid),
        .correlation_out_axi_awaddr(correlation_out_axi_awaddr[3:2]),
        .correlation_out_axi_awready(correlation_out_axi_awready),
        .correlation_out_axi_awvalid(correlation_out_axi_awvalid),
        .correlation_out_axi_bready(correlation_out_axi_bready),
        .correlation_out_axi_bvalid(correlation_out_axi_bvalid),
        .correlation_out_axi_rdata(correlation_out_axi_rdata),
        .correlation_out_axi_rready(correlation_out_axi_rready),
        .correlation_out_axi_rvalid(correlation_out_axi_rvalid),
        .correlation_out_axi_wdata(correlation_out_axi_wdata),
        .correlation_out_axi_wready(correlation_out_axi_wready),
        .correlation_out_axi_wstrb(correlation_out_axi_wstrb),
        .correlation_out_axi_wvalid(correlation_out_axi_wvalid),
        .dot_product(dot_product),
        .dot_product_ready(dot_product_ready),
        .dot_product_valid(dot_product_valid),
        .golden_fft_axis_aclk(golden_fft_axis_aclk),
        .golden_fft_axis_aresetn(golden_fft_axis_aresetn),
        .golden_fft_axis_tdata(golden_fft_axis_tdata),
        .golden_fft_axis_tready(golden_fft_axis_tready),
        .golden_fft_axis_tvalid(golden_fft_axis_tvalid),
        .mag1(mag1),
        .mag2(mag2),
        .signal_fft_axis_aclk(signal_fft_axis_aclk),
        .signal_fft_axis_aresetn(signal_fft_axis_aresetn),
        .signal_fft_axis_tdata(signal_fft_axis_tdata),
        .signal_fft_axis_tlast(signal_fft_axis_tlast),
        .signal_fft_axis_tready(signal_fft_axis_tready),
        .signal_fft_axis_tvalid(signal_fft_axis_tvalid));
endmodule

(* ORIG_REF_NAME = "projection_correlation_calculator_v1_0" *) 
module corr_wrapper_projection_correlation_calculator_v1_0_0_1_projection_correlation_calculator_v1_0
   (correlation_out_axi_arready,
    golden_fft_axis_tready,
    signal_fft_axis_tready,
    correlation_out_axi_wready,
    correlation_out_axi_awready,
    correlation_out_axi_rdata,
    mag1,
    mag2,
    dot_product,
    correlation_out_axi_rvalid,
    correlation_out_axi_bvalid,
    dot_product_valid,
    correlation_out_axi_wstrb,
    correlation_out_axi_arvalid,
    golden_fft_axis_tvalid,
    signal_fft_axis_aclk,
    signal_fft_axis_tdata,
    signal_fft_axis_tvalid,
    golden_fft_axis_aclk,
    golden_fft_axis_tdata,
    correlation_out_axi_aclk,
    correlation_out_axi_araddr,
    correlation_normalized_valid,
    correlation_normalized,
    correlation_out_axi_awaddr,
    correlation_out_axi_awvalid,
    correlation_out_axi_wvalid,
    correlation_out_axi_wdata,
    signal_fft_axis_aresetn,
    signal_fft_axis_tlast,
    golden_fft_axis_aresetn,
    correlation_out_axi_aresetn,
    correlation_out_axi_bready,
    correlation_out_axi_rready,
    dot_product_ready);
  output correlation_out_axi_arready;
  output golden_fft_axis_tready;
  output signal_fft_axis_tready;
  output correlation_out_axi_wready;
  output correlation_out_axi_awready;
  output [31:0]correlation_out_axi_rdata;
  output [47:0]mag1;
  output [47:0]mag2;
  output [47:0]dot_product;
  output correlation_out_axi_rvalid;
  output correlation_out_axi_bvalid;
  output dot_product_valid;
  input [3:0]correlation_out_axi_wstrb;
  input correlation_out_axi_arvalid;
  input golden_fft_axis_tvalid;
  input signal_fft_axis_aclk;
  input [15:0]signal_fft_axis_tdata;
  input signal_fft_axis_tvalid;
  input golden_fft_axis_aclk;
  input [15:0]golden_fft_axis_tdata;
  input correlation_out_axi_aclk;
  input [1:0]correlation_out_axi_araddr;
  input correlation_normalized_valid;
  input [31:0]correlation_normalized;
  input [1:0]correlation_out_axi_awaddr;
  input correlation_out_axi_awvalid;
  input correlation_out_axi_wvalid;
  input [31:0]correlation_out_axi_wdata;
  input signal_fft_axis_aresetn;
  input signal_fft_axis_tlast;
  input golden_fft_axis_aresetn;
  input correlation_out_axi_aresetn;
  input correlation_out_axi_bready;
  input correlation_out_axi_rready;
  input dot_product_ready;

  wire [31:0]correlation_normalized;
  wire correlation_normalized_valid;
  wire correlation_out_axi_aclk;
  wire [1:0]correlation_out_axi_araddr;
  wire correlation_out_axi_aresetn;
  wire correlation_out_axi_arready;
  wire correlation_out_axi_arvalid;
  wire [1:0]correlation_out_axi_awaddr;
  wire correlation_out_axi_awready;
  wire correlation_out_axi_awvalid;
  wire correlation_out_axi_bready;
  wire correlation_out_axi_bvalid;
  wire [31:0]correlation_out_axi_rdata;
  wire correlation_out_axi_rready;
  wire correlation_out_axi_rvalid;
  wire [31:0]correlation_out_axi_wdata;
  wire correlation_out_axi_wready;
  wire [3:0]correlation_out_axi_wstrb;
  wire correlation_out_axi_wvalid;
  wire correlation_valid_i_1_n_0;
  wire correlation_valid_i_2_n_0;
  wire data_ready;
  wire data_ready_i_1_n_0;
  wire [47:0]dot_product;
  wire dot_product_ready;
  wire dot_product_valid;
  wire \fifo_read[0]_i_1_n_0 ;
  wire \fifo_read[0]_rep_i_1__0_n_0 ;
  wire \fifo_read[0]_rep_i_1__1_n_0 ;
  wire \fifo_read[0]_rep_i_1__2_n_0 ;
  wire \fifo_read[0]_rep_i_1__3_n_0 ;
  wire \fifo_read[0]_rep_i_1_n_0 ;
  wire \fifo_read[1]_rep_i_1__0_n_0 ;
  wire \fifo_read[1]_rep_i_1__1_n_0 ;
  wire \fifo_read[1]_rep_i_1__2_n_0 ;
  wire \fifo_read[1]_rep_i_1_n_0 ;
  wire \fifo_read[3]_rep_i_1__0_n_0 ;
  wire \fifo_read[3]_rep_i_1__1_n_0 ;
  wire \fifo_read[3]_rep_i_1__2_n_0 ;
  wire \fifo_read[3]_rep_i_1__3_n_0 ;
  wire \fifo_read[3]_rep_i_1_n_0 ;
  wire \fifo_read[5]_i_2_n_0 ;
  wire \fifo_read_reg[0]_rep__0_n_0 ;
  wire \fifo_read_reg[0]_rep__1_n_0 ;
  wire \fifo_read_reg[0]_rep__2_n_0 ;
  wire \fifo_read_reg[0]_rep__3_n_0 ;
  wire \fifo_read_reg[0]_rep_n_0 ;
  wire \fifo_read_reg[1]_rep__0_n_0 ;
  wire \fifo_read_reg[1]_rep__1_n_0 ;
  wire \fifo_read_reg[1]_rep__2_n_0 ;
  wire \fifo_read_reg[1]_rep_n_0 ;
  wire \fifo_read_reg[3]_rep__0_n_0 ;
  wire \fifo_read_reg[3]_rep__1_n_0 ;
  wire \fifo_read_reg[3]_rep__2_n_0 ;
  wire \fifo_read_reg[3]_rep__3_n_0 ;
  wire \fifo_read_reg[3]_rep_n_0 ;
  wire [9:0]fifo_read_reg__0;
  wire [15:0]golden_data;
  wire golden_fft_axis_aclk;
  wire golden_fft_axis_aresetn;
  wire [15:0]golden_fft_axis_tdata;
  wire golden_fft_axis_tready;
  wire golden_fft_axis_tvalid;
  wire [47:0]golden_read_data_mag;
  wire golden_read_data_mag0_n_100;
  wire golden_read_data_mag0_n_101;
  wire golden_read_data_mag0_n_102;
  wire golden_read_data_mag0_n_103;
  wire golden_read_data_mag0_n_104;
  wire golden_read_data_mag0_n_105;
  wire golden_read_data_mag0_n_58;
  wire golden_read_data_mag0_n_59;
  wire golden_read_data_mag0_n_60;
  wire golden_read_data_mag0_n_61;
  wire golden_read_data_mag0_n_62;
  wire golden_read_data_mag0_n_63;
  wire golden_read_data_mag0_n_64;
  wire golden_read_data_mag0_n_65;
  wire golden_read_data_mag0_n_66;
  wire golden_read_data_mag0_n_67;
  wire golden_read_data_mag0_n_68;
  wire golden_read_data_mag0_n_69;
  wire golden_read_data_mag0_n_70;
  wire golden_read_data_mag0_n_71;
  wire golden_read_data_mag0_n_72;
  wire golden_read_data_mag0_n_73;
  wire golden_read_data_mag0_n_74;
  wire golden_read_data_mag0_n_75;
  wire golden_read_data_mag0_n_76;
  wire golden_read_data_mag0_n_77;
  wire golden_read_data_mag0_n_78;
  wire golden_read_data_mag0_n_79;
  wire golden_read_data_mag0_n_80;
  wire golden_read_data_mag0_n_81;
  wire golden_read_data_mag0_n_82;
  wire golden_read_data_mag0_n_83;
  wire golden_read_data_mag0_n_84;
  wire golden_read_data_mag0_n_85;
  wire golden_read_data_mag0_n_86;
  wire golden_read_data_mag0_n_87;
  wire golden_read_data_mag0_n_88;
  wire golden_read_data_mag0_n_89;
  wire golden_read_data_mag0_n_90;
  wire golden_read_data_mag0_n_91;
  wire golden_read_data_mag0_n_92;
  wire golden_read_data_mag0_n_93;
  wire golden_read_data_mag0_n_94;
  wire golden_read_data_mag0_n_95;
  wire golden_read_data_mag0_n_96;
  wire golden_read_data_mag0_n_97;
  wire golden_read_data_mag0_n_98;
  wire golden_read_data_mag0_n_99;
  wire \golden_read_data_mag[0]_i_1_n_0 ;
  wire \golden_read_data_mag[10]_i_1_n_0 ;
  wire \golden_read_data_mag[11]_i_1_n_0 ;
  wire \golden_read_data_mag[12]_i_1_n_0 ;
  wire \golden_read_data_mag[13]_i_1_n_0 ;
  wire \golden_read_data_mag[14]_i_1_n_0 ;
  wire \golden_read_data_mag[15]_i_1_n_0 ;
  wire \golden_read_data_mag[16]_i_1_n_0 ;
  wire \golden_read_data_mag[17]_i_1_n_0 ;
  wire \golden_read_data_mag[18]_i_1_n_0 ;
  wire \golden_read_data_mag[19]_i_1_n_0 ;
  wire \golden_read_data_mag[1]_i_1_n_0 ;
  wire \golden_read_data_mag[20]_i_1_n_0 ;
  wire \golden_read_data_mag[21]_i_1_n_0 ;
  wire \golden_read_data_mag[22]_i_1_n_0 ;
  wire \golden_read_data_mag[23]_i_1_n_0 ;
  wire \golden_read_data_mag[24]_i_1_n_0 ;
  wire \golden_read_data_mag[25]_i_1_n_0 ;
  wire \golden_read_data_mag[26]_i_1_n_0 ;
  wire \golden_read_data_mag[27]_i_1_n_0 ;
  wire \golden_read_data_mag[28]_i_1_n_0 ;
  wire \golden_read_data_mag[29]_i_1_n_0 ;
  wire \golden_read_data_mag[2]_i_1_n_0 ;
  wire \golden_read_data_mag[30]_i_1_n_0 ;
  wire \golden_read_data_mag[31]_i_1_n_0 ;
  wire \golden_read_data_mag[32]_i_1_n_0 ;
  wire \golden_read_data_mag[33]_i_1_n_0 ;
  wire \golden_read_data_mag[34]_i_1_n_0 ;
  wire \golden_read_data_mag[35]_i_1_n_0 ;
  wire \golden_read_data_mag[36]_i_1_n_0 ;
  wire \golden_read_data_mag[37]_i_1_n_0 ;
  wire \golden_read_data_mag[38]_i_1_n_0 ;
  wire \golden_read_data_mag[39]_i_1_n_0 ;
  wire \golden_read_data_mag[3]_i_1_n_0 ;
  wire \golden_read_data_mag[40]_i_1_n_0 ;
  wire \golden_read_data_mag[41]_i_1_n_0 ;
  wire \golden_read_data_mag[42]_i_1_n_0 ;
  wire \golden_read_data_mag[43]_i_1_n_0 ;
  wire \golden_read_data_mag[44]_i_1_n_0 ;
  wire \golden_read_data_mag[45]_i_1_n_0 ;
  wire \golden_read_data_mag[46]_i_1_n_0 ;
  wire \golden_read_data_mag[47]_i_1_n_0 ;
  wire \golden_read_data_mag[4]_i_1_n_0 ;
  wire \golden_read_data_mag[5]_i_1_n_0 ;
  wire \golden_read_data_mag[6]_i_1_n_0 ;
  wire \golden_read_data_mag[7]_i_1_n_0 ;
  wire \golden_read_data_mag[8]_i_1_n_0 ;
  wire \golden_read_data_mag[9]_i_1_n_0 ;
  wire golden_read_data_mag_0;
  wire [47:0]mag1;
  wire [47:0]mag2;
  wire [9:1]p_0_in;
  wire projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_10;
  wire projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_11;
  wire projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_12;
  wire projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_13;
  wire projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_14;
  wire projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_2;
  wire projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3;
  wire projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_4;
  wire projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_5;
  wire projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_6;
  wire projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_7;
  wire projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_8;
  wire projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_9;
  wire projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_10;
  wire projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_11;
  wire projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_12;
  wire projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_2;
  wire projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_3;
  wire projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_4;
  wire projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_5;
  wire projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_6;
  wire projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_7;
  wire projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_8;
  wire projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_9;
  wire restart;
  wire restart25_in;
  wire restart2__4;
  wire restart2_carry_n_0;
  wire restart2_carry_n_1;
  wire restart2_carry_n_2;
  wire restart2_carry_n_3;
  wire \restart2_inferred__0/i__carry_n_0 ;
  wire \restart2_inferred__0/i__carry_n_1 ;
  wire \restart2_inferred__0/i__carry_n_2 ;
  wire \restart2_inferred__0/i__carry_n_3 ;
  wire restart_i_1_n_0;
  wire [15:0]signal_data;
  wire signal_fft_axis_aclk;
  wire signal_fft_axis_aresetn;
  wire [15:0]signal_fft_axis_tdata;
  wire signal_fft_axis_tlast;
  wire signal_fft_axis_tready;
  wire signal_fft_axis_tvalid;
  wire signal_fifo_read_data;
  wire [47:0]signal_read_data_mag;
  wire signal_read_data_mag0_n_100;
  wire signal_read_data_mag0_n_101;
  wire signal_read_data_mag0_n_102;
  wire signal_read_data_mag0_n_103;
  wire signal_read_data_mag0_n_104;
  wire signal_read_data_mag0_n_105;
  wire signal_read_data_mag0_n_58;
  wire signal_read_data_mag0_n_59;
  wire signal_read_data_mag0_n_60;
  wire signal_read_data_mag0_n_61;
  wire signal_read_data_mag0_n_62;
  wire signal_read_data_mag0_n_63;
  wire signal_read_data_mag0_n_64;
  wire signal_read_data_mag0_n_65;
  wire signal_read_data_mag0_n_66;
  wire signal_read_data_mag0_n_67;
  wire signal_read_data_mag0_n_68;
  wire signal_read_data_mag0_n_69;
  wire signal_read_data_mag0_n_70;
  wire signal_read_data_mag0_n_71;
  wire signal_read_data_mag0_n_72;
  wire signal_read_data_mag0_n_73;
  wire signal_read_data_mag0_n_74;
  wire signal_read_data_mag0_n_75;
  wire signal_read_data_mag0_n_76;
  wire signal_read_data_mag0_n_77;
  wire signal_read_data_mag0_n_78;
  wire signal_read_data_mag0_n_79;
  wire signal_read_data_mag0_n_80;
  wire signal_read_data_mag0_n_81;
  wire signal_read_data_mag0_n_82;
  wire signal_read_data_mag0_n_83;
  wire signal_read_data_mag0_n_84;
  wire signal_read_data_mag0_n_85;
  wire signal_read_data_mag0_n_86;
  wire signal_read_data_mag0_n_87;
  wire signal_read_data_mag0_n_88;
  wire signal_read_data_mag0_n_89;
  wire signal_read_data_mag0_n_90;
  wire signal_read_data_mag0_n_91;
  wire signal_read_data_mag0_n_92;
  wire signal_read_data_mag0_n_93;
  wire signal_read_data_mag0_n_94;
  wire signal_read_data_mag0_n_95;
  wire signal_read_data_mag0_n_96;
  wire signal_read_data_mag0_n_97;
  wire signal_read_data_mag0_n_98;
  wire signal_read_data_mag0_n_99;
  wire \signal_read_data_mag[0]_i_1_n_0 ;
  wire \signal_read_data_mag[10]_i_1_n_0 ;
  wire \signal_read_data_mag[11]_i_1_n_0 ;
  wire \signal_read_data_mag[12]_i_1_n_0 ;
  wire \signal_read_data_mag[13]_i_1_n_0 ;
  wire \signal_read_data_mag[14]_i_1_n_0 ;
  wire \signal_read_data_mag[15]_i_1_n_0 ;
  wire \signal_read_data_mag[16]_i_1_n_0 ;
  wire \signal_read_data_mag[17]_i_1_n_0 ;
  wire \signal_read_data_mag[18]_i_1_n_0 ;
  wire \signal_read_data_mag[19]_i_1_n_0 ;
  wire \signal_read_data_mag[1]_i_1_n_0 ;
  wire \signal_read_data_mag[20]_i_1_n_0 ;
  wire \signal_read_data_mag[21]_i_1_n_0 ;
  wire \signal_read_data_mag[22]_i_1_n_0 ;
  wire \signal_read_data_mag[23]_i_1_n_0 ;
  wire \signal_read_data_mag[24]_i_1_n_0 ;
  wire \signal_read_data_mag[25]_i_1_n_0 ;
  wire \signal_read_data_mag[26]_i_1_n_0 ;
  wire \signal_read_data_mag[27]_i_1_n_0 ;
  wire \signal_read_data_mag[28]_i_1_n_0 ;
  wire \signal_read_data_mag[29]_i_1_n_0 ;
  wire \signal_read_data_mag[2]_i_1_n_0 ;
  wire \signal_read_data_mag[30]_i_1_n_0 ;
  wire \signal_read_data_mag[31]_i_1_n_0 ;
  wire \signal_read_data_mag[32]_i_1_n_0 ;
  wire \signal_read_data_mag[33]_i_1_n_0 ;
  wire \signal_read_data_mag[34]_i_1_n_0 ;
  wire \signal_read_data_mag[35]_i_1_n_0 ;
  wire \signal_read_data_mag[36]_i_1_n_0 ;
  wire \signal_read_data_mag[37]_i_1_n_0 ;
  wire \signal_read_data_mag[38]_i_1_n_0 ;
  wire \signal_read_data_mag[39]_i_1_n_0 ;
  wire \signal_read_data_mag[3]_i_1_n_0 ;
  wire \signal_read_data_mag[40]_i_1_n_0 ;
  wire \signal_read_data_mag[41]_i_1_n_0 ;
  wire \signal_read_data_mag[42]_i_1_n_0 ;
  wire \signal_read_data_mag[43]_i_1_n_0 ;
  wire \signal_read_data_mag[44]_i_1_n_0 ;
  wire \signal_read_data_mag[45]_i_1_n_0 ;
  wire \signal_read_data_mag[46]_i_1_n_0 ;
  wire \signal_read_data_mag[47]_i_2_n_0 ;
  wire \signal_read_data_mag[4]_i_1_n_0 ;
  wire \signal_read_data_mag[5]_i_1_n_0 ;
  wire \signal_read_data_mag[6]_i_1_n_0 ;
  wire \signal_read_data_mag[7]_i_1_n_0 ;
  wire \signal_read_data_mag[8]_i_1_n_0 ;
  wire \signal_read_data_mag[9]_i_1_n_0 ;
  wire signal_read_data_out;
  wire [47:0]sum;
  wire sum0_n_100;
  wire sum0_n_101;
  wire sum0_n_102;
  wire sum0_n_103;
  wire sum0_n_104;
  wire sum0_n_105;
  wire sum0_n_58;
  wire sum0_n_59;
  wire sum0_n_60;
  wire sum0_n_61;
  wire sum0_n_62;
  wire sum0_n_63;
  wire sum0_n_64;
  wire sum0_n_65;
  wire sum0_n_66;
  wire sum0_n_67;
  wire sum0_n_68;
  wire sum0_n_69;
  wire sum0_n_70;
  wire sum0_n_71;
  wire sum0_n_72;
  wire sum0_n_73;
  wire sum0_n_74;
  wire sum0_n_75;
  wire sum0_n_76;
  wire sum0_n_77;
  wire sum0_n_78;
  wire sum0_n_79;
  wire sum0_n_80;
  wire sum0_n_81;
  wire sum0_n_82;
  wire sum0_n_83;
  wire sum0_n_84;
  wire sum0_n_85;
  wire sum0_n_86;
  wire sum0_n_87;
  wire sum0_n_88;
  wire sum0_n_89;
  wire sum0_n_90;
  wire sum0_n_91;
  wire sum0_n_92;
  wire sum0_n_93;
  wire sum0_n_94;
  wire sum0_n_95;
  wire sum0_n_96;
  wire sum0_n_97;
  wire sum0_n_98;
  wire sum0_n_99;
  wire \sum[0]_i_1_n_0 ;
  wire \sum[10]_i_1_n_0 ;
  wire \sum[11]_i_1_n_0 ;
  wire \sum[12]_i_1_n_0 ;
  wire \sum[13]_i_1_n_0 ;
  wire \sum[14]_i_1_n_0 ;
  wire \sum[15]_i_1_n_0 ;
  wire \sum[16]_i_1_n_0 ;
  wire \sum[17]_i_1_n_0 ;
  wire \sum[18]_i_1_n_0 ;
  wire \sum[19]_i_1_n_0 ;
  wire \sum[1]_i_1_n_0 ;
  wire \sum[20]_i_1_n_0 ;
  wire \sum[21]_i_1_n_0 ;
  wire \sum[22]_i_1_n_0 ;
  wire \sum[23]_i_1_n_0 ;
  wire \sum[24]_i_1_n_0 ;
  wire \sum[25]_i_1_n_0 ;
  wire \sum[26]_i_1_n_0 ;
  wire \sum[27]_i_1_n_0 ;
  wire \sum[28]_i_1_n_0 ;
  wire \sum[29]_i_1_n_0 ;
  wire \sum[2]_i_1_n_0 ;
  wire \sum[30]_i_1_n_0 ;
  wire \sum[31]_i_1_n_0 ;
  wire \sum[32]_i_1_n_0 ;
  wire \sum[33]_i_1_n_0 ;
  wire \sum[34]_i_1_n_0 ;
  wire \sum[35]_i_1_n_0 ;
  wire \sum[36]_i_1_n_0 ;
  wire \sum[37]_i_1_n_0 ;
  wire \sum[38]_i_1_n_0 ;
  wire \sum[39]_i_1_n_0 ;
  wire \sum[3]_i_1_n_0 ;
  wire \sum[40]_i_1_n_0 ;
  wire \sum[41]_i_1_n_0 ;
  wire \sum[42]_i_1_n_0 ;
  wire \sum[43]_i_1_n_0 ;
  wire \sum[44]_i_1_n_0 ;
  wire \sum[45]_i_1_n_0 ;
  wire \sum[46]_i_1_n_0 ;
  wire \sum[47]_i_1_n_0 ;
  wire \sum[4]_i_1_n_0 ;
  wire \sum[5]_i_1_n_0 ;
  wire \sum[6]_i_1_n_0 ;
  wire \sum[7]_i_1_n_0 ;
  wire \sum[8]_i_1_n_0 ;
  wire \sum[9]_i_1_n_0 ;
  wire NLW_golden_read_data_mag0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_golden_read_data_mag0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_golden_read_data_mag0_OVERFLOW_UNCONNECTED;
  wire NLW_golden_read_data_mag0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_golden_read_data_mag0_PATTERNDETECT_UNCONNECTED;
  wire NLW_golden_read_data_mag0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_golden_read_data_mag0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_golden_read_data_mag0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_golden_read_data_mag0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_golden_read_data_mag0_PCOUT_UNCONNECTED;
  wire [3:0]NLW_restart2_carry_O_UNCONNECTED;
  wire [3:1]NLW_restart2_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_restart2_carry__0_O_UNCONNECTED;
  wire [3:0]\NLW_restart2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:1]\NLW_restart2_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_restart2_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire NLW_signal_read_data_mag0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_signal_read_data_mag0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_signal_read_data_mag0_OVERFLOW_UNCONNECTED;
  wire NLW_signal_read_data_mag0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_signal_read_data_mag0_PATTERNDETECT_UNCONNECTED;
  wire NLW_signal_read_data_mag0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_signal_read_data_mag0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_signal_read_data_mag0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_signal_read_data_mag0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_signal_read_data_mag0_PCOUT_UNCONNECTED;
  wire NLW_sum0_CARRYCASCOUT_UNCONNECTED;
  wire NLW_sum0_MULTSIGNOUT_UNCONNECTED;
  wire NLW_sum0_OVERFLOW_UNCONNECTED;
  wire NLW_sum0_PATTERNBDETECT_UNCONNECTED;
  wire NLW_sum0_PATTERNDETECT_UNCONNECTED;
  wire NLW_sum0_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_sum0_ACOUT_UNCONNECTED;
  wire [17:0]NLW_sum0_BCOUT_UNCONNECTED;
  wire [3:0]NLW_sum0_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_sum0_PCOUT_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h3A)) 
    correlation_valid_i_1
       (.I0(data_ready),
        .I1(dot_product_ready),
        .I2(dot_product_valid),
        .O(correlation_valid_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    correlation_valid_i_2
       (.I0(signal_fft_axis_aresetn),
        .O(correlation_valid_i_2_n_0));
  FDCE correlation_valid_reg
       (.C(signal_fft_axis_aclk),
        .CE(1'b1),
        .CLR(correlation_valid_i_2_n_0),
        .D(correlation_valid_i_1_n_0),
        .Q(dot_product_valid));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    data_ready_i_1
       (.I0(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_2),
        .I1(data_ready),
        .O(data_ready_i_1_n_0));
  FDCE data_ready_reg
       (.C(signal_fft_axis_aclk),
        .CE(1'b1),
        .CLR(correlation_valid_i_2_n_0),
        .D(data_ready_i_1_n_0),
        .Q(data_ready));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \fifo_read[0]_i_1 
       (.I0(\fifo_read_reg[0]_rep__3_n_0 ),
        .I1(data_ready),
        .O(\fifo_read[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \fifo_read[0]_rep_i_1 
       (.I0(\fifo_read_reg[0]_rep__3_n_0 ),
        .I1(data_ready),
        .O(\fifo_read[0]_rep_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \fifo_read[0]_rep_i_1__0 
       (.I0(\fifo_read_reg[0]_rep__3_n_0 ),
        .I1(data_ready),
        .O(\fifo_read[0]_rep_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \fifo_read[0]_rep_i_1__1 
       (.I0(\fifo_read_reg[0]_rep__3_n_0 ),
        .I1(data_ready),
        .O(\fifo_read[0]_rep_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \fifo_read[0]_rep_i_1__2 
       (.I0(\fifo_read_reg[0]_rep__3_n_0 ),
        .I1(data_ready),
        .O(\fifo_read[0]_rep_i_1__2_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \fifo_read[0]_rep_i_1__3 
       (.I0(\fifo_read_reg[0]_rep__3_n_0 ),
        .I1(data_ready),
        .O(\fifo_read[0]_rep_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \fifo_read[1]_i_1 
       (.I0(\fifo_read_reg[0]_rep__3_n_0 ),
        .I1(fifo_read_reg__0[1]),
        .I2(data_ready),
        .O(p_0_in[1]));
  LUT3 #(
    .INIT(8'h06)) 
    \fifo_read[1]_rep_i_1 
       (.I0(fifo_read_reg__0[0]),
        .I1(fifo_read_reg__0[1]),
        .I2(data_ready),
        .O(\fifo_read[1]_rep_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \fifo_read[1]_rep_i_1__0 
       (.I0(fifo_read_reg__0[0]),
        .I1(fifo_read_reg__0[1]),
        .I2(data_ready),
        .O(\fifo_read[1]_rep_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \fifo_read[1]_rep_i_1__1 
       (.I0(fifo_read_reg__0[0]),
        .I1(fifo_read_reg__0[1]),
        .I2(data_ready),
        .O(\fifo_read[1]_rep_i_1__1_n_0 ));
  LUT3 #(
    .INIT(8'h06)) 
    \fifo_read[1]_rep_i_1__2 
       (.I0(fifo_read_reg__0[0]),
        .I1(fifo_read_reg__0[1]),
        .I2(data_ready),
        .O(\fifo_read[1]_rep_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0078)) 
    \fifo_read[2]_i_1 
       (.I0(\fifo_read_reg[0]_rep__3_n_0 ),
        .I1(fifo_read_reg__0[1]),
        .I2(fifo_read_reg__0[2]),
        .I3(data_ready),
        .O(p_0_in[2]));
  LUT5 #(
    .INIT(32'h00007F80)) 
    \fifo_read[3]_i_1 
       (.I0(fifo_read_reg__0[1]),
        .I1(fifo_read_reg__0[0]),
        .I2(fifo_read_reg__0[2]),
        .I3(fifo_read_reg__0[3]),
        .I4(data_ready),
        .O(p_0_in[3]));
  LUT5 #(
    .INIT(32'h00007F80)) 
    \fifo_read[3]_rep_i_1 
       (.I0(\fifo_read_reg[1]_rep__2_n_0 ),
        .I1(fifo_read_reg__0[0]),
        .I2(fifo_read_reg__0[2]),
        .I3(fifo_read_reg__0[3]),
        .I4(data_ready),
        .O(\fifo_read[3]_rep_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00007F80)) 
    \fifo_read[3]_rep_i_1__0 
       (.I0(fifo_read_reg__0[1]),
        .I1(fifo_read_reg__0[0]),
        .I2(fifo_read_reg__0[2]),
        .I3(fifo_read_reg__0[3]),
        .I4(data_ready),
        .O(\fifo_read[3]_rep_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00007F80)) 
    \fifo_read[3]_rep_i_1__1 
       (.I0(fifo_read_reg__0[1]),
        .I1(fifo_read_reg__0[0]),
        .I2(fifo_read_reg__0[2]),
        .I3(fifo_read_reg__0[3]),
        .I4(data_ready),
        .O(\fifo_read[3]_rep_i_1__1_n_0 ));
  LUT5 #(
    .INIT(32'h00007F80)) 
    \fifo_read[3]_rep_i_1__2 
       (.I0(fifo_read_reg__0[1]),
        .I1(fifo_read_reg__0[0]),
        .I2(fifo_read_reg__0[2]),
        .I3(fifo_read_reg__0[3]),
        .I4(data_ready),
        .O(\fifo_read[3]_rep_i_1__2_n_0 ));
  LUT5 #(
    .INIT(32'h00007F80)) 
    \fifo_read[3]_rep_i_1__3 
       (.I0(fifo_read_reg__0[1]),
        .I1(fifo_read_reg__0[0]),
        .I2(fifo_read_reg__0[2]),
        .I3(fifo_read_reg__0[3]),
        .I4(data_ready),
        .O(\fifo_read[3]_rep_i_1__3_n_0 ));
  LUT6 #(
    .INIT(64'h000000007FFF8000)) 
    \fifo_read[4]_i_1 
       (.I0(fifo_read_reg__0[2]),
        .I1(fifo_read_reg__0[0]),
        .I2(\fifo_read_reg[1]_rep__2_n_0 ),
        .I3(fifo_read_reg__0[3]),
        .I4(fifo_read_reg__0[4]),
        .I5(data_ready),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h00000000DFFF2000)) 
    \fifo_read[5]_i_1 
       (.I0(fifo_read_reg__0[3]),
        .I1(\fifo_read[5]_i_2_n_0 ),
        .I2(fifo_read_reg__0[2]),
        .I3(fifo_read_reg__0[4]),
        .I4(fifo_read_reg__0[5]),
        .I5(data_ready),
        .O(p_0_in[5]));
  LUT2 #(
    .INIT(4'h7)) 
    \fifo_read[5]_i_2 
       (.I0(fifo_read_reg__0[0]),
        .I1(\fifo_read_reg[1]_rep__2_n_0 ),
        .O(\fifo_read[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h09)) 
    \fifo_read[6]_i_1 
       (.I0(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_8),
        .I1(fifo_read_reg__0[6]),
        .I2(data_ready),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h00B4)) 
    \fifo_read[7]_i_1 
       (.I0(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_8),
        .I1(fifo_read_reg__0[6]),
        .I2(fifo_read_reg__0[7]),
        .I3(data_ready),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h0000DF20)) 
    \fifo_read[8]_i_1 
       (.I0(fifo_read_reg__0[6]),
        .I1(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_8),
        .I2(fifo_read_reg__0[7]),
        .I3(fifo_read_reg__0[8]),
        .I4(data_ready),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h00000000DFFF2000)) 
    \fifo_read[9]_i_2 
       (.I0(fifo_read_reg__0[7]),
        .I1(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_8),
        .I2(fifo_read_reg__0[6]),
        .I3(fifo_read_reg__0[8]),
        .I4(fifo_read_reg__0[9]),
        .I5(data_ready),
        .O(p_0_in[9]));
  (* ORIG_CELL_NAME = "fifo_read_reg[0]" *) 
  FDCE \fifo_read_reg[0] 
       (.C(signal_fft_axis_aclk),
        .CE(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3),
        .CLR(correlation_valid_i_2_n_0),
        .D(\fifo_read[0]_i_1_n_0 ),
        .Q(fifo_read_reg__0[0]));
  (* ORIG_CELL_NAME = "fifo_read_reg[0]" *) 
  FDCE \fifo_read_reg[0]_rep 
       (.C(signal_fft_axis_aclk),
        .CE(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3),
        .CLR(correlation_valid_i_2_n_0),
        .D(\fifo_read[0]_rep_i_1_n_0 ),
        .Q(\fifo_read_reg[0]_rep_n_0 ));
  (* ORIG_CELL_NAME = "fifo_read_reg[0]" *) 
  FDCE \fifo_read_reg[0]_rep__0 
       (.C(signal_fft_axis_aclk),
        .CE(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3),
        .CLR(correlation_valid_i_2_n_0),
        .D(\fifo_read[0]_rep_i_1__0_n_0 ),
        .Q(\fifo_read_reg[0]_rep__0_n_0 ));
  (* ORIG_CELL_NAME = "fifo_read_reg[0]" *) 
  FDCE \fifo_read_reg[0]_rep__1 
       (.C(signal_fft_axis_aclk),
        .CE(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3),
        .CLR(correlation_valid_i_2_n_0),
        .D(\fifo_read[0]_rep_i_1__1_n_0 ),
        .Q(\fifo_read_reg[0]_rep__1_n_0 ));
  (* ORIG_CELL_NAME = "fifo_read_reg[0]" *) 
  FDCE \fifo_read_reg[0]_rep__2 
       (.C(signal_fft_axis_aclk),
        .CE(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3),
        .CLR(correlation_valid_i_2_n_0),
        .D(\fifo_read[0]_rep_i_1__2_n_0 ),
        .Q(\fifo_read_reg[0]_rep__2_n_0 ));
  (* ORIG_CELL_NAME = "fifo_read_reg[0]" *) 
  FDCE \fifo_read_reg[0]_rep__3 
       (.C(signal_fft_axis_aclk),
        .CE(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3),
        .CLR(correlation_valid_i_2_n_0),
        .D(\fifo_read[0]_rep_i_1__3_n_0 ),
        .Q(\fifo_read_reg[0]_rep__3_n_0 ));
  (* ORIG_CELL_NAME = "fifo_read_reg[1]" *) 
  FDCE \fifo_read_reg[1] 
       (.C(signal_fft_axis_aclk),
        .CE(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3),
        .CLR(correlation_valid_i_2_n_0),
        .D(p_0_in[1]),
        .Q(fifo_read_reg__0[1]));
  (* ORIG_CELL_NAME = "fifo_read_reg[1]" *) 
  FDCE \fifo_read_reg[1]_rep 
       (.C(signal_fft_axis_aclk),
        .CE(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3),
        .CLR(correlation_valid_i_2_n_0),
        .D(\fifo_read[1]_rep_i_1_n_0 ),
        .Q(\fifo_read_reg[1]_rep_n_0 ));
  (* ORIG_CELL_NAME = "fifo_read_reg[1]" *) 
  FDCE \fifo_read_reg[1]_rep__0 
       (.C(signal_fft_axis_aclk),
        .CE(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3),
        .CLR(correlation_valid_i_2_n_0),
        .D(\fifo_read[1]_rep_i_1__0_n_0 ),
        .Q(\fifo_read_reg[1]_rep__0_n_0 ));
  (* ORIG_CELL_NAME = "fifo_read_reg[1]" *) 
  FDCE \fifo_read_reg[1]_rep__1 
       (.C(signal_fft_axis_aclk),
        .CE(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3),
        .CLR(correlation_valid_i_2_n_0),
        .D(\fifo_read[1]_rep_i_1__1_n_0 ),
        .Q(\fifo_read_reg[1]_rep__1_n_0 ));
  (* ORIG_CELL_NAME = "fifo_read_reg[1]" *) 
  FDCE \fifo_read_reg[1]_rep__2 
       (.C(signal_fft_axis_aclk),
        .CE(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3),
        .CLR(correlation_valid_i_2_n_0),
        .D(\fifo_read[1]_rep_i_1__2_n_0 ),
        .Q(\fifo_read_reg[1]_rep__2_n_0 ));
  FDCE \fifo_read_reg[2] 
       (.C(signal_fft_axis_aclk),
        .CE(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3),
        .CLR(correlation_valid_i_2_n_0),
        .D(p_0_in[2]),
        .Q(fifo_read_reg__0[2]));
  (* ORIG_CELL_NAME = "fifo_read_reg[3]" *) 
  FDCE \fifo_read_reg[3] 
       (.C(signal_fft_axis_aclk),
        .CE(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3),
        .CLR(correlation_valid_i_2_n_0),
        .D(p_0_in[3]),
        .Q(fifo_read_reg__0[3]));
  (* ORIG_CELL_NAME = "fifo_read_reg[3]" *) 
  FDCE \fifo_read_reg[3]_rep 
       (.C(signal_fft_axis_aclk),
        .CE(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3),
        .CLR(correlation_valid_i_2_n_0),
        .D(\fifo_read[3]_rep_i_1_n_0 ),
        .Q(\fifo_read_reg[3]_rep_n_0 ));
  (* ORIG_CELL_NAME = "fifo_read_reg[3]" *) 
  FDCE \fifo_read_reg[3]_rep__0 
       (.C(signal_fft_axis_aclk),
        .CE(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3),
        .CLR(correlation_valid_i_2_n_0),
        .D(\fifo_read[3]_rep_i_1__0_n_0 ),
        .Q(\fifo_read_reg[3]_rep__0_n_0 ));
  (* ORIG_CELL_NAME = "fifo_read_reg[3]" *) 
  FDCE \fifo_read_reg[3]_rep__1 
       (.C(signal_fft_axis_aclk),
        .CE(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3),
        .CLR(correlation_valid_i_2_n_0),
        .D(\fifo_read[3]_rep_i_1__1_n_0 ),
        .Q(\fifo_read_reg[3]_rep__1_n_0 ));
  (* ORIG_CELL_NAME = "fifo_read_reg[3]" *) 
  FDCE \fifo_read_reg[3]_rep__2 
       (.C(signal_fft_axis_aclk),
        .CE(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3),
        .CLR(correlation_valid_i_2_n_0),
        .D(\fifo_read[3]_rep_i_1__2_n_0 ),
        .Q(\fifo_read_reg[3]_rep__2_n_0 ));
  (* ORIG_CELL_NAME = "fifo_read_reg[3]" *) 
  FDCE \fifo_read_reg[3]_rep__3 
       (.C(signal_fft_axis_aclk),
        .CE(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3),
        .CLR(correlation_valid_i_2_n_0),
        .D(\fifo_read[3]_rep_i_1__3_n_0 ),
        .Q(\fifo_read_reg[3]_rep__3_n_0 ));
  FDCE \fifo_read_reg[4] 
       (.C(signal_fft_axis_aclk),
        .CE(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3),
        .CLR(correlation_valid_i_2_n_0),
        .D(p_0_in[4]),
        .Q(fifo_read_reg__0[4]));
  FDCE \fifo_read_reg[5] 
       (.C(signal_fft_axis_aclk),
        .CE(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3),
        .CLR(correlation_valid_i_2_n_0),
        .D(p_0_in[5]),
        .Q(fifo_read_reg__0[5]));
  FDCE \fifo_read_reg[6] 
       (.C(signal_fft_axis_aclk),
        .CE(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3),
        .CLR(correlation_valid_i_2_n_0),
        .D(p_0_in[6]),
        .Q(fifo_read_reg__0[6]));
  FDCE \fifo_read_reg[7] 
       (.C(signal_fft_axis_aclk),
        .CE(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3),
        .CLR(correlation_valid_i_2_n_0),
        .D(p_0_in[7]),
        .Q(fifo_read_reg__0[7]));
  FDCE \fifo_read_reg[8] 
       (.C(signal_fft_axis_aclk),
        .CE(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3),
        .CLR(correlation_valid_i_2_n_0),
        .D(p_0_in[8]),
        .Q(fifo_read_reg__0[8]));
  FDCE \fifo_read_reg[9] 
       (.C(signal_fft_axis_aclk),
        .CE(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3),
        .CLR(correlation_valid_i_2_n_0),
        .D(p_0_in[9]),
        .Q(fifo_read_reg__0[9]));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    golden_read_data_mag0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,golden_data}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_golden_read_data_mag0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,golden_data}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_golden_read_data_mag0_BCOUT_UNCONNECTED[17:0]),
        .C(golden_read_data_mag),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_golden_read_data_mag0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_golden_read_data_mag0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(signal_fifo_read_data),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(signal_fifo_read_data),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(signal_fft_axis_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_golden_read_data_mag0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_golden_read_data_mag0_OVERFLOW_UNCONNECTED),
        .P({golden_read_data_mag0_n_58,golden_read_data_mag0_n_59,golden_read_data_mag0_n_60,golden_read_data_mag0_n_61,golden_read_data_mag0_n_62,golden_read_data_mag0_n_63,golden_read_data_mag0_n_64,golden_read_data_mag0_n_65,golden_read_data_mag0_n_66,golden_read_data_mag0_n_67,golden_read_data_mag0_n_68,golden_read_data_mag0_n_69,golden_read_data_mag0_n_70,golden_read_data_mag0_n_71,golden_read_data_mag0_n_72,golden_read_data_mag0_n_73,golden_read_data_mag0_n_74,golden_read_data_mag0_n_75,golden_read_data_mag0_n_76,golden_read_data_mag0_n_77,golden_read_data_mag0_n_78,golden_read_data_mag0_n_79,golden_read_data_mag0_n_80,golden_read_data_mag0_n_81,golden_read_data_mag0_n_82,golden_read_data_mag0_n_83,golden_read_data_mag0_n_84,golden_read_data_mag0_n_85,golden_read_data_mag0_n_86,golden_read_data_mag0_n_87,golden_read_data_mag0_n_88,golden_read_data_mag0_n_89,golden_read_data_mag0_n_90,golden_read_data_mag0_n_91,golden_read_data_mag0_n_92,golden_read_data_mag0_n_93,golden_read_data_mag0_n_94,golden_read_data_mag0_n_95,golden_read_data_mag0_n_96,golden_read_data_mag0_n_97,golden_read_data_mag0_n_98,golden_read_data_mag0_n_99,golden_read_data_mag0_n_100,golden_read_data_mag0_n_101,golden_read_data_mag0_n_102,golden_read_data_mag0_n_103,golden_read_data_mag0_n_104,golden_read_data_mag0_n_105}),
        .PATTERNBDETECT(NLW_golden_read_data_mag0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_golden_read_data_mag0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_golden_read_data_mag0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_golden_read_data_mag0_UNDERFLOW_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[0]_i_1 
       (.I0(golden_read_data_mag0_n_105),
        .I1(data_ready),
        .O(\golden_read_data_mag[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[10]_i_1 
       (.I0(golden_read_data_mag0_n_95),
        .I1(data_ready),
        .O(\golden_read_data_mag[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[11]_i_1 
       (.I0(golden_read_data_mag0_n_94),
        .I1(data_ready),
        .O(\golden_read_data_mag[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[12]_i_1 
       (.I0(golden_read_data_mag0_n_93),
        .I1(data_ready),
        .O(\golden_read_data_mag[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[13]_i_1 
       (.I0(golden_read_data_mag0_n_92),
        .I1(data_ready),
        .O(\golden_read_data_mag[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[14]_i_1 
       (.I0(golden_read_data_mag0_n_91),
        .I1(data_ready),
        .O(\golden_read_data_mag[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[15]_i_1 
       (.I0(golden_read_data_mag0_n_90),
        .I1(data_ready),
        .O(\golden_read_data_mag[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[16]_i_1 
       (.I0(golden_read_data_mag0_n_89),
        .I1(data_ready),
        .O(\golden_read_data_mag[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[17]_i_1 
       (.I0(golden_read_data_mag0_n_88),
        .I1(data_ready),
        .O(\golden_read_data_mag[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[18]_i_1 
       (.I0(golden_read_data_mag0_n_87),
        .I1(data_ready),
        .O(\golden_read_data_mag[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[19]_i_1 
       (.I0(golden_read_data_mag0_n_86),
        .I1(data_ready),
        .O(\golden_read_data_mag[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[1]_i_1 
       (.I0(golden_read_data_mag0_n_104),
        .I1(data_ready),
        .O(\golden_read_data_mag[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[20]_i_1 
       (.I0(golden_read_data_mag0_n_85),
        .I1(data_ready),
        .O(\golden_read_data_mag[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[21]_i_1 
       (.I0(golden_read_data_mag0_n_84),
        .I1(data_ready),
        .O(\golden_read_data_mag[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[22]_i_1 
       (.I0(golden_read_data_mag0_n_83),
        .I1(data_ready),
        .O(\golden_read_data_mag[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[23]_i_1 
       (.I0(golden_read_data_mag0_n_82),
        .I1(data_ready),
        .O(\golden_read_data_mag[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[24]_i_1 
       (.I0(golden_read_data_mag0_n_81),
        .I1(data_ready),
        .O(\golden_read_data_mag[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[25]_i_1 
       (.I0(golden_read_data_mag0_n_80),
        .I1(data_ready),
        .O(\golden_read_data_mag[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[26]_i_1 
       (.I0(golden_read_data_mag0_n_79),
        .I1(data_ready),
        .O(\golden_read_data_mag[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[27]_i_1 
       (.I0(golden_read_data_mag0_n_78),
        .I1(data_ready),
        .O(\golden_read_data_mag[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[28]_i_1 
       (.I0(golden_read_data_mag0_n_77),
        .I1(data_ready),
        .O(\golden_read_data_mag[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[29]_i_1 
       (.I0(golden_read_data_mag0_n_76),
        .I1(data_ready),
        .O(\golden_read_data_mag[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[2]_i_1 
       (.I0(golden_read_data_mag0_n_103),
        .I1(data_ready),
        .O(\golden_read_data_mag[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[30]_i_1 
       (.I0(golden_read_data_mag0_n_75),
        .I1(data_ready),
        .O(\golden_read_data_mag[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[31]_i_1 
       (.I0(golden_read_data_mag0_n_74),
        .I1(data_ready),
        .O(\golden_read_data_mag[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[32]_i_1 
       (.I0(golden_read_data_mag0_n_73),
        .I1(data_ready),
        .O(\golden_read_data_mag[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[33]_i_1 
       (.I0(golden_read_data_mag0_n_72),
        .I1(data_ready),
        .O(\golden_read_data_mag[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[34]_i_1 
       (.I0(golden_read_data_mag0_n_71),
        .I1(data_ready),
        .O(\golden_read_data_mag[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[35]_i_1 
       (.I0(golden_read_data_mag0_n_70),
        .I1(data_ready),
        .O(\golden_read_data_mag[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[36]_i_1 
       (.I0(golden_read_data_mag0_n_69),
        .I1(data_ready),
        .O(\golden_read_data_mag[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[37]_i_1 
       (.I0(golden_read_data_mag0_n_68),
        .I1(data_ready),
        .O(\golden_read_data_mag[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[38]_i_1 
       (.I0(golden_read_data_mag0_n_67),
        .I1(data_ready),
        .O(\golden_read_data_mag[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[39]_i_1 
       (.I0(golden_read_data_mag0_n_66),
        .I1(data_ready),
        .O(\golden_read_data_mag[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[3]_i_1 
       (.I0(golden_read_data_mag0_n_102),
        .I1(data_ready),
        .O(\golden_read_data_mag[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[40]_i_1 
       (.I0(golden_read_data_mag0_n_65),
        .I1(data_ready),
        .O(\golden_read_data_mag[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[41]_i_1 
       (.I0(golden_read_data_mag0_n_64),
        .I1(data_ready),
        .O(\golden_read_data_mag[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[42]_i_1 
       (.I0(golden_read_data_mag0_n_63),
        .I1(data_ready),
        .O(\golden_read_data_mag[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[43]_i_1 
       (.I0(golden_read_data_mag0_n_62),
        .I1(data_ready),
        .O(\golden_read_data_mag[43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[44]_i_1 
       (.I0(golden_read_data_mag0_n_61),
        .I1(data_ready),
        .O(\golden_read_data_mag[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[45]_i_1 
       (.I0(golden_read_data_mag0_n_60),
        .I1(data_ready),
        .O(\golden_read_data_mag[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[46]_i_1 
       (.I0(golden_read_data_mag0_n_59),
        .I1(data_ready),
        .O(\golden_read_data_mag[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[47]_i_1 
       (.I0(golden_read_data_mag0_n_58),
        .I1(data_ready),
        .O(\golden_read_data_mag[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[4]_i_1 
       (.I0(golden_read_data_mag0_n_101),
        .I1(data_ready),
        .O(\golden_read_data_mag[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[5]_i_1 
       (.I0(golden_read_data_mag0_n_100),
        .I1(data_ready),
        .O(\golden_read_data_mag[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[6]_i_1 
       (.I0(golden_read_data_mag0_n_99),
        .I1(data_ready),
        .O(\golden_read_data_mag[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[7]_i_1 
       (.I0(golden_read_data_mag0_n_98),
        .I1(data_ready),
        .O(\golden_read_data_mag[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[8]_i_1 
       (.I0(golden_read_data_mag0_n_97),
        .I1(data_ready),
        .O(\golden_read_data_mag[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \golden_read_data_mag[9]_i_1 
       (.I0(golden_read_data_mag0_n_96),
        .I1(data_ready),
        .O(\golden_read_data_mag[9]_i_1_n_0 ));
  FDCE \golden_read_data_mag_reg[0] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[0]_i_1_n_0 ),
        .Q(golden_read_data_mag[0]));
  FDCE \golden_read_data_mag_reg[10] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[10]_i_1_n_0 ),
        .Q(golden_read_data_mag[10]));
  FDCE \golden_read_data_mag_reg[11] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[11]_i_1_n_0 ),
        .Q(golden_read_data_mag[11]));
  FDCE \golden_read_data_mag_reg[12] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[12]_i_1_n_0 ),
        .Q(golden_read_data_mag[12]));
  FDCE \golden_read_data_mag_reg[13] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[13]_i_1_n_0 ),
        .Q(golden_read_data_mag[13]));
  FDCE \golden_read_data_mag_reg[14] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[14]_i_1_n_0 ),
        .Q(golden_read_data_mag[14]));
  FDCE \golden_read_data_mag_reg[15] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[15]_i_1_n_0 ),
        .Q(golden_read_data_mag[15]));
  FDCE \golden_read_data_mag_reg[16] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[16]_i_1_n_0 ),
        .Q(golden_read_data_mag[16]));
  FDCE \golden_read_data_mag_reg[17] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[17]_i_1_n_0 ),
        .Q(golden_read_data_mag[17]));
  FDCE \golden_read_data_mag_reg[18] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[18]_i_1_n_0 ),
        .Q(golden_read_data_mag[18]));
  FDCE \golden_read_data_mag_reg[19] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[19]_i_1_n_0 ),
        .Q(golden_read_data_mag[19]));
  FDCE \golden_read_data_mag_reg[1] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[1]_i_1_n_0 ),
        .Q(golden_read_data_mag[1]));
  FDCE \golden_read_data_mag_reg[20] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[20]_i_1_n_0 ),
        .Q(golden_read_data_mag[20]));
  FDCE \golden_read_data_mag_reg[21] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[21]_i_1_n_0 ),
        .Q(golden_read_data_mag[21]));
  FDCE \golden_read_data_mag_reg[22] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[22]_i_1_n_0 ),
        .Q(golden_read_data_mag[22]));
  FDCE \golden_read_data_mag_reg[23] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[23]_i_1_n_0 ),
        .Q(golden_read_data_mag[23]));
  FDCE \golden_read_data_mag_reg[24] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[24]_i_1_n_0 ),
        .Q(golden_read_data_mag[24]));
  FDCE \golden_read_data_mag_reg[25] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[25]_i_1_n_0 ),
        .Q(golden_read_data_mag[25]));
  FDCE \golden_read_data_mag_reg[26] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[26]_i_1_n_0 ),
        .Q(golden_read_data_mag[26]));
  FDCE \golden_read_data_mag_reg[27] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[27]_i_1_n_0 ),
        .Q(golden_read_data_mag[27]));
  FDCE \golden_read_data_mag_reg[28] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[28]_i_1_n_0 ),
        .Q(golden_read_data_mag[28]));
  FDCE \golden_read_data_mag_reg[29] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[29]_i_1_n_0 ),
        .Q(golden_read_data_mag[29]));
  FDCE \golden_read_data_mag_reg[2] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[2]_i_1_n_0 ),
        .Q(golden_read_data_mag[2]));
  FDCE \golden_read_data_mag_reg[30] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[30]_i_1_n_0 ),
        .Q(golden_read_data_mag[30]));
  FDCE \golden_read_data_mag_reg[31] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[31]_i_1_n_0 ),
        .Q(golden_read_data_mag[31]));
  FDCE \golden_read_data_mag_reg[32] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[32]_i_1_n_0 ),
        .Q(golden_read_data_mag[32]));
  FDCE \golden_read_data_mag_reg[33] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[33]_i_1_n_0 ),
        .Q(golden_read_data_mag[33]));
  FDCE \golden_read_data_mag_reg[34] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[34]_i_1_n_0 ),
        .Q(golden_read_data_mag[34]));
  FDCE \golden_read_data_mag_reg[35] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[35]_i_1_n_0 ),
        .Q(golden_read_data_mag[35]));
  FDCE \golden_read_data_mag_reg[36] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[36]_i_1_n_0 ),
        .Q(golden_read_data_mag[36]));
  FDCE \golden_read_data_mag_reg[37] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[37]_i_1_n_0 ),
        .Q(golden_read_data_mag[37]));
  FDCE \golden_read_data_mag_reg[38] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[38]_i_1_n_0 ),
        .Q(golden_read_data_mag[38]));
  FDCE \golden_read_data_mag_reg[39] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[39]_i_1_n_0 ),
        .Q(golden_read_data_mag[39]));
  FDCE \golden_read_data_mag_reg[3] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[3]_i_1_n_0 ),
        .Q(golden_read_data_mag[3]));
  FDCE \golden_read_data_mag_reg[40] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[40]_i_1_n_0 ),
        .Q(golden_read_data_mag[40]));
  FDCE \golden_read_data_mag_reg[41] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[41]_i_1_n_0 ),
        .Q(golden_read_data_mag[41]));
  FDCE \golden_read_data_mag_reg[42] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[42]_i_1_n_0 ),
        .Q(golden_read_data_mag[42]));
  FDCE \golden_read_data_mag_reg[43] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[43]_i_1_n_0 ),
        .Q(golden_read_data_mag[43]));
  FDCE \golden_read_data_mag_reg[44] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[44]_i_1_n_0 ),
        .Q(golden_read_data_mag[44]));
  FDCE \golden_read_data_mag_reg[45] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[45]_i_1_n_0 ),
        .Q(golden_read_data_mag[45]));
  FDCE \golden_read_data_mag_reg[46] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[46]_i_1_n_0 ),
        .Q(golden_read_data_mag[46]));
  FDCE \golden_read_data_mag_reg[47] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[47]_i_1_n_0 ),
        .Q(golden_read_data_mag[47]));
  FDCE \golden_read_data_mag_reg[4] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[4]_i_1_n_0 ),
        .Q(golden_read_data_mag[4]));
  FDCE \golden_read_data_mag_reg[5] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[5]_i_1_n_0 ),
        .Q(golden_read_data_mag[5]));
  FDCE \golden_read_data_mag_reg[6] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[6]_i_1_n_0 ),
        .Q(golden_read_data_mag[6]));
  FDCE \golden_read_data_mag_reg[7] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[7]_i_1_n_0 ),
        .Q(golden_read_data_mag[7]));
  FDCE \golden_read_data_mag_reg[8] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[8]_i_1_n_0 ),
        .Q(golden_read_data_mag[8]));
  FDCE \golden_read_data_mag_reg[9] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\golden_read_data_mag[9]_i_1_n_0 ),
        .Q(golden_read_data_mag[9]));
  FDRE \golden_read_data_out_reg[0] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_105),
        .Q(mag2[0]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[10] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_95),
        .Q(mag2[10]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[11] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_94),
        .Q(mag2[11]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[12] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_93),
        .Q(mag2[12]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[13] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_92),
        .Q(mag2[13]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[14] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_91),
        .Q(mag2[14]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[15] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_90),
        .Q(mag2[15]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[16] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_89),
        .Q(mag2[16]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[17] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_88),
        .Q(mag2[17]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[18] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_87),
        .Q(mag2[18]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[19] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_86),
        .Q(mag2[19]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[1] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_104),
        .Q(mag2[1]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[20] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_85),
        .Q(mag2[20]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[21] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_84),
        .Q(mag2[21]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[22] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_83),
        .Q(mag2[22]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[23] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_82),
        .Q(mag2[23]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[24] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_81),
        .Q(mag2[24]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[25] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_80),
        .Q(mag2[25]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[26] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_79),
        .Q(mag2[26]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[27] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_78),
        .Q(mag2[27]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[28] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_77),
        .Q(mag2[28]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[29] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_76),
        .Q(mag2[29]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[2] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_103),
        .Q(mag2[2]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[30] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_75),
        .Q(mag2[30]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[31] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_74),
        .Q(mag2[31]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[32] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_73),
        .Q(mag2[32]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[33] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_72),
        .Q(mag2[33]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[34] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_71),
        .Q(mag2[34]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[35] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_70),
        .Q(mag2[35]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[36] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_69),
        .Q(mag2[36]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[37] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_68),
        .Q(mag2[37]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[38] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_67),
        .Q(mag2[38]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[39] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_66),
        .Q(mag2[39]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[3] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_102),
        .Q(mag2[3]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[40] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_65),
        .Q(mag2[40]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[41] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_64),
        .Q(mag2[41]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[42] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_63),
        .Q(mag2[42]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[43] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_62),
        .Q(mag2[43]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[44] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_61),
        .Q(mag2[44]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[45] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_60),
        .Q(mag2[45]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[46] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_59),
        .Q(mag2[46]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[47] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_58),
        .Q(mag2[47]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[4] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_101),
        .Q(mag2[4]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[5] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_100),
        .Q(mag2[5]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[6] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_99),
        .Q(mag2[6]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[7] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_98),
        .Q(mag2[7]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[8] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_97),
        .Q(mag2[8]),
        .R(1'b0));
  FDRE \golden_read_data_out_reg[9] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(golden_read_data_mag0_n_96),
        .Q(mag2[9]),
        .R(1'b0));
  corr_wrapper_projection_correlation_calculator_v1_0_0_1_projection_correlation_calculator_v1_0_correlation_out_AXI projection_correlation_calculator_v1_0_correlation_out_AXI_inst
       (.correlation_normalized(correlation_normalized),
        .correlation_normalized_valid(correlation_normalized_valid),
        .correlation_out_axi_aclk(correlation_out_axi_aclk),
        .correlation_out_axi_araddr(correlation_out_axi_araddr),
        .correlation_out_axi_aresetn(correlation_out_axi_aresetn),
        .correlation_out_axi_arready(correlation_out_axi_arready),
        .correlation_out_axi_arvalid(correlation_out_axi_arvalid),
        .correlation_out_axi_awaddr(correlation_out_axi_awaddr),
        .correlation_out_axi_awready(correlation_out_axi_awready),
        .correlation_out_axi_awvalid(correlation_out_axi_awvalid),
        .correlation_out_axi_bready(correlation_out_axi_bready),
        .correlation_out_axi_bvalid(correlation_out_axi_bvalid),
        .correlation_out_axi_rdata(correlation_out_axi_rdata),
        .correlation_out_axi_rready(correlation_out_axi_rready),
        .correlation_out_axi_rvalid(correlation_out_axi_rvalid),
        .correlation_out_axi_wdata(correlation_out_axi_wdata),
        .correlation_out_axi_wready(correlation_out_axi_wready),
        .correlation_out_axi_wstrb(correlation_out_axi_wstrb),
        .correlation_out_axi_wvalid(correlation_out_axi_wvalid),
        .dot_product_valid(dot_product_valid));
  corr_wrapper_projection_correlation_calculator_v1_0_0_1_projection_correlation_calculator_v1_0_golden_fft_AXIS projection_correlation_calculator_v1_0_golden_fft_AXIS_inst
       (.ADDRA(\fifo_read_reg[3]_rep_n_0 ),
        .ADDRB(\fifo_read_reg[0]_rep__2_n_0 ),
        .ADDRC(\fifo_read_reg[3]_rep__2_n_0 ),
        .B(golden_data),
        .CO(restart2__4),
        .DI({projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_9,projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_10,projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_11,projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_12}),
        .E(golden_read_data_mag_0),
        .Q(fifo_read_reg__0),
        .S({projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_4,projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_5,projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_6,projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_7}),
        .data_ready(data_ready),
        .\fifo_read_reg[0]_rep__1 (\fifo_read_reg[0]_rep__1_n_0 ),
        .\fifo_read_reg[0]_rep__3 (projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_3),
        .\fifo_read_reg[1]_rep__1 (\fifo_read_reg[1]_rep__1_n_0 ),
        .\fifo_read_reg[3]_rep__1 ({\fifo_read_reg[3]_rep__1_n_0 ,\fifo_read_reg[1]_rep__0_n_0 ,\fifo_read_reg[0]_rep__0_n_0 }),
        .\fifo_read_reg[3]_rep__3 ({\fifo_read_reg[3]_rep__3_n_0 ,\fifo_read_reg[1]_rep_n_0 ,\fifo_read_reg[0]_rep__3_n_0 }),
        .\fifo_read_reg[9] (projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_8),
        .golden_fft_axis_aclk(golden_fft_axis_aclk),
        .golden_fft_axis_aresetn(golden_fft_axis_aresetn),
        .golden_fft_axis_tdata(golden_fft_axis_tdata),
        .golden_fft_axis_tready(golden_fft_axis_tready),
        .golden_fft_axis_tvalid(golden_fft_axis_tvalid),
        .restart(restart),
        .sum0(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_13),
        .sum0_0(projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_14),
        .\sum_reg[0] (projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_2),
        .\write_pointer_reg[9]_0 (restart25_in));
  corr_wrapper_projection_correlation_calculator_v1_0_0_1_projection_correlation_calculator_v1_0_signal_fft_AXIS projection_correlation_calculator_v1_0_signal_fft_AXIS_inst
       (.A(signal_data),
        .ADDRA({\fifo_read_reg[3]_rep_n_0 ,\fifo_read_reg[1]_rep__2_n_0 ,\fifo_read_reg[0]_rep_n_0 }),
        .ADDRB(\fifo_read_reg[3]_rep__0_n_0 ),
        .ADDRC({\fifo_read_reg[3]_rep__1_n_0 ,\fifo_read_reg[1]_rep__1_n_0 ,\fifo_read_reg[0]_rep__0_n_0 }),
        .CO(restart2__4),
        .DI({projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_7,projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_8,projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_9,projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_10}),
        .Q({fifo_read_reg__0[9:4],fifo_read_reg__0[2:0]}),
        .S({projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_2,projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_3,projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_4,projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_5}),
        .data_ready(data_ready),
        .\fifo_read_reg[9] (projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_2),
        .signal_fft_axis_aclk(signal_fft_axis_aclk),
        .signal_fft_axis_aresetn(signal_fft_axis_aresetn),
        .signal_fft_axis_tdata(signal_fft_axis_tdata),
        .signal_fft_axis_tlast(signal_fft_axis_tlast),
        .signal_fft_axis_tready(signal_fft_axis_tready),
        .signal_fft_axis_tvalid(signal_fft_axis_tvalid),
        .signal_fifo_read_data(signal_fifo_read_data),
        .sum0(projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_11),
        .sum0_0(projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_12),
        .\write_pointer_reg[9]_0 (restart25_in),
        .writes_done_reg_0(projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_6));
  CARRY4 restart2_carry
       (.CI(1'b0),
        .CO({restart2_carry_n_0,restart2_carry_n_1,restart2_carry_n_2,restart2_carry_n_3}),
        .CYINIT(1'b0),
        .DI({projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_9,projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_10,projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_11,projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_12}),
        .O(NLW_restart2_carry_O_UNCONNECTED[3:0]),
        .S({projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_4,projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_5,projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_6,projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_7}));
  CARRY4 restart2_carry__0
       (.CI(restart2_carry_n_0),
        .CO({NLW_restart2_carry__0_CO_UNCONNECTED[3:1],restart2__4}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_13}),
        .O(NLW_restart2_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,projection_correlation_calculator_v1_0_golden_fft_AXIS_inst_n_14}));
  CARRY4 \restart2_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\restart2_inferred__0/i__carry_n_0 ,\restart2_inferred__0/i__carry_n_1 ,\restart2_inferred__0/i__carry_n_2 ,\restart2_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b0),
        .DI({projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_7,projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_8,projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_9,projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_10}),
        .O(\NLW_restart2_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_2,projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_3,projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_4,projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_5}));
  CARRY4 \restart2_inferred__0/i__carry__0 
       (.CI(\restart2_inferred__0/i__carry_n_0 ),
        .CO({\NLW_restart2_inferred__0/i__carry__0_CO_UNCONNECTED [3:1],restart25_in}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_11}),
        .O(\NLW_restart2_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_12}));
  LUT6 #(
    .INIT(64'hFFFFF070F070F070)) 
    restart_i_1
       (.I0(restart25_in),
        .I1(restart2__4),
        .I2(restart),
        .I3(data_ready),
        .I4(signal_fft_axis_tlast),
        .I5(projection_correlation_calculator_v1_0_signal_fft_AXIS_inst_n_6),
        .O(restart_i_1_n_0));
  FDPE restart_reg
       (.C(signal_fft_axis_aclk),
        .CE(1'b1),
        .D(restart_i_1_n_0),
        .PRE(correlation_valid_i_2_n_0),
        .Q(restart));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    signal_read_data_mag0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,signal_data}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_signal_read_data_mag0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,signal_data}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_signal_read_data_mag0_BCOUT_UNCONNECTED[17:0]),
        .C(signal_read_data_mag),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_signal_read_data_mag0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_signal_read_data_mag0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(signal_fifo_read_data),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(signal_fifo_read_data),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(signal_fft_axis_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_signal_read_data_mag0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_signal_read_data_mag0_OVERFLOW_UNCONNECTED),
        .P({signal_read_data_mag0_n_58,signal_read_data_mag0_n_59,signal_read_data_mag0_n_60,signal_read_data_mag0_n_61,signal_read_data_mag0_n_62,signal_read_data_mag0_n_63,signal_read_data_mag0_n_64,signal_read_data_mag0_n_65,signal_read_data_mag0_n_66,signal_read_data_mag0_n_67,signal_read_data_mag0_n_68,signal_read_data_mag0_n_69,signal_read_data_mag0_n_70,signal_read_data_mag0_n_71,signal_read_data_mag0_n_72,signal_read_data_mag0_n_73,signal_read_data_mag0_n_74,signal_read_data_mag0_n_75,signal_read_data_mag0_n_76,signal_read_data_mag0_n_77,signal_read_data_mag0_n_78,signal_read_data_mag0_n_79,signal_read_data_mag0_n_80,signal_read_data_mag0_n_81,signal_read_data_mag0_n_82,signal_read_data_mag0_n_83,signal_read_data_mag0_n_84,signal_read_data_mag0_n_85,signal_read_data_mag0_n_86,signal_read_data_mag0_n_87,signal_read_data_mag0_n_88,signal_read_data_mag0_n_89,signal_read_data_mag0_n_90,signal_read_data_mag0_n_91,signal_read_data_mag0_n_92,signal_read_data_mag0_n_93,signal_read_data_mag0_n_94,signal_read_data_mag0_n_95,signal_read_data_mag0_n_96,signal_read_data_mag0_n_97,signal_read_data_mag0_n_98,signal_read_data_mag0_n_99,signal_read_data_mag0_n_100,signal_read_data_mag0_n_101,signal_read_data_mag0_n_102,signal_read_data_mag0_n_103,signal_read_data_mag0_n_104,signal_read_data_mag0_n_105}),
        .PATTERNBDETECT(NLW_signal_read_data_mag0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_signal_read_data_mag0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_signal_read_data_mag0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_signal_read_data_mag0_UNDERFLOW_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[0]_i_1 
       (.I0(signal_read_data_mag0_n_105),
        .I1(data_ready),
        .O(\signal_read_data_mag[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[10]_i_1 
       (.I0(signal_read_data_mag0_n_95),
        .I1(data_ready),
        .O(\signal_read_data_mag[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[11]_i_1 
       (.I0(signal_read_data_mag0_n_94),
        .I1(data_ready),
        .O(\signal_read_data_mag[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[12]_i_1 
       (.I0(signal_read_data_mag0_n_93),
        .I1(data_ready),
        .O(\signal_read_data_mag[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[13]_i_1 
       (.I0(signal_read_data_mag0_n_92),
        .I1(data_ready),
        .O(\signal_read_data_mag[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[14]_i_1 
       (.I0(signal_read_data_mag0_n_91),
        .I1(data_ready),
        .O(\signal_read_data_mag[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[15]_i_1 
       (.I0(signal_read_data_mag0_n_90),
        .I1(data_ready),
        .O(\signal_read_data_mag[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[16]_i_1 
       (.I0(signal_read_data_mag0_n_89),
        .I1(data_ready),
        .O(\signal_read_data_mag[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[17]_i_1 
       (.I0(signal_read_data_mag0_n_88),
        .I1(data_ready),
        .O(\signal_read_data_mag[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[18]_i_1 
       (.I0(signal_read_data_mag0_n_87),
        .I1(data_ready),
        .O(\signal_read_data_mag[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[19]_i_1 
       (.I0(signal_read_data_mag0_n_86),
        .I1(data_ready),
        .O(\signal_read_data_mag[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[1]_i_1 
       (.I0(signal_read_data_mag0_n_104),
        .I1(data_ready),
        .O(\signal_read_data_mag[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[20]_i_1 
       (.I0(signal_read_data_mag0_n_85),
        .I1(data_ready),
        .O(\signal_read_data_mag[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[21]_i_1 
       (.I0(signal_read_data_mag0_n_84),
        .I1(data_ready),
        .O(\signal_read_data_mag[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[22]_i_1 
       (.I0(signal_read_data_mag0_n_83),
        .I1(data_ready),
        .O(\signal_read_data_mag[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[23]_i_1 
       (.I0(signal_read_data_mag0_n_82),
        .I1(data_ready),
        .O(\signal_read_data_mag[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[24]_i_1 
       (.I0(signal_read_data_mag0_n_81),
        .I1(data_ready),
        .O(\signal_read_data_mag[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[25]_i_1 
       (.I0(signal_read_data_mag0_n_80),
        .I1(data_ready),
        .O(\signal_read_data_mag[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[26]_i_1 
       (.I0(signal_read_data_mag0_n_79),
        .I1(data_ready),
        .O(\signal_read_data_mag[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[27]_i_1 
       (.I0(signal_read_data_mag0_n_78),
        .I1(data_ready),
        .O(\signal_read_data_mag[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[28]_i_1 
       (.I0(signal_read_data_mag0_n_77),
        .I1(data_ready),
        .O(\signal_read_data_mag[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[29]_i_1 
       (.I0(signal_read_data_mag0_n_76),
        .I1(data_ready),
        .O(\signal_read_data_mag[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[2]_i_1 
       (.I0(signal_read_data_mag0_n_103),
        .I1(data_ready),
        .O(\signal_read_data_mag[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[30]_i_1 
       (.I0(signal_read_data_mag0_n_75),
        .I1(data_ready),
        .O(\signal_read_data_mag[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[31]_i_1 
       (.I0(signal_read_data_mag0_n_74),
        .I1(data_ready),
        .O(\signal_read_data_mag[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[32]_i_1 
       (.I0(signal_read_data_mag0_n_73),
        .I1(data_ready),
        .O(\signal_read_data_mag[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[33]_i_1 
       (.I0(signal_read_data_mag0_n_72),
        .I1(data_ready),
        .O(\signal_read_data_mag[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[34]_i_1 
       (.I0(signal_read_data_mag0_n_71),
        .I1(data_ready),
        .O(\signal_read_data_mag[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[35]_i_1 
       (.I0(signal_read_data_mag0_n_70),
        .I1(data_ready),
        .O(\signal_read_data_mag[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[36]_i_1 
       (.I0(signal_read_data_mag0_n_69),
        .I1(data_ready),
        .O(\signal_read_data_mag[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[37]_i_1 
       (.I0(signal_read_data_mag0_n_68),
        .I1(data_ready),
        .O(\signal_read_data_mag[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[38]_i_1 
       (.I0(signal_read_data_mag0_n_67),
        .I1(data_ready),
        .O(\signal_read_data_mag[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[39]_i_1 
       (.I0(signal_read_data_mag0_n_66),
        .I1(data_ready),
        .O(\signal_read_data_mag[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[3]_i_1 
       (.I0(signal_read_data_mag0_n_102),
        .I1(data_ready),
        .O(\signal_read_data_mag[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[40]_i_1 
       (.I0(signal_read_data_mag0_n_65),
        .I1(data_ready),
        .O(\signal_read_data_mag[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[41]_i_1 
       (.I0(signal_read_data_mag0_n_64),
        .I1(data_ready),
        .O(\signal_read_data_mag[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[42]_i_1 
       (.I0(signal_read_data_mag0_n_63),
        .I1(data_ready),
        .O(\signal_read_data_mag[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[43]_i_1 
       (.I0(signal_read_data_mag0_n_62),
        .I1(data_ready),
        .O(\signal_read_data_mag[43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[44]_i_1 
       (.I0(signal_read_data_mag0_n_61),
        .I1(data_ready),
        .O(\signal_read_data_mag[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[45]_i_1 
       (.I0(signal_read_data_mag0_n_60),
        .I1(data_ready),
        .O(\signal_read_data_mag[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[46]_i_1 
       (.I0(signal_read_data_mag0_n_59),
        .I1(data_ready),
        .O(\signal_read_data_mag[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[47]_i_2 
       (.I0(signal_read_data_mag0_n_58),
        .I1(data_ready),
        .O(\signal_read_data_mag[47]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[4]_i_1 
       (.I0(signal_read_data_mag0_n_101),
        .I1(data_ready),
        .O(\signal_read_data_mag[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[5]_i_1 
       (.I0(signal_read_data_mag0_n_100),
        .I1(data_ready),
        .O(\signal_read_data_mag[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[6]_i_1 
       (.I0(signal_read_data_mag0_n_99),
        .I1(data_ready),
        .O(\signal_read_data_mag[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[7]_i_1 
       (.I0(signal_read_data_mag0_n_98),
        .I1(data_ready),
        .O(\signal_read_data_mag[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[8]_i_1 
       (.I0(signal_read_data_mag0_n_97),
        .I1(data_ready),
        .O(\signal_read_data_mag[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \signal_read_data_mag[9]_i_1 
       (.I0(signal_read_data_mag0_n_96),
        .I1(data_ready),
        .O(\signal_read_data_mag[9]_i_1_n_0 ));
  FDCE \signal_read_data_mag_reg[0] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[0]_i_1_n_0 ),
        .Q(signal_read_data_mag[0]));
  FDCE \signal_read_data_mag_reg[10] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[10]_i_1_n_0 ),
        .Q(signal_read_data_mag[10]));
  FDCE \signal_read_data_mag_reg[11] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[11]_i_1_n_0 ),
        .Q(signal_read_data_mag[11]));
  FDCE \signal_read_data_mag_reg[12] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[12]_i_1_n_0 ),
        .Q(signal_read_data_mag[12]));
  FDCE \signal_read_data_mag_reg[13] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[13]_i_1_n_0 ),
        .Q(signal_read_data_mag[13]));
  FDCE \signal_read_data_mag_reg[14] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[14]_i_1_n_0 ),
        .Q(signal_read_data_mag[14]));
  FDCE \signal_read_data_mag_reg[15] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[15]_i_1_n_0 ),
        .Q(signal_read_data_mag[15]));
  FDCE \signal_read_data_mag_reg[16] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[16]_i_1_n_0 ),
        .Q(signal_read_data_mag[16]));
  FDCE \signal_read_data_mag_reg[17] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[17]_i_1_n_0 ),
        .Q(signal_read_data_mag[17]));
  FDCE \signal_read_data_mag_reg[18] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[18]_i_1_n_0 ),
        .Q(signal_read_data_mag[18]));
  FDCE \signal_read_data_mag_reg[19] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[19]_i_1_n_0 ),
        .Q(signal_read_data_mag[19]));
  FDCE \signal_read_data_mag_reg[1] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[1]_i_1_n_0 ),
        .Q(signal_read_data_mag[1]));
  FDCE \signal_read_data_mag_reg[20] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[20]_i_1_n_0 ),
        .Q(signal_read_data_mag[20]));
  FDCE \signal_read_data_mag_reg[21] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[21]_i_1_n_0 ),
        .Q(signal_read_data_mag[21]));
  FDCE \signal_read_data_mag_reg[22] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[22]_i_1_n_0 ),
        .Q(signal_read_data_mag[22]));
  FDCE \signal_read_data_mag_reg[23] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[23]_i_1_n_0 ),
        .Q(signal_read_data_mag[23]));
  FDCE \signal_read_data_mag_reg[24] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[24]_i_1_n_0 ),
        .Q(signal_read_data_mag[24]));
  FDCE \signal_read_data_mag_reg[25] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[25]_i_1_n_0 ),
        .Q(signal_read_data_mag[25]));
  FDCE \signal_read_data_mag_reg[26] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[26]_i_1_n_0 ),
        .Q(signal_read_data_mag[26]));
  FDCE \signal_read_data_mag_reg[27] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[27]_i_1_n_0 ),
        .Q(signal_read_data_mag[27]));
  FDCE \signal_read_data_mag_reg[28] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[28]_i_1_n_0 ),
        .Q(signal_read_data_mag[28]));
  FDCE \signal_read_data_mag_reg[29] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[29]_i_1_n_0 ),
        .Q(signal_read_data_mag[29]));
  FDCE \signal_read_data_mag_reg[2] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[2]_i_1_n_0 ),
        .Q(signal_read_data_mag[2]));
  FDCE \signal_read_data_mag_reg[30] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[30]_i_1_n_0 ),
        .Q(signal_read_data_mag[30]));
  FDCE \signal_read_data_mag_reg[31] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[31]_i_1_n_0 ),
        .Q(signal_read_data_mag[31]));
  FDCE \signal_read_data_mag_reg[32] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[32]_i_1_n_0 ),
        .Q(signal_read_data_mag[32]));
  FDCE \signal_read_data_mag_reg[33] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[33]_i_1_n_0 ),
        .Q(signal_read_data_mag[33]));
  FDCE \signal_read_data_mag_reg[34] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[34]_i_1_n_0 ),
        .Q(signal_read_data_mag[34]));
  FDCE \signal_read_data_mag_reg[35] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[35]_i_1_n_0 ),
        .Q(signal_read_data_mag[35]));
  FDCE \signal_read_data_mag_reg[36] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[36]_i_1_n_0 ),
        .Q(signal_read_data_mag[36]));
  FDCE \signal_read_data_mag_reg[37] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[37]_i_1_n_0 ),
        .Q(signal_read_data_mag[37]));
  FDCE \signal_read_data_mag_reg[38] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[38]_i_1_n_0 ),
        .Q(signal_read_data_mag[38]));
  FDCE \signal_read_data_mag_reg[39] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[39]_i_1_n_0 ),
        .Q(signal_read_data_mag[39]));
  FDCE \signal_read_data_mag_reg[3] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[3]_i_1_n_0 ),
        .Q(signal_read_data_mag[3]));
  FDCE \signal_read_data_mag_reg[40] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[40]_i_1_n_0 ),
        .Q(signal_read_data_mag[40]));
  FDCE \signal_read_data_mag_reg[41] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[41]_i_1_n_0 ),
        .Q(signal_read_data_mag[41]));
  FDCE \signal_read_data_mag_reg[42] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[42]_i_1_n_0 ),
        .Q(signal_read_data_mag[42]));
  FDCE \signal_read_data_mag_reg[43] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[43]_i_1_n_0 ),
        .Q(signal_read_data_mag[43]));
  FDCE \signal_read_data_mag_reg[44] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[44]_i_1_n_0 ),
        .Q(signal_read_data_mag[44]));
  FDCE \signal_read_data_mag_reg[45] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[45]_i_1_n_0 ),
        .Q(signal_read_data_mag[45]));
  FDCE \signal_read_data_mag_reg[46] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[46]_i_1_n_0 ),
        .Q(signal_read_data_mag[46]));
  FDCE \signal_read_data_mag_reg[47] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[47]_i_2_n_0 ),
        .Q(signal_read_data_mag[47]));
  FDCE \signal_read_data_mag_reg[4] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[4]_i_1_n_0 ),
        .Q(signal_read_data_mag[4]));
  FDCE \signal_read_data_mag_reg[5] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[5]_i_1_n_0 ),
        .Q(signal_read_data_mag[5]));
  FDCE \signal_read_data_mag_reg[6] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[6]_i_1_n_0 ),
        .Q(signal_read_data_mag[6]));
  FDCE \signal_read_data_mag_reg[7] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[7]_i_1_n_0 ),
        .Q(signal_read_data_mag[7]));
  FDCE \signal_read_data_mag_reg[8] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[8]_i_1_n_0 ),
        .Q(signal_read_data_mag[8]));
  FDCE \signal_read_data_mag_reg[9] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\signal_read_data_mag[9]_i_1_n_0 ),
        .Q(signal_read_data_mag[9]));
  LUT2 #(
    .INIT(4'h8)) 
    \signal_read_data_out[47]_i_1 
       (.I0(signal_fft_axis_aresetn),
        .I1(data_ready),
        .O(signal_read_data_out));
  FDRE \signal_read_data_out_reg[0] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_105),
        .Q(mag1[0]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[10] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_95),
        .Q(mag1[10]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[11] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_94),
        .Q(mag1[11]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[12] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_93),
        .Q(mag1[12]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[13] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_92),
        .Q(mag1[13]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[14] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_91),
        .Q(mag1[14]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[15] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_90),
        .Q(mag1[15]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[16] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_89),
        .Q(mag1[16]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[17] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_88),
        .Q(mag1[17]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[18] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_87),
        .Q(mag1[18]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[19] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_86),
        .Q(mag1[19]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[1] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_104),
        .Q(mag1[1]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[20] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_85),
        .Q(mag1[20]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[21] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_84),
        .Q(mag1[21]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[22] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_83),
        .Q(mag1[22]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[23] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_82),
        .Q(mag1[23]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[24] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_81),
        .Q(mag1[24]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[25] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_80),
        .Q(mag1[25]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[26] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_79),
        .Q(mag1[26]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[27] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_78),
        .Q(mag1[27]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[28] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_77),
        .Q(mag1[28]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[29] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_76),
        .Q(mag1[29]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[2] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_103),
        .Q(mag1[2]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[30] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_75),
        .Q(mag1[30]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[31] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_74),
        .Q(mag1[31]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[32] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_73),
        .Q(mag1[32]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[33] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_72),
        .Q(mag1[33]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[34] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_71),
        .Q(mag1[34]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[35] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_70),
        .Q(mag1[35]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[36] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_69),
        .Q(mag1[36]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[37] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_68),
        .Q(mag1[37]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[38] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_67),
        .Q(mag1[38]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[39] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_66),
        .Q(mag1[39]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[3] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_102),
        .Q(mag1[3]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[40] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_65),
        .Q(mag1[40]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[41] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_64),
        .Q(mag1[41]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[42] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_63),
        .Q(mag1[42]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[43] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_62),
        .Q(mag1[43]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[44] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_61),
        .Q(mag1[44]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[45] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_60),
        .Q(mag1[45]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[46] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_59),
        .Q(mag1[46]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[47] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_58),
        .Q(mag1[47]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[4] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_101),
        .Q(mag1[4]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[5] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_100),
        .Q(mag1[5]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[6] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_99),
        .Q(mag1[6]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[7] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_98),
        .Q(mag1[7]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[8] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_97),
        .Q(mag1[8]),
        .R(1'b0));
  FDRE \signal_read_data_out_reg[9] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(signal_read_data_mag0_n_96),
        .Q(mag1[9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-11 {cell *THIS*}}" *) 
  DSP48E1 #(
    .ACASCREG(1),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(1),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(1),
    .BREG(1),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(0),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    sum0
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,signal_data}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_sum0_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,golden_data}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_sum0_BCOUT_UNCONNECTED[17:0]),
        .C(sum),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_sum0_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_sum0_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(signal_fifo_read_data),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(signal_fifo_read_data),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(signal_fft_axis_aclk),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_sum0_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b1,1'b1,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_sum0_OVERFLOW_UNCONNECTED),
        .P({sum0_n_58,sum0_n_59,sum0_n_60,sum0_n_61,sum0_n_62,sum0_n_63,sum0_n_64,sum0_n_65,sum0_n_66,sum0_n_67,sum0_n_68,sum0_n_69,sum0_n_70,sum0_n_71,sum0_n_72,sum0_n_73,sum0_n_74,sum0_n_75,sum0_n_76,sum0_n_77,sum0_n_78,sum0_n_79,sum0_n_80,sum0_n_81,sum0_n_82,sum0_n_83,sum0_n_84,sum0_n_85,sum0_n_86,sum0_n_87,sum0_n_88,sum0_n_89,sum0_n_90,sum0_n_91,sum0_n_92,sum0_n_93,sum0_n_94,sum0_n_95,sum0_n_96,sum0_n_97,sum0_n_98,sum0_n_99,sum0_n_100,sum0_n_101,sum0_n_102,sum0_n_103,sum0_n_104,sum0_n_105}),
        .PATTERNBDETECT(NLW_sum0_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_sum0_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_sum0_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_sum0_UNDERFLOW_UNCONNECTED));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[0]_i_1 
       (.I0(sum0_n_105),
        .I1(data_ready),
        .O(\sum[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[10]_i_1 
       (.I0(sum0_n_95),
        .I1(data_ready),
        .O(\sum[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[11]_i_1 
       (.I0(sum0_n_94),
        .I1(data_ready),
        .O(\sum[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[12]_i_1 
       (.I0(sum0_n_93),
        .I1(data_ready),
        .O(\sum[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[13]_i_1 
       (.I0(sum0_n_92),
        .I1(data_ready),
        .O(\sum[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[14]_i_1 
       (.I0(sum0_n_91),
        .I1(data_ready),
        .O(\sum[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[15]_i_1 
       (.I0(sum0_n_90),
        .I1(data_ready),
        .O(\sum[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[16]_i_1 
       (.I0(sum0_n_89),
        .I1(data_ready),
        .O(\sum[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[17]_i_1 
       (.I0(sum0_n_88),
        .I1(data_ready),
        .O(\sum[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[18]_i_1 
       (.I0(sum0_n_87),
        .I1(data_ready),
        .O(\sum[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[19]_i_1 
       (.I0(sum0_n_86),
        .I1(data_ready),
        .O(\sum[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[1]_i_1 
       (.I0(sum0_n_104),
        .I1(data_ready),
        .O(\sum[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[20]_i_1 
       (.I0(sum0_n_85),
        .I1(data_ready),
        .O(\sum[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[21]_i_1 
       (.I0(sum0_n_84),
        .I1(data_ready),
        .O(\sum[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[22]_i_1 
       (.I0(sum0_n_83),
        .I1(data_ready),
        .O(\sum[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[23]_i_1 
       (.I0(sum0_n_82),
        .I1(data_ready),
        .O(\sum[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[24]_i_1 
       (.I0(sum0_n_81),
        .I1(data_ready),
        .O(\sum[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[25]_i_1 
       (.I0(sum0_n_80),
        .I1(data_ready),
        .O(\sum[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[26]_i_1 
       (.I0(sum0_n_79),
        .I1(data_ready),
        .O(\sum[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[27]_i_1 
       (.I0(sum0_n_78),
        .I1(data_ready),
        .O(\sum[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[28]_i_1 
       (.I0(sum0_n_77),
        .I1(data_ready),
        .O(\sum[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[29]_i_1 
       (.I0(sum0_n_76),
        .I1(data_ready),
        .O(\sum[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[2]_i_1 
       (.I0(sum0_n_103),
        .I1(data_ready),
        .O(\sum[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[30]_i_1 
       (.I0(sum0_n_75),
        .I1(data_ready),
        .O(\sum[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[31]_i_1 
       (.I0(sum0_n_74),
        .I1(data_ready),
        .O(\sum[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[32]_i_1 
       (.I0(sum0_n_73),
        .I1(data_ready),
        .O(\sum[32]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[33]_i_1 
       (.I0(sum0_n_72),
        .I1(data_ready),
        .O(\sum[33]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[34]_i_1 
       (.I0(sum0_n_71),
        .I1(data_ready),
        .O(\sum[34]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[35]_i_1 
       (.I0(sum0_n_70),
        .I1(data_ready),
        .O(\sum[35]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[36]_i_1 
       (.I0(sum0_n_69),
        .I1(data_ready),
        .O(\sum[36]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[37]_i_1 
       (.I0(sum0_n_68),
        .I1(data_ready),
        .O(\sum[37]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[38]_i_1 
       (.I0(sum0_n_67),
        .I1(data_ready),
        .O(\sum[38]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[39]_i_1 
       (.I0(sum0_n_66),
        .I1(data_ready),
        .O(\sum[39]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[3]_i_1 
       (.I0(sum0_n_102),
        .I1(data_ready),
        .O(\sum[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[40]_i_1 
       (.I0(sum0_n_65),
        .I1(data_ready),
        .O(\sum[40]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[41]_i_1 
       (.I0(sum0_n_64),
        .I1(data_ready),
        .O(\sum[41]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[42]_i_1 
       (.I0(sum0_n_63),
        .I1(data_ready),
        .O(\sum[42]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[43]_i_1 
       (.I0(sum0_n_62),
        .I1(data_ready),
        .O(\sum[43]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[44]_i_1 
       (.I0(sum0_n_61),
        .I1(data_ready),
        .O(\sum[44]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[45]_i_1 
       (.I0(sum0_n_60),
        .I1(data_ready),
        .O(\sum[45]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[46]_i_1 
       (.I0(sum0_n_59),
        .I1(data_ready),
        .O(\sum[46]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[47]_i_1 
       (.I0(sum0_n_58),
        .I1(data_ready),
        .O(\sum[47]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[4]_i_1 
       (.I0(sum0_n_101),
        .I1(data_ready),
        .O(\sum[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[5]_i_1 
       (.I0(sum0_n_100),
        .I1(data_ready),
        .O(\sum[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[6]_i_1 
       (.I0(sum0_n_99),
        .I1(data_ready),
        .O(\sum[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[7]_i_1 
       (.I0(sum0_n_98),
        .I1(data_ready),
        .O(\sum[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[8]_i_1 
       (.I0(sum0_n_97),
        .I1(data_ready),
        .O(\sum[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \sum[9]_i_1 
       (.I0(sum0_n_96),
        .I1(data_ready),
        .O(\sum[9]_i_1_n_0 ));
  FDRE \sum_out_reg[0] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_105),
        .Q(dot_product[0]),
        .R(1'b0));
  FDRE \sum_out_reg[10] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_95),
        .Q(dot_product[10]),
        .R(1'b0));
  FDRE \sum_out_reg[11] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_94),
        .Q(dot_product[11]),
        .R(1'b0));
  FDRE \sum_out_reg[12] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_93),
        .Q(dot_product[12]),
        .R(1'b0));
  FDRE \sum_out_reg[13] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_92),
        .Q(dot_product[13]),
        .R(1'b0));
  FDRE \sum_out_reg[14] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_91),
        .Q(dot_product[14]),
        .R(1'b0));
  FDRE \sum_out_reg[15] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_90),
        .Q(dot_product[15]),
        .R(1'b0));
  FDRE \sum_out_reg[16] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_89),
        .Q(dot_product[16]),
        .R(1'b0));
  FDRE \sum_out_reg[17] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_88),
        .Q(dot_product[17]),
        .R(1'b0));
  FDRE \sum_out_reg[18] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_87),
        .Q(dot_product[18]),
        .R(1'b0));
  FDRE \sum_out_reg[19] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_86),
        .Q(dot_product[19]),
        .R(1'b0));
  FDRE \sum_out_reg[1] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_104),
        .Q(dot_product[1]),
        .R(1'b0));
  FDRE \sum_out_reg[20] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_85),
        .Q(dot_product[20]),
        .R(1'b0));
  FDRE \sum_out_reg[21] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_84),
        .Q(dot_product[21]),
        .R(1'b0));
  FDRE \sum_out_reg[22] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_83),
        .Q(dot_product[22]),
        .R(1'b0));
  FDRE \sum_out_reg[23] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_82),
        .Q(dot_product[23]),
        .R(1'b0));
  FDRE \sum_out_reg[24] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_81),
        .Q(dot_product[24]),
        .R(1'b0));
  FDRE \sum_out_reg[25] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_80),
        .Q(dot_product[25]),
        .R(1'b0));
  FDRE \sum_out_reg[26] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_79),
        .Q(dot_product[26]),
        .R(1'b0));
  FDRE \sum_out_reg[27] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_78),
        .Q(dot_product[27]),
        .R(1'b0));
  FDRE \sum_out_reg[28] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_77),
        .Q(dot_product[28]),
        .R(1'b0));
  FDRE \sum_out_reg[29] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_76),
        .Q(dot_product[29]),
        .R(1'b0));
  FDRE \sum_out_reg[2] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_103),
        .Q(dot_product[2]),
        .R(1'b0));
  FDRE \sum_out_reg[30] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_75),
        .Q(dot_product[30]),
        .R(1'b0));
  FDRE \sum_out_reg[31] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_74),
        .Q(dot_product[31]),
        .R(1'b0));
  FDRE \sum_out_reg[32] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_73),
        .Q(dot_product[32]),
        .R(1'b0));
  FDRE \sum_out_reg[33] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_72),
        .Q(dot_product[33]),
        .R(1'b0));
  FDRE \sum_out_reg[34] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_71),
        .Q(dot_product[34]),
        .R(1'b0));
  FDRE \sum_out_reg[35] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_70),
        .Q(dot_product[35]),
        .R(1'b0));
  FDRE \sum_out_reg[36] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_69),
        .Q(dot_product[36]),
        .R(1'b0));
  FDRE \sum_out_reg[37] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_68),
        .Q(dot_product[37]),
        .R(1'b0));
  FDRE \sum_out_reg[38] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_67),
        .Q(dot_product[38]),
        .R(1'b0));
  FDRE \sum_out_reg[39] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_66),
        .Q(dot_product[39]),
        .R(1'b0));
  FDRE \sum_out_reg[3] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_102),
        .Q(dot_product[3]),
        .R(1'b0));
  FDRE \sum_out_reg[40] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_65),
        .Q(dot_product[40]),
        .R(1'b0));
  FDRE \sum_out_reg[41] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_64),
        .Q(dot_product[41]),
        .R(1'b0));
  FDRE \sum_out_reg[42] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_63),
        .Q(dot_product[42]),
        .R(1'b0));
  FDRE \sum_out_reg[43] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_62),
        .Q(dot_product[43]),
        .R(1'b0));
  FDRE \sum_out_reg[44] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_61),
        .Q(dot_product[44]),
        .R(1'b0));
  FDRE \sum_out_reg[45] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_60),
        .Q(dot_product[45]),
        .R(1'b0));
  FDRE \sum_out_reg[46] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_59),
        .Q(dot_product[46]),
        .R(1'b0));
  FDRE \sum_out_reg[47] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_58),
        .Q(dot_product[47]),
        .R(1'b0));
  FDRE \sum_out_reg[4] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_101),
        .Q(dot_product[4]),
        .R(1'b0));
  FDRE \sum_out_reg[5] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_100),
        .Q(dot_product[5]),
        .R(1'b0));
  FDRE \sum_out_reg[6] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_99),
        .Q(dot_product[6]),
        .R(1'b0));
  FDRE \sum_out_reg[7] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_98),
        .Q(dot_product[7]),
        .R(1'b0));
  FDRE \sum_out_reg[8] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_97),
        .Q(dot_product[8]),
        .R(1'b0));
  FDRE \sum_out_reg[9] 
       (.C(signal_fft_axis_aclk),
        .CE(signal_read_data_out),
        .D(sum0_n_96),
        .Q(dot_product[9]),
        .R(1'b0));
  FDCE \sum_reg[0] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[0]_i_1_n_0 ),
        .Q(sum[0]));
  FDCE \sum_reg[10] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[10]_i_1_n_0 ),
        .Q(sum[10]));
  FDCE \sum_reg[11] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[11]_i_1_n_0 ),
        .Q(sum[11]));
  FDCE \sum_reg[12] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[12]_i_1_n_0 ),
        .Q(sum[12]));
  FDCE \sum_reg[13] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[13]_i_1_n_0 ),
        .Q(sum[13]));
  FDCE \sum_reg[14] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[14]_i_1_n_0 ),
        .Q(sum[14]));
  FDCE \sum_reg[15] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[15]_i_1_n_0 ),
        .Q(sum[15]));
  FDCE \sum_reg[16] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[16]_i_1_n_0 ),
        .Q(sum[16]));
  FDCE \sum_reg[17] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[17]_i_1_n_0 ),
        .Q(sum[17]));
  FDCE \sum_reg[18] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[18]_i_1_n_0 ),
        .Q(sum[18]));
  FDCE \sum_reg[19] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[19]_i_1_n_0 ),
        .Q(sum[19]));
  FDCE \sum_reg[1] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[1]_i_1_n_0 ),
        .Q(sum[1]));
  FDCE \sum_reg[20] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[20]_i_1_n_0 ),
        .Q(sum[20]));
  FDCE \sum_reg[21] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[21]_i_1_n_0 ),
        .Q(sum[21]));
  FDCE \sum_reg[22] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[22]_i_1_n_0 ),
        .Q(sum[22]));
  FDCE \sum_reg[23] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[23]_i_1_n_0 ),
        .Q(sum[23]));
  FDCE \sum_reg[24] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[24]_i_1_n_0 ),
        .Q(sum[24]));
  FDCE \sum_reg[25] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[25]_i_1_n_0 ),
        .Q(sum[25]));
  FDCE \sum_reg[26] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[26]_i_1_n_0 ),
        .Q(sum[26]));
  FDCE \sum_reg[27] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[27]_i_1_n_0 ),
        .Q(sum[27]));
  FDCE \sum_reg[28] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[28]_i_1_n_0 ),
        .Q(sum[28]));
  FDCE \sum_reg[29] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[29]_i_1_n_0 ),
        .Q(sum[29]));
  FDCE \sum_reg[2] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[2]_i_1_n_0 ),
        .Q(sum[2]));
  FDCE \sum_reg[30] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[30]_i_1_n_0 ),
        .Q(sum[30]));
  FDCE \sum_reg[31] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[31]_i_1_n_0 ),
        .Q(sum[31]));
  FDCE \sum_reg[32] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[32]_i_1_n_0 ),
        .Q(sum[32]));
  FDCE \sum_reg[33] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[33]_i_1_n_0 ),
        .Q(sum[33]));
  FDCE \sum_reg[34] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[34]_i_1_n_0 ),
        .Q(sum[34]));
  FDCE \sum_reg[35] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[35]_i_1_n_0 ),
        .Q(sum[35]));
  FDCE \sum_reg[36] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[36]_i_1_n_0 ),
        .Q(sum[36]));
  FDCE \sum_reg[37] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[37]_i_1_n_0 ),
        .Q(sum[37]));
  FDCE \sum_reg[38] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[38]_i_1_n_0 ),
        .Q(sum[38]));
  FDCE \sum_reg[39] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[39]_i_1_n_0 ),
        .Q(sum[39]));
  FDCE \sum_reg[3] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[3]_i_1_n_0 ),
        .Q(sum[3]));
  FDCE \sum_reg[40] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[40]_i_1_n_0 ),
        .Q(sum[40]));
  FDCE \sum_reg[41] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[41]_i_1_n_0 ),
        .Q(sum[41]));
  FDCE \sum_reg[42] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[42]_i_1_n_0 ),
        .Q(sum[42]));
  FDCE \sum_reg[43] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[43]_i_1_n_0 ),
        .Q(sum[43]));
  FDCE \sum_reg[44] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[44]_i_1_n_0 ),
        .Q(sum[44]));
  FDCE \sum_reg[45] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[45]_i_1_n_0 ),
        .Q(sum[45]));
  FDCE \sum_reg[46] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[46]_i_1_n_0 ),
        .Q(sum[46]));
  FDCE \sum_reg[47] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[47]_i_1_n_0 ),
        .Q(sum[47]));
  FDCE \sum_reg[4] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[4]_i_1_n_0 ),
        .Q(sum[4]));
  FDCE \sum_reg[5] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[5]_i_1_n_0 ),
        .Q(sum[5]));
  FDCE \sum_reg[6] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[6]_i_1_n_0 ),
        .Q(sum[6]));
  FDCE \sum_reg[7] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[7]_i_1_n_0 ),
        .Q(sum[7]));
  FDCE \sum_reg[8] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[8]_i_1_n_0 ),
        .Q(sum[8]));
  FDCE \sum_reg[9] 
       (.C(signal_fft_axis_aclk),
        .CE(golden_read_data_mag_0),
        .CLR(correlation_valid_i_2_n_0),
        .D(\sum[9]_i_1_n_0 ),
        .Q(sum[9]));
endmodule

(* ORIG_REF_NAME = "projection_correlation_calculator_v1_0_correlation_out_AXI" *) 
module corr_wrapper_projection_correlation_calculator_v1_0_0_1_projection_correlation_calculator_v1_0_correlation_out_AXI
   (correlation_out_axi_wready,
    correlation_out_axi_awready,
    correlation_out_axi_arready,
    correlation_out_axi_rvalid,
    correlation_out_axi_bvalid,
    correlation_out_axi_rdata,
    correlation_out_axi_aclk,
    correlation_out_axi_arvalid,
    correlation_out_axi_wstrb,
    correlation_out_axi_awvalid,
    correlation_out_axi_wvalid,
    correlation_out_axi_bready,
    correlation_out_axi_rready,
    dot_product_valid,
    correlation_out_axi_araddr,
    correlation_normalized_valid,
    correlation_normalized,
    correlation_out_axi_awaddr,
    correlation_out_axi_wdata,
    correlation_out_axi_aresetn);
  output correlation_out_axi_wready;
  output correlation_out_axi_awready;
  output correlation_out_axi_arready;
  output correlation_out_axi_rvalid;
  output correlation_out_axi_bvalid;
  output [31:0]correlation_out_axi_rdata;
  input correlation_out_axi_aclk;
  input correlation_out_axi_arvalid;
  input [3:0]correlation_out_axi_wstrb;
  input correlation_out_axi_awvalid;
  input correlation_out_axi_wvalid;
  input correlation_out_axi_bready;
  input correlation_out_axi_rready;
  input dot_product_valid;
  input [1:0]correlation_out_axi_araddr;
  input correlation_normalized_valid;
  input [31:0]correlation_normalized;
  input [1:0]correlation_out_axi_awaddr;
  input [31:0]correlation_out_axi_wdata;
  input correlation_out_axi_aresetn;

  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready_i_1_n_0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire [31:0]correlation_normalized;
  wire correlation_normalized_valid;
  wire correlation_out_axi_aclk;
  wire [1:0]correlation_out_axi_araddr;
  wire correlation_out_axi_aresetn;
  wire correlation_out_axi_arready;
  wire correlation_out_axi_arvalid;
  wire [1:0]correlation_out_axi_awaddr;
  wire correlation_out_axi_awready;
  wire correlation_out_axi_awvalid;
  wire correlation_out_axi_bready;
  wire correlation_out_axi_bvalid;
  wire [31:0]correlation_out_axi_rdata;
  wire correlation_out_axi_rready;
  wire correlation_out_axi_rvalid;
  wire [31:0]correlation_out_axi_wdata;
  wire correlation_out_axi_wready;
  wire [3:0]correlation_out_axi_wstrb;
  wire correlation_out_axi_wvalid;
  wire dot_product_valid;
  wire [31:0]reg_data_out;
  wire [31:31]slv_reg0;
  wire \slv_reg0[0]_i_1_n_0 ;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_2_n_0 ;
  wire \slv_reg0[31]_i_3_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0_reg_n_0_[0] ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[1] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire [31:0]slv_reg1;
  wire \slv_reg3[0]_i_1_n_0 ;
  wire \slv_reg3_reg_n_0_[0] ;
  wire slv_reg_rden__0;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(correlation_out_axi_wvalid),
        .I1(aw_en_reg_n_0),
        .I2(correlation_out_axi_awready),
        .I3(correlation_out_axi_awvalid),
        .I4(correlation_out_axi_bready),
        .I5(correlation_out_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(correlation_out_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(correlation_out_axi_araddr[0]),
        .I1(correlation_out_axi_arvalid),
        .I2(correlation_out_axi_arready),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(correlation_out_axi_araddr[1]),
        .I1(correlation_out_axi_arvalid),
        .I2(correlation_out_axi_arready),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(correlation_out_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(correlation_out_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(correlation_out_axi_arvalid),
        .I1(correlation_out_axi_arready),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(correlation_out_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(correlation_out_axi_arready),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(correlation_out_axi_awaddr[0]),
        .I1(correlation_out_axi_awvalid),
        .I2(correlation_out_axi_awready),
        .I3(aw_en_reg_n_0),
        .I4(correlation_out_axi_wvalid),
        .I5(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(correlation_out_axi_awaddr[1]),
        .I1(correlation_out_axi_awvalid),
        .I2(correlation_out_axi_awready),
        .I3(aw_en_reg_n_0),
        .I4(correlation_out_axi_wvalid),
        .I5(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(correlation_out_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(correlation_out_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(correlation_out_axi_aresetn),
        .O(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_2
       (.I0(correlation_out_axi_awvalid),
        .I1(correlation_out_axi_awready),
        .I2(aw_en_reg_n_0),
        .I3(correlation_out_axi_wvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(correlation_out_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(correlation_out_axi_awready),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(correlation_out_axi_awvalid),
        .I1(correlation_out_axi_wvalid),
        .I2(correlation_out_axi_wready),
        .I3(correlation_out_axi_awready),
        .I4(correlation_out_axi_bready),
        .I5(correlation_out_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(correlation_out_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(correlation_out_axi_bvalid),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'hF0AC00AC)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg1[0]),
        .I1(\slv_reg0_reg_n_0_[0] ),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(\slv_reg3_reg_n_0_[0] ),
        .O(reg_data_out[0]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[10]_i_1 
       (.I0(\slv_reg0_reg_n_0_[10] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[10]),
        .O(reg_data_out[10]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[11]_i_1 
       (.I0(\slv_reg0_reg_n_0_[11] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[11]),
        .O(reg_data_out[11]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[12]_i_1 
       (.I0(\slv_reg0_reg_n_0_[12] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[12]),
        .O(reg_data_out[12]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[13]_i_1 
       (.I0(\slv_reg0_reg_n_0_[13] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[13]),
        .O(reg_data_out[13]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[14]_i_1 
       (.I0(\slv_reg0_reg_n_0_[14] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[14]),
        .O(reg_data_out[14]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[15]_i_1 
       (.I0(\slv_reg0_reg_n_0_[15] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[15]),
        .O(reg_data_out[15]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[16]_i_1 
       (.I0(\slv_reg0_reg_n_0_[16] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[16]),
        .O(reg_data_out[16]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[17]_i_1 
       (.I0(\slv_reg0_reg_n_0_[17] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[17]),
        .O(reg_data_out[17]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[18]_i_1 
       (.I0(\slv_reg0_reg_n_0_[18] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[18]),
        .O(reg_data_out[18]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[19]_i_1 
       (.I0(\slv_reg0_reg_n_0_[19] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[19]),
        .O(reg_data_out[19]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[1]_i_1 
       (.I0(\slv_reg0_reg_n_0_[1] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[1]),
        .O(reg_data_out[1]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[20]_i_1 
       (.I0(\slv_reg0_reg_n_0_[20] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[20]),
        .O(reg_data_out[20]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[21]_i_1 
       (.I0(\slv_reg0_reg_n_0_[21] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[21]),
        .O(reg_data_out[21]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[22]_i_1 
       (.I0(\slv_reg0_reg_n_0_[22] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[22]),
        .O(reg_data_out[22]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[23]_i_1 
       (.I0(\slv_reg0_reg_n_0_[23] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[23]),
        .O(reg_data_out[23]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[24]_i_1 
       (.I0(\slv_reg0_reg_n_0_[24] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[24]),
        .O(reg_data_out[24]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[25]_i_1 
       (.I0(\slv_reg0_reg_n_0_[25] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[25]),
        .O(reg_data_out[25]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[26]_i_1 
       (.I0(\slv_reg0_reg_n_0_[26] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[26]),
        .O(reg_data_out[26]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[27]_i_1 
       (.I0(\slv_reg0_reg_n_0_[27] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[27]),
        .O(reg_data_out[27]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[28]_i_1 
       (.I0(\slv_reg0_reg_n_0_[28] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[28]),
        .O(reg_data_out[28]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[29]_i_1 
       (.I0(\slv_reg0_reg_n_0_[29] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[29]),
        .O(reg_data_out[29]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[2]_i_1 
       (.I0(\slv_reg0_reg_n_0_[2] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[2]),
        .O(reg_data_out[2]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[30]_i_1 
       (.I0(\slv_reg0_reg_n_0_[30] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[30]),
        .O(reg_data_out[30]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[31]_i_1 
       (.I0(\slv_reg0_reg_n_0_[31] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[31]),
        .O(reg_data_out[31]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[3]_i_1 
       (.I0(\slv_reg0_reg_n_0_[3] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[3]),
        .O(reg_data_out[3]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[4]_i_1 
       (.I0(\slv_reg0_reg_n_0_[4] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[4]),
        .O(reg_data_out[4]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[5]_i_1 
       (.I0(\slv_reg0_reg_n_0_[5] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[5]),
        .O(reg_data_out[5]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[6]_i_1 
       (.I0(\slv_reg0_reg_n_0_[6] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[6]),
        .O(reg_data_out[6]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[7]_i_1 
       (.I0(\slv_reg0_reg_n_0_[7] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[7]),
        .O(reg_data_out[7]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[8]_i_1 
       (.I0(\slv_reg0_reg_n_0_[8] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[8]),
        .O(reg_data_out[8]));
  LUT4 #(
    .INIT(16'h0E02)) 
    \axi_rdata[9]_i_1 
       (.I0(\slv_reg0_reg_n_0_[9] ),
        .I1(axi_araddr[2]),
        .I2(axi_araddr[3]),
        .I3(slv_reg1[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(correlation_out_axi_rdata[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(correlation_out_axi_rdata[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(correlation_out_axi_rdata[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(correlation_out_axi_rdata[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(correlation_out_axi_rdata[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(correlation_out_axi_rdata[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(correlation_out_axi_rdata[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(correlation_out_axi_rdata[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(correlation_out_axi_rdata[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(correlation_out_axi_rdata[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(correlation_out_axi_rdata[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(correlation_out_axi_rdata[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(correlation_out_axi_rdata[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(correlation_out_axi_rdata[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(correlation_out_axi_rdata[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(correlation_out_axi_rdata[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(correlation_out_axi_rdata[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(correlation_out_axi_rdata[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(correlation_out_axi_rdata[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(correlation_out_axi_rdata[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(correlation_out_axi_rdata[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(correlation_out_axi_rdata[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(correlation_out_axi_rdata[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(correlation_out_axi_rdata[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(correlation_out_axi_rdata[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(correlation_out_axi_rdata[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(correlation_out_axi_rdata[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(correlation_out_axi_rdata[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(correlation_out_axi_rdata[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(correlation_out_axi_rdata[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(correlation_out_axi_rdata[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(correlation_out_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(correlation_out_axi_rdata[9]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(correlation_out_axi_arready),
        .I1(correlation_out_axi_arvalid),
        .I2(correlation_out_axi_rvalid),
        .I3(correlation_out_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(correlation_out_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(correlation_out_axi_rvalid),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    axi_wready_i_1
       (.I0(correlation_out_axi_wready),
        .I1(correlation_out_axi_wvalid),
        .I2(correlation_out_axi_awvalid),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(correlation_out_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(correlation_out_axi_wready),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'hFBF8)) 
    \slv_reg0[0]_i_1 
       (.I0(correlation_out_axi_wdata[0]),
        .I1(\slv_reg0[7]_i_1_n_0 ),
        .I2(correlation_normalized_valid),
        .I3(\slv_reg0_reg_n_0_[0] ),
        .O(\slv_reg0[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \slv_reg0[15]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(correlation_out_axi_wstrb[1]),
        .I3(\slv_reg0[31]_i_3_n_0 ),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \slv_reg0[23]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(correlation_out_axi_wstrb[2]),
        .I3(\slv_reg0[31]_i_3_n_0 ),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \slv_reg0[31]_i_1 
       (.I0(correlation_normalized_valid),
        .I1(correlation_out_axi_aresetn),
        .O(slv_reg0));
  LUT4 #(
    .INIT(16'h0010)) 
    \slv_reg0[31]_i_2 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(correlation_out_axi_wstrb[3]),
        .I3(\slv_reg0[31]_i_3_n_0 ),
        .O(\slv_reg0[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \slv_reg0[31]_i_3 
       (.I0(correlation_out_axi_awvalid),
        .I1(correlation_out_axi_wvalid),
        .I2(correlation_out_axi_wready),
        .I3(correlation_out_axi_awready),
        .O(\slv_reg0[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \slv_reg0[7]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .I2(correlation_out_axi_wstrb[0]),
        .I3(\slv_reg0[31]_i_3_n_0 ),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(correlation_out_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg0[0]_i_1_n_0 ),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(correlation_out_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[11] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(correlation_out_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[12] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(correlation_out_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[13] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(correlation_out_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[14] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(correlation_out_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[15] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(correlation_out_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[16] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(correlation_out_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[17] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(correlation_out_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[18] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(correlation_out_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[19] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(correlation_out_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[1] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(correlation_out_axi_wdata[1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[20] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(correlation_out_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[21] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(correlation_out_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[22] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(correlation_out_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[23] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(correlation_out_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[24] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[31]_i_2_n_0 ),
        .D(correlation_out_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[25] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[31]_i_2_n_0 ),
        .D(correlation_out_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[26] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[31]_i_2_n_0 ),
        .D(correlation_out_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[27] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[31]_i_2_n_0 ),
        .D(correlation_out_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[28] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[31]_i_2_n_0 ),
        .D(correlation_out_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[29] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[31]_i_2_n_0 ),
        .D(correlation_out_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[2] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(correlation_out_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[30] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[31]_i_2_n_0 ),
        .D(correlation_out_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[31] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[31]_i_2_n_0 ),
        .D(correlation_out_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[3] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(correlation_out_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[4] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(correlation_out_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[5] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(correlation_out_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[6] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(correlation_out_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[7] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(correlation_out_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[8] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(correlation_out_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(slv_reg0));
  FDRE \slv_reg0_reg[9] 
       (.C(correlation_out_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(correlation_out_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(slv_reg0));
  FDRE \slv_reg1_reg[0] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[0]),
        .Q(slv_reg1[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[10] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[10]),
        .Q(slv_reg1[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[11] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[11]),
        .Q(slv_reg1[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[12] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[12]),
        .Q(slv_reg1[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[13] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[13]),
        .Q(slv_reg1[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[14] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[14]),
        .Q(slv_reg1[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[15] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[15]),
        .Q(slv_reg1[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[16] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[16]),
        .Q(slv_reg1[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[17] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[17]),
        .Q(slv_reg1[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[18] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[18]),
        .Q(slv_reg1[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[19] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[19]),
        .Q(slv_reg1[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[1] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[1]),
        .Q(slv_reg1[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[20] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[20]),
        .Q(slv_reg1[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[21] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[21]),
        .Q(slv_reg1[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[22] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[22]),
        .Q(slv_reg1[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[23] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[23]),
        .Q(slv_reg1[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[24] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[24]),
        .Q(slv_reg1[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[25] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[25]),
        .Q(slv_reg1[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[26] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[26]),
        .Q(slv_reg1[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[27] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[27]),
        .Q(slv_reg1[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[28] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[28]),
        .Q(slv_reg1[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[29] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[29]),
        .Q(slv_reg1[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[2] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[2]),
        .Q(slv_reg1[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[30] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[30]),
        .Q(slv_reg1[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[31] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[31]),
        .Q(slv_reg1[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[3] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[3]),
        .Q(slv_reg1[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[4] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[4]),
        .Q(slv_reg1[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[5] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[5]),
        .Q(slv_reg1[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[6] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[6]),
        .Q(slv_reg1[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[7] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[7]),
        .Q(slv_reg1[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[8] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[8]),
        .Q(slv_reg1[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg1_reg[9] 
       (.C(correlation_out_axi_aclk),
        .CE(correlation_normalized_valid),
        .D(correlation_normalized[9]),
        .Q(slv_reg1[9]),
        .R(axi_awready_i_1_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    \slv_reg3[0]_i_1 
       (.I0(dot_product_valid),
        .I1(\slv_reg3_reg_n_0_[0] ),
        .O(\slv_reg3[0]_i_1_n_0 ));
  FDRE \slv_reg3_reg[0] 
       (.C(correlation_out_axi_aclk),
        .CE(1'b1),
        .D(\slv_reg3[0]_i_1_n_0 ),
        .Q(\slv_reg3_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  LUT3 #(
    .INIT(8'h40)) 
    slv_reg_rden
       (.I0(correlation_out_axi_rvalid),
        .I1(correlation_out_axi_arvalid),
        .I2(correlation_out_axi_arready),
        .O(slv_reg_rden__0));
endmodule

(* ORIG_REF_NAME = "projection_correlation_calculator_v1_0_golden_fft_AXIS" *) 
module corr_wrapper_projection_correlation_calculator_v1_0_0_1_projection_correlation_calculator_v1_0_golden_fft_AXIS
   (golden_fft_axis_tready,
    E,
    \sum_reg[0] ,
    \fifo_read_reg[0]_rep__3 ,
    S,
    \fifo_read_reg[9] ,
    DI,
    sum0,
    sum0_0,
    B,
    golden_fft_axis_aclk,
    golden_fft_axis_tvalid,
    data_ready,
    CO,
    \write_pointer_reg[9]_0 ,
    restart,
    Q,
    ADDRA,
    golden_fft_axis_aresetn,
    golden_fft_axis_tdata,
    \fifo_read_reg[3]_rep__3 ,
    ADDRB,
    ADDRC,
    \fifo_read_reg[3]_rep__1 ,
    \fifo_read_reg[0]_rep__1 ,
    \fifo_read_reg[1]_rep__1 );
  output golden_fft_axis_tready;
  output [0:0]E;
  output \sum_reg[0] ;
  output \fifo_read_reg[0]_rep__3 ;
  output [3:0]S;
  output \fifo_read_reg[9] ;
  output [3:0]DI;
  output [0:0]sum0;
  output [0:0]sum0_0;
  output [15:0]B;
  input golden_fft_axis_aclk;
  input golden_fft_axis_tvalid;
  input data_ready;
  input [0:0]CO;
  input [0:0]\write_pointer_reg[9]_0 ;
  input restart;
  input [9:0]Q;
  input [0:0]ADDRA;
  input golden_fft_axis_aresetn;
  input [15:0]golden_fft_axis_tdata;
  input [2:0]\fifo_read_reg[3]_rep__3 ;
  input [0:0]ADDRB;
  input [0:0]ADDRC;
  input [2:0]\fifo_read_reg[3]_rep__1 ;
  input [0:0]\fifo_read_reg[0]_rep__1 ;
  input [0:0]\fifo_read_reg[1]_rep__1 ;

  wire [0:0]ADDRA;
  wire [0:0]ADDRB;
  wire [0:0]ADDRC;
  wire [15:0]B;
  wire [0:0]CO;
  wire [3:0]DI;
  wire [0:0]E;
  wire [9:0]Q;
  wire [3:0]S;
  wire data_ready;
  wire [0:0]\fifo_read_reg[0]_rep__1 ;
  wire \fifo_read_reg[0]_rep__3 ;
  wire [0:0]\fifo_read_reg[1]_rep__1 ;
  wire [2:0]\fifo_read_reg[3]_rep__1 ;
  wire [2:0]\fifo_read_reg[3]_rep__3 ;
  wire \fifo_read_reg[9] ;
  wire golden_fft_axis_aclk;
  wire golden_fft_axis_aresetn;
  wire [15:0]golden_fft_axis_tdata;
  wire golden_fft_axis_tready;
  wire golden_fft_axis_tvalid;
  wire [9:0]golden_fifo_write;
  wire golden_read_data_mag0_i_100_n_0;
  wire golden_read_data_mag0_i_101_n_0;
  wire golden_read_data_mag0_i_102_n_0;
  wire golden_read_data_mag0_i_103_n_0;
  wire golden_read_data_mag0_i_104_n_0;
  wire golden_read_data_mag0_i_105_n_0;
  wire golden_read_data_mag0_i_106_n_0;
  wire golden_read_data_mag0_i_107_n_0;
  wire golden_read_data_mag0_i_108_n_0;
  wire golden_read_data_mag0_i_109_n_0;
  wire golden_read_data_mag0_i_110_n_0;
  wire golden_read_data_mag0_i_111_n_0;
  wire golden_read_data_mag0_i_112_n_0;
  wire golden_read_data_mag0_i_17_n_0;
  wire golden_read_data_mag0_i_18_n_0;
  wire golden_read_data_mag0_i_19_n_0;
  wire golden_read_data_mag0_i_20_n_0;
  wire golden_read_data_mag0_i_21_n_0;
  wire golden_read_data_mag0_i_22_n_0;
  wire golden_read_data_mag0_i_23_n_0;
  wire golden_read_data_mag0_i_24_n_0;
  wire golden_read_data_mag0_i_25_n_0;
  wire golden_read_data_mag0_i_26_n_0;
  wire golden_read_data_mag0_i_27_n_0;
  wire golden_read_data_mag0_i_28_n_0;
  wire golden_read_data_mag0_i_29_n_0;
  wire golden_read_data_mag0_i_30_n_0;
  wire golden_read_data_mag0_i_31_n_0;
  wire golden_read_data_mag0_i_32_n_0;
  wire golden_read_data_mag0_i_33_n_0;
  wire golden_read_data_mag0_i_34_n_0;
  wire golden_read_data_mag0_i_35_n_0;
  wire golden_read_data_mag0_i_36_n_0;
  wire golden_read_data_mag0_i_37_n_0;
  wire golden_read_data_mag0_i_38_n_0;
  wire golden_read_data_mag0_i_39_n_0;
  wire golden_read_data_mag0_i_40_n_0;
  wire golden_read_data_mag0_i_41_n_0;
  wire golden_read_data_mag0_i_42_n_0;
  wire golden_read_data_mag0_i_43_n_0;
  wire golden_read_data_mag0_i_44_n_0;
  wire golden_read_data_mag0_i_45_n_0;
  wire golden_read_data_mag0_i_46_n_0;
  wire golden_read_data_mag0_i_47_n_0;
  wire golden_read_data_mag0_i_48_n_0;
  wire golden_read_data_mag0_i_49_n_0;
  wire golden_read_data_mag0_i_50_n_0;
  wire golden_read_data_mag0_i_51_n_0;
  wire golden_read_data_mag0_i_52_n_0;
  wire golden_read_data_mag0_i_53_n_0;
  wire golden_read_data_mag0_i_54_n_0;
  wire golden_read_data_mag0_i_55_n_0;
  wire golden_read_data_mag0_i_56_n_0;
  wire golden_read_data_mag0_i_57_n_0;
  wire golden_read_data_mag0_i_58_n_0;
  wire golden_read_data_mag0_i_59_n_0;
  wire golden_read_data_mag0_i_60_n_0;
  wire golden_read_data_mag0_i_61_n_0;
  wire golden_read_data_mag0_i_62_n_0;
  wire golden_read_data_mag0_i_63_n_0;
  wire golden_read_data_mag0_i_64_n_0;
  wire golden_read_data_mag0_i_65_n_0;
  wire golden_read_data_mag0_i_66_n_0;
  wire golden_read_data_mag0_i_67_n_0;
  wire golden_read_data_mag0_i_68_n_0;
  wire golden_read_data_mag0_i_69_n_0;
  wire golden_read_data_mag0_i_70_n_0;
  wire golden_read_data_mag0_i_71_n_0;
  wire golden_read_data_mag0_i_72_n_0;
  wire golden_read_data_mag0_i_73_n_0;
  wire golden_read_data_mag0_i_74_n_0;
  wire golden_read_data_mag0_i_75_n_0;
  wire golden_read_data_mag0_i_76_n_0;
  wire golden_read_data_mag0_i_77_n_0;
  wire golden_read_data_mag0_i_78_n_0;
  wire golden_read_data_mag0_i_79_n_0;
  wire golden_read_data_mag0_i_80_n_0;
  wire golden_read_data_mag0_i_81_n_0;
  wire golden_read_data_mag0_i_82_n_0;
  wire golden_read_data_mag0_i_83_n_0;
  wire golden_read_data_mag0_i_84_n_0;
  wire golden_read_data_mag0_i_85_n_0;
  wire golden_read_data_mag0_i_86_n_0;
  wire golden_read_data_mag0_i_87_n_0;
  wire golden_read_data_mag0_i_88_n_0;
  wire golden_read_data_mag0_i_89_n_0;
  wire golden_read_data_mag0_i_90_n_0;
  wire golden_read_data_mag0_i_91_n_0;
  wire golden_read_data_mag0_i_92_n_0;
  wire golden_read_data_mag0_i_93_n_0;
  wire golden_read_data_mag0_i_94_n_0;
  wire golden_read_data_mag0_i_95_n_0;
  wire golden_read_data_mag0_i_96_n_0;
  wire golden_read_data_mag0_i_97_n_0;
  wire golden_read_data_mag0_i_98_n_0;
  wire golden_read_data_mag0_i_99_n_0;
  wire mst_exec_state_i_1__0_n_0;
  wire restart;
  wire stream_data_fifo_reg_0_63_0_2_i_1__0_n_0;
  wire stream_data_fifo_reg_0_63_0_2_n_0;
  wire stream_data_fifo_reg_0_63_0_2_n_1;
  wire stream_data_fifo_reg_0_63_0_2_n_2;
  wire stream_data_fifo_reg_0_63_12_14_n_0;
  wire stream_data_fifo_reg_0_63_12_14_n_1;
  wire stream_data_fifo_reg_0_63_12_14_n_2;
  wire stream_data_fifo_reg_0_63_15_15_n_0;
  wire stream_data_fifo_reg_0_63_3_5_n_0;
  wire stream_data_fifo_reg_0_63_3_5_n_1;
  wire stream_data_fifo_reg_0_63_3_5_n_2;
  wire stream_data_fifo_reg_0_63_6_8_n_0;
  wire stream_data_fifo_reg_0_63_6_8_n_1;
  wire stream_data_fifo_reg_0_63_6_8_n_2;
  wire stream_data_fifo_reg_0_63_9_11_n_0;
  wire stream_data_fifo_reg_0_63_9_11_n_1;
  wire stream_data_fifo_reg_0_63_9_11_n_2;
  wire stream_data_fifo_reg_128_191_0_2_i_1__0_n_0;
  wire stream_data_fifo_reg_128_191_0_2_n_0;
  wire stream_data_fifo_reg_128_191_0_2_n_1;
  wire stream_data_fifo_reg_128_191_0_2_n_2;
  wire stream_data_fifo_reg_128_191_12_14_n_0;
  wire stream_data_fifo_reg_128_191_12_14_n_1;
  wire stream_data_fifo_reg_128_191_12_14_n_2;
  wire stream_data_fifo_reg_128_191_15_15_n_0;
  wire stream_data_fifo_reg_128_191_3_5_n_0;
  wire stream_data_fifo_reg_128_191_3_5_n_1;
  wire stream_data_fifo_reg_128_191_3_5_n_2;
  wire stream_data_fifo_reg_128_191_6_8_n_0;
  wire stream_data_fifo_reg_128_191_6_8_n_1;
  wire stream_data_fifo_reg_128_191_6_8_n_2;
  wire stream_data_fifo_reg_128_191_9_11_n_0;
  wire stream_data_fifo_reg_128_191_9_11_n_1;
  wire stream_data_fifo_reg_128_191_9_11_n_2;
  wire stream_data_fifo_reg_192_255_0_2_i_1__0_n_0;
  wire stream_data_fifo_reg_192_255_0_2_n_0;
  wire stream_data_fifo_reg_192_255_0_2_n_1;
  wire stream_data_fifo_reg_192_255_0_2_n_2;
  wire stream_data_fifo_reg_192_255_12_14_n_0;
  wire stream_data_fifo_reg_192_255_12_14_n_1;
  wire stream_data_fifo_reg_192_255_12_14_n_2;
  wire stream_data_fifo_reg_192_255_15_15_n_0;
  wire stream_data_fifo_reg_192_255_3_5_n_0;
  wire stream_data_fifo_reg_192_255_3_5_n_1;
  wire stream_data_fifo_reg_192_255_3_5_n_2;
  wire stream_data_fifo_reg_192_255_6_8_n_0;
  wire stream_data_fifo_reg_192_255_6_8_n_1;
  wire stream_data_fifo_reg_192_255_6_8_n_2;
  wire stream_data_fifo_reg_192_255_9_11_n_0;
  wire stream_data_fifo_reg_192_255_9_11_n_1;
  wire stream_data_fifo_reg_192_255_9_11_n_2;
  wire stream_data_fifo_reg_256_319_0_2_i_1__0_n_0;
  wire stream_data_fifo_reg_256_319_0_2_n_0;
  wire stream_data_fifo_reg_256_319_0_2_n_1;
  wire stream_data_fifo_reg_256_319_0_2_n_2;
  wire stream_data_fifo_reg_256_319_12_14_n_0;
  wire stream_data_fifo_reg_256_319_12_14_n_1;
  wire stream_data_fifo_reg_256_319_12_14_n_2;
  wire stream_data_fifo_reg_256_319_15_15_n_0;
  wire stream_data_fifo_reg_256_319_3_5_n_0;
  wire stream_data_fifo_reg_256_319_3_5_n_1;
  wire stream_data_fifo_reg_256_319_3_5_n_2;
  wire stream_data_fifo_reg_256_319_6_8_n_0;
  wire stream_data_fifo_reg_256_319_6_8_n_1;
  wire stream_data_fifo_reg_256_319_6_8_n_2;
  wire stream_data_fifo_reg_256_319_9_11_n_0;
  wire stream_data_fifo_reg_256_319_9_11_n_1;
  wire stream_data_fifo_reg_256_319_9_11_n_2;
  wire stream_data_fifo_reg_320_383_0_2_i_1__0_n_0;
  wire stream_data_fifo_reg_320_383_0_2_n_0;
  wire stream_data_fifo_reg_320_383_0_2_n_1;
  wire stream_data_fifo_reg_320_383_0_2_n_2;
  wire stream_data_fifo_reg_320_383_12_14_n_0;
  wire stream_data_fifo_reg_320_383_12_14_n_1;
  wire stream_data_fifo_reg_320_383_12_14_n_2;
  wire stream_data_fifo_reg_320_383_15_15_n_0;
  wire stream_data_fifo_reg_320_383_3_5_n_0;
  wire stream_data_fifo_reg_320_383_3_5_n_1;
  wire stream_data_fifo_reg_320_383_3_5_n_2;
  wire stream_data_fifo_reg_320_383_6_8_n_0;
  wire stream_data_fifo_reg_320_383_6_8_n_1;
  wire stream_data_fifo_reg_320_383_6_8_n_2;
  wire stream_data_fifo_reg_320_383_9_11_n_0;
  wire stream_data_fifo_reg_320_383_9_11_n_1;
  wire stream_data_fifo_reg_320_383_9_11_n_2;
  wire stream_data_fifo_reg_384_447_0_2_i_1__0_n_0;
  wire stream_data_fifo_reg_384_447_0_2_n_0;
  wire stream_data_fifo_reg_384_447_0_2_n_1;
  wire stream_data_fifo_reg_384_447_0_2_n_2;
  wire stream_data_fifo_reg_384_447_12_14_n_0;
  wire stream_data_fifo_reg_384_447_12_14_n_1;
  wire stream_data_fifo_reg_384_447_12_14_n_2;
  wire stream_data_fifo_reg_384_447_15_15_n_0;
  wire stream_data_fifo_reg_384_447_3_5_n_0;
  wire stream_data_fifo_reg_384_447_3_5_n_1;
  wire stream_data_fifo_reg_384_447_3_5_n_2;
  wire stream_data_fifo_reg_384_447_6_8_n_0;
  wire stream_data_fifo_reg_384_447_6_8_n_1;
  wire stream_data_fifo_reg_384_447_6_8_n_2;
  wire stream_data_fifo_reg_384_447_9_11_n_0;
  wire stream_data_fifo_reg_384_447_9_11_n_1;
  wire stream_data_fifo_reg_384_447_9_11_n_2;
  wire stream_data_fifo_reg_448_511_0_2_i_1__0_n_0;
  wire stream_data_fifo_reg_448_511_0_2_n_0;
  wire stream_data_fifo_reg_448_511_0_2_n_1;
  wire stream_data_fifo_reg_448_511_0_2_n_2;
  wire stream_data_fifo_reg_448_511_12_14_n_0;
  wire stream_data_fifo_reg_448_511_12_14_n_1;
  wire stream_data_fifo_reg_448_511_12_14_n_2;
  wire stream_data_fifo_reg_448_511_15_15_n_0;
  wire stream_data_fifo_reg_448_511_3_5_n_0;
  wire stream_data_fifo_reg_448_511_3_5_n_1;
  wire stream_data_fifo_reg_448_511_3_5_n_2;
  wire stream_data_fifo_reg_448_511_6_8_n_0;
  wire stream_data_fifo_reg_448_511_6_8_n_1;
  wire stream_data_fifo_reg_448_511_6_8_n_2;
  wire stream_data_fifo_reg_448_511_9_11_n_0;
  wire stream_data_fifo_reg_448_511_9_11_n_1;
  wire stream_data_fifo_reg_448_511_9_11_n_2;
  wire stream_data_fifo_reg_512_575_0_2_i_1__0_n_0;
  wire stream_data_fifo_reg_512_575_0_2_n_0;
  wire stream_data_fifo_reg_512_575_0_2_n_1;
  wire stream_data_fifo_reg_512_575_0_2_n_2;
  wire stream_data_fifo_reg_512_575_12_14_n_0;
  wire stream_data_fifo_reg_512_575_12_14_n_1;
  wire stream_data_fifo_reg_512_575_12_14_n_2;
  wire stream_data_fifo_reg_512_575_15_15_n_0;
  wire stream_data_fifo_reg_512_575_3_5_n_0;
  wire stream_data_fifo_reg_512_575_3_5_n_1;
  wire stream_data_fifo_reg_512_575_3_5_n_2;
  wire stream_data_fifo_reg_512_575_6_8_n_0;
  wire stream_data_fifo_reg_512_575_6_8_n_1;
  wire stream_data_fifo_reg_512_575_6_8_n_2;
  wire stream_data_fifo_reg_512_575_9_11_n_0;
  wire stream_data_fifo_reg_512_575_9_11_n_1;
  wire stream_data_fifo_reg_512_575_9_11_n_2;
  wire stream_data_fifo_reg_576_639_0_2_i_1__0_n_0;
  wire stream_data_fifo_reg_576_639_0_2_n_0;
  wire stream_data_fifo_reg_576_639_0_2_n_1;
  wire stream_data_fifo_reg_576_639_0_2_n_2;
  wire stream_data_fifo_reg_576_639_12_14_n_0;
  wire stream_data_fifo_reg_576_639_12_14_n_1;
  wire stream_data_fifo_reg_576_639_12_14_n_2;
  wire stream_data_fifo_reg_576_639_15_15_n_0;
  wire stream_data_fifo_reg_576_639_3_5_n_0;
  wire stream_data_fifo_reg_576_639_3_5_n_1;
  wire stream_data_fifo_reg_576_639_3_5_n_2;
  wire stream_data_fifo_reg_576_639_6_8_n_0;
  wire stream_data_fifo_reg_576_639_6_8_n_1;
  wire stream_data_fifo_reg_576_639_6_8_n_2;
  wire stream_data_fifo_reg_576_639_9_11_n_0;
  wire stream_data_fifo_reg_576_639_9_11_n_1;
  wire stream_data_fifo_reg_576_639_9_11_n_2;
  wire stream_data_fifo_reg_640_703_0_2_i_1__0_n_0;
  wire stream_data_fifo_reg_640_703_0_2_n_0;
  wire stream_data_fifo_reg_640_703_0_2_n_1;
  wire stream_data_fifo_reg_640_703_0_2_n_2;
  wire stream_data_fifo_reg_640_703_12_14_n_0;
  wire stream_data_fifo_reg_640_703_12_14_n_1;
  wire stream_data_fifo_reg_640_703_12_14_n_2;
  wire stream_data_fifo_reg_640_703_15_15_n_0;
  wire stream_data_fifo_reg_640_703_3_5_n_0;
  wire stream_data_fifo_reg_640_703_3_5_n_1;
  wire stream_data_fifo_reg_640_703_3_5_n_2;
  wire stream_data_fifo_reg_640_703_6_8_n_0;
  wire stream_data_fifo_reg_640_703_6_8_n_1;
  wire stream_data_fifo_reg_640_703_6_8_n_2;
  wire stream_data_fifo_reg_640_703_9_11_n_0;
  wire stream_data_fifo_reg_640_703_9_11_n_1;
  wire stream_data_fifo_reg_640_703_9_11_n_2;
  wire stream_data_fifo_reg_64_127_0_2_i_1__0_n_0;
  wire stream_data_fifo_reg_64_127_0_2_n_0;
  wire stream_data_fifo_reg_64_127_0_2_n_1;
  wire stream_data_fifo_reg_64_127_0_2_n_2;
  wire stream_data_fifo_reg_64_127_12_14_n_0;
  wire stream_data_fifo_reg_64_127_12_14_n_1;
  wire stream_data_fifo_reg_64_127_12_14_n_2;
  wire stream_data_fifo_reg_64_127_15_15_n_0;
  wire stream_data_fifo_reg_64_127_3_5_n_0;
  wire stream_data_fifo_reg_64_127_3_5_n_1;
  wire stream_data_fifo_reg_64_127_3_5_n_2;
  wire stream_data_fifo_reg_64_127_6_8_n_0;
  wire stream_data_fifo_reg_64_127_6_8_n_1;
  wire stream_data_fifo_reg_64_127_6_8_n_2;
  wire stream_data_fifo_reg_64_127_9_11_n_0;
  wire stream_data_fifo_reg_64_127_9_11_n_1;
  wire stream_data_fifo_reg_64_127_9_11_n_2;
  wire stream_data_fifo_reg_704_767_0_2_i_1__0_n_0;
  wire stream_data_fifo_reg_704_767_0_2_n_0;
  wire stream_data_fifo_reg_704_767_0_2_n_1;
  wire stream_data_fifo_reg_704_767_0_2_n_2;
  wire stream_data_fifo_reg_704_767_12_14_n_0;
  wire stream_data_fifo_reg_704_767_12_14_n_1;
  wire stream_data_fifo_reg_704_767_12_14_n_2;
  wire stream_data_fifo_reg_704_767_15_15_n_0;
  wire stream_data_fifo_reg_704_767_3_5_n_0;
  wire stream_data_fifo_reg_704_767_3_5_n_1;
  wire stream_data_fifo_reg_704_767_3_5_n_2;
  wire stream_data_fifo_reg_704_767_6_8_n_0;
  wire stream_data_fifo_reg_704_767_6_8_n_1;
  wire stream_data_fifo_reg_704_767_6_8_n_2;
  wire stream_data_fifo_reg_704_767_9_11_n_0;
  wire stream_data_fifo_reg_704_767_9_11_n_1;
  wire stream_data_fifo_reg_704_767_9_11_n_2;
  wire stream_data_fifo_reg_768_831_0_2_i_1__0_n_0;
  wire stream_data_fifo_reg_768_831_0_2_n_0;
  wire stream_data_fifo_reg_768_831_0_2_n_1;
  wire stream_data_fifo_reg_768_831_0_2_n_2;
  wire stream_data_fifo_reg_768_831_12_14_n_0;
  wire stream_data_fifo_reg_768_831_12_14_n_1;
  wire stream_data_fifo_reg_768_831_12_14_n_2;
  wire stream_data_fifo_reg_768_831_15_15_n_0;
  wire stream_data_fifo_reg_768_831_3_5_n_0;
  wire stream_data_fifo_reg_768_831_3_5_n_1;
  wire stream_data_fifo_reg_768_831_3_5_n_2;
  wire stream_data_fifo_reg_768_831_6_8_n_0;
  wire stream_data_fifo_reg_768_831_6_8_n_1;
  wire stream_data_fifo_reg_768_831_6_8_n_2;
  wire stream_data_fifo_reg_768_831_9_11_n_0;
  wire stream_data_fifo_reg_768_831_9_11_n_1;
  wire stream_data_fifo_reg_768_831_9_11_n_2;
  wire stream_data_fifo_reg_832_895_0_2_i_1__0_n_0;
  wire stream_data_fifo_reg_832_895_0_2_n_0;
  wire stream_data_fifo_reg_832_895_0_2_n_1;
  wire stream_data_fifo_reg_832_895_0_2_n_2;
  wire stream_data_fifo_reg_832_895_12_14_n_0;
  wire stream_data_fifo_reg_832_895_12_14_n_1;
  wire stream_data_fifo_reg_832_895_12_14_n_2;
  wire stream_data_fifo_reg_832_895_15_15_n_0;
  wire stream_data_fifo_reg_832_895_3_5_n_0;
  wire stream_data_fifo_reg_832_895_3_5_n_1;
  wire stream_data_fifo_reg_832_895_3_5_n_2;
  wire stream_data_fifo_reg_832_895_6_8_n_0;
  wire stream_data_fifo_reg_832_895_6_8_n_1;
  wire stream_data_fifo_reg_832_895_6_8_n_2;
  wire stream_data_fifo_reg_832_895_9_11_n_0;
  wire stream_data_fifo_reg_832_895_9_11_n_1;
  wire stream_data_fifo_reg_832_895_9_11_n_2;
  wire stream_data_fifo_reg_896_959_0_2_i_1__0_n_0;
  wire stream_data_fifo_reg_896_959_0_2_n_0;
  wire stream_data_fifo_reg_896_959_0_2_n_1;
  wire stream_data_fifo_reg_896_959_0_2_n_2;
  wire stream_data_fifo_reg_896_959_12_14_n_0;
  wire stream_data_fifo_reg_896_959_12_14_n_1;
  wire stream_data_fifo_reg_896_959_12_14_n_2;
  wire stream_data_fifo_reg_896_959_15_15_n_0;
  wire stream_data_fifo_reg_896_959_3_5_n_0;
  wire stream_data_fifo_reg_896_959_3_5_n_1;
  wire stream_data_fifo_reg_896_959_3_5_n_2;
  wire stream_data_fifo_reg_896_959_6_8_n_0;
  wire stream_data_fifo_reg_896_959_6_8_n_1;
  wire stream_data_fifo_reg_896_959_6_8_n_2;
  wire stream_data_fifo_reg_896_959_9_11_n_0;
  wire stream_data_fifo_reg_896_959_9_11_n_1;
  wire stream_data_fifo_reg_896_959_9_11_n_2;
  wire stream_data_fifo_reg_960_1023_0_2_i_1__0_n_0;
  wire stream_data_fifo_reg_960_1023_0_2_n_0;
  wire stream_data_fifo_reg_960_1023_0_2_n_1;
  wire stream_data_fifo_reg_960_1023_0_2_n_2;
  wire stream_data_fifo_reg_960_1023_12_14_n_0;
  wire stream_data_fifo_reg_960_1023_12_14_n_1;
  wire stream_data_fifo_reg_960_1023_12_14_n_2;
  wire stream_data_fifo_reg_960_1023_15_15_n_0;
  wire stream_data_fifo_reg_960_1023_3_5_n_0;
  wire stream_data_fifo_reg_960_1023_3_5_n_1;
  wire stream_data_fifo_reg_960_1023_3_5_n_2;
  wire stream_data_fifo_reg_960_1023_6_8_n_0;
  wire stream_data_fifo_reg_960_1023_6_8_n_1;
  wire stream_data_fifo_reg_960_1023_6_8_n_2;
  wire stream_data_fifo_reg_960_1023_9_11_n_0;
  wire stream_data_fifo_reg_960_1023_9_11_n_1;
  wire stream_data_fifo_reg_960_1023_9_11_n_2;
  wire [0:0]sum0;
  wire [0:0]sum0_0;
  wire \sum_reg[0] ;
  wire \write_pointer[0]_i_1__0_n_0 ;
  wire \write_pointer[1]_i_1__0_n_0 ;
  wire \write_pointer[2]_i_1__0_n_0 ;
  wire \write_pointer[3]_i_1__0_n_0 ;
  wire \write_pointer[4]_i_1__0_n_0 ;
  wire \write_pointer[5]_i_1__0_n_0 ;
  wire \write_pointer[5]_i_2_n_0 ;
  wire \write_pointer[6]_i_1__0_n_0 ;
  wire \write_pointer[7]_i_1__0_n_0 ;
  wire \write_pointer[8]_i_1__0_n_0 ;
  wire \write_pointer[9]_i_1__0_n_0 ;
  wire \write_pointer[9]_i_2__0_n_0 ;
  wire \write_pointer[9]_i_3__0_n_0 ;
  wire \write_pointer[9]_i_4__0_n_0 ;
  wire \write_pointer[9]_i_5__0_n_0 ;
  wire \write_pointer[9]_i_6__0_n_0 ;
  wire [0:0]\write_pointer_reg[9]_0 ;
  wire writes_done_i_1__0_n_0;
  wire writes_done_i_2_n_0;
  wire writes_done_reg_n_0;
  wire NLW_stream_data_fifo_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_0_63_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_0_63_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_0_63_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_128_191_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_128_191_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_128_191_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_128_191_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_128_191_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_128_191_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_192_255_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_192_255_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_192_255_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_192_255_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_192_255_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_192_255_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_256_319_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_256_319_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_256_319_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_256_319_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_256_319_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_256_319_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_320_383_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_320_383_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_320_383_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_320_383_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_320_383_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_320_383_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_384_447_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_384_447_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_384_447_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_384_447_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_384_447_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_384_447_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_448_511_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_448_511_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_448_511_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_448_511_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_448_511_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_448_511_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_512_575_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_512_575_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_512_575_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_512_575_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_512_575_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_512_575_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_576_639_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_576_639_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_576_639_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_576_639_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_576_639_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_576_639_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_640_703_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_640_703_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_640_703_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_640_703_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_640_703_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_640_703_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_64_127_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_64_127_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_64_127_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_64_127_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_704_767_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_704_767_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_704_767_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_704_767_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_704_767_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_704_767_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_768_831_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_768_831_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_768_831_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_768_831_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_768_831_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_768_831_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_832_895_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_832_895_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_832_895_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_832_895_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_832_895_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_832_895_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_896_959_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_896_959_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_896_959_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_896_959_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_896_959_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_896_959_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_960_1023_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_960_1023_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_960_1023_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_960_1023_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_960_1023_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_960_1023_9_11_DOD_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \fifo_read[9]_i_1 
       (.I0(CO),
        .I1(\write_pointer_reg[9]_0 ),
        .I2(data_ready),
        .O(\fifo_read_reg[0]_rep__3 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \fifo_read[9]_i_3 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(ADDRA),
        .I5(Q[5]),
        .O(\fifo_read_reg[9] ));
  MUXF8 golden_read_data_mag0_i_1
       (.I0(golden_read_data_mag0_i_17_n_0),
        .I1(golden_read_data_mag0_i_18_n_0),
        .O(B[15]),
        .S(Q[9]));
  MUXF8 golden_read_data_mag0_i_10
       (.I0(golden_read_data_mag0_i_35_n_0),
        .I1(golden_read_data_mag0_i_36_n_0),
        .O(B[6]),
        .S(Q[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_100
       (.I0(stream_data_fifo_reg_960_1023_3_5_n_0),
        .I1(stream_data_fifo_reg_896_959_3_5_n_0),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_832_895_3_5_n_0),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_768_831_3_5_n_0),
        .O(golden_read_data_mag0_i_100_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_101
       (.I0(stream_data_fifo_reg_192_255_0_2_n_2),
        .I1(stream_data_fifo_reg_128_191_0_2_n_2),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_64_127_0_2_n_2),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_0_63_0_2_n_2),
        .O(golden_read_data_mag0_i_101_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_102
       (.I0(stream_data_fifo_reg_448_511_0_2_n_2),
        .I1(stream_data_fifo_reg_384_447_0_2_n_2),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_320_383_0_2_n_2),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_256_319_0_2_n_2),
        .O(golden_read_data_mag0_i_102_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_103
       (.I0(stream_data_fifo_reg_704_767_0_2_n_2),
        .I1(stream_data_fifo_reg_640_703_0_2_n_2),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_576_639_0_2_n_2),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_512_575_0_2_n_2),
        .O(golden_read_data_mag0_i_103_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_104
       (.I0(stream_data_fifo_reg_960_1023_0_2_n_2),
        .I1(stream_data_fifo_reg_896_959_0_2_n_2),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_832_895_0_2_n_2),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_768_831_0_2_n_2),
        .O(golden_read_data_mag0_i_104_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_105
       (.I0(stream_data_fifo_reg_192_255_0_2_n_1),
        .I1(stream_data_fifo_reg_128_191_0_2_n_1),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_64_127_0_2_n_1),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_0_63_0_2_n_1),
        .O(golden_read_data_mag0_i_105_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_106
       (.I0(stream_data_fifo_reg_448_511_0_2_n_1),
        .I1(stream_data_fifo_reg_384_447_0_2_n_1),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_320_383_0_2_n_1),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_256_319_0_2_n_1),
        .O(golden_read_data_mag0_i_106_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_107
       (.I0(stream_data_fifo_reg_704_767_0_2_n_1),
        .I1(stream_data_fifo_reg_640_703_0_2_n_1),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_576_639_0_2_n_1),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_512_575_0_2_n_1),
        .O(golden_read_data_mag0_i_107_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_108
       (.I0(stream_data_fifo_reg_960_1023_0_2_n_1),
        .I1(stream_data_fifo_reg_896_959_0_2_n_1),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_832_895_0_2_n_1),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_768_831_0_2_n_1),
        .O(golden_read_data_mag0_i_108_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_109
       (.I0(stream_data_fifo_reg_192_255_0_2_n_0),
        .I1(stream_data_fifo_reg_128_191_0_2_n_0),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_64_127_0_2_n_0),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_0_63_0_2_n_0),
        .O(golden_read_data_mag0_i_109_n_0));
  MUXF8 golden_read_data_mag0_i_11
       (.I0(golden_read_data_mag0_i_37_n_0),
        .I1(golden_read_data_mag0_i_38_n_0),
        .O(B[5]),
        .S(Q[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_110
       (.I0(stream_data_fifo_reg_448_511_0_2_n_0),
        .I1(stream_data_fifo_reg_384_447_0_2_n_0),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_320_383_0_2_n_0),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_256_319_0_2_n_0),
        .O(golden_read_data_mag0_i_110_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_111
       (.I0(stream_data_fifo_reg_704_767_0_2_n_0),
        .I1(stream_data_fifo_reg_640_703_0_2_n_0),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_576_639_0_2_n_0),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_512_575_0_2_n_0),
        .O(golden_read_data_mag0_i_111_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_112
       (.I0(stream_data_fifo_reg_960_1023_0_2_n_0),
        .I1(stream_data_fifo_reg_896_959_0_2_n_0),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_832_895_0_2_n_0),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_768_831_0_2_n_0),
        .O(golden_read_data_mag0_i_112_n_0));
  MUXF8 golden_read_data_mag0_i_12
       (.I0(golden_read_data_mag0_i_39_n_0),
        .I1(golden_read_data_mag0_i_40_n_0),
        .O(B[4]),
        .S(Q[9]));
  MUXF8 golden_read_data_mag0_i_13
       (.I0(golden_read_data_mag0_i_41_n_0),
        .I1(golden_read_data_mag0_i_42_n_0),
        .O(B[3]),
        .S(Q[9]));
  MUXF8 golden_read_data_mag0_i_14
       (.I0(golden_read_data_mag0_i_43_n_0),
        .I1(golden_read_data_mag0_i_44_n_0),
        .O(B[2]),
        .S(Q[9]));
  MUXF8 golden_read_data_mag0_i_15
       (.I0(golden_read_data_mag0_i_45_n_0),
        .I1(golden_read_data_mag0_i_46_n_0),
        .O(B[1]),
        .S(Q[9]));
  MUXF8 golden_read_data_mag0_i_16
       (.I0(golden_read_data_mag0_i_47_n_0),
        .I1(golden_read_data_mag0_i_48_n_0),
        .O(B[0]),
        .S(Q[9]));
  MUXF7 golden_read_data_mag0_i_17
       (.I0(golden_read_data_mag0_i_49_n_0),
        .I1(golden_read_data_mag0_i_50_n_0),
        .O(golden_read_data_mag0_i_17_n_0),
        .S(Q[8]));
  MUXF7 golden_read_data_mag0_i_18
       (.I0(golden_read_data_mag0_i_51_n_0),
        .I1(golden_read_data_mag0_i_52_n_0),
        .O(golden_read_data_mag0_i_18_n_0),
        .S(Q[8]));
  MUXF7 golden_read_data_mag0_i_19
       (.I0(golden_read_data_mag0_i_53_n_0),
        .I1(golden_read_data_mag0_i_54_n_0),
        .O(golden_read_data_mag0_i_19_n_0),
        .S(Q[8]));
  MUXF8 golden_read_data_mag0_i_2
       (.I0(golden_read_data_mag0_i_19_n_0),
        .I1(golden_read_data_mag0_i_20_n_0),
        .O(B[14]),
        .S(Q[9]));
  MUXF7 golden_read_data_mag0_i_20
       (.I0(golden_read_data_mag0_i_55_n_0),
        .I1(golden_read_data_mag0_i_56_n_0),
        .O(golden_read_data_mag0_i_20_n_0),
        .S(Q[8]));
  MUXF7 golden_read_data_mag0_i_21
       (.I0(golden_read_data_mag0_i_57_n_0),
        .I1(golden_read_data_mag0_i_58_n_0),
        .O(golden_read_data_mag0_i_21_n_0),
        .S(Q[8]));
  MUXF7 golden_read_data_mag0_i_22
       (.I0(golden_read_data_mag0_i_59_n_0),
        .I1(golden_read_data_mag0_i_60_n_0),
        .O(golden_read_data_mag0_i_22_n_0),
        .S(Q[8]));
  MUXF7 golden_read_data_mag0_i_23
       (.I0(golden_read_data_mag0_i_61_n_0),
        .I1(golden_read_data_mag0_i_62_n_0),
        .O(golden_read_data_mag0_i_23_n_0),
        .S(Q[8]));
  MUXF7 golden_read_data_mag0_i_24
       (.I0(golden_read_data_mag0_i_63_n_0),
        .I1(golden_read_data_mag0_i_64_n_0),
        .O(golden_read_data_mag0_i_24_n_0),
        .S(Q[8]));
  MUXF7 golden_read_data_mag0_i_25
       (.I0(golden_read_data_mag0_i_65_n_0),
        .I1(golden_read_data_mag0_i_66_n_0),
        .O(golden_read_data_mag0_i_25_n_0),
        .S(Q[8]));
  MUXF7 golden_read_data_mag0_i_26
       (.I0(golden_read_data_mag0_i_67_n_0),
        .I1(golden_read_data_mag0_i_68_n_0),
        .O(golden_read_data_mag0_i_26_n_0),
        .S(Q[8]));
  MUXF7 golden_read_data_mag0_i_27
       (.I0(golden_read_data_mag0_i_69_n_0),
        .I1(golden_read_data_mag0_i_70_n_0),
        .O(golden_read_data_mag0_i_27_n_0),
        .S(Q[8]));
  MUXF7 golden_read_data_mag0_i_28
       (.I0(golden_read_data_mag0_i_71_n_0),
        .I1(golden_read_data_mag0_i_72_n_0),
        .O(golden_read_data_mag0_i_28_n_0),
        .S(Q[8]));
  MUXF7 golden_read_data_mag0_i_29
       (.I0(golden_read_data_mag0_i_73_n_0),
        .I1(golden_read_data_mag0_i_74_n_0),
        .O(golden_read_data_mag0_i_29_n_0),
        .S(Q[8]));
  MUXF8 golden_read_data_mag0_i_3
       (.I0(golden_read_data_mag0_i_21_n_0),
        .I1(golden_read_data_mag0_i_22_n_0),
        .O(B[13]),
        .S(Q[9]));
  MUXF7 golden_read_data_mag0_i_30
       (.I0(golden_read_data_mag0_i_75_n_0),
        .I1(golden_read_data_mag0_i_76_n_0),
        .O(golden_read_data_mag0_i_30_n_0),
        .S(Q[8]));
  MUXF7 golden_read_data_mag0_i_31
       (.I0(golden_read_data_mag0_i_77_n_0),
        .I1(golden_read_data_mag0_i_78_n_0),
        .O(golden_read_data_mag0_i_31_n_0),
        .S(Q[8]));
  MUXF7 golden_read_data_mag0_i_32
       (.I0(golden_read_data_mag0_i_79_n_0),
        .I1(golden_read_data_mag0_i_80_n_0),
        .O(golden_read_data_mag0_i_32_n_0),
        .S(Q[8]));
  MUXF7 golden_read_data_mag0_i_33
       (.I0(golden_read_data_mag0_i_81_n_0),
        .I1(golden_read_data_mag0_i_82_n_0),
        .O(golden_read_data_mag0_i_33_n_0),
        .S(Q[8]));
  MUXF7 golden_read_data_mag0_i_34
       (.I0(golden_read_data_mag0_i_83_n_0),
        .I1(golden_read_data_mag0_i_84_n_0),
        .O(golden_read_data_mag0_i_34_n_0),
        .S(Q[8]));
  MUXF7 golden_read_data_mag0_i_35
       (.I0(golden_read_data_mag0_i_85_n_0),
        .I1(golden_read_data_mag0_i_86_n_0),
        .O(golden_read_data_mag0_i_35_n_0),
        .S(Q[8]));
  MUXF7 golden_read_data_mag0_i_36
       (.I0(golden_read_data_mag0_i_87_n_0),
        .I1(golden_read_data_mag0_i_88_n_0),
        .O(golden_read_data_mag0_i_36_n_0),
        .S(Q[8]));
  MUXF7 golden_read_data_mag0_i_37
       (.I0(golden_read_data_mag0_i_89_n_0),
        .I1(golden_read_data_mag0_i_90_n_0),
        .O(golden_read_data_mag0_i_37_n_0),
        .S(Q[8]));
  MUXF7 golden_read_data_mag0_i_38
       (.I0(golden_read_data_mag0_i_91_n_0),
        .I1(golden_read_data_mag0_i_92_n_0),
        .O(golden_read_data_mag0_i_38_n_0),
        .S(Q[8]));
  MUXF7 golden_read_data_mag0_i_39
       (.I0(golden_read_data_mag0_i_93_n_0),
        .I1(golden_read_data_mag0_i_94_n_0),
        .O(golden_read_data_mag0_i_39_n_0),
        .S(Q[8]));
  MUXF8 golden_read_data_mag0_i_4
       (.I0(golden_read_data_mag0_i_23_n_0),
        .I1(golden_read_data_mag0_i_24_n_0),
        .O(B[12]),
        .S(Q[9]));
  MUXF7 golden_read_data_mag0_i_40
       (.I0(golden_read_data_mag0_i_95_n_0),
        .I1(golden_read_data_mag0_i_96_n_0),
        .O(golden_read_data_mag0_i_40_n_0),
        .S(Q[8]));
  MUXF7 golden_read_data_mag0_i_41
       (.I0(golden_read_data_mag0_i_97_n_0),
        .I1(golden_read_data_mag0_i_98_n_0),
        .O(golden_read_data_mag0_i_41_n_0),
        .S(Q[8]));
  MUXF7 golden_read_data_mag0_i_42
       (.I0(golden_read_data_mag0_i_99_n_0),
        .I1(golden_read_data_mag0_i_100_n_0),
        .O(golden_read_data_mag0_i_42_n_0),
        .S(Q[8]));
  MUXF7 golden_read_data_mag0_i_43
       (.I0(golden_read_data_mag0_i_101_n_0),
        .I1(golden_read_data_mag0_i_102_n_0),
        .O(golden_read_data_mag0_i_43_n_0),
        .S(Q[8]));
  MUXF7 golden_read_data_mag0_i_44
       (.I0(golden_read_data_mag0_i_103_n_0),
        .I1(golden_read_data_mag0_i_104_n_0),
        .O(golden_read_data_mag0_i_44_n_0),
        .S(Q[8]));
  MUXF7 golden_read_data_mag0_i_45
       (.I0(golden_read_data_mag0_i_105_n_0),
        .I1(golden_read_data_mag0_i_106_n_0),
        .O(golden_read_data_mag0_i_45_n_0),
        .S(Q[8]));
  MUXF7 golden_read_data_mag0_i_46
       (.I0(golden_read_data_mag0_i_107_n_0),
        .I1(golden_read_data_mag0_i_108_n_0),
        .O(golden_read_data_mag0_i_46_n_0),
        .S(Q[8]));
  MUXF7 golden_read_data_mag0_i_47
       (.I0(golden_read_data_mag0_i_109_n_0),
        .I1(golden_read_data_mag0_i_110_n_0),
        .O(golden_read_data_mag0_i_47_n_0),
        .S(Q[8]));
  MUXF7 golden_read_data_mag0_i_48
       (.I0(golden_read_data_mag0_i_111_n_0),
        .I1(golden_read_data_mag0_i_112_n_0),
        .O(golden_read_data_mag0_i_48_n_0),
        .S(Q[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_49
       (.I0(stream_data_fifo_reg_192_255_15_15_n_0),
        .I1(stream_data_fifo_reg_128_191_15_15_n_0),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_64_127_15_15_n_0),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_0_63_15_15_n_0),
        .O(golden_read_data_mag0_i_49_n_0));
  MUXF8 golden_read_data_mag0_i_5
       (.I0(golden_read_data_mag0_i_25_n_0),
        .I1(golden_read_data_mag0_i_26_n_0),
        .O(B[11]),
        .S(Q[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_50
       (.I0(stream_data_fifo_reg_448_511_15_15_n_0),
        .I1(stream_data_fifo_reg_384_447_15_15_n_0),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_320_383_15_15_n_0),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_256_319_15_15_n_0),
        .O(golden_read_data_mag0_i_50_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_51
       (.I0(stream_data_fifo_reg_704_767_15_15_n_0),
        .I1(stream_data_fifo_reg_640_703_15_15_n_0),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_576_639_15_15_n_0),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_512_575_15_15_n_0),
        .O(golden_read_data_mag0_i_51_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_52
       (.I0(stream_data_fifo_reg_960_1023_15_15_n_0),
        .I1(stream_data_fifo_reg_896_959_15_15_n_0),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_832_895_15_15_n_0),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_768_831_15_15_n_0),
        .O(golden_read_data_mag0_i_52_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_53
       (.I0(stream_data_fifo_reg_192_255_12_14_n_2),
        .I1(stream_data_fifo_reg_128_191_12_14_n_2),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_64_127_12_14_n_2),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_0_63_12_14_n_2),
        .O(golden_read_data_mag0_i_53_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_54
       (.I0(stream_data_fifo_reg_448_511_12_14_n_2),
        .I1(stream_data_fifo_reg_384_447_12_14_n_2),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_320_383_12_14_n_2),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_256_319_12_14_n_2),
        .O(golden_read_data_mag0_i_54_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_55
       (.I0(stream_data_fifo_reg_704_767_12_14_n_2),
        .I1(stream_data_fifo_reg_640_703_12_14_n_2),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_576_639_12_14_n_2),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_512_575_12_14_n_2),
        .O(golden_read_data_mag0_i_55_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_56
       (.I0(stream_data_fifo_reg_960_1023_12_14_n_2),
        .I1(stream_data_fifo_reg_896_959_12_14_n_2),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_832_895_12_14_n_2),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_768_831_12_14_n_2),
        .O(golden_read_data_mag0_i_56_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_57
       (.I0(stream_data_fifo_reg_192_255_12_14_n_1),
        .I1(stream_data_fifo_reg_128_191_12_14_n_1),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_64_127_12_14_n_1),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_0_63_12_14_n_1),
        .O(golden_read_data_mag0_i_57_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_58
       (.I0(stream_data_fifo_reg_448_511_12_14_n_1),
        .I1(stream_data_fifo_reg_384_447_12_14_n_1),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_320_383_12_14_n_1),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_256_319_12_14_n_1),
        .O(golden_read_data_mag0_i_58_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_59
       (.I0(stream_data_fifo_reg_704_767_12_14_n_1),
        .I1(stream_data_fifo_reg_640_703_12_14_n_1),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_576_639_12_14_n_1),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_512_575_12_14_n_1),
        .O(golden_read_data_mag0_i_59_n_0));
  MUXF8 golden_read_data_mag0_i_6
       (.I0(golden_read_data_mag0_i_27_n_0),
        .I1(golden_read_data_mag0_i_28_n_0),
        .O(B[10]),
        .S(Q[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_60
       (.I0(stream_data_fifo_reg_960_1023_12_14_n_1),
        .I1(stream_data_fifo_reg_896_959_12_14_n_1),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_832_895_12_14_n_1),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_768_831_12_14_n_1),
        .O(golden_read_data_mag0_i_60_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_61
       (.I0(stream_data_fifo_reg_192_255_12_14_n_0),
        .I1(stream_data_fifo_reg_128_191_12_14_n_0),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_64_127_12_14_n_0),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_0_63_12_14_n_0),
        .O(golden_read_data_mag0_i_61_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_62
       (.I0(stream_data_fifo_reg_448_511_12_14_n_0),
        .I1(stream_data_fifo_reg_384_447_12_14_n_0),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_320_383_12_14_n_0),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_256_319_12_14_n_0),
        .O(golden_read_data_mag0_i_62_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_63
       (.I0(stream_data_fifo_reg_704_767_12_14_n_0),
        .I1(stream_data_fifo_reg_640_703_12_14_n_0),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_576_639_12_14_n_0),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_512_575_12_14_n_0),
        .O(golden_read_data_mag0_i_63_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_64
       (.I0(stream_data_fifo_reg_960_1023_12_14_n_0),
        .I1(stream_data_fifo_reg_896_959_12_14_n_0),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_832_895_12_14_n_0),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_768_831_12_14_n_0),
        .O(golden_read_data_mag0_i_64_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_65
       (.I0(stream_data_fifo_reg_192_255_9_11_n_2),
        .I1(stream_data_fifo_reg_128_191_9_11_n_2),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_64_127_9_11_n_2),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_0_63_9_11_n_2),
        .O(golden_read_data_mag0_i_65_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_66
       (.I0(stream_data_fifo_reg_448_511_9_11_n_2),
        .I1(stream_data_fifo_reg_384_447_9_11_n_2),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_320_383_9_11_n_2),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_256_319_9_11_n_2),
        .O(golden_read_data_mag0_i_66_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_67
       (.I0(stream_data_fifo_reg_704_767_9_11_n_2),
        .I1(stream_data_fifo_reg_640_703_9_11_n_2),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_576_639_9_11_n_2),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_512_575_9_11_n_2),
        .O(golden_read_data_mag0_i_67_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_68
       (.I0(stream_data_fifo_reg_960_1023_9_11_n_2),
        .I1(stream_data_fifo_reg_896_959_9_11_n_2),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_832_895_9_11_n_2),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_768_831_9_11_n_2),
        .O(golden_read_data_mag0_i_68_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_69
       (.I0(stream_data_fifo_reg_192_255_9_11_n_1),
        .I1(stream_data_fifo_reg_128_191_9_11_n_1),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_64_127_9_11_n_1),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_0_63_9_11_n_1),
        .O(golden_read_data_mag0_i_69_n_0));
  MUXF8 golden_read_data_mag0_i_7
       (.I0(golden_read_data_mag0_i_29_n_0),
        .I1(golden_read_data_mag0_i_30_n_0),
        .O(B[9]),
        .S(Q[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_70
       (.I0(stream_data_fifo_reg_448_511_9_11_n_1),
        .I1(stream_data_fifo_reg_384_447_9_11_n_1),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_320_383_9_11_n_1),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_256_319_9_11_n_1),
        .O(golden_read_data_mag0_i_70_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_71
       (.I0(stream_data_fifo_reg_704_767_9_11_n_1),
        .I1(stream_data_fifo_reg_640_703_9_11_n_1),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_576_639_9_11_n_1),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_512_575_9_11_n_1),
        .O(golden_read_data_mag0_i_71_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_72
       (.I0(stream_data_fifo_reg_960_1023_9_11_n_1),
        .I1(stream_data_fifo_reg_896_959_9_11_n_1),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_832_895_9_11_n_1),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_768_831_9_11_n_1),
        .O(golden_read_data_mag0_i_72_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_73
       (.I0(stream_data_fifo_reg_192_255_9_11_n_0),
        .I1(stream_data_fifo_reg_128_191_9_11_n_0),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_64_127_9_11_n_0),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_0_63_9_11_n_0),
        .O(golden_read_data_mag0_i_73_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_74
       (.I0(stream_data_fifo_reg_448_511_9_11_n_0),
        .I1(stream_data_fifo_reg_384_447_9_11_n_0),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_320_383_9_11_n_0),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_256_319_9_11_n_0),
        .O(golden_read_data_mag0_i_74_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_75
       (.I0(stream_data_fifo_reg_704_767_9_11_n_0),
        .I1(stream_data_fifo_reg_640_703_9_11_n_0),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_576_639_9_11_n_0),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_512_575_9_11_n_0),
        .O(golden_read_data_mag0_i_75_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_76
       (.I0(stream_data_fifo_reg_960_1023_9_11_n_0),
        .I1(stream_data_fifo_reg_896_959_9_11_n_0),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_832_895_9_11_n_0),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_768_831_9_11_n_0),
        .O(golden_read_data_mag0_i_76_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_77
       (.I0(stream_data_fifo_reg_192_255_6_8_n_2),
        .I1(stream_data_fifo_reg_128_191_6_8_n_2),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_64_127_6_8_n_2),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_0_63_6_8_n_2),
        .O(golden_read_data_mag0_i_77_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_78
       (.I0(stream_data_fifo_reg_448_511_6_8_n_2),
        .I1(stream_data_fifo_reg_384_447_6_8_n_2),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_320_383_6_8_n_2),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_256_319_6_8_n_2),
        .O(golden_read_data_mag0_i_78_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_79
       (.I0(stream_data_fifo_reg_704_767_6_8_n_2),
        .I1(stream_data_fifo_reg_640_703_6_8_n_2),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_576_639_6_8_n_2),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_512_575_6_8_n_2),
        .O(golden_read_data_mag0_i_79_n_0));
  MUXF8 golden_read_data_mag0_i_8
       (.I0(golden_read_data_mag0_i_31_n_0),
        .I1(golden_read_data_mag0_i_32_n_0),
        .O(B[8]),
        .S(Q[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_80
       (.I0(stream_data_fifo_reg_960_1023_6_8_n_2),
        .I1(stream_data_fifo_reg_896_959_6_8_n_2),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_832_895_6_8_n_2),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_768_831_6_8_n_2),
        .O(golden_read_data_mag0_i_80_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_81
       (.I0(stream_data_fifo_reg_192_255_6_8_n_1),
        .I1(stream_data_fifo_reg_128_191_6_8_n_1),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_64_127_6_8_n_1),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_0_63_6_8_n_1),
        .O(golden_read_data_mag0_i_81_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_82
       (.I0(stream_data_fifo_reg_448_511_6_8_n_1),
        .I1(stream_data_fifo_reg_384_447_6_8_n_1),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_320_383_6_8_n_1),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_256_319_6_8_n_1),
        .O(golden_read_data_mag0_i_82_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_83
       (.I0(stream_data_fifo_reg_704_767_6_8_n_1),
        .I1(stream_data_fifo_reg_640_703_6_8_n_1),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_576_639_6_8_n_1),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_512_575_6_8_n_1),
        .O(golden_read_data_mag0_i_83_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_84
       (.I0(stream_data_fifo_reg_960_1023_6_8_n_1),
        .I1(stream_data_fifo_reg_896_959_6_8_n_1),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_832_895_6_8_n_1),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_768_831_6_8_n_1),
        .O(golden_read_data_mag0_i_84_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_85
       (.I0(stream_data_fifo_reg_192_255_6_8_n_0),
        .I1(stream_data_fifo_reg_128_191_6_8_n_0),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_64_127_6_8_n_0),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_0_63_6_8_n_0),
        .O(golden_read_data_mag0_i_85_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_86
       (.I0(stream_data_fifo_reg_448_511_6_8_n_0),
        .I1(stream_data_fifo_reg_384_447_6_8_n_0),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_320_383_6_8_n_0),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_256_319_6_8_n_0),
        .O(golden_read_data_mag0_i_86_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_87
       (.I0(stream_data_fifo_reg_704_767_6_8_n_0),
        .I1(stream_data_fifo_reg_640_703_6_8_n_0),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_576_639_6_8_n_0),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_512_575_6_8_n_0),
        .O(golden_read_data_mag0_i_87_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_88
       (.I0(stream_data_fifo_reg_960_1023_6_8_n_0),
        .I1(stream_data_fifo_reg_896_959_6_8_n_0),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_832_895_6_8_n_0),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_768_831_6_8_n_0),
        .O(golden_read_data_mag0_i_88_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_89
       (.I0(stream_data_fifo_reg_192_255_3_5_n_2),
        .I1(stream_data_fifo_reg_128_191_3_5_n_2),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_64_127_3_5_n_2),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_0_63_3_5_n_2),
        .O(golden_read_data_mag0_i_89_n_0));
  MUXF8 golden_read_data_mag0_i_9
       (.I0(golden_read_data_mag0_i_33_n_0),
        .I1(golden_read_data_mag0_i_34_n_0),
        .O(B[7]),
        .S(Q[9]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_90
       (.I0(stream_data_fifo_reg_448_511_3_5_n_2),
        .I1(stream_data_fifo_reg_384_447_3_5_n_2),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_320_383_3_5_n_2),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_256_319_3_5_n_2),
        .O(golden_read_data_mag0_i_90_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_91
       (.I0(stream_data_fifo_reg_704_767_3_5_n_2),
        .I1(stream_data_fifo_reg_640_703_3_5_n_2),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_576_639_3_5_n_2),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_512_575_3_5_n_2),
        .O(golden_read_data_mag0_i_91_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_92
       (.I0(stream_data_fifo_reg_960_1023_3_5_n_2),
        .I1(stream_data_fifo_reg_896_959_3_5_n_2),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_832_895_3_5_n_2),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_768_831_3_5_n_2),
        .O(golden_read_data_mag0_i_92_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_93
       (.I0(stream_data_fifo_reg_192_255_3_5_n_1),
        .I1(stream_data_fifo_reg_128_191_3_5_n_1),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_64_127_3_5_n_1),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_0_63_3_5_n_1),
        .O(golden_read_data_mag0_i_93_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_94
       (.I0(stream_data_fifo_reg_448_511_3_5_n_1),
        .I1(stream_data_fifo_reg_384_447_3_5_n_1),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_320_383_3_5_n_1),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_256_319_3_5_n_1),
        .O(golden_read_data_mag0_i_94_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_95
       (.I0(stream_data_fifo_reg_704_767_3_5_n_1),
        .I1(stream_data_fifo_reg_640_703_3_5_n_1),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_576_639_3_5_n_1),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_512_575_3_5_n_1),
        .O(golden_read_data_mag0_i_95_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_96
       (.I0(stream_data_fifo_reg_960_1023_3_5_n_1),
        .I1(stream_data_fifo_reg_896_959_3_5_n_1),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_832_895_3_5_n_1),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_768_831_3_5_n_1),
        .O(golden_read_data_mag0_i_96_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_97
       (.I0(stream_data_fifo_reg_192_255_3_5_n_0),
        .I1(stream_data_fifo_reg_128_191_3_5_n_0),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_64_127_3_5_n_0),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_0_63_3_5_n_0),
        .O(golden_read_data_mag0_i_97_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_98
       (.I0(stream_data_fifo_reg_448_511_3_5_n_0),
        .I1(stream_data_fifo_reg_384_447_3_5_n_0),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_320_383_3_5_n_0),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_256_319_3_5_n_0),
        .O(golden_read_data_mag0_i_98_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    golden_read_data_mag0_i_99
       (.I0(stream_data_fifo_reg_704_767_3_5_n_0),
        .I1(stream_data_fifo_reg_640_703_3_5_n_0),
        .I2(Q[7]),
        .I3(stream_data_fifo_reg_576_639_3_5_n_0),
        .I4(Q[6]),
        .I5(stream_data_fifo_reg_512_575_3_5_n_0),
        .O(golden_read_data_mag0_i_99_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h2E00)) 
    mst_exec_state_i_1__0
       (.I0(golden_fft_axis_tvalid),
        .I1(golden_fft_axis_tready),
        .I2(writes_done_reg_n_0),
        .I3(golden_fft_axis_aresetn),
        .O(mst_exec_state_i_1__0_n_0));
  FDRE mst_exec_state_reg
       (.C(golden_fft_axis_aclk),
        .CE(1'b1),
        .D(mst_exec_state_i_1__0_n_0),
        .Q(golden_fft_axis_tready),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h22B2)) 
    restart2_carry__0_i_1
       (.I0(golden_fifo_write[9]),
        .I1(Q[9]),
        .I2(golden_fifo_write[8]),
        .I3(Q[8]),
        .O(sum0));
  LUT4 #(
    .INIT(16'h9009)) 
    restart2_carry__0_i_2
       (.I0(golden_fifo_write[9]),
        .I1(Q[9]),
        .I2(golden_fifo_write[8]),
        .I3(Q[8]),
        .O(sum0_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    restart2_carry_i_1
       (.I0(golden_fifo_write[7]),
        .I1(Q[7]),
        .I2(golden_fifo_write[6]),
        .I3(Q[6]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h22B2)) 
    restart2_carry_i_2
       (.I0(golden_fifo_write[5]),
        .I1(Q[5]),
        .I2(golden_fifo_write[4]),
        .I3(Q[4]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h22B2)) 
    restart2_carry_i_3
       (.I0(golden_fifo_write[3]),
        .I1(ADDRA),
        .I2(golden_fifo_write[2]),
        .I3(Q[2]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h7510)) 
    restart2_carry_i_4
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(golden_fifo_write[0]),
        .I3(golden_fifo_write[1]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    restart2_carry_i_5
       (.I0(golden_fifo_write[7]),
        .I1(Q[7]),
        .I2(golden_fifo_write[6]),
        .I3(Q[6]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    restart2_carry_i_6
       (.I0(golden_fifo_write[5]),
        .I1(Q[5]),
        .I2(golden_fifo_write[4]),
        .I3(Q[4]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    restart2_carry_i_7
       (.I0(golden_fifo_write[3]),
        .I1(ADDRA),
        .I2(golden_fifo_write[2]),
        .I3(Q[2]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h8421)) 
    restart2_carry_i_8
       (.I0(golden_fifo_write[1]),
        .I1(golden_fifo_write[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(S[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFFFFAAEA)) 
    \signal_read_data_mag[47]_i_1 
       (.I0(data_ready),
        .I1(CO),
        .I2(\write_pointer_reg[9]_0 ),
        .I3(restart),
        .I4(\sum_reg[0] ),
        .O(E));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_0_63_0_2
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1:0]}),
        .ADDRB({Q[5:2],\fifo_read_reg[3]_rep__3 [1:0]}),
        .ADDRC({Q[5:2],\fifo_read_reg[3]_rep__3 [1:0]}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[0]),
        .DIB(golden_fft_axis_tdata[1]),
        .DIC(golden_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_0_63_0_2_n_0),
        .DOB(stream_data_fifo_reg_0_63_0_2_n_1),
        .DOC(stream_data_fifo_reg_0_63_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_0_63_0_2_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    stream_data_fifo_reg_0_63_0_2_i_1__0
       (.I0(golden_fft_axis_tready),
        .I1(golden_fft_axis_tvalid),
        .I2(golden_fifo_write[7]),
        .I3(golden_fifo_write[6]),
        .I4(golden_fifo_write[9]),
        .I5(golden_fifo_write[8]),
        .O(stream_data_fifo_reg_0_63_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_0_63_12_14
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[12]),
        .DIB(golden_fft_axis_tdata[13]),
        .DIC(golden_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_0_63_12_14_n_0),
        .DOB(stream_data_fifo_reg_0_63_12_14_n_1),
        .DOC(stream_data_fifo_reg_0_63_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_0_63_12_14_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_0_63_0_2_i_1__0_n_0));
  RAM64X1D stream_data_fifo_reg_0_63_15_15
       (.A0(golden_fifo_write[0]),
        .A1(golden_fifo_write[1]),
        .A2(golden_fifo_write[2]),
        .A3(golden_fifo_write[3]),
        .A4(golden_fifo_write[4]),
        .A5(golden_fifo_write[5]),
        .D(golden_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_0_63_15_15_n_0),
        .DPRA0(\fifo_read_reg[3]_rep__1 [0]),
        .DPRA1(\fifo_read_reg[1]_rep__1 ),
        .DPRA2(Q[2]),
        .DPRA3(\fifo_read_reg[3]_rep__1 [2]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_stream_data_fifo_reg_0_63_15_15_SPO_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_0_63_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_0_63_3_5
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[3]),
        .DIB(golden_fft_axis_tdata[4]),
        .DIC(golden_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_0_63_3_5_n_0),
        .DOB(stream_data_fifo_reg_0_63_3_5_n_1),
        .DOC(stream_data_fifo_reg_0_63_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_0_63_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_0_63_6_8
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[6]),
        .DIB(golden_fft_axis_tdata[7]),
        .DIC(golden_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_0_63_6_8_n_0),
        .DOB(stream_data_fifo_reg_0_63_6_8_n_1),
        .DOC(stream_data_fifo_reg_0_63_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_0_63_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_0_63_9_11
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[9]),
        .DIB(golden_fft_axis_tdata[10]),
        .DIC(golden_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_0_63_9_11_n_0),
        .DOB(stream_data_fifo_reg_0_63_9_11_n_1),
        .DOC(stream_data_fifo_reg_0_63_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_0_63_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_128_191_0_2
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2:1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2:1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2:1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[0]),
        .DIB(golden_fft_axis_tdata[1]),
        .DIC(golden_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_128_191_0_2_n_0),
        .DOB(stream_data_fifo_reg_128_191_0_2_n_1),
        .DOC(stream_data_fifo_reg_128_191_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_128_191_0_2_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_128_191_0_2_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    stream_data_fifo_reg_128_191_0_2_i_1__0
       (.I0(golden_fft_axis_tready),
        .I1(golden_fft_axis_tvalid),
        .I2(golden_fifo_write[8]),
        .I3(golden_fifo_write[6]),
        .I4(golden_fifo_write[9]),
        .I5(golden_fifo_write[7]),
        .O(stream_data_fifo_reg_128_191_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_128_191_12_14
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[12]),
        .DIB(golden_fft_axis_tdata[13]),
        .DIC(golden_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_128_191_12_14_n_0),
        .DOB(stream_data_fifo_reg_128_191_12_14_n_1),
        .DOC(stream_data_fifo_reg_128_191_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_128_191_12_14_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_128_191_0_2_i_1__0_n_0));
  RAM64X1D stream_data_fifo_reg_128_191_15_15
       (.A0(golden_fifo_write[0]),
        .A1(golden_fifo_write[1]),
        .A2(golden_fifo_write[2]),
        .A3(golden_fifo_write[3]),
        .A4(golden_fifo_write[4]),
        .A5(golden_fifo_write[5]),
        .D(golden_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_128_191_15_15_n_0),
        .DPRA0(\fifo_read_reg[3]_rep__1 [0]),
        .DPRA1(\fifo_read_reg[1]_rep__1 ),
        .DPRA2(Q[2]),
        .DPRA3(\fifo_read_reg[3]_rep__1 [2]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_stream_data_fifo_reg_128_191_15_15_SPO_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_128_191_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_128_191_3_5
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[3]),
        .DIB(golden_fft_axis_tdata[4]),
        .DIC(golden_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_128_191_3_5_n_0),
        .DOB(stream_data_fifo_reg_128_191_3_5_n_1),
        .DOC(stream_data_fifo_reg_128_191_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_128_191_3_5_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_128_191_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_128_191_6_8
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[6]),
        .DIB(golden_fft_axis_tdata[7]),
        .DIC(golden_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_128_191_6_8_n_0),
        .DOB(stream_data_fifo_reg_128_191_6_8_n_1),
        .DOC(stream_data_fifo_reg_128_191_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_128_191_6_8_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_128_191_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_128_191_9_11
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[9]),
        .DIB(golden_fft_axis_tdata[10]),
        .DIC(golden_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_128_191_9_11_n_0),
        .DOB(stream_data_fifo_reg_128_191_9_11_n_1),
        .DOC(stream_data_fifo_reg_128_191_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_128_191_9_11_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_128_191_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_192_255_0_2
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2:1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2:1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2:1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[0]),
        .DIB(golden_fft_axis_tdata[1]),
        .DIC(golden_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_192_255_0_2_n_0),
        .DOB(stream_data_fifo_reg_192_255_0_2_n_1),
        .DOC(stream_data_fifo_reg_192_255_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_192_255_0_2_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_192_255_0_2_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    stream_data_fifo_reg_192_255_0_2_i_1__0
       (.I0(golden_fifo_write[9]),
        .I1(golden_fifo_write[7]),
        .I2(golden_fifo_write[6]),
        .I3(golden_fifo_write[8]),
        .I4(golden_fft_axis_tvalid),
        .I5(golden_fft_axis_tready),
        .O(stream_data_fifo_reg_192_255_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_192_255_12_14
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[12]),
        .DIB(golden_fft_axis_tdata[13]),
        .DIC(golden_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_192_255_12_14_n_0),
        .DOB(stream_data_fifo_reg_192_255_12_14_n_1),
        .DOC(stream_data_fifo_reg_192_255_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_192_255_12_14_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_192_255_0_2_i_1__0_n_0));
  RAM64X1D stream_data_fifo_reg_192_255_15_15
       (.A0(golden_fifo_write[0]),
        .A1(golden_fifo_write[1]),
        .A2(golden_fifo_write[2]),
        .A3(golden_fifo_write[3]),
        .A4(golden_fifo_write[4]),
        .A5(golden_fifo_write[5]),
        .D(golden_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_192_255_15_15_n_0),
        .DPRA0(\fifo_read_reg[3]_rep__1 [0]),
        .DPRA1(\fifo_read_reg[1]_rep__1 ),
        .DPRA2(Q[2]),
        .DPRA3(\fifo_read_reg[3]_rep__1 [2]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_stream_data_fifo_reg_192_255_15_15_SPO_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_192_255_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_192_255_3_5
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[3]),
        .DIB(golden_fft_axis_tdata[4]),
        .DIC(golden_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_192_255_3_5_n_0),
        .DOB(stream_data_fifo_reg_192_255_3_5_n_1),
        .DOC(stream_data_fifo_reg_192_255_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_192_255_3_5_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_192_255_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_192_255_6_8
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[6]),
        .DIB(golden_fft_axis_tdata[7]),
        .DIC(golden_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_192_255_6_8_n_0),
        .DOB(stream_data_fifo_reg_192_255_6_8_n_1),
        .DOC(stream_data_fifo_reg_192_255_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_192_255_6_8_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_192_255_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_192_255_9_11
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[9]),
        .DIB(golden_fft_axis_tdata[10]),
        .DIC(golden_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_192_255_9_11_n_0),
        .DOB(stream_data_fifo_reg_192_255_9_11_n_1),
        .DOC(stream_data_fifo_reg_192_255_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_192_255_9_11_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_192_255_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_256_319_0_2
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[0]),
        .DIB(golden_fft_axis_tdata[1]),
        .DIC(golden_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_256_319_0_2_n_0),
        .DOB(stream_data_fifo_reg_256_319_0_2_n_1),
        .DOC(stream_data_fifo_reg_256_319_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_256_319_0_2_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_256_319_0_2_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    stream_data_fifo_reg_256_319_0_2_i_1__0
       (.I0(golden_fft_axis_tready),
        .I1(golden_fft_axis_tvalid),
        .I2(golden_fifo_write[7]),
        .I3(golden_fifo_write[6]),
        .I4(golden_fifo_write[9]),
        .I5(golden_fifo_write[8]),
        .O(stream_data_fifo_reg_256_319_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_256_319_12_14
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[12]),
        .DIB(golden_fft_axis_tdata[13]),
        .DIC(golden_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_256_319_12_14_n_0),
        .DOB(stream_data_fifo_reg_256_319_12_14_n_1),
        .DOC(stream_data_fifo_reg_256_319_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_256_319_12_14_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_256_319_0_2_i_1__0_n_0));
  RAM64X1D stream_data_fifo_reg_256_319_15_15
       (.A0(golden_fifo_write[0]),
        .A1(golden_fifo_write[1]),
        .A2(golden_fifo_write[2]),
        .A3(golden_fifo_write[3]),
        .A4(golden_fifo_write[4]),
        .A5(golden_fifo_write[5]),
        .D(golden_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_256_319_15_15_n_0),
        .DPRA0(\fifo_read_reg[3]_rep__1 [0]),
        .DPRA1(\fifo_read_reg[1]_rep__1 ),
        .DPRA2(Q[2]),
        .DPRA3(\fifo_read_reg[3]_rep__1 [2]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_stream_data_fifo_reg_256_319_15_15_SPO_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_256_319_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_256_319_3_5
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[3]),
        .DIB(golden_fft_axis_tdata[4]),
        .DIC(golden_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_256_319_3_5_n_0),
        .DOB(stream_data_fifo_reg_256_319_3_5_n_1),
        .DOC(stream_data_fifo_reg_256_319_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_256_319_3_5_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_256_319_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_256_319_6_8
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[6]),
        .DIB(golden_fft_axis_tdata[7]),
        .DIC(golden_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_256_319_6_8_n_0),
        .DOB(stream_data_fifo_reg_256_319_6_8_n_1),
        .DOC(stream_data_fifo_reg_256_319_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_256_319_6_8_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_256_319_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_256_319_9_11
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[9]),
        .DIB(golden_fft_axis_tdata[10]),
        .DIC(golden_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_256_319_9_11_n_0),
        .DOB(stream_data_fifo_reg_256_319_9_11_n_1),
        .DOC(stream_data_fifo_reg_256_319_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_256_319_9_11_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_256_319_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_320_383_0_2
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[0]),
        .DIB(golden_fft_axis_tdata[1]),
        .DIC(golden_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_320_383_0_2_n_0),
        .DOB(stream_data_fifo_reg_320_383_0_2_n_1),
        .DOC(stream_data_fifo_reg_320_383_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_320_383_0_2_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_320_383_0_2_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    stream_data_fifo_reg_320_383_0_2_i_1__0
       (.I0(golden_fifo_write[9]),
        .I1(golden_fifo_write[8]),
        .I2(golden_fifo_write[6]),
        .I3(golden_fifo_write[7]),
        .I4(golden_fft_axis_tvalid),
        .I5(golden_fft_axis_tready),
        .O(stream_data_fifo_reg_320_383_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_320_383_12_14
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[12]),
        .DIB(golden_fft_axis_tdata[13]),
        .DIC(golden_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_320_383_12_14_n_0),
        .DOB(stream_data_fifo_reg_320_383_12_14_n_1),
        .DOC(stream_data_fifo_reg_320_383_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_320_383_12_14_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_320_383_0_2_i_1__0_n_0));
  RAM64X1D stream_data_fifo_reg_320_383_15_15
       (.A0(golden_fifo_write[0]),
        .A1(golden_fifo_write[1]),
        .A2(golden_fifo_write[2]),
        .A3(golden_fifo_write[3]),
        .A4(golden_fifo_write[4]),
        .A5(golden_fifo_write[5]),
        .D(golden_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_320_383_15_15_n_0),
        .DPRA0(\fifo_read_reg[3]_rep__1 [0]),
        .DPRA1(\fifo_read_reg[1]_rep__1 ),
        .DPRA2(Q[2]),
        .DPRA3(\fifo_read_reg[3]_rep__1 [2]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_stream_data_fifo_reg_320_383_15_15_SPO_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_320_383_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_320_383_3_5
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[3]),
        .DIB(golden_fft_axis_tdata[4]),
        .DIC(golden_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_320_383_3_5_n_0),
        .DOB(stream_data_fifo_reg_320_383_3_5_n_1),
        .DOC(stream_data_fifo_reg_320_383_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_320_383_3_5_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_320_383_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_320_383_6_8
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[6]),
        .DIB(golden_fft_axis_tdata[7]),
        .DIC(golden_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_320_383_6_8_n_0),
        .DOB(stream_data_fifo_reg_320_383_6_8_n_1),
        .DOC(stream_data_fifo_reg_320_383_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_320_383_6_8_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_320_383_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_320_383_9_11
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[9]),
        .DIB(golden_fft_axis_tdata[10]),
        .DIC(golden_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_320_383_9_11_n_0),
        .DOB(stream_data_fifo_reg_320_383_9_11_n_1),
        .DOC(stream_data_fifo_reg_320_383_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_320_383_9_11_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_320_383_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_384_447_0_2
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[0]),
        .DIB(golden_fft_axis_tdata[1]),
        .DIC(golden_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_384_447_0_2_n_0),
        .DOB(stream_data_fifo_reg_384_447_0_2_n_1),
        .DOC(stream_data_fifo_reg_384_447_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_384_447_0_2_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_384_447_0_2_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    stream_data_fifo_reg_384_447_0_2_i_1__0
       (.I0(golden_fifo_write[9]),
        .I1(golden_fifo_write[8]),
        .I2(golden_fifo_write[7]),
        .I3(golden_fifo_write[6]),
        .I4(golden_fft_axis_tvalid),
        .I5(golden_fft_axis_tready),
        .O(stream_data_fifo_reg_384_447_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_384_447_12_14
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[12]),
        .DIB(golden_fft_axis_tdata[13]),
        .DIC(golden_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_384_447_12_14_n_0),
        .DOB(stream_data_fifo_reg_384_447_12_14_n_1),
        .DOC(stream_data_fifo_reg_384_447_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_384_447_12_14_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_384_447_0_2_i_1__0_n_0));
  RAM64X1D stream_data_fifo_reg_384_447_15_15
       (.A0(golden_fifo_write[0]),
        .A1(golden_fifo_write[1]),
        .A2(golden_fifo_write[2]),
        .A3(golden_fifo_write[3]),
        .A4(golden_fifo_write[4]),
        .A5(golden_fifo_write[5]),
        .D(golden_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_384_447_15_15_n_0),
        .DPRA0(\fifo_read_reg[3]_rep__1 [0]),
        .DPRA1(\fifo_read_reg[1]_rep__1 ),
        .DPRA2(Q[2]),
        .DPRA3(\fifo_read_reg[3]_rep__1 [2]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_stream_data_fifo_reg_384_447_15_15_SPO_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_384_447_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_384_447_3_5
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[3]),
        .DIB(golden_fft_axis_tdata[4]),
        .DIC(golden_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_384_447_3_5_n_0),
        .DOB(stream_data_fifo_reg_384_447_3_5_n_1),
        .DOC(stream_data_fifo_reg_384_447_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_384_447_3_5_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_384_447_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_384_447_6_8
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__3 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[6]),
        .DIB(golden_fft_axis_tdata[7]),
        .DIC(golden_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_384_447_6_8_n_0),
        .DOB(stream_data_fifo_reg_384_447_6_8_n_1),
        .DOC(stream_data_fifo_reg_384_447_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_384_447_6_8_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_384_447_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_384_447_9_11
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[9]),
        .DIB(golden_fft_axis_tdata[10]),
        .DIC(golden_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_384_447_9_11_n_0),
        .DOB(stream_data_fifo_reg_384_447_9_11_n_1),
        .DOC(stream_data_fifo_reg_384_447_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_384_447_9_11_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_384_447_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_448_511_0_2
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[0]),
        .DIB(golden_fft_axis_tdata[1]),
        .DIC(golden_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_448_511_0_2_n_0),
        .DOB(stream_data_fifo_reg_448_511_0_2_n_1),
        .DOC(stream_data_fifo_reg_448_511_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_448_511_0_2_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_448_511_0_2_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    stream_data_fifo_reg_448_511_0_2_i_1__0
       (.I0(golden_fifo_write[9]),
        .I1(golden_fifo_write[7]),
        .I2(golden_fifo_write[6]),
        .I3(golden_fifo_write[8]),
        .I4(golden_fft_axis_tvalid),
        .I5(golden_fft_axis_tready),
        .O(stream_data_fifo_reg_448_511_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_448_511_12_14
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[3]_rep__1 [1:0]}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[3]_rep__1 [1:0]}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[12]),
        .DIB(golden_fft_axis_tdata[13]),
        .DIC(golden_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_448_511_12_14_n_0),
        .DOB(stream_data_fifo_reg_448_511_12_14_n_1),
        .DOC(stream_data_fifo_reg_448_511_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_448_511_12_14_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_448_511_0_2_i_1__0_n_0));
  RAM64X1D stream_data_fifo_reg_448_511_15_15
       (.A0(golden_fifo_write[0]),
        .A1(golden_fifo_write[1]),
        .A2(golden_fifo_write[2]),
        .A3(golden_fifo_write[3]),
        .A4(golden_fifo_write[4]),
        .A5(golden_fifo_write[5]),
        .D(golden_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_448_511_15_15_n_0),
        .DPRA0(\fifo_read_reg[3]_rep__1 [0]),
        .DPRA1(\fifo_read_reg[1]_rep__1 ),
        .DPRA2(Q[2]),
        .DPRA3(\fifo_read_reg[3]_rep__1 [2]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_stream_data_fifo_reg_448_511_15_15_SPO_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_448_511_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_448_511_3_5
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[3]),
        .DIB(golden_fft_axis_tdata[4]),
        .DIC(golden_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_448_511_3_5_n_0),
        .DOB(stream_data_fifo_reg_448_511_3_5_n_1),
        .DOC(stream_data_fifo_reg_448_511_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_448_511_3_5_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_448_511_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_448_511_6_8
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__3 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__3 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__3 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[6]),
        .DIB(golden_fft_axis_tdata[7]),
        .DIC(golden_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_448_511_6_8_n_0),
        .DOB(stream_data_fifo_reg_448_511_6_8_n_1),
        .DOC(stream_data_fifo_reg_448_511_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_448_511_6_8_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_448_511_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_448_511_9_11
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[9]),
        .DIB(golden_fft_axis_tdata[10]),
        .DIC(golden_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_448_511_9_11_n_0),
        .DOB(stream_data_fifo_reg_448_511_9_11_n_1),
        .DOC(stream_data_fifo_reg_448_511_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_448_511_9_11_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_448_511_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_512_575_0_2
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[0]),
        .DIB(golden_fft_axis_tdata[1]),
        .DIC(golden_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_512_575_0_2_n_0),
        .DOB(stream_data_fifo_reg_512_575_0_2_n_1),
        .DOC(stream_data_fifo_reg_512_575_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_512_575_0_2_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_512_575_0_2_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    stream_data_fifo_reg_512_575_0_2_i_1__0
       (.I0(golden_fft_axis_tready),
        .I1(golden_fft_axis_tvalid),
        .I2(golden_fifo_write[7]),
        .I3(golden_fifo_write[6]),
        .I4(golden_fifo_write[8]),
        .I5(golden_fifo_write[9]),
        .O(stream_data_fifo_reg_512_575_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_512_575_12_14
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[1]_rep__1 ,\fifo_read_reg[3]_rep__1 [0]}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[1]_rep__1 ,\fifo_read_reg[3]_rep__1 [0]}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[1]_rep__1 ,\fifo_read_reg[3]_rep__1 [0]}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[12]),
        .DIB(golden_fft_axis_tdata[13]),
        .DIC(golden_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_512_575_12_14_n_0),
        .DOB(stream_data_fifo_reg_512_575_12_14_n_1),
        .DOC(stream_data_fifo_reg_512_575_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_512_575_12_14_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_512_575_0_2_i_1__0_n_0));
  RAM64X1D stream_data_fifo_reg_512_575_15_15
       (.A0(golden_fifo_write[0]),
        .A1(golden_fifo_write[1]),
        .A2(golden_fifo_write[2]),
        .A3(golden_fifo_write[3]),
        .A4(golden_fifo_write[4]),
        .A5(golden_fifo_write[5]),
        .D(golden_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_512_575_15_15_n_0),
        .DPRA0(\fifo_read_reg[3]_rep__1 [0]),
        .DPRA1(\fifo_read_reg[1]_rep__1 ),
        .DPRA2(Q[2]),
        .DPRA3(\fifo_read_reg[3]_rep__1 [2]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_stream_data_fifo_reg_512_575_15_15_SPO_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_512_575_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_512_575_3_5
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[3]),
        .DIB(golden_fft_axis_tdata[4]),
        .DIC(golden_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_512_575_3_5_n_0),
        .DOB(stream_data_fifo_reg_512_575_3_5_n_1),
        .DOC(stream_data_fifo_reg_512_575_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_512_575_3_5_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_512_575_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_512_575_6_8
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[6]),
        .DIB(golden_fft_axis_tdata[7]),
        .DIC(golden_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_512_575_6_8_n_0),
        .DOB(stream_data_fifo_reg_512_575_6_8_n_1),
        .DOC(stream_data_fifo_reg_512_575_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_512_575_6_8_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_512_575_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_512_575_9_11
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[9]),
        .DIB(golden_fft_axis_tdata[10]),
        .DIC(golden_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_512_575_9_11_n_0),
        .DOB(stream_data_fifo_reg_512_575_9_11_n_1),
        .DOC(stream_data_fifo_reg_512_575_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_512_575_9_11_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_512_575_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_576_639_0_2
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[0]),
        .DIB(golden_fft_axis_tdata[1]),
        .DIC(golden_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_576_639_0_2_n_0),
        .DOB(stream_data_fifo_reg_576_639_0_2_n_1),
        .DOC(stream_data_fifo_reg_576_639_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_576_639_0_2_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_576_639_0_2_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    stream_data_fifo_reg_576_639_0_2_i_1__0
       (.I0(golden_fifo_write[8]),
        .I1(golden_fifo_write[9]),
        .I2(golden_fifo_write[6]),
        .I3(golden_fifo_write[7]),
        .I4(golden_fft_axis_tvalid),
        .I5(golden_fft_axis_tready),
        .O(stream_data_fifo_reg_576_639_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_576_639_12_14
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[1]_rep__1 ,\fifo_read_reg[3]_rep__1 [0]}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[1]_rep__1 ,\fifo_read_reg[3]_rep__1 [0]}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[1]_rep__1 ,\fifo_read_reg[3]_rep__1 [0]}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[12]),
        .DIB(golden_fft_axis_tdata[13]),
        .DIC(golden_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_576_639_12_14_n_0),
        .DOB(stream_data_fifo_reg_576_639_12_14_n_1),
        .DOC(stream_data_fifo_reg_576_639_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_576_639_12_14_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_576_639_0_2_i_1__0_n_0));
  RAM64X1D stream_data_fifo_reg_576_639_15_15
       (.A0(golden_fifo_write[0]),
        .A1(golden_fifo_write[1]),
        .A2(golden_fifo_write[2]),
        .A3(golden_fifo_write[3]),
        .A4(golden_fifo_write[4]),
        .A5(golden_fifo_write[5]),
        .D(golden_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_576_639_15_15_n_0),
        .DPRA0(\fifo_read_reg[3]_rep__1 [0]),
        .DPRA1(\fifo_read_reg[1]_rep__1 ),
        .DPRA2(Q[2]),
        .DPRA3(\fifo_read_reg[3]_rep__1 [2]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_stream_data_fifo_reg_576_639_15_15_SPO_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_576_639_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_576_639_3_5
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[3]),
        .DIB(golden_fft_axis_tdata[4]),
        .DIC(golden_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_576_639_3_5_n_0),
        .DOB(stream_data_fifo_reg_576_639_3_5_n_1),
        .DOC(stream_data_fifo_reg_576_639_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_576_639_3_5_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_576_639_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_576_639_6_8
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[6]),
        .DIB(golden_fft_axis_tdata[7]),
        .DIC(golden_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_576_639_6_8_n_0),
        .DOB(stream_data_fifo_reg_576_639_6_8_n_1),
        .DOC(stream_data_fifo_reg_576_639_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_576_639_6_8_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_576_639_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_576_639_9_11
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[9]),
        .DIB(golden_fft_axis_tdata[10]),
        .DIC(golden_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_576_639_9_11_n_0),
        .DOB(stream_data_fifo_reg_576_639_9_11_n_1),
        .DOC(stream_data_fifo_reg_576_639_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_576_639_9_11_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_576_639_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_640_703_0_2
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[0]),
        .DIB(golden_fft_axis_tdata[1]),
        .DIC(golden_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_640_703_0_2_n_0),
        .DOB(stream_data_fifo_reg_640_703_0_2_n_1),
        .DOC(stream_data_fifo_reg_640_703_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_640_703_0_2_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_640_703_0_2_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    stream_data_fifo_reg_640_703_0_2_i_1__0
       (.I0(golden_fifo_write[8]),
        .I1(golden_fifo_write[9]),
        .I2(golden_fifo_write[7]),
        .I3(golden_fifo_write[6]),
        .I4(golden_fft_axis_tvalid),
        .I5(golden_fft_axis_tready),
        .O(stream_data_fifo_reg_640_703_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_640_703_12_14
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[1]_rep__1 ,\fifo_read_reg[3]_rep__1 [0]}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[1]_rep__1 ,\fifo_read_reg[3]_rep__1 [0]}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[1]_rep__1 ,\fifo_read_reg[3]_rep__1 [0]}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[12]),
        .DIB(golden_fft_axis_tdata[13]),
        .DIC(golden_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_640_703_12_14_n_0),
        .DOB(stream_data_fifo_reg_640_703_12_14_n_1),
        .DOC(stream_data_fifo_reg_640_703_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_640_703_12_14_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_640_703_0_2_i_1__0_n_0));
  RAM64X1D stream_data_fifo_reg_640_703_15_15
       (.A0(golden_fifo_write[0]),
        .A1(golden_fifo_write[1]),
        .A2(golden_fifo_write[2]),
        .A3(golden_fifo_write[3]),
        .A4(golden_fifo_write[4]),
        .A5(golden_fifo_write[5]),
        .D(golden_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_640_703_15_15_n_0),
        .DPRA0(\fifo_read_reg[3]_rep__1 [0]),
        .DPRA1(\fifo_read_reg[1]_rep__1 ),
        .DPRA2(Q[2]),
        .DPRA3(\fifo_read_reg[3]_rep__1 [2]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_stream_data_fifo_reg_640_703_15_15_SPO_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_640_703_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_640_703_3_5
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[3]),
        .DIB(golden_fft_axis_tdata[4]),
        .DIC(golden_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_640_703_3_5_n_0),
        .DOB(stream_data_fifo_reg_640_703_3_5_n_1),
        .DOC(stream_data_fifo_reg_640_703_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_640_703_3_5_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_640_703_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_640_703_6_8
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[6]),
        .DIB(golden_fft_axis_tdata[7]),
        .DIC(golden_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_640_703_6_8_n_0),
        .DOB(stream_data_fifo_reg_640_703_6_8_n_1),
        .DOC(stream_data_fifo_reg_640_703_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_640_703_6_8_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_640_703_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_640_703_9_11
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[9]),
        .DIB(golden_fft_axis_tdata[10]),
        .DIC(golden_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_640_703_9_11_n_0),
        .DOB(stream_data_fifo_reg_640_703_9_11_n_1),
        .DOC(stream_data_fifo_reg_640_703_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_640_703_9_11_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_640_703_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_64_127_0_2
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2:1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1:0]}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[0]),
        .DIB(golden_fft_axis_tdata[1]),
        .DIC(golden_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_64_127_0_2_n_0),
        .DOB(stream_data_fifo_reg_64_127_0_2_n_1),
        .DOC(stream_data_fifo_reg_64_127_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_64_127_0_2_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    stream_data_fifo_reg_64_127_0_2_i_1__0
       (.I0(golden_fft_axis_tready),
        .I1(golden_fft_axis_tvalid),
        .I2(golden_fifo_write[8]),
        .I3(golden_fifo_write[7]),
        .I4(golden_fifo_write[9]),
        .I5(golden_fifo_write[6]),
        .O(stream_data_fifo_reg_64_127_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_64_127_12_14
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[12]),
        .DIB(golden_fft_axis_tdata[13]),
        .DIC(golden_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_64_127_12_14_n_0),
        .DOB(stream_data_fifo_reg_64_127_12_14_n_1),
        .DOC(stream_data_fifo_reg_64_127_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_64_127_12_14_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_64_127_0_2_i_1__0_n_0));
  RAM64X1D stream_data_fifo_reg_64_127_15_15
       (.A0(golden_fifo_write[0]),
        .A1(golden_fifo_write[1]),
        .A2(golden_fifo_write[2]),
        .A3(golden_fifo_write[3]),
        .A4(golden_fifo_write[4]),
        .A5(golden_fifo_write[5]),
        .D(golden_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_64_127_15_15_n_0),
        .DPRA0(\fifo_read_reg[3]_rep__1 [0]),
        .DPRA1(\fifo_read_reg[1]_rep__1 ),
        .DPRA2(Q[2]),
        .DPRA3(\fifo_read_reg[3]_rep__1 [2]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_stream_data_fifo_reg_64_127_15_15_SPO_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_64_127_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_64_127_3_5
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[3]),
        .DIB(golden_fft_axis_tdata[4]),
        .DIC(golden_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_64_127_3_5_n_0),
        .DOB(stream_data_fifo_reg_64_127_3_5_n_1),
        .DOC(stream_data_fifo_reg_64_127_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_64_127_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_64_127_6_8
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[6]),
        .DIB(golden_fft_axis_tdata[7]),
        .DIC(golden_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_64_127_6_8_n_0),
        .DOB(stream_data_fifo_reg_64_127_6_8_n_1),
        .DOC(stream_data_fifo_reg_64_127_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_64_127_6_8_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_64_127_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_64_127_9_11
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[9]),
        .DIB(golden_fft_axis_tdata[10]),
        .DIC(golden_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_64_127_9_11_n_0),
        .DOB(stream_data_fifo_reg_64_127_9_11_n_1),
        .DOC(stream_data_fifo_reg_64_127_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_64_127_9_11_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_64_127_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_704_767_0_2
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[0]),
        .DIB(golden_fft_axis_tdata[1]),
        .DIC(golden_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_704_767_0_2_n_0),
        .DOB(stream_data_fifo_reg_704_767_0_2_n_1),
        .DOC(stream_data_fifo_reg_704_767_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_704_767_0_2_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_704_767_0_2_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    stream_data_fifo_reg_704_767_0_2_i_1__0
       (.I0(golden_fifo_write[8]),
        .I1(golden_fifo_write[7]),
        .I2(golden_fifo_write[6]),
        .I3(golden_fifo_write[9]),
        .I4(golden_fft_axis_tvalid),
        .I5(golden_fft_axis_tready),
        .O(stream_data_fifo_reg_704_767_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_704_767_12_14
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[3]_rep__1 [1:0]}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[1]_rep__1 ,\fifo_read_reg[3]_rep__1 [0]}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[1]_rep__1 ,\fifo_read_reg[3]_rep__1 [0]}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[12]),
        .DIB(golden_fft_axis_tdata[13]),
        .DIC(golden_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_704_767_12_14_n_0),
        .DOB(stream_data_fifo_reg_704_767_12_14_n_1),
        .DOC(stream_data_fifo_reg_704_767_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_704_767_12_14_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_704_767_0_2_i_1__0_n_0));
  RAM64X1D stream_data_fifo_reg_704_767_15_15
       (.A0(golden_fifo_write[0]),
        .A1(golden_fifo_write[1]),
        .A2(golden_fifo_write[2]),
        .A3(golden_fifo_write[3]),
        .A4(golden_fifo_write[4]),
        .A5(golden_fifo_write[5]),
        .D(golden_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_704_767_15_15_n_0),
        .DPRA0(\fifo_read_reg[3]_rep__1 [0]),
        .DPRA1(\fifo_read_reg[1]_rep__1 ),
        .DPRA2(Q[2]),
        .DPRA3(\fifo_read_reg[3]_rep__1 [2]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_stream_data_fifo_reg_704_767_15_15_SPO_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_704_767_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_704_767_3_5
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[3]),
        .DIB(golden_fft_axis_tdata[4]),
        .DIC(golden_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_704_767_3_5_n_0),
        .DOB(stream_data_fifo_reg_704_767_3_5_n_1),
        .DOC(stream_data_fifo_reg_704_767_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_704_767_3_5_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_704_767_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_704_767_6_8
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[6]),
        .DIB(golden_fft_axis_tdata[7]),
        .DIC(golden_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_704_767_6_8_n_0),
        .DOB(stream_data_fifo_reg_704_767_6_8_n_1),
        .DOC(stream_data_fifo_reg_704_767_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_704_767_6_8_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_704_767_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_704_767_9_11
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[9]),
        .DIB(golden_fft_axis_tdata[10]),
        .DIC(golden_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_704_767_9_11_n_0),
        .DOB(stream_data_fifo_reg_704_767_9_11_n_1),
        .DOC(stream_data_fifo_reg_704_767_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_704_767_9_11_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_704_767_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_768_831_0_2
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[0]),
        .DIB(golden_fft_axis_tdata[1]),
        .DIC(golden_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_768_831_0_2_n_0),
        .DOB(stream_data_fifo_reg_768_831_0_2_n_1),
        .DOC(stream_data_fifo_reg_768_831_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_768_831_0_2_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_768_831_0_2_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    stream_data_fifo_reg_768_831_0_2_i_1__0
       (.I0(golden_fifo_write[7]),
        .I1(golden_fifo_write[9]),
        .I2(golden_fifo_write[8]),
        .I3(golden_fifo_write[6]),
        .I4(golden_fft_axis_tvalid),
        .I5(golden_fft_axis_tready),
        .O(stream_data_fifo_reg_768_831_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_768_831_12_14
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[1]_rep__1 ,\fifo_read_reg[3]_rep__1 [0]}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[1]_rep__1 ,\fifo_read_reg[3]_rep__1 [0]}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[1]_rep__1 ,\fifo_read_reg[3]_rep__1 [0]}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[12]),
        .DIB(golden_fft_axis_tdata[13]),
        .DIC(golden_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_768_831_12_14_n_0),
        .DOB(stream_data_fifo_reg_768_831_12_14_n_1),
        .DOC(stream_data_fifo_reg_768_831_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_768_831_12_14_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_768_831_0_2_i_1__0_n_0));
  RAM64X1D stream_data_fifo_reg_768_831_15_15
       (.A0(golden_fifo_write[0]),
        .A1(golden_fifo_write[1]),
        .A2(golden_fifo_write[2]),
        .A3(golden_fifo_write[3]),
        .A4(golden_fifo_write[4]),
        .A5(golden_fifo_write[5]),
        .D(golden_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_768_831_15_15_n_0),
        .DPRA0(\fifo_read_reg[3]_rep__1 [0]),
        .DPRA1(\fifo_read_reg[1]_rep__1 ),
        .DPRA2(Q[2]),
        .DPRA3(\fifo_read_reg[3]_rep__1 [2]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_stream_data_fifo_reg_768_831_15_15_SPO_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_768_831_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_768_831_3_5
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[3]),
        .DIB(golden_fft_axis_tdata[4]),
        .DIC(golden_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_768_831_3_5_n_0),
        .DOB(stream_data_fifo_reg_768_831_3_5_n_1),
        .DOC(stream_data_fifo_reg_768_831_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_768_831_3_5_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_768_831_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_768_831_6_8
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[6]),
        .DIB(golden_fft_axis_tdata[7]),
        .DIC(golden_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_768_831_6_8_n_0),
        .DOB(stream_data_fifo_reg_768_831_6_8_n_1),
        .DOC(stream_data_fifo_reg_768_831_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_768_831_6_8_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_768_831_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_768_831_9_11
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[9]),
        .DIB(golden_fft_axis_tdata[10]),
        .DIC(golden_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_768_831_9_11_n_0),
        .DOB(stream_data_fifo_reg_768_831_9_11_n_1),
        .DOC(stream_data_fifo_reg_768_831_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_768_831_9_11_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_768_831_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_832_895_0_2
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[0]),
        .DIB(golden_fft_axis_tdata[1]),
        .DIC(golden_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_832_895_0_2_n_0),
        .DOB(stream_data_fifo_reg_832_895_0_2_n_1),
        .DOC(stream_data_fifo_reg_832_895_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_832_895_0_2_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_832_895_0_2_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    stream_data_fifo_reg_832_895_0_2_i_1__0
       (.I0(golden_fifo_write[7]),
        .I1(golden_fifo_write[8]),
        .I2(golden_fifo_write[6]),
        .I3(golden_fifo_write[9]),
        .I4(golden_fft_axis_tvalid),
        .I5(golden_fft_axis_tready),
        .O(stream_data_fifo_reg_832_895_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_832_895_12_14
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[1]_rep__1 ,\fifo_read_reg[3]_rep__1 [0]}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[1]_rep__1 ,\fifo_read_reg[3]_rep__1 [0]}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[1]_rep__1 ,\fifo_read_reg[3]_rep__1 [0]}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[12]),
        .DIB(golden_fft_axis_tdata[13]),
        .DIC(golden_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_832_895_12_14_n_0),
        .DOB(stream_data_fifo_reg_832_895_12_14_n_1),
        .DOC(stream_data_fifo_reg_832_895_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_832_895_12_14_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_832_895_0_2_i_1__0_n_0));
  RAM64X1D stream_data_fifo_reg_832_895_15_15
       (.A0(golden_fifo_write[0]),
        .A1(golden_fifo_write[1]),
        .A2(golden_fifo_write[2]),
        .A3(golden_fifo_write[3]),
        .A4(golden_fifo_write[4]),
        .A5(golden_fifo_write[5]),
        .D(golden_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_832_895_15_15_n_0),
        .DPRA0(\fifo_read_reg[3]_rep__1 [0]),
        .DPRA1(\fifo_read_reg[1]_rep__1 ),
        .DPRA2(Q[2]),
        .DPRA3(\fifo_read_reg[3]_rep__1 [2]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_stream_data_fifo_reg_832_895_15_15_SPO_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_832_895_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_832_895_3_5
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[3]),
        .DIB(golden_fft_axis_tdata[4]),
        .DIC(golden_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_832_895_3_5_n_0),
        .DOB(stream_data_fifo_reg_832_895_3_5_n_1),
        .DOC(stream_data_fifo_reg_832_895_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_832_895_3_5_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_832_895_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_832_895_6_8
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[6]),
        .DIB(golden_fft_axis_tdata[7]),
        .DIC(golden_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_832_895_6_8_n_0),
        .DOB(stream_data_fifo_reg_832_895_6_8_n_1),
        .DOC(stream_data_fifo_reg_832_895_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_832_895_6_8_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_832_895_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_832_895_9_11
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[9]),
        .DIB(golden_fft_axis_tdata[10]),
        .DIC(golden_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_832_895_9_11_n_0),
        .DOB(stream_data_fifo_reg_832_895_9_11_n_1),
        .DOC(stream_data_fifo_reg_832_895_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_832_895_9_11_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_832_895_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_896_959_0_2
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[0]),
        .DIB(golden_fft_axis_tdata[1]),
        .DIC(golden_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_896_959_0_2_n_0),
        .DOB(stream_data_fifo_reg_896_959_0_2_n_1),
        .DOC(stream_data_fifo_reg_896_959_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_896_959_0_2_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_896_959_0_2_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    stream_data_fifo_reg_896_959_0_2_i_1__0
       (.I0(golden_fifo_write[6]),
        .I1(golden_fifo_write[8]),
        .I2(golden_fifo_write[7]),
        .I3(golden_fifo_write[9]),
        .I4(golden_fft_axis_tvalid),
        .I5(golden_fft_axis_tready),
        .O(stream_data_fifo_reg_896_959_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_896_959_12_14
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[1]_rep__1 ,\fifo_read_reg[3]_rep__1 [0]}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[1]_rep__1 ,\fifo_read_reg[3]_rep__1 [0]}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[1]_rep__1 ,\fifo_read_reg[3]_rep__1 [0]}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[12]),
        .DIB(golden_fft_axis_tdata[13]),
        .DIC(golden_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_896_959_12_14_n_0),
        .DOB(stream_data_fifo_reg_896_959_12_14_n_1),
        .DOC(stream_data_fifo_reg_896_959_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_896_959_12_14_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_896_959_0_2_i_1__0_n_0));
  RAM64X1D stream_data_fifo_reg_896_959_15_15
       (.A0(golden_fifo_write[0]),
        .A1(golden_fifo_write[1]),
        .A2(golden_fifo_write[2]),
        .A3(golden_fifo_write[3]),
        .A4(golden_fifo_write[4]),
        .A5(golden_fifo_write[5]),
        .D(golden_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_896_959_15_15_n_0),
        .DPRA0(\fifo_read_reg[3]_rep__1 [0]),
        .DPRA1(\fifo_read_reg[1]_rep__1 ),
        .DPRA2(Q[2]),
        .DPRA3(\fifo_read_reg[3]_rep__1 [2]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_stream_data_fifo_reg_896_959_15_15_SPO_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_896_959_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_896_959_3_5
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[3]),
        .DIB(golden_fft_axis_tdata[4]),
        .DIC(golden_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_896_959_3_5_n_0),
        .DOB(stream_data_fifo_reg_896_959_3_5_n_1),
        .DOC(stream_data_fifo_reg_896_959_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_896_959_3_5_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_896_959_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_896_959_6_8
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[6]),
        .DIB(golden_fft_axis_tdata[7]),
        .DIC(golden_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_896_959_6_8_n_0),
        .DOB(stream_data_fifo_reg_896_959_6_8_n_1),
        .DOC(stream_data_fifo_reg_896_959_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_896_959_6_8_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_896_959_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_896_959_9_11
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[9]),
        .DIB(golden_fft_axis_tdata[10]),
        .DIC(golden_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_896_959_9_11_n_0),
        .DOB(stream_data_fifo_reg_896_959_9_11_n_1),
        .DOC(stream_data_fifo_reg_896_959_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_896_959_9_11_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_896_959_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_960_1023_0_2
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[0]),
        .DIB(golden_fft_axis_tdata[1]),
        .DIC(golden_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_960_1023_0_2_n_0),
        .DOB(stream_data_fifo_reg_960_1023_0_2_n_1),
        .DOC(stream_data_fifo_reg_960_1023_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_960_1023_0_2_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_960_1023_0_2_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    stream_data_fifo_reg_960_1023_0_2_i_1__0
       (.I0(golden_fft_axis_tready),
        .I1(golden_fft_axis_tvalid),
        .I2(golden_fifo_write[7]),
        .I3(golden_fifo_write[6]),
        .I4(golden_fifo_write[9]),
        .I5(golden_fifo_write[8]),
        .O(stream_data_fifo_reg_960_1023_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_960_1023_12_14
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[1]_rep__1 ,\fifo_read_reg[3]_rep__1 [0]}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[1]_rep__1 ,\fifo_read_reg[3]_rep__1 [0]}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__1 [2],Q[2],\fifo_read_reg[1]_rep__1 ,\fifo_read_reg[3]_rep__1 [0]}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[12]),
        .DIB(golden_fft_axis_tdata[13]),
        .DIC(golden_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_960_1023_12_14_n_0),
        .DOB(stream_data_fifo_reg_960_1023_12_14_n_1),
        .DOC(stream_data_fifo_reg_960_1023_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_960_1023_12_14_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_960_1023_0_2_i_1__0_n_0));
  RAM64X1D stream_data_fifo_reg_960_1023_15_15
       (.A0(golden_fifo_write[0]),
        .A1(golden_fifo_write[1]),
        .A2(golden_fifo_write[2]),
        .A3(golden_fifo_write[3]),
        .A4(golden_fifo_write[4]),
        .A5(golden_fifo_write[5]),
        .D(golden_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_960_1023_15_15_n_0),
        .DPRA0(\fifo_read_reg[3]_rep__1 [0]),
        .DPRA1(\fifo_read_reg[1]_rep__1 ),
        .DPRA2(Q[2]),
        .DPRA3(\fifo_read_reg[3]_rep__1 [2]),
        .DPRA4(Q[4]),
        .DPRA5(Q[5]),
        .SPO(NLW_stream_data_fifo_reg_960_1023_15_15_SPO_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_960_1023_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_960_1023_3_5
       (.ADDRA({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRB({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRC({Q[5:4],\fifo_read_reg[3]_rep__3 [2],Q[2],\fifo_read_reg[3]_rep__3 [1],ADDRB}),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[3]),
        .DIB(golden_fft_axis_tdata[4]),
        .DIC(golden_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_960_1023_3_5_n_0),
        .DOB(stream_data_fifo_reg_960_1023_3_5_n_1),
        .DOC(stream_data_fifo_reg_960_1023_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_960_1023_3_5_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_960_1023_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_960_1023_6_8
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[6]),
        .DIB(golden_fft_axis_tdata[7]),
        .DIC(golden_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_960_1023_6_8_n_0),
        .DOB(stream_data_fifo_reg_960_1023_6_8_n_1),
        .DOC(stream_data_fifo_reg_960_1023_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_960_1023_6_8_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_960_1023_0_2_i_1__0_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_960_1023_9_11
       (.ADDRA({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRB({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRC({Q[5:4],ADDRC,Q[2],\fifo_read_reg[3]_rep__1 [1],\fifo_read_reg[0]_rep__1 }),
        .ADDRD(golden_fifo_write[5:0]),
        .DIA(golden_fft_axis_tdata[9]),
        .DIB(golden_fft_axis_tdata[10]),
        .DIC(golden_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_960_1023_9_11_n_0),
        .DOB(stream_data_fifo_reg_960_1023_9_11_n_1),
        .DOC(stream_data_fifo_reg_960_1023_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_960_1023_9_11_DOD_UNCONNECTED),
        .WCLK(golden_fft_axis_aclk),
        .WE(stream_data_fifo_reg_960_1023_0_2_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \write_pointer[0]_i_1__0 
       (.I0(golden_fft_axis_tready),
        .I1(golden_fft_axis_tvalid),
        .I2(golden_fifo_write[0]),
        .O(\write_pointer[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0880)) 
    \write_pointer[1]_i_1__0 
       (.I0(golden_fft_axis_tvalid),
        .I1(golden_fft_axis_tready),
        .I2(golden_fifo_write[0]),
        .I3(golden_fifo_write[1]),
        .O(\write_pointer[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h08888000)) 
    \write_pointer[2]_i_1__0 
       (.I0(golden_fft_axis_tvalid),
        .I1(golden_fft_axis_tready),
        .I2(golden_fifo_write[1]),
        .I3(golden_fifo_write[0]),
        .I4(golden_fifo_write[2]),
        .O(\write_pointer[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7F00000080000000)) 
    \write_pointer[3]_i_1__0 
       (.I0(golden_fifo_write[1]),
        .I1(golden_fifo_write[0]),
        .I2(golden_fifo_write[2]),
        .I3(golden_fft_axis_tready),
        .I4(golden_fft_axis_tvalid),
        .I5(golden_fifo_write[3]),
        .O(\write_pointer[3]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \write_pointer[4]_i_1__0 
       (.I0(golden_fifo_write[2]),
        .I1(golden_fifo_write[0]),
        .I2(golden_fifo_write[1]),
        .I3(golden_fifo_write[3]),
        .I4(\write_pointer[9]_i_4__0_n_0 ),
        .I5(golden_fifo_write[4]),
        .O(\write_pointer[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hDFFF000020000000)) 
    \write_pointer[5]_i_1__0 
       (.I0(golden_fifo_write[3]),
        .I1(\write_pointer[5]_i_2_n_0 ),
        .I2(golden_fifo_write[2]),
        .I3(golden_fifo_write[4]),
        .I4(\write_pointer[9]_i_4__0_n_0 ),
        .I5(golden_fifo_write[5]),
        .O(\write_pointer[5]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \write_pointer[5]_i_2 
       (.I0(golden_fifo_write[0]),
        .I1(golden_fifo_write[1]),
        .O(\write_pointer[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8040)) 
    \write_pointer[6]_i_1__0 
       (.I0(\write_pointer[9]_i_6__0_n_0 ),
        .I1(golden_fft_axis_tready),
        .I2(golden_fft_axis_tvalid),
        .I3(golden_fifo_write[6]),
        .O(\write_pointer[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hB0004000)) 
    \write_pointer[7]_i_1__0 
       (.I0(\write_pointer[9]_i_6__0_n_0 ),
        .I1(golden_fifo_write[6]),
        .I2(golden_fft_axis_tready),
        .I3(golden_fft_axis_tvalid),
        .I4(golden_fifo_write[7]),
        .O(\write_pointer[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hDF00000020000000)) 
    \write_pointer[8]_i_1__0 
       (.I0(golden_fifo_write[6]),
        .I1(\write_pointer[9]_i_6__0_n_0 ),
        .I2(golden_fifo_write[7]),
        .I3(golden_fft_axis_tready),
        .I4(golden_fft_axis_tvalid),
        .I5(golden_fifo_write[8]),
        .O(\write_pointer[8]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \write_pointer[9]_i_1__0 
       (.I0(golden_fft_axis_aresetn),
        .O(\write_pointer[9]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hAEAAAAAAA2AAAAAA)) 
    \write_pointer[9]_i_2__0 
       (.I0(\write_pointer[9]_i_4__0_n_0 ),
        .I1(golden_fifo_write[8]),
        .I2(\write_pointer[9]_i_5__0_n_0 ),
        .I3(golden_fifo_write[7]),
        .I4(golden_fifo_write[9]),
        .I5(\sum_reg[0] ),
        .O(\write_pointer[9]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hDFFF000020000000)) 
    \write_pointer[9]_i_3__0 
       (.I0(golden_fifo_write[7]),
        .I1(\write_pointer[9]_i_6__0_n_0 ),
        .I2(golden_fifo_write[6]),
        .I3(golden_fifo_write[8]),
        .I4(\write_pointer[9]_i_4__0_n_0 ),
        .I5(golden_fifo_write[9]),
        .O(\write_pointer[9]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \write_pointer[9]_i_4__0 
       (.I0(golden_fft_axis_tvalid),
        .I1(golden_fft_axis_tready),
        .O(\write_pointer[9]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \write_pointer[9]_i_5 
       (.I0(Q[9]),
        .I1(Q[8]),
        .I2(Q[6]),
        .I3(\fifo_read_reg[9] ),
        .I4(Q[7]),
        .O(\sum_reg[0] ));
  LUT6 #(
    .INIT(64'hF7FFFFFFFFFFFFFF)) 
    \write_pointer[9]_i_5__0 
       (.I0(golden_fifo_write[5]),
        .I1(golden_fifo_write[3]),
        .I2(\write_pointer[5]_i_2_n_0 ),
        .I3(golden_fifo_write[2]),
        .I4(golden_fifo_write[4]),
        .I5(golden_fifo_write[6]),
        .O(\write_pointer[9]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \write_pointer[9]_i_6__0 
       (.I0(golden_fifo_write[4]),
        .I1(golden_fifo_write[2]),
        .I2(golden_fifo_write[0]),
        .I3(golden_fifo_write[1]),
        .I4(golden_fifo_write[3]),
        .I5(golden_fifo_write[5]),
        .O(\write_pointer[9]_i_6__0_n_0 ));
  FDRE \write_pointer_reg[0] 
       (.C(golden_fft_axis_aclk),
        .CE(\write_pointer[9]_i_2__0_n_0 ),
        .D(\write_pointer[0]_i_1__0_n_0 ),
        .Q(golden_fifo_write[0]),
        .R(\write_pointer[9]_i_1__0_n_0 ));
  FDRE \write_pointer_reg[1] 
       (.C(golden_fft_axis_aclk),
        .CE(\write_pointer[9]_i_2__0_n_0 ),
        .D(\write_pointer[1]_i_1__0_n_0 ),
        .Q(golden_fifo_write[1]),
        .R(\write_pointer[9]_i_1__0_n_0 ));
  FDRE \write_pointer_reg[2] 
       (.C(golden_fft_axis_aclk),
        .CE(\write_pointer[9]_i_2__0_n_0 ),
        .D(\write_pointer[2]_i_1__0_n_0 ),
        .Q(golden_fifo_write[2]),
        .R(\write_pointer[9]_i_1__0_n_0 ));
  FDRE \write_pointer_reg[3] 
       (.C(golden_fft_axis_aclk),
        .CE(\write_pointer[9]_i_2__0_n_0 ),
        .D(\write_pointer[3]_i_1__0_n_0 ),
        .Q(golden_fifo_write[3]),
        .R(\write_pointer[9]_i_1__0_n_0 ));
  FDRE \write_pointer_reg[4] 
       (.C(golden_fft_axis_aclk),
        .CE(\write_pointer[9]_i_2__0_n_0 ),
        .D(\write_pointer[4]_i_1__0_n_0 ),
        .Q(golden_fifo_write[4]),
        .R(\write_pointer[9]_i_1__0_n_0 ));
  FDRE \write_pointer_reg[5] 
       (.C(golden_fft_axis_aclk),
        .CE(\write_pointer[9]_i_2__0_n_0 ),
        .D(\write_pointer[5]_i_1__0_n_0 ),
        .Q(golden_fifo_write[5]),
        .R(\write_pointer[9]_i_1__0_n_0 ));
  FDRE \write_pointer_reg[6] 
       (.C(golden_fft_axis_aclk),
        .CE(\write_pointer[9]_i_2__0_n_0 ),
        .D(\write_pointer[6]_i_1__0_n_0 ),
        .Q(golden_fifo_write[6]),
        .R(\write_pointer[9]_i_1__0_n_0 ));
  FDRE \write_pointer_reg[7] 
       (.C(golden_fft_axis_aclk),
        .CE(\write_pointer[9]_i_2__0_n_0 ),
        .D(\write_pointer[7]_i_1__0_n_0 ),
        .Q(golden_fifo_write[7]),
        .R(\write_pointer[9]_i_1__0_n_0 ));
  FDRE \write_pointer_reg[8] 
       (.C(golden_fft_axis_aclk),
        .CE(\write_pointer[9]_i_2__0_n_0 ),
        .D(\write_pointer[8]_i_1__0_n_0 ),
        .Q(golden_fifo_write[8]),
        .R(\write_pointer[9]_i_1__0_n_0 ));
  FDRE \write_pointer_reg[9] 
       (.C(golden_fft_axis_aclk),
        .CE(\write_pointer[9]_i_2__0_n_0 ),
        .D(\write_pointer[9]_i_3__0_n_0 ),
        .Q(golden_fifo_write[9]),
        .R(\write_pointer[9]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h0C8C8C8C)) 
    writes_done_i_1__0
       (.I0(writes_done_reg_n_0),
        .I1(golden_fft_axis_aresetn),
        .I2(writes_done_i_2_n_0),
        .I3(golden_fft_axis_tready),
        .I4(golden_fft_axis_tvalid),
        .O(writes_done_i_1__0_n_0));
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    writes_done_i_2
       (.I0(golden_fifo_write[8]),
        .I1(golden_fifo_write[6]),
        .I2(\write_pointer[9]_i_6__0_n_0 ),
        .I3(golden_fifo_write[7]),
        .I4(golden_fifo_write[9]),
        .O(writes_done_i_2_n_0));
  FDRE writes_done_reg
       (.C(golden_fft_axis_aclk),
        .CE(1'b1),
        .D(writes_done_i_1__0_n_0),
        .Q(writes_done_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "projection_correlation_calculator_v1_0_signal_fft_AXIS" *) 
module corr_wrapper_projection_correlation_calculator_v1_0_0_1_projection_correlation_calculator_v1_0_signal_fft_AXIS
   (signal_fft_axis_tready,
    signal_fifo_read_data,
    S,
    writes_done_reg_0,
    DI,
    sum0,
    sum0_0,
    A,
    signal_fft_axis_aclk,
    \fifo_read_reg[9] ,
    \write_pointer_reg[9]_0 ,
    CO,
    signal_fft_axis_aresetn,
    data_ready,
    Q,
    signal_fft_axis_tvalid,
    signal_fft_axis_tlast,
    ADDRA,
    signal_fft_axis_tdata,
    ADDRC,
    ADDRB);
  output signal_fft_axis_tready;
  output signal_fifo_read_data;
  output [3:0]S;
  output writes_done_reg_0;
  output [3:0]DI;
  output [0:0]sum0;
  output [0:0]sum0_0;
  output [15:0]A;
  input signal_fft_axis_aclk;
  input \fifo_read_reg[9] ;
  input [0:0]\write_pointer_reg[9]_0 ;
  input [0:0]CO;
  input signal_fft_axis_aresetn;
  input data_ready;
  input [8:0]Q;
  input signal_fft_axis_tvalid;
  input signal_fft_axis_tlast;
  input [2:0]ADDRA;
  input [15:0]signal_fft_axis_tdata;
  input [2:0]ADDRC;
  input [0:0]ADDRB;

  wire [15:0]A;
  wire [2:0]ADDRA;
  wire [0:0]ADDRB;
  wire [2:0]ADDRC;
  wire [0:0]CO;
  wire [3:0]DI;
  wire [8:0]Q;
  wire [3:0]S;
  wire data_ready;
  wire \fifo_read_reg[9] ;
  wire mst_exec_state_i_1_n_0;
  wire signal_fft_axis_aclk;
  wire signal_fft_axis_aresetn;
  wire [15:0]signal_fft_axis_tdata;
  wire signal_fft_axis_tlast;
  wire signal_fft_axis_tready;
  wire signal_fft_axis_tvalid;
  wire signal_fifo_read_data;
  wire [9:0]signal_fifo_write;
  wire signal_read_data_mag0_i_100_n_0;
  wire signal_read_data_mag0_i_101_n_0;
  wire signal_read_data_mag0_i_102_n_0;
  wire signal_read_data_mag0_i_103_n_0;
  wire signal_read_data_mag0_i_104_n_0;
  wire signal_read_data_mag0_i_105_n_0;
  wire signal_read_data_mag0_i_106_n_0;
  wire signal_read_data_mag0_i_107_n_0;
  wire signal_read_data_mag0_i_108_n_0;
  wire signal_read_data_mag0_i_109_n_0;
  wire signal_read_data_mag0_i_110_n_0;
  wire signal_read_data_mag0_i_111_n_0;
  wire signal_read_data_mag0_i_112_n_0;
  wire signal_read_data_mag0_i_113_n_0;
  wire signal_read_data_mag0_i_18_n_0;
  wire signal_read_data_mag0_i_19_n_0;
  wire signal_read_data_mag0_i_20_n_0;
  wire signal_read_data_mag0_i_21_n_0;
  wire signal_read_data_mag0_i_22_n_0;
  wire signal_read_data_mag0_i_23_n_0;
  wire signal_read_data_mag0_i_24_n_0;
  wire signal_read_data_mag0_i_25_n_0;
  wire signal_read_data_mag0_i_26_n_0;
  wire signal_read_data_mag0_i_27_n_0;
  wire signal_read_data_mag0_i_28_n_0;
  wire signal_read_data_mag0_i_29_n_0;
  wire signal_read_data_mag0_i_30_n_0;
  wire signal_read_data_mag0_i_31_n_0;
  wire signal_read_data_mag0_i_32_n_0;
  wire signal_read_data_mag0_i_33_n_0;
  wire signal_read_data_mag0_i_34_n_0;
  wire signal_read_data_mag0_i_35_n_0;
  wire signal_read_data_mag0_i_36_n_0;
  wire signal_read_data_mag0_i_37_n_0;
  wire signal_read_data_mag0_i_38_n_0;
  wire signal_read_data_mag0_i_39_n_0;
  wire signal_read_data_mag0_i_40_n_0;
  wire signal_read_data_mag0_i_41_n_0;
  wire signal_read_data_mag0_i_42_n_0;
  wire signal_read_data_mag0_i_43_n_0;
  wire signal_read_data_mag0_i_44_n_0;
  wire signal_read_data_mag0_i_45_n_0;
  wire signal_read_data_mag0_i_46_n_0;
  wire signal_read_data_mag0_i_47_n_0;
  wire signal_read_data_mag0_i_48_n_0;
  wire signal_read_data_mag0_i_49_n_0;
  wire signal_read_data_mag0_i_50_n_0;
  wire signal_read_data_mag0_i_51_n_0;
  wire signal_read_data_mag0_i_52_n_0;
  wire signal_read_data_mag0_i_53_n_0;
  wire signal_read_data_mag0_i_54_n_0;
  wire signal_read_data_mag0_i_55_n_0;
  wire signal_read_data_mag0_i_56_n_0;
  wire signal_read_data_mag0_i_57_n_0;
  wire signal_read_data_mag0_i_58_n_0;
  wire signal_read_data_mag0_i_59_n_0;
  wire signal_read_data_mag0_i_60_n_0;
  wire signal_read_data_mag0_i_61_n_0;
  wire signal_read_data_mag0_i_62_n_0;
  wire signal_read_data_mag0_i_63_n_0;
  wire signal_read_data_mag0_i_64_n_0;
  wire signal_read_data_mag0_i_65_n_0;
  wire signal_read_data_mag0_i_66_n_0;
  wire signal_read_data_mag0_i_67_n_0;
  wire signal_read_data_mag0_i_68_n_0;
  wire signal_read_data_mag0_i_69_n_0;
  wire signal_read_data_mag0_i_70_n_0;
  wire signal_read_data_mag0_i_71_n_0;
  wire signal_read_data_mag0_i_72_n_0;
  wire signal_read_data_mag0_i_73_n_0;
  wire signal_read_data_mag0_i_74_n_0;
  wire signal_read_data_mag0_i_75_n_0;
  wire signal_read_data_mag0_i_76_n_0;
  wire signal_read_data_mag0_i_77_n_0;
  wire signal_read_data_mag0_i_78_n_0;
  wire signal_read_data_mag0_i_79_n_0;
  wire signal_read_data_mag0_i_80_n_0;
  wire signal_read_data_mag0_i_81_n_0;
  wire signal_read_data_mag0_i_82_n_0;
  wire signal_read_data_mag0_i_83_n_0;
  wire signal_read_data_mag0_i_84_n_0;
  wire signal_read_data_mag0_i_85_n_0;
  wire signal_read_data_mag0_i_86_n_0;
  wire signal_read_data_mag0_i_87_n_0;
  wire signal_read_data_mag0_i_88_n_0;
  wire signal_read_data_mag0_i_89_n_0;
  wire signal_read_data_mag0_i_90_n_0;
  wire signal_read_data_mag0_i_91_n_0;
  wire signal_read_data_mag0_i_92_n_0;
  wire signal_read_data_mag0_i_93_n_0;
  wire signal_read_data_mag0_i_94_n_0;
  wire signal_read_data_mag0_i_95_n_0;
  wire signal_read_data_mag0_i_96_n_0;
  wire signal_read_data_mag0_i_97_n_0;
  wire signal_read_data_mag0_i_98_n_0;
  wire signal_read_data_mag0_i_99_n_0;
  wire stream_data_fifo_reg_0_63_0_2_i_1_n_0;
  wire stream_data_fifo_reg_0_63_0_2_n_0;
  wire stream_data_fifo_reg_0_63_0_2_n_1;
  wire stream_data_fifo_reg_0_63_0_2_n_2;
  wire stream_data_fifo_reg_0_63_12_14_n_0;
  wire stream_data_fifo_reg_0_63_12_14_n_1;
  wire stream_data_fifo_reg_0_63_12_14_n_2;
  wire stream_data_fifo_reg_0_63_15_15_n_0;
  wire stream_data_fifo_reg_0_63_3_5_n_0;
  wire stream_data_fifo_reg_0_63_3_5_n_1;
  wire stream_data_fifo_reg_0_63_3_5_n_2;
  wire stream_data_fifo_reg_0_63_6_8_n_0;
  wire stream_data_fifo_reg_0_63_6_8_n_1;
  wire stream_data_fifo_reg_0_63_6_8_n_2;
  wire stream_data_fifo_reg_0_63_9_11_n_0;
  wire stream_data_fifo_reg_0_63_9_11_n_1;
  wire stream_data_fifo_reg_0_63_9_11_n_2;
  wire stream_data_fifo_reg_128_191_0_2_i_1_n_0;
  wire stream_data_fifo_reg_128_191_0_2_n_0;
  wire stream_data_fifo_reg_128_191_0_2_n_1;
  wire stream_data_fifo_reg_128_191_0_2_n_2;
  wire stream_data_fifo_reg_128_191_12_14_n_0;
  wire stream_data_fifo_reg_128_191_12_14_n_1;
  wire stream_data_fifo_reg_128_191_12_14_n_2;
  wire stream_data_fifo_reg_128_191_15_15_n_0;
  wire stream_data_fifo_reg_128_191_3_5_n_0;
  wire stream_data_fifo_reg_128_191_3_5_n_1;
  wire stream_data_fifo_reg_128_191_3_5_n_2;
  wire stream_data_fifo_reg_128_191_6_8_n_0;
  wire stream_data_fifo_reg_128_191_6_8_n_1;
  wire stream_data_fifo_reg_128_191_6_8_n_2;
  wire stream_data_fifo_reg_128_191_9_11_n_0;
  wire stream_data_fifo_reg_128_191_9_11_n_1;
  wire stream_data_fifo_reg_128_191_9_11_n_2;
  wire stream_data_fifo_reg_192_255_0_2_i_1_n_0;
  wire stream_data_fifo_reg_192_255_0_2_n_0;
  wire stream_data_fifo_reg_192_255_0_2_n_1;
  wire stream_data_fifo_reg_192_255_0_2_n_2;
  wire stream_data_fifo_reg_192_255_12_14_n_0;
  wire stream_data_fifo_reg_192_255_12_14_n_1;
  wire stream_data_fifo_reg_192_255_12_14_n_2;
  wire stream_data_fifo_reg_192_255_15_15_n_0;
  wire stream_data_fifo_reg_192_255_3_5_n_0;
  wire stream_data_fifo_reg_192_255_3_5_n_1;
  wire stream_data_fifo_reg_192_255_3_5_n_2;
  wire stream_data_fifo_reg_192_255_6_8_n_0;
  wire stream_data_fifo_reg_192_255_6_8_n_1;
  wire stream_data_fifo_reg_192_255_6_8_n_2;
  wire stream_data_fifo_reg_192_255_9_11_n_0;
  wire stream_data_fifo_reg_192_255_9_11_n_1;
  wire stream_data_fifo_reg_192_255_9_11_n_2;
  wire stream_data_fifo_reg_256_319_0_2_i_1_n_0;
  wire stream_data_fifo_reg_256_319_0_2_n_0;
  wire stream_data_fifo_reg_256_319_0_2_n_1;
  wire stream_data_fifo_reg_256_319_0_2_n_2;
  wire stream_data_fifo_reg_256_319_12_14_n_0;
  wire stream_data_fifo_reg_256_319_12_14_n_1;
  wire stream_data_fifo_reg_256_319_12_14_n_2;
  wire stream_data_fifo_reg_256_319_15_15_n_0;
  wire stream_data_fifo_reg_256_319_3_5_n_0;
  wire stream_data_fifo_reg_256_319_3_5_n_1;
  wire stream_data_fifo_reg_256_319_3_5_n_2;
  wire stream_data_fifo_reg_256_319_6_8_n_0;
  wire stream_data_fifo_reg_256_319_6_8_n_1;
  wire stream_data_fifo_reg_256_319_6_8_n_2;
  wire stream_data_fifo_reg_256_319_9_11_n_0;
  wire stream_data_fifo_reg_256_319_9_11_n_1;
  wire stream_data_fifo_reg_256_319_9_11_n_2;
  wire stream_data_fifo_reg_320_383_0_2_i_1_n_0;
  wire stream_data_fifo_reg_320_383_0_2_n_0;
  wire stream_data_fifo_reg_320_383_0_2_n_1;
  wire stream_data_fifo_reg_320_383_0_2_n_2;
  wire stream_data_fifo_reg_320_383_12_14_n_0;
  wire stream_data_fifo_reg_320_383_12_14_n_1;
  wire stream_data_fifo_reg_320_383_12_14_n_2;
  wire stream_data_fifo_reg_320_383_15_15_n_0;
  wire stream_data_fifo_reg_320_383_3_5_n_0;
  wire stream_data_fifo_reg_320_383_3_5_n_1;
  wire stream_data_fifo_reg_320_383_3_5_n_2;
  wire stream_data_fifo_reg_320_383_6_8_n_0;
  wire stream_data_fifo_reg_320_383_6_8_n_1;
  wire stream_data_fifo_reg_320_383_6_8_n_2;
  wire stream_data_fifo_reg_320_383_9_11_n_0;
  wire stream_data_fifo_reg_320_383_9_11_n_1;
  wire stream_data_fifo_reg_320_383_9_11_n_2;
  wire stream_data_fifo_reg_384_447_0_2_i_1_n_0;
  wire stream_data_fifo_reg_384_447_0_2_n_0;
  wire stream_data_fifo_reg_384_447_0_2_n_1;
  wire stream_data_fifo_reg_384_447_0_2_n_2;
  wire stream_data_fifo_reg_384_447_12_14_n_0;
  wire stream_data_fifo_reg_384_447_12_14_n_1;
  wire stream_data_fifo_reg_384_447_12_14_n_2;
  wire stream_data_fifo_reg_384_447_15_15_n_0;
  wire stream_data_fifo_reg_384_447_3_5_n_0;
  wire stream_data_fifo_reg_384_447_3_5_n_1;
  wire stream_data_fifo_reg_384_447_3_5_n_2;
  wire stream_data_fifo_reg_384_447_6_8_n_0;
  wire stream_data_fifo_reg_384_447_6_8_n_1;
  wire stream_data_fifo_reg_384_447_6_8_n_2;
  wire stream_data_fifo_reg_384_447_9_11_n_0;
  wire stream_data_fifo_reg_384_447_9_11_n_1;
  wire stream_data_fifo_reg_384_447_9_11_n_2;
  wire stream_data_fifo_reg_448_511_0_2_i_1_n_0;
  wire stream_data_fifo_reg_448_511_0_2_n_0;
  wire stream_data_fifo_reg_448_511_0_2_n_1;
  wire stream_data_fifo_reg_448_511_0_2_n_2;
  wire stream_data_fifo_reg_448_511_12_14_n_0;
  wire stream_data_fifo_reg_448_511_12_14_n_1;
  wire stream_data_fifo_reg_448_511_12_14_n_2;
  wire stream_data_fifo_reg_448_511_15_15_n_0;
  wire stream_data_fifo_reg_448_511_3_5_n_0;
  wire stream_data_fifo_reg_448_511_3_5_n_1;
  wire stream_data_fifo_reg_448_511_3_5_n_2;
  wire stream_data_fifo_reg_448_511_6_8_n_0;
  wire stream_data_fifo_reg_448_511_6_8_n_1;
  wire stream_data_fifo_reg_448_511_6_8_n_2;
  wire stream_data_fifo_reg_448_511_9_11_n_0;
  wire stream_data_fifo_reg_448_511_9_11_n_1;
  wire stream_data_fifo_reg_448_511_9_11_n_2;
  wire stream_data_fifo_reg_512_575_0_2_i_1_n_0;
  wire stream_data_fifo_reg_512_575_0_2_n_0;
  wire stream_data_fifo_reg_512_575_0_2_n_1;
  wire stream_data_fifo_reg_512_575_0_2_n_2;
  wire stream_data_fifo_reg_512_575_12_14_n_0;
  wire stream_data_fifo_reg_512_575_12_14_n_1;
  wire stream_data_fifo_reg_512_575_12_14_n_2;
  wire stream_data_fifo_reg_512_575_15_15_n_0;
  wire stream_data_fifo_reg_512_575_3_5_n_0;
  wire stream_data_fifo_reg_512_575_3_5_n_1;
  wire stream_data_fifo_reg_512_575_3_5_n_2;
  wire stream_data_fifo_reg_512_575_6_8_n_0;
  wire stream_data_fifo_reg_512_575_6_8_n_1;
  wire stream_data_fifo_reg_512_575_6_8_n_2;
  wire stream_data_fifo_reg_512_575_9_11_n_0;
  wire stream_data_fifo_reg_512_575_9_11_n_1;
  wire stream_data_fifo_reg_512_575_9_11_n_2;
  wire stream_data_fifo_reg_576_639_0_2_i_1_n_0;
  wire stream_data_fifo_reg_576_639_0_2_n_0;
  wire stream_data_fifo_reg_576_639_0_2_n_1;
  wire stream_data_fifo_reg_576_639_0_2_n_2;
  wire stream_data_fifo_reg_576_639_12_14_n_0;
  wire stream_data_fifo_reg_576_639_12_14_n_1;
  wire stream_data_fifo_reg_576_639_12_14_n_2;
  wire stream_data_fifo_reg_576_639_15_15_n_0;
  wire stream_data_fifo_reg_576_639_3_5_n_0;
  wire stream_data_fifo_reg_576_639_3_5_n_1;
  wire stream_data_fifo_reg_576_639_3_5_n_2;
  wire stream_data_fifo_reg_576_639_6_8_n_0;
  wire stream_data_fifo_reg_576_639_6_8_n_1;
  wire stream_data_fifo_reg_576_639_6_8_n_2;
  wire stream_data_fifo_reg_576_639_9_11_n_0;
  wire stream_data_fifo_reg_576_639_9_11_n_1;
  wire stream_data_fifo_reg_576_639_9_11_n_2;
  wire stream_data_fifo_reg_640_703_0_2_i_1_n_0;
  wire stream_data_fifo_reg_640_703_0_2_n_0;
  wire stream_data_fifo_reg_640_703_0_2_n_1;
  wire stream_data_fifo_reg_640_703_0_2_n_2;
  wire stream_data_fifo_reg_640_703_12_14_n_0;
  wire stream_data_fifo_reg_640_703_12_14_n_1;
  wire stream_data_fifo_reg_640_703_12_14_n_2;
  wire stream_data_fifo_reg_640_703_15_15_n_0;
  wire stream_data_fifo_reg_640_703_3_5_n_0;
  wire stream_data_fifo_reg_640_703_3_5_n_1;
  wire stream_data_fifo_reg_640_703_3_5_n_2;
  wire stream_data_fifo_reg_640_703_6_8_n_0;
  wire stream_data_fifo_reg_640_703_6_8_n_1;
  wire stream_data_fifo_reg_640_703_6_8_n_2;
  wire stream_data_fifo_reg_640_703_9_11_n_0;
  wire stream_data_fifo_reg_640_703_9_11_n_1;
  wire stream_data_fifo_reg_640_703_9_11_n_2;
  wire stream_data_fifo_reg_64_127_0_2_i_1_n_0;
  wire stream_data_fifo_reg_64_127_0_2_n_0;
  wire stream_data_fifo_reg_64_127_0_2_n_1;
  wire stream_data_fifo_reg_64_127_0_2_n_2;
  wire stream_data_fifo_reg_64_127_12_14_n_0;
  wire stream_data_fifo_reg_64_127_12_14_n_1;
  wire stream_data_fifo_reg_64_127_12_14_n_2;
  wire stream_data_fifo_reg_64_127_15_15_n_0;
  wire stream_data_fifo_reg_64_127_3_5_n_0;
  wire stream_data_fifo_reg_64_127_3_5_n_1;
  wire stream_data_fifo_reg_64_127_3_5_n_2;
  wire stream_data_fifo_reg_64_127_6_8_n_0;
  wire stream_data_fifo_reg_64_127_6_8_n_1;
  wire stream_data_fifo_reg_64_127_6_8_n_2;
  wire stream_data_fifo_reg_64_127_9_11_n_0;
  wire stream_data_fifo_reg_64_127_9_11_n_1;
  wire stream_data_fifo_reg_64_127_9_11_n_2;
  wire stream_data_fifo_reg_704_767_0_2_i_1_n_0;
  wire stream_data_fifo_reg_704_767_0_2_n_0;
  wire stream_data_fifo_reg_704_767_0_2_n_1;
  wire stream_data_fifo_reg_704_767_0_2_n_2;
  wire stream_data_fifo_reg_704_767_12_14_n_0;
  wire stream_data_fifo_reg_704_767_12_14_n_1;
  wire stream_data_fifo_reg_704_767_12_14_n_2;
  wire stream_data_fifo_reg_704_767_15_15_n_0;
  wire stream_data_fifo_reg_704_767_3_5_n_0;
  wire stream_data_fifo_reg_704_767_3_5_n_1;
  wire stream_data_fifo_reg_704_767_3_5_n_2;
  wire stream_data_fifo_reg_704_767_6_8_n_0;
  wire stream_data_fifo_reg_704_767_6_8_n_1;
  wire stream_data_fifo_reg_704_767_6_8_n_2;
  wire stream_data_fifo_reg_704_767_9_11_n_0;
  wire stream_data_fifo_reg_704_767_9_11_n_1;
  wire stream_data_fifo_reg_704_767_9_11_n_2;
  wire stream_data_fifo_reg_768_831_0_2_i_1_n_0;
  wire stream_data_fifo_reg_768_831_0_2_n_0;
  wire stream_data_fifo_reg_768_831_0_2_n_1;
  wire stream_data_fifo_reg_768_831_0_2_n_2;
  wire stream_data_fifo_reg_768_831_12_14_n_0;
  wire stream_data_fifo_reg_768_831_12_14_n_1;
  wire stream_data_fifo_reg_768_831_12_14_n_2;
  wire stream_data_fifo_reg_768_831_15_15_n_0;
  wire stream_data_fifo_reg_768_831_3_5_n_0;
  wire stream_data_fifo_reg_768_831_3_5_n_1;
  wire stream_data_fifo_reg_768_831_3_5_n_2;
  wire stream_data_fifo_reg_768_831_6_8_n_0;
  wire stream_data_fifo_reg_768_831_6_8_n_1;
  wire stream_data_fifo_reg_768_831_6_8_n_2;
  wire stream_data_fifo_reg_768_831_9_11_n_0;
  wire stream_data_fifo_reg_768_831_9_11_n_1;
  wire stream_data_fifo_reg_768_831_9_11_n_2;
  wire stream_data_fifo_reg_832_895_0_2_i_1_n_0;
  wire stream_data_fifo_reg_832_895_0_2_n_0;
  wire stream_data_fifo_reg_832_895_0_2_n_1;
  wire stream_data_fifo_reg_832_895_0_2_n_2;
  wire stream_data_fifo_reg_832_895_12_14_n_0;
  wire stream_data_fifo_reg_832_895_12_14_n_1;
  wire stream_data_fifo_reg_832_895_12_14_n_2;
  wire stream_data_fifo_reg_832_895_15_15_n_0;
  wire stream_data_fifo_reg_832_895_3_5_n_0;
  wire stream_data_fifo_reg_832_895_3_5_n_1;
  wire stream_data_fifo_reg_832_895_3_5_n_2;
  wire stream_data_fifo_reg_832_895_6_8_n_0;
  wire stream_data_fifo_reg_832_895_6_8_n_1;
  wire stream_data_fifo_reg_832_895_6_8_n_2;
  wire stream_data_fifo_reg_832_895_9_11_n_0;
  wire stream_data_fifo_reg_832_895_9_11_n_1;
  wire stream_data_fifo_reg_832_895_9_11_n_2;
  wire stream_data_fifo_reg_896_959_0_2_i_1_n_0;
  wire stream_data_fifo_reg_896_959_0_2_n_0;
  wire stream_data_fifo_reg_896_959_0_2_n_1;
  wire stream_data_fifo_reg_896_959_0_2_n_2;
  wire stream_data_fifo_reg_896_959_12_14_n_0;
  wire stream_data_fifo_reg_896_959_12_14_n_1;
  wire stream_data_fifo_reg_896_959_12_14_n_2;
  wire stream_data_fifo_reg_896_959_15_15_n_0;
  wire stream_data_fifo_reg_896_959_3_5_n_0;
  wire stream_data_fifo_reg_896_959_3_5_n_1;
  wire stream_data_fifo_reg_896_959_3_5_n_2;
  wire stream_data_fifo_reg_896_959_6_8_n_0;
  wire stream_data_fifo_reg_896_959_6_8_n_1;
  wire stream_data_fifo_reg_896_959_6_8_n_2;
  wire stream_data_fifo_reg_896_959_9_11_n_0;
  wire stream_data_fifo_reg_896_959_9_11_n_1;
  wire stream_data_fifo_reg_896_959_9_11_n_2;
  wire stream_data_fifo_reg_960_1023_0_2_i_1_n_0;
  wire stream_data_fifo_reg_960_1023_0_2_n_0;
  wire stream_data_fifo_reg_960_1023_0_2_n_1;
  wire stream_data_fifo_reg_960_1023_0_2_n_2;
  wire stream_data_fifo_reg_960_1023_12_14_n_0;
  wire stream_data_fifo_reg_960_1023_12_14_n_1;
  wire stream_data_fifo_reg_960_1023_12_14_n_2;
  wire stream_data_fifo_reg_960_1023_15_15_n_0;
  wire stream_data_fifo_reg_960_1023_3_5_n_0;
  wire stream_data_fifo_reg_960_1023_3_5_n_1;
  wire stream_data_fifo_reg_960_1023_3_5_n_2;
  wire stream_data_fifo_reg_960_1023_6_8_n_0;
  wire stream_data_fifo_reg_960_1023_6_8_n_1;
  wire stream_data_fifo_reg_960_1023_6_8_n_2;
  wire stream_data_fifo_reg_960_1023_9_11_n_0;
  wire stream_data_fifo_reg_960_1023_9_11_n_1;
  wire stream_data_fifo_reg_960_1023_9_11_n_2;
  wire [0:0]sum0;
  wire [0:0]sum0_0;
  wire [9:0]write_pointer;
  wire \write_pointer[6]_i_2_n_0 ;
  wire \write_pointer[9]_i_1_n_0 ;
  wire \write_pointer[9]_i_2_n_0 ;
  wire \write_pointer[9]_i_6_n_0 ;
  wire [0:0]\write_pointer_reg[9]_0 ;
  wire writes_done;
  wire writes_done_i_1_n_0;
  wire writes_done_reg_0;
  wire NLW_stream_data_fifo_reg_0_63_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_0_63_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_0_63_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_0_63_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_0_63_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_0_63_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_128_191_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_128_191_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_128_191_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_128_191_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_128_191_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_128_191_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_192_255_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_192_255_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_192_255_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_192_255_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_192_255_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_192_255_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_256_319_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_256_319_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_256_319_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_256_319_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_256_319_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_256_319_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_320_383_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_320_383_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_320_383_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_320_383_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_320_383_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_320_383_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_384_447_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_384_447_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_384_447_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_384_447_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_384_447_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_384_447_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_448_511_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_448_511_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_448_511_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_448_511_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_448_511_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_448_511_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_512_575_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_512_575_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_512_575_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_512_575_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_512_575_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_512_575_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_576_639_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_576_639_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_576_639_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_576_639_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_576_639_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_576_639_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_640_703_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_640_703_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_640_703_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_640_703_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_640_703_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_640_703_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_64_127_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_64_127_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_64_127_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_64_127_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_64_127_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_64_127_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_704_767_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_704_767_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_704_767_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_704_767_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_704_767_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_704_767_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_768_831_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_768_831_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_768_831_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_768_831_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_768_831_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_768_831_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_832_895_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_832_895_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_832_895_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_832_895_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_832_895_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_832_895_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_896_959_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_896_959_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_896_959_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_896_959_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_896_959_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_896_959_9_11_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_960_1023_0_2_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_960_1023_12_14_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_960_1023_15_15_SPO_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_960_1023_3_5_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_960_1023_6_8_DOD_UNCONNECTED;
  wire NLW_stream_data_fifo_reg_960_1023_9_11_DOD_UNCONNECTED;

  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_1
       (.I0(signal_fifo_write[7]),
        .I1(Q[6]),
        .I2(signal_fifo_write[6]),
        .I3(Q[5]),
        .O(DI[3]));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_1__0
       (.I0(signal_fifo_write[9]),
        .I1(Q[8]),
        .I2(signal_fifo_write[8]),
        .I3(Q[7]),
        .O(sum0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_2
       (.I0(signal_fifo_write[5]),
        .I1(Q[4]),
        .I2(signal_fifo_write[4]),
        .I3(Q[3]),
        .O(DI[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_2__0
       (.I0(signal_fifo_write[9]),
        .I1(Q[8]),
        .I2(signal_fifo_write[8]),
        .I3(Q[7]),
        .O(sum0_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    i__carry_i_3
       (.I0(signal_fifo_write[3]),
        .I1(ADDRA[2]),
        .I2(signal_fifo_write[2]),
        .I3(Q[2]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h7510)) 
    i__carry_i_4
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(signal_fifo_write[0]),
        .I3(signal_fifo_write[1]),
        .O(DI[0]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_5
       (.I0(signal_fifo_write[7]),
        .I1(Q[6]),
        .I2(signal_fifo_write[6]),
        .I3(Q[5]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_6
       (.I0(signal_fifo_write[5]),
        .I1(Q[4]),
        .I2(signal_fifo_write[4]),
        .I3(Q[3]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    i__carry_i_7
       (.I0(signal_fifo_write[3]),
        .I1(ADDRA[2]),
        .I2(signal_fifo_write[2]),
        .I3(Q[2]),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h8421)) 
    i__carry_i_8
       (.I0(signal_fifo_write[1]),
        .I1(signal_fifo_write[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(S[0]));
  LUT4 #(
    .INIT(16'h2E00)) 
    mst_exec_state_i_1
       (.I0(signal_fft_axis_tvalid),
        .I1(signal_fft_axis_tready),
        .I2(writes_done),
        .I3(signal_fft_axis_aresetn),
        .O(mst_exec_state_i_1_n_0));
  FDRE mst_exec_state_reg
       (.C(signal_fft_axis_aclk),
        .CE(1'b1),
        .D(mst_exec_state_i_1_n_0),
        .Q(signal_fft_axis_tready),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAA00EA00)) 
    signal_read_data_mag0_i_1
       (.I0(\fifo_read_reg[9] ),
        .I1(\write_pointer_reg[9]_0 ),
        .I2(CO),
        .I3(signal_fft_axis_aresetn),
        .I4(data_ready),
        .O(signal_fifo_read_data));
  MUXF8 signal_read_data_mag0_i_10
       (.I0(signal_read_data_mag0_i_34_n_0),
        .I1(signal_read_data_mag0_i_35_n_0),
        .O(A[7]),
        .S(Q[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_100
       (.I0(stream_data_fifo_reg_704_767_3_5_n_0),
        .I1(stream_data_fifo_reg_640_703_3_5_n_0),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_576_639_3_5_n_0),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_512_575_3_5_n_0),
        .O(signal_read_data_mag0_i_100_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_101
       (.I0(stream_data_fifo_reg_960_1023_3_5_n_0),
        .I1(stream_data_fifo_reg_896_959_3_5_n_0),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_832_895_3_5_n_0),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_768_831_3_5_n_0),
        .O(signal_read_data_mag0_i_101_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_102
       (.I0(stream_data_fifo_reg_192_255_0_2_n_2),
        .I1(stream_data_fifo_reg_128_191_0_2_n_2),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_64_127_0_2_n_2),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_0_63_0_2_n_2),
        .O(signal_read_data_mag0_i_102_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_103
       (.I0(stream_data_fifo_reg_448_511_0_2_n_2),
        .I1(stream_data_fifo_reg_384_447_0_2_n_2),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_320_383_0_2_n_2),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_256_319_0_2_n_2),
        .O(signal_read_data_mag0_i_103_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_104
       (.I0(stream_data_fifo_reg_704_767_0_2_n_2),
        .I1(stream_data_fifo_reg_640_703_0_2_n_2),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_576_639_0_2_n_2),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_512_575_0_2_n_2),
        .O(signal_read_data_mag0_i_104_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_105
       (.I0(stream_data_fifo_reg_960_1023_0_2_n_2),
        .I1(stream_data_fifo_reg_896_959_0_2_n_2),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_832_895_0_2_n_2),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_768_831_0_2_n_2),
        .O(signal_read_data_mag0_i_105_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_106
       (.I0(stream_data_fifo_reg_192_255_0_2_n_1),
        .I1(stream_data_fifo_reg_128_191_0_2_n_1),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_64_127_0_2_n_1),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_0_63_0_2_n_1),
        .O(signal_read_data_mag0_i_106_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_107
       (.I0(stream_data_fifo_reg_448_511_0_2_n_1),
        .I1(stream_data_fifo_reg_384_447_0_2_n_1),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_320_383_0_2_n_1),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_256_319_0_2_n_1),
        .O(signal_read_data_mag0_i_107_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_108
       (.I0(stream_data_fifo_reg_704_767_0_2_n_1),
        .I1(stream_data_fifo_reg_640_703_0_2_n_1),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_576_639_0_2_n_1),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_512_575_0_2_n_1),
        .O(signal_read_data_mag0_i_108_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_109
       (.I0(stream_data_fifo_reg_960_1023_0_2_n_1),
        .I1(stream_data_fifo_reg_896_959_0_2_n_1),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_832_895_0_2_n_1),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_768_831_0_2_n_1),
        .O(signal_read_data_mag0_i_109_n_0));
  MUXF8 signal_read_data_mag0_i_11
       (.I0(signal_read_data_mag0_i_36_n_0),
        .I1(signal_read_data_mag0_i_37_n_0),
        .O(A[6]),
        .S(Q[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_110
       (.I0(stream_data_fifo_reg_192_255_0_2_n_0),
        .I1(stream_data_fifo_reg_128_191_0_2_n_0),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_64_127_0_2_n_0),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_0_63_0_2_n_0),
        .O(signal_read_data_mag0_i_110_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_111
       (.I0(stream_data_fifo_reg_448_511_0_2_n_0),
        .I1(stream_data_fifo_reg_384_447_0_2_n_0),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_320_383_0_2_n_0),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_256_319_0_2_n_0),
        .O(signal_read_data_mag0_i_111_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_112
       (.I0(stream_data_fifo_reg_704_767_0_2_n_0),
        .I1(stream_data_fifo_reg_640_703_0_2_n_0),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_576_639_0_2_n_0),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_512_575_0_2_n_0),
        .O(signal_read_data_mag0_i_112_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_113
       (.I0(stream_data_fifo_reg_960_1023_0_2_n_0),
        .I1(stream_data_fifo_reg_896_959_0_2_n_0),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_832_895_0_2_n_0),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_768_831_0_2_n_0),
        .O(signal_read_data_mag0_i_113_n_0));
  MUXF8 signal_read_data_mag0_i_12
       (.I0(signal_read_data_mag0_i_38_n_0),
        .I1(signal_read_data_mag0_i_39_n_0),
        .O(A[5]),
        .S(Q[8]));
  MUXF8 signal_read_data_mag0_i_13
       (.I0(signal_read_data_mag0_i_40_n_0),
        .I1(signal_read_data_mag0_i_41_n_0),
        .O(A[4]),
        .S(Q[8]));
  MUXF8 signal_read_data_mag0_i_14
       (.I0(signal_read_data_mag0_i_42_n_0),
        .I1(signal_read_data_mag0_i_43_n_0),
        .O(A[3]),
        .S(Q[8]));
  MUXF8 signal_read_data_mag0_i_15
       (.I0(signal_read_data_mag0_i_44_n_0),
        .I1(signal_read_data_mag0_i_45_n_0),
        .O(A[2]),
        .S(Q[8]));
  MUXF8 signal_read_data_mag0_i_16
       (.I0(signal_read_data_mag0_i_46_n_0),
        .I1(signal_read_data_mag0_i_47_n_0),
        .O(A[1]),
        .S(Q[8]));
  MUXF8 signal_read_data_mag0_i_17
       (.I0(signal_read_data_mag0_i_48_n_0),
        .I1(signal_read_data_mag0_i_49_n_0),
        .O(A[0]),
        .S(Q[8]));
  MUXF7 signal_read_data_mag0_i_18
       (.I0(signal_read_data_mag0_i_50_n_0),
        .I1(signal_read_data_mag0_i_51_n_0),
        .O(signal_read_data_mag0_i_18_n_0),
        .S(Q[7]));
  MUXF7 signal_read_data_mag0_i_19
       (.I0(signal_read_data_mag0_i_52_n_0),
        .I1(signal_read_data_mag0_i_53_n_0),
        .O(signal_read_data_mag0_i_19_n_0),
        .S(Q[7]));
  MUXF8 signal_read_data_mag0_i_2
       (.I0(signal_read_data_mag0_i_18_n_0),
        .I1(signal_read_data_mag0_i_19_n_0),
        .O(A[15]),
        .S(Q[8]));
  MUXF7 signal_read_data_mag0_i_20
       (.I0(signal_read_data_mag0_i_54_n_0),
        .I1(signal_read_data_mag0_i_55_n_0),
        .O(signal_read_data_mag0_i_20_n_0),
        .S(Q[7]));
  MUXF7 signal_read_data_mag0_i_21
       (.I0(signal_read_data_mag0_i_56_n_0),
        .I1(signal_read_data_mag0_i_57_n_0),
        .O(signal_read_data_mag0_i_21_n_0),
        .S(Q[7]));
  MUXF7 signal_read_data_mag0_i_22
       (.I0(signal_read_data_mag0_i_58_n_0),
        .I1(signal_read_data_mag0_i_59_n_0),
        .O(signal_read_data_mag0_i_22_n_0),
        .S(Q[7]));
  MUXF7 signal_read_data_mag0_i_23
       (.I0(signal_read_data_mag0_i_60_n_0),
        .I1(signal_read_data_mag0_i_61_n_0),
        .O(signal_read_data_mag0_i_23_n_0),
        .S(Q[7]));
  MUXF7 signal_read_data_mag0_i_24
       (.I0(signal_read_data_mag0_i_62_n_0),
        .I1(signal_read_data_mag0_i_63_n_0),
        .O(signal_read_data_mag0_i_24_n_0),
        .S(Q[7]));
  MUXF7 signal_read_data_mag0_i_25
       (.I0(signal_read_data_mag0_i_64_n_0),
        .I1(signal_read_data_mag0_i_65_n_0),
        .O(signal_read_data_mag0_i_25_n_0),
        .S(Q[7]));
  MUXF7 signal_read_data_mag0_i_26
       (.I0(signal_read_data_mag0_i_66_n_0),
        .I1(signal_read_data_mag0_i_67_n_0),
        .O(signal_read_data_mag0_i_26_n_0),
        .S(Q[7]));
  MUXF7 signal_read_data_mag0_i_27
       (.I0(signal_read_data_mag0_i_68_n_0),
        .I1(signal_read_data_mag0_i_69_n_0),
        .O(signal_read_data_mag0_i_27_n_0),
        .S(Q[7]));
  MUXF7 signal_read_data_mag0_i_28
       (.I0(signal_read_data_mag0_i_70_n_0),
        .I1(signal_read_data_mag0_i_71_n_0),
        .O(signal_read_data_mag0_i_28_n_0),
        .S(Q[7]));
  MUXF7 signal_read_data_mag0_i_29
       (.I0(signal_read_data_mag0_i_72_n_0),
        .I1(signal_read_data_mag0_i_73_n_0),
        .O(signal_read_data_mag0_i_29_n_0),
        .S(Q[7]));
  MUXF8 signal_read_data_mag0_i_3
       (.I0(signal_read_data_mag0_i_20_n_0),
        .I1(signal_read_data_mag0_i_21_n_0),
        .O(A[14]),
        .S(Q[8]));
  MUXF7 signal_read_data_mag0_i_30
       (.I0(signal_read_data_mag0_i_74_n_0),
        .I1(signal_read_data_mag0_i_75_n_0),
        .O(signal_read_data_mag0_i_30_n_0),
        .S(Q[7]));
  MUXF7 signal_read_data_mag0_i_31
       (.I0(signal_read_data_mag0_i_76_n_0),
        .I1(signal_read_data_mag0_i_77_n_0),
        .O(signal_read_data_mag0_i_31_n_0),
        .S(Q[7]));
  MUXF7 signal_read_data_mag0_i_32
       (.I0(signal_read_data_mag0_i_78_n_0),
        .I1(signal_read_data_mag0_i_79_n_0),
        .O(signal_read_data_mag0_i_32_n_0),
        .S(Q[7]));
  MUXF7 signal_read_data_mag0_i_33
       (.I0(signal_read_data_mag0_i_80_n_0),
        .I1(signal_read_data_mag0_i_81_n_0),
        .O(signal_read_data_mag0_i_33_n_0),
        .S(Q[7]));
  MUXF7 signal_read_data_mag0_i_34
       (.I0(signal_read_data_mag0_i_82_n_0),
        .I1(signal_read_data_mag0_i_83_n_0),
        .O(signal_read_data_mag0_i_34_n_0),
        .S(Q[7]));
  MUXF7 signal_read_data_mag0_i_35
       (.I0(signal_read_data_mag0_i_84_n_0),
        .I1(signal_read_data_mag0_i_85_n_0),
        .O(signal_read_data_mag0_i_35_n_0),
        .S(Q[7]));
  MUXF7 signal_read_data_mag0_i_36
       (.I0(signal_read_data_mag0_i_86_n_0),
        .I1(signal_read_data_mag0_i_87_n_0),
        .O(signal_read_data_mag0_i_36_n_0),
        .S(Q[7]));
  MUXF7 signal_read_data_mag0_i_37
       (.I0(signal_read_data_mag0_i_88_n_0),
        .I1(signal_read_data_mag0_i_89_n_0),
        .O(signal_read_data_mag0_i_37_n_0),
        .S(Q[7]));
  MUXF7 signal_read_data_mag0_i_38
       (.I0(signal_read_data_mag0_i_90_n_0),
        .I1(signal_read_data_mag0_i_91_n_0),
        .O(signal_read_data_mag0_i_38_n_0),
        .S(Q[7]));
  MUXF7 signal_read_data_mag0_i_39
       (.I0(signal_read_data_mag0_i_92_n_0),
        .I1(signal_read_data_mag0_i_93_n_0),
        .O(signal_read_data_mag0_i_39_n_0),
        .S(Q[7]));
  MUXF8 signal_read_data_mag0_i_4
       (.I0(signal_read_data_mag0_i_22_n_0),
        .I1(signal_read_data_mag0_i_23_n_0),
        .O(A[13]),
        .S(Q[8]));
  MUXF7 signal_read_data_mag0_i_40
       (.I0(signal_read_data_mag0_i_94_n_0),
        .I1(signal_read_data_mag0_i_95_n_0),
        .O(signal_read_data_mag0_i_40_n_0),
        .S(Q[7]));
  MUXF7 signal_read_data_mag0_i_41
       (.I0(signal_read_data_mag0_i_96_n_0),
        .I1(signal_read_data_mag0_i_97_n_0),
        .O(signal_read_data_mag0_i_41_n_0),
        .S(Q[7]));
  MUXF7 signal_read_data_mag0_i_42
       (.I0(signal_read_data_mag0_i_98_n_0),
        .I1(signal_read_data_mag0_i_99_n_0),
        .O(signal_read_data_mag0_i_42_n_0),
        .S(Q[7]));
  MUXF7 signal_read_data_mag0_i_43
       (.I0(signal_read_data_mag0_i_100_n_0),
        .I1(signal_read_data_mag0_i_101_n_0),
        .O(signal_read_data_mag0_i_43_n_0),
        .S(Q[7]));
  MUXF7 signal_read_data_mag0_i_44
       (.I0(signal_read_data_mag0_i_102_n_0),
        .I1(signal_read_data_mag0_i_103_n_0),
        .O(signal_read_data_mag0_i_44_n_0),
        .S(Q[7]));
  MUXF7 signal_read_data_mag0_i_45
       (.I0(signal_read_data_mag0_i_104_n_0),
        .I1(signal_read_data_mag0_i_105_n_0),
        .O(signal_read_data_mag0_i_45_n_0),
        .S(Q[7]));
  MUXF7 signal_read_data_mag0_i_46
       (.I0(signal_read_data_mag0_i_106_n_0),
        .I1(signal_read_data_mag0_i_107_n_0),
        .O(signal_read_data_mag0_i_46_n_0),
        .S(Q[7]));
  MUXF7 signal_read_data_mag0_i_47
       (.I0(signal_read_data_mag0_i_108_n_0),
        .I1(signal_read_data_mag0_i_109_n_0),
        .O(signal_read_data_mag0_i_47_n_0),
        .S(Q[7]));
  MUXF7 signal_read_data_mag0_i_48
       (.I0(signal_read_data_mag0_i_110_n_0),
        .I1(signal_read_data_mag0_i_111_n_0),
        .O(signal_read_data_mag0_i_48_n_0),
        .S(Q[7]));
  MUXF7 signal_read_data_mag0_i_49
       (.I0(signal_read_data_mag0_i_112_n_0),
        .I1(signal_read_data_mag0_i_113_n_0),
        .O(signal_read_data_mag0_i_49_n_0),
        .S(Q[7]));
  MUXF8 signal_read_data_mag0_i_5
       (.I0(signal_read_data_mag0_i_24_n_0),
        .I1(signal_read_data_mag0_i_25_n_0),
        .O(A[12]),
        .S(Q[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_50
       (.I0(stream_data_fifo_reg_192_255_15_15_n_0),
        .I1(stream_data_fifo_reg_128_191_15_15_n_0),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_64_127_15_15_n_0),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_0_63_15_15_n_0),
        .O(signal_read_data_mag0_i_50_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_51
       (.I0(stream_data_fifo_reg_448_511_15_15_n_0),
        .I1(stream_data_fifo_reg_384_447_15_15_n_0),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_320_383_15_15_n_0),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_256_319_15_15_n_0),
        .O(signal_read_data_mag0_i_51_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_52
       (.I0(stream_data_fifo_reg_704_767_15_15_n_0),
        .I1(stream_data_fifo_reg_640_703_15_15_n_0),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_576_639_15_15_n_0),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_512_575_15_15_n_0),
        .O(signal_read_data_mag0_i_52_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_53
       (.I0(stream_data_fifo_reg_960_1023_15_15_n_0),
        .I1(stream_data_fifo_reg_896_959_15_15_n_0),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_832_895_15_15_n_0),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_768_831_15_15_n_0),
        .O(signal_read_data_mag0_i_53_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_54
       (.I0(stream_data_fifo_reg_192_255_12_14_n_2),
        .I1(stream_data_fifo_reg_128_191_12_14_n_2),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_64_127_12_14_n_2),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_0_63_12_14_n_2),
        .O(signal_read_data_mag0_i_54_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_55
       (.I0(stream_data_fifo_reg_448_511_12_14_n_2),
        .I1(stream_data_fifo_reg_384_447_12_14_n_2),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_320_383_12_14_n_2),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_256_319_12_14_n_2),
        .O(signal_read_data_mag0_i_55_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_56
       (.I0(stream_data_fifo_reg_704_767_12_14_n_2),
        .I1(stream_data_fifo_reg_640_703_12_14_n_2),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_576_639_12_14_n_2),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_512_575_12_14_n_2),
        .O(signal_read_data_mag0_i_56_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_57
       (.I0(stream_data_fifo_reg_960_1023_12_14_n_2),
        .I1(stream_data_fifo_reg_896_959_12_14_n_2),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_832_895_12_14_n_2),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_768_831_12_14_n_2),
        .O(signal_read_data_mag0_i_57_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_58
       (.I0(stream_data_fifo_reg_192_255_12_14_n_1),
        .I1(stream_data_fifo_reg_128_191_12_14_n_1),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_64_127_12_14_n_1),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_0_63_12_14_n_1),
        .O(signal_read_data_mag0_i_58_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_59
       (.I0(stream_data_fifo_reg_448_511_12_14_n_1),
        .I1(stream_data_fifo_reg_384_447_12_14_n_1),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_320_383_12_14_n_1),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_256_319_12_14_n_1),
        .O(signal_read_data_mag0_i_59_n_0));
  MUXF8 signal_read_data_mag0_i_6
       (.I0(signal_read_data_mag0_i_26_n_0),
        .I1(signal_read_data_mag0_i_27_n_0),
        .O(A[11]),
        .S(Q[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_60
       (.I0(stream_data_fifo_reg_704_767_12_14_n_1),
        .I1(stream_data_fifo_reg_640_703_12_14_n_1),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_576_639_12_14_n_1),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_512_575_12_14_n_1),
        .O(signal_read_data_mag0_i_60_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_61
       (.I0(stream_data_fifo_reg_960_1023_12_14_n_1),
        .I1(stream_data_fifo_reg_896_959_12_14_n_1),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_832_895_12_14_n_1),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_768_831_12_14_n_1),
        .O(signal_read_data_mag0_i_61_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_62
       (.I0(stream_data_fifo_reg_192_255_12_14_n_0),
        .I1(stream_data_fifo_reg_128_191_12_14_n_0),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_64_127_12_14_n_0),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_0_63_12_14_n_0),
        .O(signal_read_data_mag0_i_62_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_63
       (.I0(stream_data_fifo_reg_448_511_12_14_n_0),
        .I1(stream_data_fifo_reg_384_447_12_14_n_0),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_320_383_12_14_n_0),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_256_319_12_14_n_0),
        .O(signal_read_data_mag0_i_63_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_64
       (.I0(stream_data_fifo_reg_704_767_12_14_n_0),
        .I1(stream_data_fifo_reg_640_703_12_14_n_0),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_576_639_12_14_n_0),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_512_575_12_14_n_0),
        .O(signal_read_data_mag0_i_64_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_65
       (.I0(stream_data_fifo_reg_960_1023_12_14_n_0),
        .I1(stream_data_fifo_reg_896_959_12_14_n_0),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_832_895_12_14_n_0),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_768_831_12_14_n_0),
        .O(signal_read_data_mag0_i_65_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_66
       (.I0(stream_data_fifo_reg_192_255_9_11_n_2),
        .I1(stream_data_fifo_reg_128_191_9_11_n_2),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_64_127_9_11_n_2),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_0_63_9_11_n_2),
        .O(signal_read_data_mag0_i_66_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_67
       (.I0(stream_data_fifo_reg_448_511_9_11_n_2),
        .I1(stream_data_fifo_reg_384_447_9_11_n_2),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_320_383_9_11_n_2),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_256_319_9_11_n_2),
        .O(signal_read_data_mag0_i_67_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_68
       (.I0(stream_data_fifo_reg_704_767_9_11_n_2),
        .I1(stream_data_fifo_reg_640_703_9_11_n_2),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_576_639_9_11_n_2),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_512_575_9_11_n_2),
        .O(signal_read_data_mag0_i_68_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_69
       (.I0(stream_data_fifo_reg_960_1023_9_11_n_2),
        .I1(stream_data_fifo_reg_896_959_9_11_n_2),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_832_895_9_11_n_2),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_768_831_9_11_n_2),
        .O(signal_read_data_mag0_i_69_n_0));
  MUXF8 signal_read_data_mag0_i_7
       (.I0(signal_read_data_mag0_i_28_n_0),
        .I1(signal_read_data_mag0_i_29_n_0),
        .O(A[10]),
        .S(Q[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_70
       (.I0(stream_data_fifo_reg_192_255_9_11_n_1),
        .I1(stream_data_fifo_reg_128_191_9_11_n_1),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_64_127_9_11_n_1),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_0_63_9_11_n_1),
        .O(signal_read_data_mag0_i_70_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_71
       (.I0(stream_data_fifo_reg_448_511_9_11_n_1),
        .I1(stream_data_fifo_reg_384_447_9_11_n_1),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_320_383_9_11_n_1),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_256_319_9_11_n_1),
        .O(signal_read_data_mag0_i_71_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_72
       (.I0(stream_data_fifo_reg_704_767_9_11_n_1),
        .I1(stream_data_fifo_reg_640_703_9_11_n_1),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_576_639_9_11_n_1),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_512_575_9_11_n_1),
        .O(signal_read_data_mag0_i_72_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_73
       (.I0(stream_data_fifo_reg_960_1023_9_11_n_1),
        .I1(stream_data_fifo_reg_896_959_9_11_n_1),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_832_895_9_11_n_1),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_768_831_9_11_n_1),
        .O(signal_read_data_mag0_i_73_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_74
       (.I0(stream_data_fifo_reg_192_255_9_11_n_0),
        .I1(stream_data_fifo_reg_128_191_9_11_n_0),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_64_127_9_11_n_0),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_0_63_9_11_n_0),
        .O(signal_read_data_mag0_i_74_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_75
       (.I0(stream_data_fifo_reg_448_511_9_11_n_0),
        .I1(stream_data_fifo_reg_384_447_9_11_n_0),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_320_383_9_11_n_0),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_256_319_9_11_n_0),
        .O(signal_read_data_mag0_i_75_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_76
       (.I0(stream_data_fifo_reg_704_767_9_11_n_0),
        .I1(stream_data_fifo_reg_640_703_9_11_n_0),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_576_639_9_11_n_0),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_512_575_9_11_n_0),
        .O(signal_read_data_mag0_i_76_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_77
       (.I0(stream_data_fifo_reg_960_1023_9_11_n_0),
        .I1(stream_data_fifo_reg_896_959_9_11_n_0),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_832_895_9_11_n_0),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_768_831_9_11_n_0),
        .O(signal_read_data_mag0_i_77_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_78
       (.I0(stream_data_fifo_reg_192_255_6_8_n_2),
        .I1(stream_data_fifo_reg_128_191_6_8_n_2),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_64_127_6_8_n_2),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_0_63_6_8_n_2),
        .O(signal_read_data_mag0_i_78_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_79
       (.I0(stream_data_fifo_reg_448_511_6_8_n_2),
        .I1(stream_data_fifo_reg_384_447_6_8_n_2),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_320_383_6_8_n_2),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_256_319_6_8_n_2),
        .O(signal_read_data_mag0_i_79_n_0));
  MUXF8 signal_read_data_mag0_i_8
       (.I0(signal_read_data_mag0_i_30_n_0),
        .I1(signal_read_data_mag0_i_31_n_0),
        .O(A[9]),
        .S(Q[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_80
       (.I0(stream_data_fifo_reg_704_767_6_8_n_2),
        .I1(stream_data_fifo_reg_640_703_6_8_n_2),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_576_639_6_8_n_2),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_512_575_6_8_n_2),
        .O(signal_read_data_mag0_i_80_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_81
       (.I0(stream_data_fifo_reg_960_1023_6_8_n_2),
        .I1(stream_data_fifo_reg_896_959_6_8_n_2),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_832_895_6_8_n_2),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_768_831_6_8_n_2),
        .O(signal_read_data_mag0_i_81_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_82
       (.I0(stream_data_fifo_reg_192_255_6_8_n_1),
        .I1(stream_data_fifo_reg_128_191_6_8_n_1),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_64_127_6_8_n_1),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_0_63_6_8_n_1),
        .O(signal_read_data_mag0_i_82_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_83
       (.I0(stream_data_fifo_reg_448_511_6_8_n_1),
        .I1(stream_data_fifo_reg_384_447_6_8_n_1),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_320_383_6_8_n_1),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_256_319_6_8_n_1),
        .O(signal_read_data_mag0_i_83_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_84
       (.I0(stream_data_fifo_reg_704_767_6_8_n_1),
        .I1(stream_data_fifo_reg_640_703_6_8_n_1),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_576_639_6_8_n_1),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_512_575_6_8_n_1),
        .O(signal_read_data_mag0_i_84_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_85
       (.I0(stream_data_fifo_reg_960_1023_6_8_n_1),
        .I1(stream_data_fifo_reg_896_959_6_8_n_1),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_832_895_6_8_n_1),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_768_831_6_8_n_1),
        .O(signal_read_data_mag0_i_85_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_86
       (.I0(stream_data_fifo_reg_192_255_6_8_n_0),
        .I1(stream_data_fifo_reg_128_191_6_8_n_0),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_64_127_6_8_n_0),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_0_63_6_8_n_0),
        .O(signal_read_data_mag0_i_86_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_87
       (.I0(stream_data_fifo_reg_448_511_6_8_n_0),
        .I1(stream_data_fifo_reg_384_447_6_8_n_0),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_320_383_6_8_n_0),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_256_319_6_8_n_0),
        .O(signal_read_data_mag0_i_87_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_88
       (.I0(stream_data_fifo_reg_704_767_6_8_n_0),
        .I1(stream_data_fifo_reg_640_703_6_8_n_0),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_576_639_6_8_n_0),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_512_575_6_8_n_0),
        .O(signal_read_data_mag0_i_88_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_89
       (.I0(stream_data_fifo_reg_960_1023_6_8_n_0),
        .I1(stream_data_fifo_reg_896_959_6_8_n_0),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_832_895_6_8_n_0),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_768_831_6_8_n_0),
        .O(signal_read_data_mag0_i_89_n_0));
  MUXF8 signal_read_data_mag0_i_9
       (.I0(signal_read_data_mag0_i_32_n_0),
        .I1(signal_read_data_mag0_i_33_n_0),
        .O(A[8]),
        .S(Q[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_90
       (.I0(stream_data_fifo_reg_192_255_3_5_n_2),
        .I1(stream_data_fifo_reg_128_191_3_5_n_2),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_64_127_3_5_n_2),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_0_63_3_5_n_2),
        .O(signal_read_data_mag0_i_90_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_91
       (.I0(stream_data_fifo_reg_448_511_3_5_n_2),
        .I1(stream_data_fifo_reg_384_447_3_5_n_2),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_320_383_3_5_n_2),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_256_319_3_5_n_2),
        .O(signal_read_data_mag0_i_91_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_92
       (.I0(stream_data_fifo_reg_704_767_3_5_n_2),
        .I1(stream_data_fifo_reg_640_703_3_5_n_2),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_576_639_3_5_n_2),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_512_575_3_5_n_2),
        .O(signal_read_data_mag0_i_92_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_93
       (.I0(stream_data_fifo_reg_960_1023_3_5_n_2),
        .I1(stream_data_fifo_reg_896_959_3_5_n_2),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_832_895_3_5_n_2),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_768_831_3_5_n_2),
        .O(signal_read_data_mag0_i_93_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_94
       (.I0(stream_data_fifo_reg_192_255_3_5_n_1),
        .I1(stream_data_fifo_reg_128_191_3_5_n_1),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_64_127_3_5_n_1),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_0_63_3_5_n_1),
        .O(signal_read_data_mag0_i_94_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_95
       (.I0(stream_data_fifo_reg_448_511_3_5_n_1),
        .I1(stream_data_fifo_reg_384_447_3_5_n_1),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_320_383_3_5_n_1),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_256_319_3_5_n_1),
        .O(signal_read_data_mag0_i_95_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_96
       (.I0(stream_data_fifo_reg_704_767_3_5_n_1),
        .I1(stream_data_fifo_reg_640_703_3_5_n_1),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_576_639_3_5_n_1),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_512_575_3_5_n_1),
        .O(signal_read_data_mag0_i_96_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_97
       (.I0(stream_data_fifo_reg_960_1023_3_5_n_1),
        .I1(stream_data_fifo_reg_896_959_3_5_n_1),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_832_895_3_5_n_1),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_768_831_3_5_n_1),
        .O(signal_read_data_mag0_i_97_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_98
       (.I0(stream_data_fifo_reg_192_255_3_5_n_0),
        .I1(stream_data_fifo_reg_128_191_3_5_n_0),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_64_127_3_5_n_0),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_0_63_3_5_n_0),
        .O(signal_read_data_mag0_i_98_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    signal_read_data_mag0_i_99
       (.I0(stream_data_fifo_reg_448_511_3_5_n_0),
        .I1(stream_data_fifo_reg_384_447_3_5_n_0),
        .I2(Q[6]),
        .I3(stream_data_fifo_reg_320_383_3_5_n_0),
        .I4(Q[5]),
        .I5(stream_data_fifo_reg_256_319_3_5_n_0),
        .O(signal_read_data_mag0_i_99_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_0_63_0_2
       (.ADDRA({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRB({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRC({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[0]),
        .DIB(signal_fft_axis_tdata[1]),
        .DIC(signal_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_0_63_0_2_n_0),
        .DOB(stream_data_fifo_reg_0_63_0_2_n_1),
        .DOC(stream_data_fifo_reg_0_63_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_0_63_0_2_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_0_63_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    stream_data_fifo_reg_0_63_0_2_i_1
       (.I0(signal_fft_axis_tready),
        .I1(signal_fft_axis_tvalid),
        .I2(signal_fifo_write[7]),
        .I3(signal_fifo_write[6]),
        .I4(signal_fifo_write[9]),
        .I5(signal_fifo_write[8]),
        .O(stream_data_fifo_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_0_63_12_14
       (.ADDRA({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRB({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRC({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[12]),
        .DIB(signal_fft_axis_tdata[13]),
        .DIC(signal_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_0_63_12_14_n_0),
        .DOB(stream_data_fifo_reg_0_63_12_14_n_1),
        .DOC(stream_data_fifo_reg_0_63_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_0_63_12_14_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_0_63_0_2_i_1_n_0));
  RAM64X1D stream_data_fifo_reg_0_63_15_15
       (.A0(signal_fifo_write[0]),
        .A1(signal_fifo_write[1]),
        .A2(signal_fifo_write[2]),
        .A3(signal_fifo_write[3]),
        .A4(signal_fifo_write[4]),
        .A5(signal_fifo_write[5]),
        .D(signal_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_0_63_15_15_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(ADDRA[2]),
        .DPRA4(Q[3]),
        .DPRA5(Q[4]),
        .SPO(NLW_stream_data_fifo_reg_0_63_15_15_SPO_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_0_63_3_5
       (.ADDRA({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRB({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRC({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[3]),
        .DIB(signal_fft_axis_tdata[4]),
        .DIC(signal_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_0_63_3_5_n_0),
        .DOB(stream_data_fifo_reg_0_63_3_5_n_1),
        .DOC(stream_data_fifo_reg_0_63_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_0_63_3_5_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_0_63_6_8
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[6]),
        .DIB(signal_fft_axis_tdata[7]),
        .DIC(signal_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_0_63_6_8_n_0),
        .DOB(stream_data_fifo_reg_0_63_6_8_n_1),
        .DOC(stream_data_fifo_reg_0_63_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_0_63_6_8_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_0_63_9_11
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[9]),
        .DIB(signal_fft_axis_tdata[10]),
        .DIC(signal_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_0_63_9_11_n_0),
        .DOB(stream_data_fifo_reg_0_63_9_11_n_1),
        .DOC(stream_data_fifo_reg_0_63_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_0_63_9_11_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_0_63_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_128_191_0_2
       (.ADDRA({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRB({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRC({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[0]),
        .DIB(signal_fft_axis_tdata[1]),
        .DIC(signal_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_128_191_0_2_n_0),
        .DOB(stream_data_fifo_reg_128_191_0_2_n_1),
        .DOC(stream_data_fifo_reg_128_191_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_128_191_0_2_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_128_191_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    stream_data_fifo_reg_128_191_0_2_i_1
       (.I0(signal_fft_axis_tready),
        .I1(signal_fft_axis_tvalid),
        .I2(signal_fifo_write[8]),
        .I3(signal_fifo_write[6]),
        .I4(signal_fifo_write[9]),
        .I5(signal_fifo_write[7]),
        .O(stream_data_fifo_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_128_191_12_14
       (.ADDRA({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRB({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRC({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[12]),
        .DIB(signal_fft_axis_tdata[13]),
        .DIC(signal_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_128_191_12_14_n_0),
        .DOB(stream_data_fifo_reg_128_191_12_14_n_1),
        .DOC(stream_data_fifo_reg_128_191_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_128_191_12_14_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_128_191_0_2_i_1_n_0));
  RAM64X1D stream_data_fifo_reg_128_191_15_15
       (.A0(signal_fifo_write[0]),
        .A1(signal_fifo_write[1]),
        .A2(signal_fifo_write[2]),
        .A3(signal_fifo_write[3]),
        .A4(signal_fifo_write[4]),
        .A5(signal_fifo_write[5]),
        .D(signal_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_128_191_15_15_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(ADDRA[2]),
        .DPRA4(Q[3]),
        .DPRA5(Q[4]),
        .SPO(NLW_stream_data_fifo_reg_128_191_15_15_SPO_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_128_191_3_5
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRC[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRC[1:0]}),
        .ADDRC({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[3]),
        .DIB(signal_fft_axis_tdata[4]),
        .DIC(signal_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_128_191_3_5_n_0),
        .DOB(stream_data_fifo_reg_128_191_3_5_n_1),
        .DOC(stream_data_fifo_reg_128_191_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_128_191_3_5_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_128_191_6_8
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[6]),
        .DIB(signal_fft_axis_tdata[7]),
        .DIC(signal_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_128_191_6_8_n_0),
        .DOB(stream_data_fifo_reg_128_191_6_8_n_1),
        .DOC(stream_data_fifo_reg_128_191_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_128_191_6_8_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_128_191_9_11
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[9]),
        .DIB(signal_fft_axis_tdata[10]),
        .DIC(signal_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_128_191_9_11_n_0),
        .DOB(stream_data_fifo_reg_128_191_9_11_n_1),
        .DOC(stream_data_fifo_reg_128_191_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_128_191_9_11_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_128_191_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_192_255_0_2
       (.ADDRA({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRB({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRC({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[0]),
        .DIB(signal_fft_axis_tdata[1]),
        .DIC(signal_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_192_255_0_2_n_0),
        .DOB(stream_data_fifo_reg_192_255_0_2_n_1),
        .DOC(stream_data_fifo_reg_192_255_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_192_255_0_2_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_192_255_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    stream_data_fifo_reg_192_255_0_2_i_1
       (.I0(signal_fifo_write[9]),
        .I1(signal_fifo_write[7]),
        .I2(signal_fifo_write[6]),
        .I3(signal_fifo_write[8]),
        .I4(signal_fft_axis_tready),
        .I5(signal_fft_axis_tvalid),
        .O(stream_data_fifo_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_192_255_12_14
       (.ADDRA({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRB({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRC({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[12]),
        .DIB(signal_fft_axis_tdata[13]),
        .DIC(signal_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_192_255_12_14_n_0),
        .DOB(stream_data_fifo_reg_192_255_12_14_n_1),
        .DOC(stream_data_fifo_reg_192_255_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_192_255_12_14_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_192_255_0_2_i_1_n_0));
  RAM64X1D stream_data_fifo_reg_192_255_15_15
       (.A0(signal_fifo_write[0]),
        .A1(signal_fifo_write[1]),
        .A2(signal_fifo_write[2]),
        .A3(signal_fifo_write[3]),
        .A4(signal_fifo_write[4]),
        .A5(signal_fifo_write[5]),
        .D(signal_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_192_255_15_15_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(ADDRA[2]),
        .DPRA4(Q[3]),
        .DPRA5(Q[4]),
        .SPO(NLW_stream_data_fifo_reg_192_255_15_15_SPO_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_192_255_3_5
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRC[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRC[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRC[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[3]),
        .DIB(signal_fft_axis_tdata[4]),
        .DIC(signal_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_192_255_3_5_n_0),
        .DOB(stream_data_fifo_reg_192_255_3_5_n_1),
        .DOC(stream_data_fifo_reg_192_255_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_192_255_3_5_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_192_255_6_8
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[6]),
        .DIB(signal_fft_axis_tdata[7]),
        .DIC(signal_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_192_255_6_8_n_0),
        .DOB(stream_data_fifo_reg_192_255_6_8_n_1),
        .DOC(stream_data_fifo_reg_192_255_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_192_255_6_8_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_192_255_9_11
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[9]),
        .DIB(signal_fft_axis_tdata[10]),
        .DIC(signal_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_192_255_9_11_n_0),
        .DOB(stream_data_fifo_reg_192_255_9_11_n_1),
        .DOC(stream_data_fifo_reg_192_255_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_192_255_9_11_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_192_255_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_256_319_0_2
       (.ADDRA({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRB({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRC({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[0]),
        .DIB(signal_fft_axis_tdata[1]),
        .DIC(signal_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_256_319_0_2_n_0),
        .DOB(stream_data_fifo_reg_256_319_0_2_n_1),
        .DOC(stream_data_fifo_reg_256_319_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_256_319_0_2_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_256_319_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    stream_data_fifo_reg_256_319_0_2_i_1
       (.I0(signal_fft_axis_tready),
        .I1(signal_fft_axis_tvalid),
        .I2(signal_fifo_write[7]),
        .I3(signal_fifo_write[6]),
        .I4(signal_fifo_write[9]),
        .I5(signal_fifo_write[8]),
        .O(stream_data_fifo_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_256_319_12_14
       (.ADDRA({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRB({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRC({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[12]),
        .DIB(signal_fft_axis_tdata[13]),
        .DIC(signal_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_256_319_12_14_n_0),
        .DOB(stream_data_fifo_reg_256_319_12_14_n_1),
        .DOC(stream_data_fifo_reg_256_319_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_256_319_12_14_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_256_319_0_2_i_1_n_0));
  RAM64X1D stream_data_fifo_reg_256_319_15_15
       (.A0(signal_fifo_write[0]),
        .A1(signal_fifo_write[1]),
        .A2(signal_fifo_write[2]),
        .A3(signal_fifo_write[3]),
        .A4(signal_fifo_write[4]),
        .A5(signal_fifo_write[5]),
        .D(signal_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_256_319_15_15_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(ADDRA[2]),
        .DPRA4(Q[3]),
        .DPRA5(Q[4]),
        .SPO(NLW_stream_data_fifo_reg_256_319_15_15_SPO_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_256_319_3_5
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1],ADDRC[0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1],ADDRC[0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1],ADDRC[0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[3]),
        .DIB(signal_fft_axis_tdata[4]),
        .DIC(signal_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_256_319_3_5_n_0),
        .DOB(stream_data_fifo_reg_256_319_3_5_n_1),
        .DOC(stream_data_fifo_reg_256_319_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_256_319_3_5_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_256_319_6_8
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[6]),
        .DIB(signal_fft_axis_tdata[7]),
        .DIC(signal_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_256_319_6_8_n_0),
        .DOB(stream_data_fifo_reg_256_319_6_8_n_1),
        .DOC(stream_data_fifo_reg_256_319_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_256_319_6_8_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_256_319_9_11
       (.ADDRA({Q[4:3],ADDRA[2],Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[9]),
        .DIB(signal_fft_axis_tdata[10]),
        .DIC(signal_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_256_319_9_11_n_0),
        .DOB(stream_data_fifo_reg_256_319_9_11_n_1),
        .DOC(stream_data_fifo_reg_256_319_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_256_319_9_11_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_256_319_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_320_383_0_2
       (.ADDRA({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRB({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRC({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[0]),
        .DIB(signal_fft_axis_tdata[1]),
        .DIC(signal_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_320_383_0_2_n_0),
        .DOB(stream_data_fifo_reg_320_383_0_2_n_1),
        .DOC(stream_data_fifo_reg_320_383_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_320_383_0_2_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_320_383_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    stream_data_fifo_reg_320_383_0_2_i_1
       (.I0(signal_fifo_write[9]),
        .I1(signal_fifo_write[8]),
        .I2(signal_fifo_write[6]),
        .I3(signal_fifo_write[7]),
        .I4(signal_fft_axis_tready),
        .I5(signal_fft_axis_tvalid),
        .O(stream_data_fifo_reg_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_320_383_12_14
       (.ADDRA({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRB({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRC({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[12]),
        .DIB(signal_fft_axis_tdata[13]),
        .DIC(signal_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_320_383_12_14_n_0),
        .DOB(stream_data_fifo_reg_320_383_12_14_n_1),
        .DOC(stream_data_fifo_reg_320_383_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_320_383_12_14_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_320_383_0_2_i_1_n_0));
  RAM64X1D stream_data_fifo_reg_320_383_15_15
       (.A0(signal_fifo_write[0]),
        .A1(signal_fifo_write[1]),
        .A2(signal_fifo_write[2]),
        .A3(signal_fifo_write[3]),
        .A4(signal_fifo_write[4]),
        .A5(signal_fifo_write[5]),
        .D(signal_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_320_383_15_15_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(ADDRA[2]),
        .DPRA4(Q[3]),
        .DPRA5(Q[4]),
        .SPO(NLW_stream_data_fifo_reg_320_383_15_15_SPO_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_320_383_3_5
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[3]),
        .DIB(signal_fft_axis_tdata[4]),
        .DIC(signal_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_320_383_3_5_n_0),
        .DOB(stream_data_fifo_reg_320_383_3_5_n_1),
        .DOC(stream_data_fifo_reg_320_383_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_320_383_3_5_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_320_383_6_8
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[6]),
        .DIB(signal_fft_axis_tdata[7]),
        .DIC(signal_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_320_383_6_8_n_0),
        .DOB(stream_data_fifo_reg_320_383_6_8_n_1),
        .DOC(stream_data_fifo_reg_320_383_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_320_383_6_8_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_320_383_9_11
       (.ADDRA({Q[4:3],ADDRA[2],Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRA[2],Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRA[2],Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[9]),
        .DIB(signal_fft_axis_tdata[10]),
        .DIC(signal_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_320_383_9_11_n_0),
        .DOB(stream_data_fifo_reg_320_383_9_11_n_1),
        .DOC(stream_data_fifo_reg_320_383_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_320_383_9_11_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_320_383_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_384_447_0_2
       (.ADDRA({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRB({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRC({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[0]),
        .DIB(signal_fft_axis_tdata[1]),
        .DIC(signal_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_384_447_0_2_n_0),
        .DOB(stream_data_fifo_reg_384_447_0_2_n_1),
        .DOC(stream_data_fifo_reg_384_447_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_384_447_0_2_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_384_447_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    stream_data_fifo_reg_384_447_0_2_i_1
       (.I0(signal_fifo_write[9]),
        .I1(signal_fifo_write[8]),
        .I2(signal_fifo_write[7]),
        .I3(signal_fifo_write[6]),
        .I4(signal_fft_axis_tready),
        .I5(signal_fft_axis_tvalid),
        .O(stream_data_fifo_reg_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_384_447_12_14
       (.ADDRA({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRB({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRC({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[12]),
        .DIB(signal_fft_axis_tdata[13]),
        .DIC(signal_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_384_447_12_14_n_0),
        .DOB(stream_data_fifo_reg_384_447_12_14_n_1),
        .DOC(stream_data_fifo_reg_384_447_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_384_447_12_14_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_384_447_0_2_i_1_n_0));
  RAM64X1D stream_data_fifo_reg_384_447_15_15
       (.A0(signal_fifo_write[0]),
        .A1(signal_fifo_write[1]),
        .A2(signal_fifo_write[2]),
        .A3(signal_fifo_write[3]),
        .A4(signal_fifo_write[4]),
        .A5(signal_fifo_write[5]),
        .D(signal_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_384_447_15_15_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(ADDRA[2]),
        .DPRA4(Q[3]),
        .DPRA5(Q[4]),
        .SPO(NLW_stream_data_fifo_reg_384_447_15_15_SPO_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_384_447_3_5
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRC[1],ADDRA[0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRC[1],ADDRA[0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRC[1],ADDRA[0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[3]),
        .DIB(signal_fft_axis_tdata[4]),
        .DIC(signal_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_384_447_3_5_n_0),
        .DOB(stream_data_fifo_reg_384_447_3_5_n_1),
        .DOC(stream_data_fifo_reg_384_447_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_384_447_3_5_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_384_447_6_8
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[6]),
        .DIB(signal_fft_axis_tdata[7]),
        .DIC(signal_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_384_447_6_8_n_0),
        .DOB(stream_data_fifo_reg_384_447_6_8_n_1),
        .DOC(stream_data_fifo_reg_384_447_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_384_447_6_8_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_384_447_9_11
       (.ADDRA({Q[4:3],ADDRA[2],Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRA[2],Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRA[2],Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[9]),
        .DIB(signal_fft_axis_tdata[10]),
        .DIC(signal_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_384_447_9_11_n_0),
        .DOB(stream_data_fifo_reg_384_447_9_11_n_1),
        .DOC(stream_data_fifo_reg_384_447_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_384_447_9_11_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_384_447_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_448_511_0_2
       (.ADDRA({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRB({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRC({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[0]),
        .DIB(signal_fft_axis_tdata[1]),
        .DIC(signal_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_448_511_0_2_n_0),
        .DOB(stream_data_fifo_reg_448_511_0_2_n_1),
        .DOC(stream_data_fifo_reg_448_511_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_448_511_0_2_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_448_511_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    stream_data_fifo_reg_448_511_0_2_i_1
       (.I0(signal_fifo_write[9]),
        .I1(signal_fifo_write[7]),
        .I2(signal_fifo_write[6]),
        .I3(signal_fft_axis_tready),
        .I4(signal_fft_axis_tvalid),
        .I5(signal_fifo_write[8]),
        .O(stream_data_fifo_reg_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_448_511_12_14
       (.ADDRA({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRB({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRC({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[12]),
        .DIB(signal_fft_axis_tdata[13]),
        .DIC(signal_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_448_511_12_14_n_0),
        .DOB(stream_data_fifo_reg_448_511_12_14_n_1),
        .DOC(stream_data_fifo_reg_448_511_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_448_511_12_14_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_448_511_0_2_i_1_n_0));
  RAM64X1D stream_data_fifo_reg_448_511_15_15
       (.A0(signal_fifo_write[0]),
        .A1(signal_fifo_write[1]),
        .A2(signal_fifo_write[2]),
        .A3(signal_fifo_write[3]),
        .A4(signal_fifo_write[4]),
        .A5(signal_fifo_write[5]),
        .D(signal_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_448_511_15_15_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(ADDRA[2]),
        .DPRA4(Q[3]),
        .DPRA5(Q[4]),
        .SPO(NLW_stream_data_fifo_reg_448_511_15_15_SPO_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_448_511_3_5
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRC[1],ADDRA[0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRC[1],ADDRA[0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRC[1],ADDRA[0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[3]),
        .DIB(signal_fft_axis_tdata[4]),
        .DIC(signal_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_448_511_3_5_n_0),
        .DOB(stream_data_fifo_reg_448_511_3_5_n_1),
        .DOC(stream_data_fifo_reg_448_511_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_448_511_3_5_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_448_511_6_8
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[6]),
        .DIB(signal_fft_axis_tdata[7]),
        .DIC(signal_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_448_511_6_8_n_0),
        .DOB(stream_data_fifo_reg_448_511_6_8_n_1),
        .DOC(stream_data_fifo_reg_448_511_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_448_511_6_8_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_448_511_9_11
       (.ADDRA({Q[4:3],ADDRA[2],Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRA[2],Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRA[2],Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[9]),
        .DIB(signal_fft_axis_tdata[10]),
        .DIC(signal_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_448_511_9_11_n_0),
        .DOB(stream_data_fifo_reg_448_511_9_11_n_1),
        .DOC(stream_data_fifo_reg_448_511_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_448_511_9_11_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_448_511_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_512_575_0_2
       (.ADDRA({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRB({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRC({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[0]),
        .DIB(signal_fft_axis_tdata[1]),
        .DIC(signal_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_512_575_0_2_n_0),
        .DOB(stream_data_fifo_reg_512_575_0_2_n_1),
        .DOC(stream_data_fifo_reg_512_575_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_512_575_0_2_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_512_575_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    stream_data_fifo_reg_512_575_0_2_i_1
       (.I0(signal_fft_axis_tready),
        .I1(signal_fft_axis_tvalid),
        .I2(signal_fifo_write[7]),
        .I3(signal_fifo_write[6]),
        .I4(signal_fifo_write[8]),
        .I5(signal_fifo_write[9]),
        .O(stream_data_fifo_reg_512_575_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_512_575_12_14
       (.ADDRA({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRB({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRC({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[12]),
        .DIB(signal_fft_axis_tdata[13]),
        .DIC(signal_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_512_575_12_14_n_0),
        .DOB(stream_data_fifo_reg_512_575_12_14_n_1),
        .DOC(stream_data_fifo_reg_512_575_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_512_575_12_14_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_512_575_0_2_i_1_n_0));
  RAM64X1D stream_data_fifo_reg_512_575_15_15
       (.A0(signal_fifo_write[0]),
        .A1(signal_fifo_write[1]),
        .A2(signal_fifo_write[2]),
        .A3(signal_fifo_write[3]),
        .A4(signal_fifo_write[4]),
        .A5(signal_fifo_write[5]),
        .D(signal_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_512_575_15_15_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(ADDRA[2]),
        .DPRA4(Q[3]),
        .DPRA5(Q[4]),
        .SPO(NLW_stream_data_fifo_reg_512_575_15_15_SPO_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_512_575_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_512_575_3_5
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[3]),
        .DIB(signal_fft_axis_tdata[4]),
        .DIC(signal_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_512_575_3_5_n_0),
        .DOB(stream_data_fifo_reg_512_575_3_5_n_1),
        .DOC(stream_data_fifo_reg_512_575_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_512_575_3_5_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_512_575_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_512_575_6_8
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[6]),
        .DIB(signal_fft_axis_tdata[7]),
        .DIC(signal_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_512_575_6_8_n_0),
        .DOB(stream_data_fifo_reg_512_575_6_8_n_1),
        .DOC(stream_data_fifo_reg_512_575_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_512_575_6_8_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_512_575_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_512_575_9_11
       (.ADDRA({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRB({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRC({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[9]),
        .DIB(signal_fft_axis_tdata[10]),
        .DIC(signal_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_512_575_9_11_n_0),
        .DOB(stream_data_fifo_reg_512_575_9_11_n_1),
        .DOC(stream_data_fifo_reg_512_575_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_512_575_9_11_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_512_575_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_576_639_0_2
       (.ADDRA({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRB({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRC({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[0]),
        .DIB(signal_fft_axis_tdata[1]),
        .DIC(signal_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_576_639_0_2_n_0),
        .DOB(stream_data_fifo_reg_576_639_0_2_n_1),
        .DOC(stream_data_fifo_reg_576_639_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_576_639_0_2_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_576_639_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    stream_data_fifo_reg_576_639_0_2_i_1
       (.I0(signal_fifo_write[8]),
        .I1(signal_fifo_write[9]),
        .I2(signal_fifo_write[6]),
        .I3(signal_fifo_write[7]),
        .I4(signal_fft_axis_tready),
        .I5(signal_fft_axis_tvalid),
        .O(stream_data_fifo_reg_576_639_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_576_639_12_14
       (.ADDRA({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRB({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRC({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[12]),
        .DIB(signal_fft_axis_tdata[13]),
        .DIC(signal_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_576_639_12_14_n_0),
        .DOB(stream_data_fifo_reg_576_639_12_14_n_1),
        .DOC(stream_data_fifo_reg_576_639_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_576_639_12_14_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_576_639_0_2_i_1_n_0));
  RAM64X1D stream_data_fifo_reg_576_639_15_15
       (.A0(signal_fifo_write[0]),
        .A1(signal_fifo_write[1]),
        .A2(signal_fifo_write[2]),
        .A3(signal_fifo_write[3]),
        .A4(signal_fifo_write[4]),
        .A5(signal_fifo_write[5]),
        .D(signal_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_576_639_15_15_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(ADDRA[2]),
        .DPRA4(Q[3]),
        .DPRA5(Q[4]),
        .SPO(NLW_stream_data_fifo_reg_576_639_15_15_SPO_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_576_639_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_576_639_3_5
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[3]),
        .DIB(signal_fft_axis_tdata[4]),
        .DIC(signal_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_576_639_3_5_n_0),
        .DOB(stream_data_fifo_reg_576_639_3_5_n_1),
        .DOC(stream_data_fifo_reg_576_639_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_576_639_3_5_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_576_639_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_576_639_6_8
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[6]),
        .DIB(signal_fft_axis_tdata[7]),
        .DIC(signal_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_576_639_6_8_n_0),
        .DOB(stream_data_fifo_reg_576_639_6_8_n_1),
        .DOC(stream_data_fifo_reg_576_639_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_576_639_6_8_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_576_639_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_576_639_9_11
       (.ADDRA({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRB({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRC({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[9]),
        .DIB(signal_fft_axis_tdata[10]),
        .DIC(signal_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_576_639_9_11_n_0),
        .DOB(stream_data_fifo_reg_576_639_9_11_n_1),
        .DOC(stream_data_fifo_reg_576_639_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_576_639_9_11_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_576_639_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_640_703_0_2
       (.ADDRA({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRB({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRC({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[0]),
        .DIB(signal_fft_axis_tdata[1]),
        .DIC(signal_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_640_703_0_2_n_0),
        .DOB(stream_data_fifo_reg_640_703_0_2_n_1),
        .DOC(stream_data_fifo_reg_640_703_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_640_703_0_2_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_640_703_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    stream_data_fifo_reg_640_703_0_2_i_1
       (.I0(signal_fifo_write[8]),
        .I1(signal_fifo_write[9]),
        .I2(signal_fifo_write[7]),
        .I3(signal_fifo_write[6]),
        .I4(signal_fft_axis_tready),
        .I5(signal_fft_axis_tvalid),
        .O(stream_data_fifo_reg_640_703_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_640_703_12_14
       (.ADDRA({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRB({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRC({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[12]),
        .DIB(signal_fft_axis_tdata[13]),
        .DIC(signal_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_640_703_12_14_n_0),
        .DOB(stream_data_fifo_reg_640_703_12_14_n_1),
        .DOC(stream_data_fifo_reg_640_703_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_640_703_12_14_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_640_703_0_2_i_1_n_0));
  RAM64X1D stream_data_fifo_reg_640_703_15_15
       (.A0(signal_fifo_write[0]),
        .A1(signal_fifo_write[1]),
        .A2(signal_fifo_write[2]),
        .A3(signal_fifo_write[3]),
        .A4(signal_fifo_write[4]),
        .A5(signal_fifo_write[5]),
        .D(signal_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_640_703_15_15_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(ADDRA[2]),
        .DPRA4(Q[3]),
        .DPRA5(Q[4]),
        .SPO(NLW_stream_data_fifo_reg_640_703_15_15_SPO_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_640_703_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_640_703_3_5
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[3]),
        .DIB(signal_fft_axis_tdata[4]),
        .DIC(signal_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_640_703_3_5_n_0),
        .DOB(stream_data_fifo_reg_640_703_3_5_n_1),
        .DOC(stream_data_fifo_reg_640_703_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_640_703_3_5_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_640_703_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_640_703_6_8
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[6]),
        .DIB(signal_fft_axis_tdata[7]),
        .DIC(signal_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_640_703_6_8_n_0),
        .DOB(stream_data_fifo_reg_640_703_6_8_n_1),
        .DOC(stream_data_fifo_reg_640_703_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_640_703_6_8_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_640_703_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_640_703_9_11
       (.ADDRA({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRB({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRC({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[9]),
        .DIB(signal_fft_axis_tdata[10]),
        .DIC(signal_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_640_703_9_11_n_0),
        .DOB(stream_data_fifo_reg_640_703_9_11_n_1),
        .DOC(stream_data_fifo_reg_640_703_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_640_703_9_11_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_640_703_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_64_127_0_2
       (.ADDRA({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRB({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRC({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[0]),
        .DIB(signal_fft_axis_tdata[1]),
        .DIC(signal_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_64_127_0_2_n_0),
        .DOB(stream_data_fifo_reg_64_127_0_2_n_1),
        .DOC(stream_data_fifo_reg_64_127_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_64_127_0_2_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_64_127_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    stream_data_fifo_reg_64_127_0_2_i_1
       (.I0(signal_fft_axis_tready),
        .I1(signal_fft_axis_tvalid),
        .I2(signal_fifo_write[8]),
        .I3(signal_fifo_write[7]),
        .I4(signal_fifo_write[9]),
        .I5(signal_fifo_write[6]),
        .O(stream_data_fifo_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_64_127_12_14
       (.ADDRA({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRB({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRC({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[12]),
        .DIB(signal_fft_axis_tdata[13]),
        .DIC(signal_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_64_127_12_14_n_0),
        .DOB(stream_data_fifo_reg_64_127_12_14_n_1),
        .DOC(stream_data_fifo_reg_64_127_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_64_127_12_14_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_64_127_0_2_i_1_n_0));
  RAM64X1D stream_data_fifo_reg_64_127_15_15
       (.A0(signal_fifo_write[0]),
        .A1(signal_fifo_write[1]),
        .A2(signal_fifo_write[2]),
        .A3(signal_fifo_write[3]),
        .A4(signal_fifo_write[4]),
        .A5(signal_fifo_write[5]),
        .D(signal_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_64_127_15_15_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(ADDRA[2]),
        .DPRA4(Q[3]),
        .DPRA5(Q[4]),
        .SPO(NLW_stream_data_fifo_reg_64_127_15_15_SPO_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_64_127_3_5
       (.ADDRA({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRB({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRC({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[3]),
        .DIB(signal_fft_axis_tdata[4]),
        .DIC(signal_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_64_127_3_5_n_0),
        .DOB(stream_data_fifo_reg_64_127_3_5_n_1),
        .DOC(stream_data_fifo_reg_64_127_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_64_127_3_5_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_64_127_6_8
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[6]),
        .DIB(signal_fft_axis_tdata[7]),
        .DIC(signal_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_64_127_6_8_n_0),
        .DOB(stream_data_fifo_reg_64_127_6_8_n_1),
        .DOC(stream_data_fifo_reg_64_127_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_64_127_6_8_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_64_127_9_11
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[9]),
        .DIB(signal_fft_axis_tdata[10]),
        .DIC(signal_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_64_127_9_11_n_0),
        .DOB(stream_data_fifo_reg_64_127_9_11_n_1),
        .DOC(stream_data_fifo_reg_64_127_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_64_127_9_11_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_64_127_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_704_767_0_2
       (.ADDRA({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRB({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRC({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[0]),
        .DIB(signal_fft_axis_tdata[1]),
        .DIC(signal_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_704_767_0_2_n_0),
        .DOB(stream_data_fifo_reg_704_767_0_2_n_1),
        .DOC(stream_data_fifo_reg_704_767_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_704_767_0_2_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_704_767_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    stream_data_fifo_reg_704_767_0_2_i_1
       (.I0(signal_fifo_write[8]),
        .I1(signal_fifo_write[7]),
        .I2(signal_fifo_write[6]),
        .I3(signal_fft_axis_tready),
        .I4(signal_fft_axis_tvalid),
        .I5(signal_fifo_write[9]),
        .O(stream_data_fifo_reg_704_767_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_704_767_12_14
       (.ADDRA({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRB({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRC({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[12]),
        .DIB(signal_fft_axis_tdata[13]),
        .DIC(signal_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_704_767_12_14_n_0),
        .DOB(stream_data_fifo_reg_704_767_12_14_n_1),
        .DOC(stream_data_fifo_reg_704_767_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_704_767_12_14_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_704_767_0_2_i_1_n_0));
  RAM64X1D stream_data_fifo_reg_704_767_15_15
       (.A0(signal_fifo_write[0]),
        .A1(signal_fifo_write[1]),
        .A2(signal_fifo_write[2]),
        .A3(signal_fifo_write[3]),
        .A4(signal_fifo_write[4]),
        .A5(signal_fifo_write[5]),
        .D(signal_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_704_767_15_15_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(ADDRA[2]),
        .DPRA4(Q[3]),
        .DPRA5(Q[4]),
        .SPO(NLW_stream_data_fifo_reg_704_767_15_15_SPO_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_704_767_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_704_767_3_5
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[3]),
        .DIB(signal_fft_axis_tdata[4]),
        .DIC(signal_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_704_767_3_5_n_0),
        .DOB(stream_data_fifo_reg_704_767_3_5_n_1),
        .DOC(stream_data_fifo_reg_704_767_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_704_767_3_5_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_704_767_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_704_767_6_8
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[6]),
        .DIB(signal_fft_axis_tdata[7]),
        .DIC(signal_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_704_767_6_8_n_0),
        .DOB(stream_data_fifo_reg_704_767_6_8_n_1),
        .DOC(stream_data_fifo_reg_704_767_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_704_767_6_8_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_704_767_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_704_767_9_11
       (.ADDRA({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRB({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRC({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[9]),
        .DIB(signal_fft_axis_tdata[10]),
        .DIC(signal_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_704_767_9_11_n_0),
        .DOB(stream_data_fifo_reg_704_767_9_11_n_1),
        .DOC(stream_data_fifo_reg_704_767_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_704_767_9_11_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_704_767_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_768_831_0_2
       (.ADDRA({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRB({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRC({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[0]),
        .DIB(signal_fft_axis_tdata[1]),
        .DIC(signal_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_768_831_0_2_n_0),
        .DOB(stream_data_fifo_reg_768_831_0_2_n_1),
        .DOC(stream_data_fifo_reg_768_831_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_768_831_0_2_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_768_831_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h0040000000000000)) 
    stream_data_fifo_reg_768_831_0_2_i_1
       (.I0(signal_fifo_write[7]),
        .I1(signal_fifo_write[9]),
        .I2(signal_fifo_write[8]),
        .I3(signal_fifo_write[6]),
        .I4(signal_fft_axis_tready),
        .I5(signal_fft_axis_tvalid),
        .O(stream_data_fifo_reg_768_831_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_768_831_12_14
       (.ADDRA({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRB({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRC({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[12]),
        .DIB(signal_fft_axis_tdata[13]),
        .DIC(signal_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_768_831_12_14_n_0),
        .DOB(stream_data_fifo_reg_768_831_12_14_n_1),
        .DOC(stream_data_fifo_reg_768_831_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_768_831_12_14_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_768_831_0_2_i_1_n_0));
  RAM64X1D stream_data_fifo_reg_768_831_15_15
       (.A0(signal_fifo_write[0]),
        .A1(signal_fifo_write[1]),
        .A2(signal_fifo_write[2]),
        .A3(signal_fifo_write[3]),
        .A4(signal_fifo_write[4]),
        .A5(signal_fifo_write[5]),
        .D(signal_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_768_831_15_15_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(ADDRA[2]),
        .DPRA4(Q[3]),
        .DPRA5(Q[4]),
        .SPO(NLW_stream_data_fifo_reg_768_831_15_15_SPO_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_768_831_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_768_831_3_5
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[3]),
        .DIB(signal_fft_axis_tdata[4]),
        .DIC(signal_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_768_831_3_5_n_0),
        .DOB(stream_data_fifo_reg_768_831_3_5_n_1),
        .DOC(stream_data_fifo_reg_768_831_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_768_831_3_5_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_768_831_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_768_831_6_8
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[6]),
        .DIB(signal_fft_axis_tdata[7]),
        .DIC(signal_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_768_831_6_8_n_0),
        .DOB(stream_data_fifo_reg_768_831_6_8_n_1),
        .DOC(stream_data_fifo_reg_768_831_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_768_831_6_8_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_768_831_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_768_831_9_11
       (.ADDRA({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRB({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRC({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[9]),
        .DIB(signal_fft_axis_tdata[10]),
        .DIC(signal_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_768_831_9_11_n_0),
        .DOB(stream_data_fifo_reg_768_831_9_11_n_1),
        .DOC(stream_data_fifo_reg_768_831_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_768_831_9_11_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_768_831_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_832_895_0_2
       (.ADDRA({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRB({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRC({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[0]),
        .DIB(signal_fft_axis_tdata[1]),
        .DIC(signal_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_832_895_0_2_n_0),
        .DOB(stream_data_fifo_reg_832_895_0_2_n_1),
        .DOC(stream_data_fifo_reg_832_895_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_832_895_0_2_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_832_895_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    stream_data_fifo_reg_832_895_0_2_i_1
       (.I0(signal_fifo_write[7]),
        .I1(signal_fifo_write[8]),
        .I2(signal_fifo_write[6]),
        .I3(signal_fft_axis_tready),
        .I4(signal_fft_axis_tvalid),
        .I5(signal_fifo_write[9]),
        .O(stream_data_fifo_reg_832_895_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_832_895_12_14
       (.ADDRA({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRB({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRC({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[12]),
        .DIB(signal_fft_axis_tdata[13]),
        .DIC(signal_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_832_895_12_14_n_0),
        .DOB(stream_data_fifo_reg_832_895_12_14_n_1),
        .DOC(stream_data_fifo_reg_832_895_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_832_895_12_14_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_832_895_0_2_i_1_n_0));
  RAM64X1D stream_data_fifo_reg_832_895_15_15
       (.A0(signal_fifo_write[0]),
        .A1(signal_fifo_write[1]),
        .A2(signal_fifo_write[2]),
        .A3(signal_fifo_write[3]),
        .A4(signal_fifo_write[4]),
        .A5(signal_fifo_write[5]),
        .D(signal_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_832_895_15_15_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(ADDRA[2]),
        .DPRA4(Q[3]),
        .DPRA5(Q[4]),
        .SPO(NLW_stream_data_fifo_reg_832_895_15_15_SPO_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_832_895_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_832_895_3_5
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[3]),
        .DIB(signal_fft_axis_tdata[4]),
        .DIC(signal_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_832_895_3_5_n_0),
        .DOB(stream_data_fifo_reg_832_895_3_5_n_1),
        .DOC(stream_data_fifo_reg_832_895_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_832_895_3_5_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_832_895_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_832_895_6_8
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[6]),
        .DIB(signal_fft_axis_tdata[7]),
        .DIC(signal_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_832_895_6_8_n_0),
        .DOB(stream_data_fifo_reg_832_895_6_8_n_1),
        .DOC(stream_data_fifo_reg_832_895_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_832_895_6_8_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_832_895_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_832_895_9_11
       (.ADDRA({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRB({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRC({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[9]),
        .DIB(signal_fft_axis_tdata[10]),
        .DIC(signal_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_832_895_9_11_n_0),
        .DOB(stream_data_fifo_reg_832_895_9_11_n_1),
        .DOC(stream_data_fifo_reg_832_895_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_832_895_9_11_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_832_895_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_896_959_0_2
       (.ADDRA({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRB({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRC({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[0]),
        .DIB(signal_fft_axis_tdata[1]),
        .DIC(signal_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_896_959_0_2_n_0),
        .DOB(stream_data_fifo_reg_896_959_0_2_n_1),
        .DOC(stream_data_fifo_reg_896_959_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_896_959_0_2_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_896_959_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h4000000000000000)) 
    stream_data_fifo_reg_896_959_0_2_i_1
       (.I0(signal_fifo_write[6]),
        .I1(signal_fifo_write[8]),
        .I2(signal_fifo_write[7]),
        .I3(signal_fft_axis_tready),
        .I4(signal_fft_axis_tvalid),
        .I5(signal_fifo_write[9]),
        .O(stream_data_fifo_reg_896_959_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_896_959_12_14
       (.ADDRA({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRB({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRC({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[12]),
        .DIB(signal_fft_axis_tdata[13]),
        .DIC(signal_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_896_959_12_14_n_0),
        .DOB(stream_data_fifo_reg_896_959_12_14_n_1),
        .DOC(stream_data_fifo_reg_896_959_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_896_959_12_14_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_896_959_0_2_i_1_n_0));
  RAM64X1D stream_data_fifo_reg_896_959_15_15
       (.A0(signal_fifo_write[0]),
        .A1(signal_fifo_write[1]),
        .A2(signal_fifo_write[2]),
        .A3(signal_fifo_write[3]),
        .A4(signal_fifo_write[4]),
        .A5(signal_fifo_write[5]),
        .D(signal_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_896_959_15_15_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(ADDRA[2]),
        .DPRA4(Q[3]),
        .DPRA5(Q[4]),
        .SPO(NLW_stream_data_fifo_reg_896_959_15_15_SPO_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_896_959_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_896_959_3_5
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[3]),
        .DIB(signal_fft_axis_tdata[4]),
        .DIC(signal_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_896_959_3_5_n_0),
        .DOB(stream_data_fifo_reg_896_959_3_5_n_1),
        .DOC(stream_data_fifo_reg_896_959_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_896_959_3_5_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_896_959_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_896_959_6_8
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[6]),
        .DIB(signal_fft_axis_tdata[7]),
        .DIC(signal_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_896_959_6_8_n_0),
        .DOB(stream_data_fifo_reg_896_959_6_8_n_1),
        .DOC(stream_data_fifo_reg_896_959_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_896_959_6_8_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_896_959_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_896_959_9_11
       (.ADDRA({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRB({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRC({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[9]),
        .DIB(signal_fft_axis_tdata[10]),
        .DIC(signal_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_896_959_9_11_n_0),
        .DOB(stream_data_fifo_reg_896_959_9_11_n_1),
        .DOC(stream_data_fifo_reg_896_959_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_896_959_9_11_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_896_959_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_960_1023_0_2
       (.ADDRA({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRB({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRC({Q[4:3],ADDRC[2],Q[2],ADDRC[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[0]),
        .DIB(signal_fft_axis_tdata[1]),
        .DIC(signal_fft_axis_tdata[2]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_960_1023_0_2_n_0),
        .DOB(stream_data_fifo_reg_960_1023_0_2_n_1),
        .DOC(stream_data_fifo_reg_960_1023_0_2_n_2),
        .DOD(NLW_stream_data_fifo_reg_960_1023_0_2_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_960_1023_0_2_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    stream_data_fifo_reg_960_1023_0_2_i_1
       (.I0(signal_fft_axis_tready),
        .I1(signal_fft_axis_tvalid),
        .I2(signal_fifo_write[7]),
        .I3(signal_fifo_write[6]),
        .I4(signal_fifo_write[9]),
        .I5(signal_fifo_write[8]),
        .O(stream_data_fifo_reg_960_1023_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_960_1023_12_14
       (.ADDRA({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRB({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRC({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[12]),
        .DIB(signal_fft_axis_tdata[13]),
        .DIC(signal_fft_axis_tdata[14]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_960_1023_12_14_n_0),
        .DOB(stream_data_fifo_reg_960_1023_12_14_n_1),
        .DOC(stream_data_fifo_reg_960_1023_12_14_n_2),
        .DOD(NLW_stream_data_fifo_reg_960_1023_12_14_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_960_1023_0_2_i_1_n_0));
  RAM64X1D stream_data_fifo_reg_960_1023_15_15
       (.A0(signal_fifo_write[0]),
        .A1(signal_fifo_write[1]),
        .A2(signal_fifo_write[2]),
        .A3(signal_fifo_write[3]),
        .A4(signal_fifo_write[4]),
        .A5(signal_fifo_write[5]),
        .D(signal_fft_axis_tdata[15]),
        .DPO(stream_data_fifo_reg_960_1023_15_15_n_0),
        .DPRA0(Q[0]),
        .DPRA1(Q[1]),
        .DPRA2(Q[2]),
        .DPRA3(ADDRA[2]),
        .DPRA4(Q[3]),
        .DPRA5(Q[4]),
        .SPO(NLW_stream_data_fifo_reg_960_1023_15_15_SPO_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_960_1023_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_960_1023_3_5
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[3]),
        .DIB(signal_fft_axis_tdata[4]),
        .DIC(signal_fft_axis_tdata[5]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_960_1023_3_5_n_0),
        .DOB(stream_data_fifo_reg_960_1023_3_5_n_1),
        .DOC(stream_data_fifo_reg_960_1023_3_5_n_2),
        .DOD(NLW_stream_data_fifo_reg_960_1023_3_5_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_960_1023_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_960_1023_6_8
       (.ADDRA({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRB({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRC({Q[4:3],ADDRB,Q[2],ADDRA[1:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[6]),
        .DIB(signal_fft_axis_tdata[7]),
        .DIC(signal_fft_axis_tdata[8]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_960_1023_6_8_n_0),
        .DOB(stream_data_fifo_reg_960_1023_6_8_n_1),
        .DOC(stream_data_fifo_reg_960_1023_6_8_n_2),
        .DOD(NLW_stream_data_fifo_reg_960_1023_6_8_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_960_1023_0_2_i_1_n_0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  RAM64M stream_data_fifo_reg_960_1023_9_11
       (.ADDRA({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRB({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRC({Q[4:3],ADDRA[2],Q[2:0]}),
        .ADDRD(signal_fifo_write[5:0]),
        .DIA(signal_fft_axis_tdata[9]),
        .DIB(signal_fft_axis_tdata[10]),
        .DIC(signal_fft_axis_tdata[11]),
        .DID(1'b0),
        .DOA(stream_data_fifo_reg_960_1023_9_11_n_0),
        .DOB(stream_data_fifo_reg_960_1023_9_11_n_1),
        .DOC(stream_data_fifo_reg_960_1023_9_11_n_2),
        .DOD(NLW_stream_data_fifo_reg_960_1023_9_11_DOD_UNCONNECTED),
        .WCLK(signal_fft_axis_aclk),
        .WE(stream_data_fifo_reg_960_1023_0_2_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \write_pointer[0]_i_1 
       (.I0(signal_fifo_write[0]),
        .O(write_pointer[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \write_pointer[1]_i_1 
       (.I0(signal_fifo_write[0]),
        .I1(signal_fifo_write[1]),
        .O(write_pointer[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \write_pointer[2]_i_1 
       (.I0(signal_fifo_write[1]),
        .I1(signal_fifo_write[0]),
        .I2(signal_fifo_write[2]),
        .O(write_pointer[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \write_pointer[3]_i_1 
       (.I0(signal_fifo_write[2]),
        .I1(signal_fifo_write[0]),
        .I2(signal_fifo_write[1]),
        .I3(signal_fifo_write[3]),
        .O(write_pointer[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \write_pointer[4]_i_1 
       (.I0(signal_fifo_write[3]),
        .I1(signal_fifo_write[1]),
        .I2(signal_fifo_write[0]),
        .I3(signal_fifo_write[2]),
        .I4(signal_fifo_write[4]),
        .O(write_pointer[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \write_pointer[5]_i_1 
       (.I0(signal_fifo_write[4]),
        .I1(signal_fifo_write[2]),
        .I2(signal_fifo_write[0]),
        .I3(signal_fifo_write[1]),
        .I4(signal_fifo_write[3]),
        .I5(signal_fifo_write[5]),
        .O(write_pointer[5]));
  LUT6 #(
    .INIT(64'hF7FFFFFF08000000)) 
    \write_pointer[6]_i_1 
       (.I0(signal_fifo_write[5]),
        .I1(signal_fifo_write[3]),
        .I2(\write_pointer[6]_i_2_n_0 ),
        .I3(signal_fifo_write[2]),
        .I4(signal_fifo_write[4]),
        .I5(signal_fifo_write[6]),
        .O(write_pointer[6]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \write_pointer[6]_i_2 
       (.I0(signal_fifo_write[0]),
        .I1(signal_fifo_write[1]),
        .O(\write_pointer[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \write_pointer[7]_i_1 
       (.I0(signal_fifo_write[6]),
        .I1(\write_pointer[9]_i_6_n_0 ),
        .I2(signal_fifo_write[7]),
        .O(write_pointer[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \write_pointer[8]_i_1 
       (.I0(signal_fifo_write[7]),
        .I1(\write_pointer[9]_i_6_n_0 ),
        .I2(signal_fifo_write[6]),
        .I3(signal_fifo_write[8]),
        .O(write_pointer[8]));
  LUT3 #(
    .INIT(8'h8F)) 
    \write_pointer[9]_i_1 
       (.I0(signal_fft_axis_tlast),
        .I1(writes_done_reg_0),
        .I2(signal_fft_axis_aresetn),
        .O(\write_pointer[9]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hE222)) 
    \write_pointer[9]_i_2 
       (.I0(\fifo_read_reg[9] ),
        .I1(writes_done_reg_0),
        .I2(signal_fft_axis_tvalid),
        .I3(signal_fft_axis_tready),
        .O(\write_pointer[9]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \write_pointer[9]_i_3 
       (.I0(signal_fifo_write[8]),
        .I1(signal_fifo_write[6]),
        .I2(\write_pointer[9]_i_6_n_0 ),
        .I3(signal_fifo_write[7]),
        .I4(signal_fifo_write[9]),
        .O(write_pointer[9]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    \write_pointer[9]_i_4 
       (.I0(signal_fifo_write[8]),
        .I1(signal_fifo_write[6]),
        .I2(\write_pointer[9]_i_6_n_0 ),
        .I3(signal_fifo_write[7]),
        .I4(signal_fifo_write[9]),
        .O(writes_done_reg_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \write_pointer[9]_i_6 
       (.I0(signal_fifo_write[4]),
        .I1(signal_fifo_write[2]),
        .I2(signal_fifo_write[0]),
        .I3(signal_fifo_write[1]),
        .I4(signal_fifo_write[3]),
        .I5(signal_fifo_write[5]),
        .O(\write_pointer[9]_i_6_n_0 ));
  FDRE \write_pointer_reg[0] 
       (.C(signal_fft_axis_aclk),
        .CE(\write_pointer[9]_i_2_n_0 ),
        .D(write_pointer[0]),
        .Q(signal_fifo_write[0]),
        .R(\write_pointer[9]_i_1_n_0 ));
  FDRE \write_pointer_reg[1] 
       (.C(signal_fft_axis_aclk),
        .CE(\write_pointer[9]_i_2_n_0 ),
        .D(write_pointer[1]),
        .Q(signal_fifo_write[1]),
        .R(\write_pointer[9]_i_1_n_0 ));
  FDRE \write_pointer_reg[2] 
       (.C(signal_fft_axis_aclk),
        .CE(\write_pointer[9]_i_2_n_0 ),
        .D(write_pointer[2]),
        .Q(signal_fifo_write[2]),
        .R(\write_pointer[9]_i_1_n_0 ));
  FDRE \write_pointer_reg[3] 
       (.C(signal_fft_axis_aclk),
        .CE(\write_pointer[9]_i_2_n_0 ),
        .D(write_pointer[3]),
        .Q(signal_fifo_write[3]),
        .R(\write_pointer[9]_i_1_n_0 ));
  FDRE \write_pointer_reg[4] 
       (.C(signal_fft_axis_aclk),
        .CE(\write_pointer[9]_i_2_n_0 ),
        .D(write_pointer[4]),
        .Q(signal_fifo_write[4]),
        .R(\write_pointer[9]_i_1_n_0 ));
  FDRE \write_pointer_reg[5] 
       (.C(signal_fft_axis_aclk),
        .CE(\write_pointer[9]_i_2_n_0 ),
        .D(write_pointer[5]),
        .Q(signal_fifo_write[5]),
        .R(\write_pointer[9]_i_1_n_0 ));
  FDRE \write_pointer_reg[6] 
       (.C(signal_fft_axis_aclk),
        .CE(\write_pointer[9]_i_2_n_0 ),
        .D(write_pointer[6]),
        .Q(signal_fifo_write[6]),
        .R(\write_pointer[9]_i_1_n_0 ));
  FDRE \write_pointer_reg[7] 
       (.C(signal_fft_axis_aclk),
        .CE(\write_pointer[9]_i_2_n_0 ),
        .D(write_pointer[7]),
        .Q(signal_fifo_write[7]),
        .R(\write_pointer[9]_i_1_n_0 ));
  FDRE \write_pointer_reg[8] 
       (.C(signal_fft_axis_aclk),
        .CE(\write_pointer[9]_i_2_n_0 ),
        .D(write_pointer[8]),
        .Q(signal_fifo_write[8]),
        .R(\write_pointer[9]_i_1_n_0 ));
  FDRE \write_pointer_reg[9] 
       (.C(signal_fft_axis_aclk),
        .CE(\write_pointer[9]_i_2_n_0 ),
        .D(write_pointer[9]),
        .Q(signal_fifo_write[9]),
        .R(\write_pointer[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hB3BBBBBB00000000)) 
    writes_done_i_1
       (.I0(writes_done),
        .I1(writes_done_reg_0),
        .I2(signal_fft_axis_tlast),
        .I3(signal_fft_axis_tready),
        .I4(signal_fft_axis_tvalid),
        .I5(signal_fft_axis_aresetn),
        .O(writes_done_i_1_n_0));
  FDRE writes_done_reg
       (.C(signal_fft_axis_aclk),
        .CE(1'b1),
        .D(writes_done_i_1_n_0),
        .Q(writes_done),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif

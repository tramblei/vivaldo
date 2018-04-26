//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Tue Mar 20 12:56:57 2018
//Host        : ug69 running 64-bit Debian GNU/Linux 9.4 (stretch)
//Command     : generate_target corr_wrapper.bd
//Design      : corr_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "corr_wrapper,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=corr_wrapper,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=15,numReposBlks=15,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "corr_wrapper.hwdef" *) 
module corr_wrapper
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

  wire CLK_1;
  wire [0:0]c_shift_ram_0_Q;
  wire [31:0]cordic_2_m_axis_dout_tdata;
  wire cordic_2_m_axis_dout_tvalid;
  wire cordic_2_s_axis_cartesian_tready;
  wire [31:0]cordic_3_m_axis_dout_tdata;
  wire cordic_3_m_axis_dout_tvalid;
  wire cordic_3_s_axis_cartesian_tready;
  wire [3:0]correlation_out_axi_1_ARADDR;
  wire [2:0]correlation_out_axi_1_ARPROT;
  wire correlation_out_axi_1_ARREADY;
  wire correlation_out_axi_1_ARVALID;
  wire [3:0]correlation_out_axi_1_AWADDR;
  wire [2:0]correlation_out_axi_1_AWPROT;
  wire correlation_out_axi_1_AWREADY;
  wire correlation_out_axi_1_AWVALID;
  wire correlation_out_axi_1_BREADY;
  wire [1:0]correlation_out_axi_1_BRESP;
  wire correlation_out_axi_1_BVALID;
  wire [31:0]correlation_out_axi_1_RDATA;
  wire correlation_out_axi_1_RREADY;
  wire [1:0]correlation_out_axi_1_RRESP;
  wire correlation_out_axi_1_RVALID;
  wire [31:0]correlation_out_axi_1_WDATA;
  wire correlation_out_axi_1_WREADY;
  wire [3:0]correlation_out_axi_1_WSTRB;
  wire correlation_out_axi_1_WVALID;
  wire correlation_out_axi_aresetn_1;
  wire [127:0]div_gen_0_m_axis_dout_tdata;
  wire div_gen_0_m_axis_dout_tvalid;
  wire [47:0]dp_out_Q;
  wire [0:0]dp_valid_Q;
  wire [15:0]golden_fft_axis_1_TDATA;
  wire golden_fft_axis_1_TLAST;
  wire golden_fft_axis_1_TREADY;
  wire [1:0]golden_fft_axis_1_TSTRB;
  wire golden_fft_axis_1_TVALID;
  wire [63:0]mult_gen_0_P;
  wire [47:0]projection_correlation_calculator_v1_0_0_dot_product;
  wire projection_correlation_calculator_v1_0_0_dot_product_valid;
  wire [47:0]projection_correlation_calculator_v1_0_0_mag1;
  wire [47:0]projection_correlation_calculator_v1_0_0_mag2;
  wire [15:0]signal_fft_axis_1_TDATA;
  wire signal_fft_axis_1_TLAST;
  wire signal_fft_axis_1_TREADY;
  wire [1:0]signal_fft_axis_1_TSTRB;
  wire signal_fft_axis_1_TVALID;
  wire [0:0]sqrt_ready_dp_valid_Res;
  wire [0:0]sqrts_ready_Res;
  wire [0:0]util_vector_logic_0_Res;
  wire [0:0]util_vector_logic_1_Res;
  wire [63:0]xlconcat_0_dout;
  wire [7:0]xlconstant_0_dout;
  wire [31:0]xlslice_0_Dout;

  assign CLK_1 = sclk;
  assign correlation_out_axi_1_ARADDR = correlation_val_axi_araddr[3:0];
  assign correlation_out_axi_1_ARPROT = correlation_val_axi_arprot[2:0];
  assign correlation_out_axi_1_ARVALID = correlation_val_axi_arvalid;
  assign correlation_out_axi_1_AWADDR = correlation_val_axi_awaddr[3:0];
  assign correlation_out_axi_1_AWPROT = correlation_val_axi_awprot[2:0];
  assign correlation_out_axi_1_AWVALID = correlation_val_axi_awvalid;
  assign correlation_out_axi_1_BREADY = correlation_val_axi_bready;
  assign correlation_out_axi_1_RREADY = correlation_val_axi_rready;
  assign correlation_out_axi_1_WDATA = correlation_val_axi_wdata[31:0];
  assign correlation_out_axi_1_WSTRB = correlation_val_axi_wstrb[3:0];
  assign correlation_out_axi_1_WVALID = correlation_val_axi_wvalid;
  assign correlation_out_axi_aresetn_1 = aresetn;
  assign correlation_val_axi_arready = correlation_out_axi_1_ARREADY;
  assign correlation_val_axi_awready = correlation_out_axi_1_AWREADY;
  assign correlation_val_axi_bresp[1:0] = correlation_out_axi_1_BRESP;
  assign correlation_val_axi_bvalid = correlation_out_axi_1_BVALID;
  assign correlation_val_axi_rdata[31:0] = correlation_out_axi_1_RDATA;
  assign correlation_val_axi_rresp[1:0] = correlation_out_axi_1_RRESP;
  assign correlation_val_axi_rvalid = correlation_out_axi_1_RVALID;
  assign correlation_val_axi_wready = correlation_out_axi_1_WREADY;
  assign golden_fft_axis_1_TDATA = sig1_axis_tdata[15:0];
  assign golden_fft_axis_1_TLAST = sig1_axis_tlast;
  assign golden_fft_axis_1_TSTRB = sig1_axis_tstrb[1:0];
  assign golden_fft_axis_1_TVALID = sig1_axis_tvalid;
  assign sig1_axis_tready = golden_fft_axis_1_TREADY;
  assign sig2_axis_tready = signal_fft_axis_1_TREADY;
  assign signal_fft_axis_1_TDATA = sig2_axis_tdata[15:0];
  assign signal_fft_axis_1_TLAST = sig2_axis_tlast;
  assign signal_fft_axis_1_TSTRB = sig2_axis_tstrb[1:0];
  assign signal_fft_axis_1_TVALID = sig2_axis_tvalid;
  corr_wrapper_c_shift_ram_0_0 c_shift_ram_0
       (.CLK(CLK_1),
        .D(util_vector_logic_1_Res),
        .Q(c_shift_ram_0_Q),
        .SCLR(util_vector_logic_0_Res));
  corr_wrapper_cordic_0_2 cordic_2
       (.aclk(CLK_1),
        .m_axis_dout_tdata(cordic_2_m_axis_dout_tdata),
        .m_axis_dout_tvalid(cordic_2_m_axis_dout_tvalid),
        .s_axis_cartesian_tdata(projection_correlation_calculator_v1_0_0_mag2),
        .s_axis_cartesian_tready(cordic_2_s_axis_cartesian_tready),
        .s_axis_cartesian_tvalid(sqrt_ready_dp_valid_Res));
  corr_wrapper_cordic_2_0 cordic_3
       (.aclk(CLK_1),
        .m_axis_dout_tdata(cordic_3_m_axis_dout_tdata),
        .m_axis_dout_tvalid(cordic_3_m_axis_dout_tvalid),
        .s_axis_cartesian_tdata(projection_correlation_calculator_v1_0_0_mag1),
        .s_axis_cartesian_tready(cordic_3_s_axis_cartesian_tready),
        .s_axis_cartesian_tvalid(sqrt_ready_dp_valid_Res));
  corr_wrapper_div_gen_0_0 div_gen_0
       (.aclk(CLK_1),
        .m_axis_dout_tdata(div_gen_0_m_axis_dout_tdata),
        .m_axis_dout_tvalid(div_gen_0_m_axis_dout_tvalid),
        .s_axis_dividend_tdata(xlconcat_0_dout),
        .s_axis_dividend_tvalid(dp_valid_Q),
        .s_axis_divisor_tdata(mult_gen_0_P),
        .s_axis_divisor_tvalid(c_shift_ram_0_Q));
  corr_wrapper_c_shift_ram_1_0 dp_out
       (.CLK(CLK_1),
        .D(projection_correlation_calculator_v1_0_0_dot_product),
        .Q(dp_out_Q),
        .SCLR(util_vector_logic_0_Res));
  corr_wrapper_c_shift_ram_2_1 dp_valid
       (.CLK(CLK_1),
        .D(sqrt_ready_dp_valid_Res),
        .Q(dp_valid_Q),
        .SCLR(util_vector_logic_0_Res));
  corr_wrapper_mult_gen_0_0 mult_gen_0
       (.A(cordic_3_m_axis_dout_tdata),
        .B(cordic_2_m_axis_dout_tdata),
        .CLK(CLK_1),
        .P(mult_gen_0_P));
  corr_wrapper_projection_correlation_calculator_v1_0_0_1 projection_correlation_calculator_v1_0_0
       (.correlation_normalized(xlslice_0_Dout),
        .correlation_normalized_valid(div_gen_0_m_axis_dout_tvalid),
        .correlation_out_axi_aclk(CLK_1),
        .correlation_out_axi_araddr(correlation_out_axi_1_ARADDR),
        .correlation_out_axi_aresetn(correlation_out_axi_aresetn_1),
        .correlation_out_axi_arprot(correlation_out_axi_1_ARPROT),
        .correlation_out_axi_arready(correlation_out_axi_1_ARREADY),
        .correlation_out_axi_arvalid(correlation_out_axi_1_ARVALID),
        .correlation_out_axi_awaddr(correlation_out_axi_1_AWADDR),
        .correlation_out_axi_awprot(correlation_out_axi_1_AWPROT),
        .correlation_out_axi_awready(correlation_out_axi_1_AWREADY),
        .correlation_out_axi_awvalid(correlation_out_axi_1_AWVALID),
        .correlation_out_axi_bready(correlation_out_axi_1_BREADY),
        .correlation_out_axi_bresp(correlation_out_axi_1_BRESP),
        .correlation_out_axi_bvalid(correlation_out_axi_1_BVALID),
        .correlation_out_axi_rdata(correlation_out_axi_1_RDATA),
        .correlation_out_axi_rready(correlation_out_axi_1_RREADY),
        .correlation_out_axi_rresp(correlation_out_axi_1_RRESP),
        .correlation_out_axi_rvalid(correlation_out_axi_1_RVALID),
        .correlation_out_axi_wdata(correlation_out_axi_1_WDATA),
        .correlation_out_axi_wready(correlation_out_axi_1_WREADY),
        .correlation_out_axi_wstrb(correlation_out_axi_1_WSTRB),
        .correlation_out_axi_wvalid(correlation_out_axi_1_WVALID),
        .dot_product(projection_correlation_calculator_v1_0_0_dot_product),
        .dot_product_ready(sqrts_ready_Res),
        .dot_product_valid(projection_correlation_calculator_v1_0_0_dot_product_valid),
        .golden_fft_axis_aclk(CLK_1),
        .golden_fft_axis_aresetn(correlation_out_axi_aresetn_1),
        .golden_fft_axis_tdata(golden_fft_axis_1_TDATA),
        .golden_fft_axis_tlast(golden_fft_axis_1_TLAST),
        .golden_fft_axis_tready(golden_fft_axis_1_TREADY),
        .golden_fft_axis_tstrb(golden_fft_axis_1_TSTRB),
        .golden_fft_axis_tvalid(golden_fft_axis_1_TVALID),
        .mag1(projection_correlation_calculator_v1_0_0_mag1),
        .mag2(projection_correlation_calculator_v1_0_0_mag2),
        .signal_fft_axis_aclk(CLK_1),
        .signal_fft_axis_aresetn(correlation_out_axi_aresetn_1),
        .signal_fft_axis_tdata(signal_fft_axis_1_TDATA),
        .signal_fft_axis_tlast(signal_fft_axis_1_TLAST),
        .signal_fft_axis_tready(signal_fft_axis_1_TREADY),
        .signal_fft_axis_tstrb(signal_fft_axis_1_TSTRB),
        .signal_fft_axis_tvalid(signal_fft_axis_1_TVALID));
  corr_wrapper_util_vector_logic_2_1 sqrt_ready_dp_valid
       (.Op1(sqrts_ready_Res),
        .Op2(projection_correlation_calculator_v1_0_0_dot_product_valid),
        .Res(sqrt_ready_dp_valid_Res));
  corr_wrapper_util_vector_logic_2_0 sqrts_ready
       (.Op1(cordic_2_s_axis_cartesian_tready),
        .Op2(cordic_3_s_axis_cartesian_tready),
        .Res(sqrts_ready_Res));
  corr_wrapper_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(correlation_out_axi_aresetn_1),
        .Res(util_vector_logic_0_Res));
  corr_wrapper_util_vector_logic_1_0 util_vector_logic_1
       (.Op1(cordic_3_m_axis_dout_tvalid),
        .Op2(cordic_2_m_axis_dout_tvalid),
        .Res(util_vector_logic_1_Res));
  corr_wrapper_xlconcat_0_0 xlconcat_0
       (.In0(xlconstant_0_dout),
        .In1(dp_out_Q),
        .In2(xlconstant_0_dout),
        .dout(xlconcat_0_dout));
  corr_wrapper_xlslice_0_0 xlslice_0
       (.Din(div_gen_0_m_axis_dout_tdata),
        .Dout(xlslice_0_Dout));
  corr_wrapper_xlconstant_0_0 zero_constant
       (.dout(xlconstant_0_dout));
endmodule

//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
//Date        : Mon Mar 19 11:28:19 2018
//Host        : ug73 running 64-bit Debian GNU/Linux 9.4 (stretch)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=18,numReposBlks=18,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=1,da_board_cnt=2,da_clkrst_cnt=1,da_mb_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (M_AXIS_RESULT_tdata,
    M_AXIS_RESULT_tlast,
    M_AXIS_RESULT_tready,
    M_AXIS_RESULT_tuser,
    M_AXIS_RESULT_tvalid,
    aclk,
    aresetn,
    event_data_in_channel_halt,
    event_data_out_channel_halt,
    event_frame_started,
    event_status_channel_halt,
    event_tlast_missing,
    event_tlast_unexpected,
    s_axis_data,
    s_axis_last,
    s_axis_ready,
    s_axis_tvalid);
  output [31:0]M_AXIS_RESULT_tdata;
  output M_AXIS_RESULT_tlast;
  input M_AXIS_RESULT_tready;
  output [0:0]M_AXIS_RESULT_tuser;
  output M_AXIS_RESULT_tvalid;
  input aclk;
  input aresetn;
  output event_data_in_channel_halt;
  output event_data_out_channel_halt;
  output event_frame_started;
  output event_status_channel_halt;
  output event_tlast_missing;
  output event_tlast_unexpected;
  input [11:0]s_axis_data;
  input s_axis_last;
  output s_axis_ready;
  input s_axis_tvalid;

  wire aclk_1;
  wire [31:0]add_M_AXIS_RESULT_TDATA;
  wire add_M_AXIS_RESULT_TLAST;
  wire add_M_AXIS_RESULT_TREADY;
  wire add_M_AXIS_RESULT_TVALID;
  wire aresetn_1;
  wire [31:0]floating_point_0_m_axis_result_tdata;
  wire floating_point_0_m_axis_result_tlast;
  wire floating_point_0_m_axis_result_tvalid;
  wire floating_point_0_s_axis_a_tready;
  wire [31:0]flt_to_int_M_AXIS_RESULT_TDATA;
  wire flt_to_int_M_AXIS_RESULT_TLAST;
  wire flt_to_int_M_AXIS_RESULT_TREADY;
  wire [0:0]flt_to_int_M_AXIS_RESULT_TUSER;
  wire flt_to_int_M_AXIS_RESULT_TVALID;
  wire [0:0]forward_fft1_dout;
  wire [15:0]forward_fft_dout;
  wire [31:0]imaginary_Dout;
  wire [11:0]int_in_1;
  wire int_in_valid;
  wire [31:0]multiply1_M_AXIS_RESULT_TDATA;
  wire multiply1_M_AXIS_RESULT_TLAST;
  wire multiply1_M_AXIS_RESULT_TREADY;
  wire multiply1_M_AXIS_RESULT_TVALID;
  wire multiply1_s_axis_a_tready;
  wire multiply1_s_axis_b_tready;
  wire [31:0]multiply_M_AXIS_RESULT_TDATA;
  wire multiply_M_AXIS_RESULT_TLAST;
  wire multiply_M_AXIS_RESULT_TREADY;
  wire multiply_M_AXIS_RESULT_TVALID;
  wire multiply_s_axis_a_tready;
  wire multiply_s_axis_b_tready;
  wire [31:0]real_part_Dout;
  wire s_axis_last_1;
  wire [31:0]sqrtf_M_AXIS_RESULT_TDATA;
  wire sqrtf_M_AXIS_RESULT_TLAST;
  wire sqrtf_M_AXIS_RESULT_TREADY;
  wire sqrtf_M_AXIS_RESULT_TVALID;
  wire [1:0]util_vector_logic_0_Res;
  wire [1:0]util_vector_logic_1_Res;
  wire [1:0]util_vector_logic_2_Res;
  wire xfft_1_event_data_in_channel_halt;
  wire xfft_1_event_data_out_channel_halt;
  wire xfft_1_event_frame_started;
  wire xfft_1_event_status_channel_halt;
  wire xfft_1_event_tlast_missing;
  wire xfft_1_event_tlast_unexpected;
  wire [63:0]xfft_1_m_axis_data_tdata;
  wire xfft_1_m_axis_data_tlast;
  wire xfft_1_m_axis_data_tvalid;
  wire xfft_1_s_axis_data_tready;
  wire [31:0]xlconcat_0_dout;
  wire [63:0]xlconcat_1_dout;
  wire [19:0]xlconstant_0_dout;
  wire [31:0]xlconstant_1_dout;

  assign M_AXIS_RESULT_tdata[31:0] = flt_to_int_M_AXIS_RESULT_TDATA;
  assign M_AXIS_RESULT_tlast = flt_to_int_M_AXIS_RESULT_TLAST;
  assign M_AXIS_RESULT_tuser[0] = flt_to_int_M_AXIS_RESULT_TUSER;
  assign M_AXIS_RESULT_tvalid = flt_to_int_M_AXIS_RESULT_TVALID;
  assign aclk_1 = aclk;
  assign aresetn_1 = aresetn;
  assign event_data_in_channel_halt = xfft_1_event_data_in_channel_halt;
  assign event_data_out_channel_halt = xfft_1_event_data_out_channel_halt;
  assign event_frame_started = xfft_1_event_frame_started;
  assign event_status_channel_halt = xfft_1_event_status_channel_halt;
  assign event_tlast_missing = xfft_1_event_tlast_missing;
  assign event_tlast_unexpected = xfft_1_event_tlast_unexpected;
  assign flt_to_int_M_AXIS_RESULT_TREADY = M_AXIS_RESULT_tready;
  assign int_in_1 = s_axis_data[11:0];
  assign int_in_valid = s_axis_tvalid;
  assign s_axis_last_1 = s_axis_last;
  assign s_axis_ready = floating_point_0_s_axis_a_tready;
  design_1_multiply_1 add
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .m_axis_result_tdata(add_M_AXIS_RESULT_TDATA),
        .m_axis_result_tlast(add_M_AXIS_RESULT_TLAST),
        .m_axis_result_tready(add_M_AXIS_RESULT_TREADY),
        .m_axis_result_tvalid(add_M_AXIS_RESULT_TVALID),
        .s_axis_a_tdata(multiply_M_AXIS_RESULT_TDATA),
        .s_axis_a_tlast(multiply_M_AXIS_RESULT_TLAST),
        .s_axis_a_tready(multiply_M_AXIS_RESULT_TREADY),
        .s_axis_a_tvalid(multiply_M_AXIS_RESULT_TVALID),
        .s_axis_b_tdata(multiply1_M_AXIS_RESULT_TDATA),
        .s_axis_b_tlast(multiply1_M_AXIS_RESULT_TLAST),
        .s_axis_b_tready(multiply1_M_AXIS_RESULT_TREADY),
        .s_axis_b_tvalid(multiply1_M_AXIS_RESULT_TVALID));
  design_1_floating_point_0_1 floating_point_0
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .m_axis_result_tdata(floating_point_0_m_axis_result_tdata),
        .m_axis_result_tlast(floating_point_0_m_axis_result_tlast),
        .m_axis_result_tready(xfft_1_s_axis_data_tready),
        .m_axis_result_tvalid(floating_point_0_m_axis_result_tvalid),
        .s_axis_a_tdata(xlconcat_0_dout),
        .s_axis_a_tlast(s_axis_last_1),
        .s_axis_a_tready(floating_point_0_s_axis_a_tready),
        .s_axis_a_tvalid(int_in_valid));
  design_1_multiply2_0 flt_to_int
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .m_axis_result_tdata(flt_to_int_M_AXIS_RESULT_TDATA),
        .m_axis_result_tlast(flt_to_int_M_AXIS_RESULT_TLAST),
        .m_axis_result_tready(flt_to_int_M_AXIS_RESULT_TREADY),
        .m_axis_result_tuser(flt_to_int_M_AXIS_RESULT_TUSER),
        .m_axis_result_tvalid(flt_to_int_M_AXIS_RESULT_TVALID),
        .s_axis_a_tdata(sqrtf_M_AXIS_RESULT_TDATA),
        .s_axis_a_tlast(sqrtf_M_AXIS_RESULT_TLAST),
        .s_axis_a_tready(sqrtf_M_AXIS_RESULT_TREADY),
        .s_axis_a_tvalid(sqrtf_M_AXIS_RESULT_TVALID));
  design_1_xlconstant_0_0 forward_fft
       (.dout(forward_fft_dout));
  design_1_forward_fft_0 forward_fft1
       (.dout(forward_fft1_dout));
  design_1_xlslice_0_0 imaginary
       (.Din(xfft_1_m_axis_data_tdata),
        .Dout(imaginary_Dout));
  design_1_floating_point_0_0 multiply
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .m_axis_result_tdata(multiply_M_AXIS_RESULT_TDATA),
        .m_axis_result_tlast(multiply_M_AXIS_RESULT_TLAST),
        .m_axis_result_tready(multiply_M_AXIS_RESULT_TREADY),
        .m_axis_result_tvalid(multiply_M_AXIS_RESULT_TVALID),
        .s_axis_a_tdata(real_part_Dout),
        .s_axis_a_tlast(xfft_1_m_axis_data_tlast),
        .s_axis_a_tready(multiply_s_axis_a_tready),
        .s_axis_a_tvalid(xfft_1_m_axis_data_tvalid),
        .s_axis_b_tdata(real_part_Dout),
        .s_axis_b_tlast(xfft_1_m_axis_data_tlast),
        .s_axis_b_tready(multiply_s_axis_b_tready),
        .s_axis_b_tvalid(xfft_1_m_axis_data_tvalid));
  design_1_multiply_0 multiply1
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .m_axis_result_tdata(multiply1_M_AXIS_RESULT_TDATA),
        .m_axis_result_tlast(multiply1_M_AXIS_RESULT_TLAST),
        .m_axis_result_tready(multiply1_M_AXIS_RESULT_TREADY),
        .m_axis_result_tvalid(multiply1_M_AXIS_RESULT_TVALID),
        .s_axis_a_tdata(imaginary_Dout),
        .s_axis_a_tlast(xfft_1_m_axis_data_tlast),
        .s_axis_a_tready(multiply1_s_axis_a_tready),
        .s_axis_a_tvalid(xfft_1_m_axis_data_tvalid),
        .s_axis_b_tdata(imaginary_Dout),
        .s_axis_b_tlast(xfft_1_m_axis_data_tlast),
        .s_axis_b_tready(multiply1_s_axis_b_tready),
        .s_axis_b_tvalid(xfft_1_m_axis_data_tvalid));
  design_1_xlslice_0_1 real_part
       (.Din(xfft_1_m_axis_data_tdata),
        .Dout(real_part_Dout));
  design_1_floating_point_1_0 sqrtf
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .m_axis_result_tdata(sqrtf_M_AXIS_RESULT_TDATA),
        .m_axis_result_tlast(sqrtf_M_AXIS_RESULT_TLAST),
        .m_axis_result_tready(sqrtf_M_AXIS_RESULT_TREADY),
        .m_axis_result_tvalid(sqrtf_M_AXIS_RESULT_TVALID),
        .s_axis_a_tdata(add_M_AXIS_RESULT_TDATA),
        .s_axis_a_tlast(add_M_AXIS_RESULT_TLAST),
        .s_axis_a_tready(add_M_AXIS_RESULT_TREADY),
        .s_axis_a_tvalid(add_M_AXIS_RESULT_TVALID));
  design_1_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(util_vector_logic_1_Res),
        .Op2(util_vector_logic_2_Res),
        .Res(util_vector_logic_0_Res));
  design_1_util_vector_logic_0_1 util_vector_logic_1
       (.Op1({multiply_s_axis_a_tready,multiply_s_axis_a_tready}),
        .Op2({multiply_s_axis_b_tready,multiply_s_axis_b_tready}),
        .Res(util_vector_logic_1_Res));
  design_1_util_vector_logic_0_2 util_vector_logic_2
       (.Op1({multiply1_s_axis_a_tready,multiply1_s_axis_a_tready}),
        .Op2({multiply1_s_axis_b_tready,multiply1_s_axis_b_tready}),
        .Res(util_vector_logic_2_Res));
  design_1_xfft_1_0 xfft_1
       (.aclk(aclk_1),
        .aresetn(aresetn_1),
        .event_data_in_channel_halt(xfft_1_event_data_in_channel_halt),
        .event_data_out_channel_halt(xfft_1_event_data_out_channel_halt),
        .event_frame_started(xfft_1_event_frame_started),
        .event_status_channel_halt(xfft_1_event_status_channel_halt),
        .event_tlast_missing(xfft_1_event_tlast_missing),
        .event_tlast_unexpected(xfft_1_event_tlast_unexpected),
        .m_axis_data_tdata(xfft_1_m_axis_data_tdata),
        .m_axis_data_tlast(xfft_1_m_axis_data_tlast),
        .m_axis_data_tready(util_vector_logic_0_Res[0]),
        .m_axis_data_tvalid(xfft_1_m_axis_data_tvalid),
        .s_axis_config_tdata(forward_fft_dout),
        .s_axis_config_tvalid(forward_fft1_dout),
        .s_axis_data_tdata(xlconcat_1_dout),
        .s_axis_data_tlast(floating_point_0_m_axis_result_tlast),
        .s_axis_data_tready(xfft_1_s_axis_data_tready),
        .s_axis_data_tvalid(floating_point_0_m_axis_result_tvalid));
  design_1_xlconcat_0_0 xlconcat_0
       (.In0(int_in_1),
        .In1(xlconstant_0_dout),
        .dout(xlconcat_0_dout));
  design_1_xlconcat_1_1 xlconcat_1
       (.In0(floating_point_0_m_axis_result_tdata),
        .In1(xlconstant_1_dout),
        .dout(xlconcat_1_dout));
  design_1_xlconstant_0_1 xlconstant_0
       (.dout(xlconstant_0_dout));
  design_1_xlconstant_0_2 xlconstant_1
       (.dout(xlconstant_1_dout));
endmodule

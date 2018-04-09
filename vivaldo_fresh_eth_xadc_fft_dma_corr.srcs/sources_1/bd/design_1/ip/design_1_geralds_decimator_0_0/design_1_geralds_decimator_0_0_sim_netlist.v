// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.2 (lin64) Build 1909853 Thu Jun 15 18:39:10 MDT 2017
// Date        : Sat Mar 17 20:05:10 2018
// Host        : ug75 running 64-bit Debian GNU/Linux 9.4 (stretch)
// Command     : write_verilog -force -mode funcsim
//               /nfs/ug/homes-1/t/tramblei/vivaldo_fresh_eth_xadc_fft_dma_corr/vivaldo_fresh_eth_xadc_fft_dma_corr.srcs/sources_1/bd/design_1/ip/design_1_geralds_decimator_0_0/design_1_geralds_decimator_0_0_sim_netlist.v
// Design      : design_1_geralds_decimator_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_geralds_decimator_0_0,geralds_decimator_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "geralds_decimator_v1_0,Vivado 2017.2" *) 
(* NotValidForBitStream *)
module design_1_geralds_decimator_0_0
   (signal_in_aclk,
    signal_in_aresetn,
    signal_in_tready,
    signal_in_tdata,
    signal_in_tstrb,
    signal_in_tlast,
    signal_in_tvalid,
    signal_out_tvalid,
    signal_out_tdata,
    signal_out_tstrb,
    signal_out_tlast,
    signal_out_tready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 signal_in_aclk CLK" *) input signal_in_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 signal_in_aresetn RST" *) input signal_in_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_in TREADY" *) output signal_in_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_in TDATA" *) input [31:0]signal_in_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_in TSTRB" *) input [3:0]signal_in_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_in TLAST" *) input signal_in_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_in TVALID" *) input signal_in_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_out TVALID" *) output signal_out_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_out TDATA" *) output [31:0]signal_out_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_out TSTRB" *) output [3:0]signal_out_tstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_out TLAST" *) output signal_out_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 signal_out TREADY" *) input signal_out_tready;

  wire \<const1> ;
  wire signal_in_aclk;
  wire signal_in_aresetn;
  wire [31:0]signal_in_tdata;
  wire signal_in_tvalid;
  wire [31:0]signal_out_tdata;
  wire signal_out_tlast;
  wire signal_out_tready;
  wire signal_out_tvalid;

  assign signal_in_tready = \<const1> ;
  assign signal_out_tstrb[3] = \<const1> ;
  assign signal_out_tstrb[2] = \<const1> ;
  assign signal_out_tstrb[1] = \<const1> ;
  assign signal_out_tstrb[0] = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  design_1_geralds_decimator_0_0_geralds_decimator_v1_0 inst
       (.signal_in_aclk(signal_in_aclk),
        .signal_in_aresetn(signal_in_aresetn),
        .signal_in_tdata(signal_in_tdata),
        .signal_in_tvalid(signal_in_tvalid),
        .signal_out_tdata(signal_out_tdata),
        .signal_out_tlast(signal_out_tlast),
        .signal_out_tready(signal_out_tready),
        .signal_out_tvalid(signal_out_tvalid));
endmodule

(* ORIG_REF_NAME = "geralds_decimator_v1_0" *) 
module design_1_geralds_decimator_0_0_geralds_decimator_v1_0
   (signal_out_tvalid,
    signal_out_tdata,
    signal_out_tlast,
    signal_in_aclk,
    signal_in_tvalid,
    signal_in_tdata,
    signal_in_aresetn,
    signal_out_tready);
  output signal_out_tvalid;
  output [31:0]signal_out_tdata;
  output signal_out_tlast;
  input signal_in_aclk;
  input signal_in_tvalid;
  input [31:0]signal_in_tdata;
  input signal_in_aresetn;
  input signal_out_tready;

  wire [31:0]counter;
  wire counter0_carry__0_i_1_n_0;
  wire counter0_carry__0_i_2_n_0;
  wire counter0_carry__0_i_3_n_0;
  wire counter0_carry__0_i_4_n_0;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_i_1_n_0;
  wire counter0_carry__1_i_2_n_0;
  wire counter0_carry__1_i_3_n_0;
  wire counter0_carry__1_i_4_n_0;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_i_1_n_0;
  wire counter0_carry__2_i_2_n_0;
  wire counter0_carry__2_i_3_n_0;
  wire counter0_carry__2_i_4_n_0;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry__3_i_1_n_0;
  wire counter0_carry__3_i_2_n_0;
  wire counter0_carry__3_i_3_n_0;
  wire counter0_carry__3_i_4_n_0;
  wire counter0_carry__3_n_0;
  wire counter0_carry__3_n_1;
  wire counter0_carry__3_n_2;
  wire counter0_carry__3_n_3;
  wire counter0_carry__4_i_1_n_0;
  wire counter0_carry__4_i_2_n_0;
  wire counter0_carry__4_i_3_n_0;
  wire counter0_carry__4_i_4_n_0;
  wire counter0_carry__4_n_0;
  wire counter0_carry__4_n_1;
  wire counter0_carry__4_n_2;
  wire counter0_carry__4_n_3;
  wire counter0_carry__5_i_1_n_0;
  wire counter0_carry__5_i_2_n_0;
  wire counter0_carry__5_i_3_n_0;
  wire counter0_carry__5_i_4_n_0;
  wire counter0_carry__5_n_0;
  wire counter0_carry__5_n_1;
  wire counter0_carry__5_n_2;
  wire counter0_carry__5_n_3;
  wire counter0_carry__6_i_1_n_0;
  wire counter0_carry__6_i_2_n_0;
  wire counter0_carry__6_i_3_n_0;
  wire counter0_carry__6_n_2;
  wire counter0_carry__6_n_3;
  wire counter0_carry_i_1_n_0;
  wire counter0_carry_i_2_n_0;
  wire counter0_carry_i_3_n_0;
  wire counter0_carry_i_4_n_0;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire \counter[31]_i_2_n_0 ;
  wire \counter[31]_i_3_n_0 ;
  wire \counter[31]_i_4_n_0 ;
  wire \counter[31]_i_5_n_0 ;
  wire \counter[31]_i_6_n_0 ;
  wire \counter[31]_i_7_n_0 ;
  wire \counter[31]_i_8_n_0 ;
  wire \counter[31]_i_9_n_0 ;
  wire [31:0]counter_0;
  wire [31:1]data0;
  wire initiate_txn;
  wire initiate_txn_reg_n_0;
  wire is_last;
  wire is_last_delay;
  wire is_last_i_1_n_0;
  wire is_last_i_2_n_0;
  wire p_0_in;
  wire [9:0]p_0_in__0;
  wire \packet_counter[9]_i_2_n_0 ;
  wire [9:0]packet_counter_reg__0;
  wire signal_in_aclk;
  wire signal_in_aresetn;
  wire [31:0]signal_in_tdata;
  wire signal_in_tvalid;
  wire [31:0]signal_out_tdata;
  wire signal_out_tlast;
  wire signal_out_tready;
  wire signal_out_tvalid;
  wire [31:0]slave_data;
  wire [3:2]NLW_counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_counter0_carry__6_O_UNCONNECTED;

  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({counter0_carry_i_1_n_0,counter0_carry_i_2_n_0,counter0_carry_i_3_n_0,counter0_carry_i_4_n_0}));
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({counter0_carry__0_i_1_n_0,counter0_carry__0_i_2_n_0,counter0_carry__0_i_3_n_0,counter0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__0_i_1
       (.I0(counter[8]),
        .O(counter0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__0_i_2
       (.I0(counter[7]),
        .O(counter0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__0_i_3
       (.I0(counter[6]),
        .O(counter0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__0_i_4
       (.I0(counter[5]),
        .O(counter0_carry__0_i_4_n_0));
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({counter0_carry__1_i_1_n_0,counter0_carry__1_i_2_n_0,counter0_carry__1_i_3_n_0,counter0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__1_i_1
       (.I0(counter[12]),
        .O(counter0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__1_i_2
       (.I0(counter[11]),
        .O(counter0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__1_i_3
       (.I0(counter[10]),
        .O(counter0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__1_i_4
       (.I0(counter[9]),
        .O(counter0_carry__1_i_4_n_0));
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({counter0_carry__2_i_1_n_0,counter0_carry__2_i_2_n_0,counter0_carry__2_i_3_n_0,counter0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__2_i_1
       (.I0(counter[16]),
        .O(counter0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__2_i_2
       (.I0(counter[15]),
        .O(counter0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__2_i_3
       (.I0(counter[14]),
        .O(counter0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__2_i_4
       (.I0(counter[13]),
        .O(counter0_carry__2_i_4_n_0));
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({counter0_carry__3_n_0,counter0_carry__3_n_1,counter0_carry__3_n_2,counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({counter0_carry__3_i_1_n_0,counter0_carry__3_i_2_n_0,counter0_carry__3_i_3_n_0,counter0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__3_i_1
       (.I0(counter[20]),
        .O(counter0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__3_i_2
       (.I0(counter[19]),
        .O(counter0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__3_i_3
       (.I0(counter[18]),
        .O(counter0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__3_i_4
       (.I0(counter[17]),
        .O(counter0_carry__3_i_4_n_0));
  CARRY4 counter0_carry__4
       (.CI(counter0_carry__3_n_0),
        .CO({counter0_carry__4_n_0,counter0_carry__4_n_1,counter0_carry__4_n_2,counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({counter0_carry__4_i_1_n_0,counter0_carry__4_i_2_n_0,counter0_carry__4_i_3_n_0,counter0_carry__4_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__4_i_1
       (.I0(counter[24]),
        .O(counter0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__4_i_2
       (.I0(counter[23]),
        .O(counter0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__4_i_3
       (.I0(counter[22]),
        .O(counter0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__4_i_4
       (.I0(counter[21]),
        .O(counter0_carry__4_i_4_n_0));
  CARRY4 counter0_carry__5
       (.CI(counter0_carry__4_n_0),
        .CO({counter0_carry__5_n_0,counter0_carry__5_n_1,counter0_carry__5_n_2,counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({counter0_carry__5_i_1_n_0,counter0_carry__5_i_2_n_0,counter0_carry__5_i_3_n_0,counter0_carry__5_i_4_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__5_i_1
       (.I0(counter[28]),
        .O(counter0_carry__5_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__5_i_2
       (.I0(counter[27]),
        .O(counter0_carry__5_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__5_i_3
       (.I0(counter[26]),
        .O(counter0_carry__5_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__5_i_4
       (.I0(counter[25]),
        .O(counter0_carry__5_i_4_n_0));
  CARRY4 counter0_carry__6
       (.CI(counter0_carry__5_n_0),
        .CO({NLW_counter0_carry__6_CO_UNCONNECTED[3:2],counter0_carry__6_n_2,counter0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,counter0_carry__6_i_1_n_0,counter0_carry__6_i_2_n_0,counter0_carry__6_i_3_n_0}));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__6_i_1
       (.I0(counter[31]),
        .O(counter0_carry__6_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__6_i_2
       (.I0(counter[30]),
        .O(counter0_carry__6_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry__6_i_3
       (.I0(counter[29]),
        .O(counter0_carry__6_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry_i_1
       (.I0(counter[4]),
        .O(counter0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry_i_2
       (.I0(counter[3]),
        .O(counter0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry_i_3
       (.I0(counter[2]),
        .O(counter0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h2)) 
    counter0_carry_i_4
       (.I0(counter[1]),
        .O(counter0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00FE)) 
    \counter[0]_i_1 
       (.I0(\counter[31]_i_4_n_0 ),
        .I1(\counter[31]_i_3_n_0 ),
        .I2(\counter[31]_i_2_n_0 ),
        .I3(counter[0]),
        .O(counter_0[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[10]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[10]),
        .O(counter_0[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[11]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[11]),
        .O(counter_0[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[12]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[12]),
        .O(counter_0[12]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[13]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[13]),
        .O(counter_0[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[14]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[14]),
        .O(counter_0[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[15]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[15]),
        .O(counter_0[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[16]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[16]),
        .O(counter_0[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[17]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[17]),
        .O(counter_0[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[18]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[18]),
        .O(counter_0[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[19]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[19]),
        .O(counter_0[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[1]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[1]),
        .O(counter_0[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[20]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[20]),
        .O(counter_0[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[21]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[21]),
        .O(counter_0[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[22]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[22]),
        .O(counter_0[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[23]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[23]),
        .O(counter_0[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[24]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[24]),
        .O(counter_0[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[25]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[25]),
        .O(counter_0[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[26]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[26]),
        .O(counter_0[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[27]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[27]),
        .O(counter_0[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[28]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[28]),
        .O(counter_0[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[29]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[29]),
        .O(counter_0[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[2]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[2]),
        .O(counter_0[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[30]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[30]),
        .O(counter_0[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[31]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[31]),
        .O(counter_0[31]));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \counter[31]_i_2 
       (.I0(counter[12]),
        .I1(counter[13]),
        .I2(counter[10]),
        .I3(counter[11]),
        .I4(\counter[31]_i_5_n_0 ),
        .O(\counter[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \counter[31]_i_3 
       (.I0(counter[4]),
        .I1(counter[5]),
        .I2(counter[2]),
        .I3(counter[3]),
        .I4(\counter[31]_i_6_n_0 ),
        .O(\counter[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \counter[31]_i_4 
       (.I0(\counter[31]_i_7_n_0 ),
        .I1(\counter[31]_i_8_n_0 ),
        .I2(counter[31]),
        .I3(counter[30]),
        .I4(counter[1]),
        .I5(\counter[31]_i_9_n_0 ),
        .O(\counter[31]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_5 
       (.I0(counter[15]),
        .I1(counter[14]),
        .I2(counter[17]),
        .I3(counter[16]),
        .O(\counter[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \counter[31]_i_6 
       (.I0(counter[7]),
        .I1(counter[6]),
        .I2(counter[9]),
        .I3(counter[8]),
        .O(\counter[31]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_7 
       (.I0(counter[23]),
        .I1(counter[22]),
        .I2(counter[25]),
        .I3(counter[24]),
        .O(\counter[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_8 
       (.I0(counter[19]),
        .I1(counter[18]),
        .I2(counter[21]),
        .I3(counter[20]),
        .O(\counter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[31]_i_9 
       (.I0(counter[27]),
        .I1(counter[26]),
        .I2(counter[29]),
        .I3(counter[28]),
        .O(\counter[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[3]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[3]),
        .O(counter_0[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[4]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[4]),
        .O(counter_0[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[5]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[5]),
        .O(counter_0[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[6]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[6]),
        .O(counter_0[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[7]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[7]),
        .O(counter_0[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[8]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[8]),
        .O(counter_0[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \counter[9]_i_1 
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .I4(data0[9]),
        .O(counter_0[9]));
  FDCE \counter_reg[0] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[0]),
        .Q(counter[0]));
  FDCE \counter_reg[10] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[10]),
        .Q(counter[10]));
  FDCE \counter_reg[11] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[11]),
        .Q(counter[11]));
  FDCE \counter_reg[12] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[12]),
        .Q(counter[12]));
  FDCE \counter_reg[13] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[13]),
        .Q(counter[13]));
  FDCE \counter_reg[14] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[14]),
        .Q(counter[14]));
  FDCE \counter_reg[15] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[15]),
        .Q(counter[15]));
  FDCE \counter_reg[16] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[16]),
        .Q(counter[16]));
  FDCE \counter_reg[17] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[17]),
        .Q(counter[17]));
  FDCE \counter_reg[18] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[18]),
        .Q(counter[18]));
  FDCE \counter_reg[19] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[19]),
        .Q(counter[19]));
  FDCE \counter_reg[1] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[1]),
        .Q(counter[1]));
  FDCE \counter_reg[20] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[20]),
        .Q(counter[20]));
  FDCE \counter_reg[21] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[21]),
        .Q(counter[21]));
  FDCE \counter_reg[22] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[22]),
        .Q(counter[22]));
  FDCE \counter_reg[23] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[23]),
        .Q(counter[23]));
  FDCE \counter_reg[24] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[24]),
        .Q(counter[24]));
  FDCE \counter_reg[25] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[25]),
        .Q(counter[25]));
  FDCE \counter_reg[26] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[26]),
        .Q(counter[26]));
  FDCE \counter_reg[27] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[27]),
        .Q(counter[27]));
  FDCE \counter_reg[28] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[28]),
        .Q(counter[28]));
  FDCE \counter_reg[29] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[29]),
        .Q(counter[29]));
  FDCE \counter_reg[2] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[2]),
        .Q(counter[2]));
  FDCE \counter_reg[30] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[30]),
        .Q(counter[30]));
  FDCE \counter_reg[31] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[31]),
        .Q(counter[31]));
  FDCE \counter_reg[3] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[3]),
        .Q(counter[3]));
  FDCE \counter_reg[4] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[4]),
        .Q(counter[4]));
  FDCE \counter_reg[5] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[5]),
        .Q(counter[5]));
  FDCE \counter_reg[6] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[6]),
        .Q(counter[6]));
  FDCE \counter_reg[7] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[7]),
        .Q(counter[7]));
  FDCE \counter_reg[8] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[8]),
        .Q(counter[8]));
  FDCE \counter_reg[9] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(counter_0[9]),
        .Q(counter[9]));
  design_1_geralds_decimator_0_0_geralds_decimator_v1_0_signal_out geralds_decimator_v1_0_signal_out_inst
       (.Q(slave_data),
        .initiate_txn_reg(initiate_txn_reg_n_0),
        .is_last_delay(is_last_delay),
        .p_0_in(p_0_in),
        .signal_in_aclk(signal_in_aclk),
        .signal_in_aresetn(signal_in_aresetn),
        .signal_out_tdata(signal_out_tdata),
        .signal_out_tlast(signal_out_tlast),
        .signal_out_tready(signal_out_tready),
        .signal_out_tvalid(signal_out_tvalid));
  LUT4 #(
    .INIT(16'h0001)) 
    initiate_txn_i_1
       (.I0(counter[0]),
        .I1(\counter[31]_i_2_n_0 ),
        .I2(\counter[31]_i_3_n_0 ),
        .I3(\counter[31]_i_4_n_0 ),
        .O(initiate_txn));
  FDCE initiate_txn_reg
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(initiate_txn),
        .Q(initiate_txn_reg_n_0));
  FDCE is_last_delay_reg
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(is_last),
        .Q(is_last_delay));
  LUT6 #(
    .INIT(64'h5555555700000001)) 
    is_last_i_1
       (.I0(is_last_i_2_n_0),
        .I1(counter[0]),
        .I2(\counter[31]_i_2_n_0 ),
        .I3(\counter[31]_i_3_n_0 ),
        .I4(\counter[31]_i_4_n_0 ),
        .I5(is_last),
        .O(is_last_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF7FFFFFF)) 
    is_last_i_2
       (.I0(packet_counter_reg__0[8]),
        .I1(packet_counter_reg__0[6]),
        .I2(\packet_counter[9]_i_2_n_0 ),
        .I3(packet_counter_reg__0[7]),
        .I4(packet_counter_reg__0[9]),
        .O(is_last_i_2_n_0));
  FDCE is_last_reg
       (.C(signal_in_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(is_last_i_1_n_0),
        .Q(is_last));
  LUT1 #(
    .INIT(2'h1)) 
    \packet_counter[0]_i_1 
       (.I0(packet_counter_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \packet_counter[1]_i_1 
       (.I0(packet_counter_reg__0[0]),
        .I1(packet_counter_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \packet_counter[2]_i_1 
       (.I0(packet_counter_reg__0[1]),
        .I1(packet_counter_reg__0[0]),
        .I2(packet_counter_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \packet_counter[3]_i_1 
       (.I0(packet_counter_reg__0[2]),
        .I1(packet_counter_reg__0[0]),
        .I2(packet_counter_reg__0[1]),
        .I3(packet_counter_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \packet_counter[4]_i_1 
       (.I0(packet_counter_reg__0[3]),
        .I1(packet_counter_reg__0[1]),
        .I2(packet_counter_reg__0[0]),
        .I3(packet_counter_reg__0[2]),
        .I4(packet_counter_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \packet_counter[5]_i_1 
       (.I0(packet_counter_reg__0[4]),
        .I1(packet_counter_reg__0[2]),
        .I2(packet_counter_reg__0[0]),
        .I3(packet_counter_reg__0[1]),
        .I4(packet_counter_reg__0[3]),
        .I5(packet_counter_reg__0[5]),
        .O(p_0_in__0[5]));
  LUT2 #(
    .INIT(4'h9)) 
    \packet_counter[6]_i_1 
       (.I0(\packet_counter[9]_i_2_n_0 ),
        .I1(packet_counter_reg__0[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hD2)) 
    \packet_counter[7]_i_1 
       (.I0(packet_counter_reg__0[6]),
        .I1(\packet_counter[9]_i_2_n_0 ),
        .I2(packet_counter_reg__0[7]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hDF20)) 
    \packet_counter[8]_i_1 
       (.I0(packet_counter_reg__0[7]),
        .I1(\packet_counter[9]_i_2_n_0 ),
        .I2(packet_counter_reg__0[6]),
        .I3(packet_counter_reg__0[8]),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hF7FF0800)) 
    \packet_counter[9]_i_1 
       (.I0(packet_counter_reg__0[8]),
        .I1(packet_counter_reg__0[6]),
        .I2(\packet_counter[9]_i_2_n_0 ),
        .I3(packet_counter_reg__0[7]),
        .I4(packet_counter_reg__0[9]),
        .O(p_0_in__0[9]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \packet_counter[9]_i_2 
       (.I0(packet_counter_reg__0[4]),
        .I1(packet_counter_reg__0[2]),
        .I2(packet_counter_reg__0[0]),
        .I3(packet_counter_reg__0[1]),
        .I4(packet_counter_reg__0[3]),
        .I5(packet_counter_reg__0[5]),
        .O(\packet_counter[9]_i_2_n_0 ));
  FDCE \packet_counter_reg[0] 
       (.C(signal_in_aclk),
        .CE(initiate_txn),
        .CLR(p_0_in),
        .D(p_0_in__0[0]),
        .Q(packet_counter_reg__0[0]));
  FDCE \packet_counter_reg[1] 
       (.C(signal_in_aclk),
        .CE(initiate_txn),
        .CLR(p_0_in),
        .D(p_0_in__0[1]),
        .Q(packet_counter_reg__0[1]));
  FDCE \packet_counter_reg[2] 
       (.C(signal_in_aclk),
        .CE(initiate_txn),
        .CLR(p_0_in),
        .D(p_0_in__0[2]),
        .Q(packet_counter_reg__0[2]));
  FDCE \packet_counter_reg[3] 
       (.C(signal_in_aclk),
        .CE(initiate_txn),
        .CLR(p_0_in),
        .D(p_0_in__0[3]),
        .Q(packet_counter_reg__0[3]));
  FDCE \packet_counter_reg[4] 
       (.C(signal_in_aclk),
        .CE(initiate_txn),
        .CLR(p_0_in),
        .D(p_0_in__0[4]),
        .Q(packet_counter_reg__0[4]));
  FDCE \packet_counter_reg[5] 
       (.C(signal_in_aclk),
        .CE(initiate_txn),
        .CLR(p_0_in),
        .D(p_0_in__0[5]),
        .Q(packet_counter_reg__0[5]));
  FDCE \packet_counter_reg[6] 
       (.C(signal_in_aclk),
        .CE(initiate_txn),
        .CLR(p_0_in),
        .D(p_0_in__0[6]),
        .Q(packet_counter_reg__0[6]));
  FDCE \packet_counter_reg[7] 
       (.C(signal_in_aclk),
        .CE(initiate_txn),
        .CLR(p_0_in),
        .D(p_0_in__0[7]),
        .Q(packet_counter_reg__0[7]));
  FDCE \packet_counter_reg[8] 
       (.C(signal_in_aclk),
        .CE(initiate_txn),
        .CLR(p_0_in),
        .D(p_0_in__0[8]),
        .Q(packet_counter_reg__0[8]));
  FDCE \packet_counter_reg[9] 
       (.C(signal_in_aclk),
        .CE(initiate_txn),
        .CLR(p_0_in),
        .D(p_0_in__0[9]),
        .Q(packet_counter_reg__0[9]));
  FDCE \slave_data_reg[0] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[0]),
        .Q(slave_data[0]));
  FDCE \slave_data_reg[10] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[10]),
        .Q(slave_data[10]));
  FDCE \slave_data_reg[11] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[11]),
        .Q(slave_data[11]));
  FDCE \slave_data_reg[12] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[12]),
        .Q(slave_data[12]));
  FDCE \slave_data_reg[13] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[13]),
        .Q(slave_data[13]));
  FDCE \slave_data_reg[14] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[14]),
        .Q(slave_data[14]));
  FDCE \slave_data_reg[15] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[15]),
        .Q(slave_data[15]));
  FDCE \slave_data_reg[16] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[16]),
        .Q(slave_data[16]));
  FDCE \slave_data_reg[17] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[17]),
        .Q(slave_data[17]));
  FDCE \slave_data_reg[18] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[18]),
        .Q(slave_data[18]));
  FDCE \slave_data_reg[19] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[19]),
        .Q(slave_data[19]));
  FDCE \slave_data_reg[1] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[1]),
        .Q(slave_data[1]));
  FDCE \slave_data_reg[20] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[20]),
        .Q(slave_data[20]));
  FDCE \slave_data_reg[21] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[21]),
        .Q(slave_data[21]));
  FDCE \slave_data_reg[22] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[22]),
        .Q(slave_data[22]));
  FDCE \slave_data_reg[23] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[23]),
        .Q(slave_data[23]));
  FDCE \slave_data_reg[24] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[24]),
        .Q(slave_data[24]));
  FDCE \slave_data_reg[25] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[25]),
        .Q(slave_data[25]));
  FDCE \slave_data_reg[26] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[26]),
        .Q(slave_data[26]));
  FDCE \slave_data_reg[27] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[27]),
        .Q(slave_data[27]));
  FDCE \slave_data_reg[28] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[28]),
        .Q(slave_data[28]));
  FDCE \slave_data_reg[29] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[29]),
        .Q(slave_data[29]));
  FDCE \slave_data_reg[2] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[2]),
        .Q(slave_data[2]));
  FDCE \slave_data_reg[30] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[30]),
        .Q(slave_data[30]));
  FDCE \slave_data_reg[31] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[31]),
        .Q(slave_data[31]));
  FDCE \slave_data_reg[3] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[3]),
        .Q(slave_data[3]));
  FDCE \slave_data_reg[4] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[4]),
        .Q(slave_data[4]));
  FDCE \slave_data_reg[5] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[5]),
        .Q(slave_data[5]));
  FDCE \slave_data_reg[6] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[6]),
        .Q(slave_data[6]));
  FDCE \slave_data_reg[7] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[7]),
        .Q(slave_data[7]));
  FDCE \slave_data_reg[8] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[8]),
        .Q(slave_data[8]));
  FDCE \slave_data_reg[9] 
       (.C(signal_in_aclk),
        .CE(signal_in_tvalid),
        .CLR(p_0_in),
        .D(signal_in_tdata[9]),
        .Q(slave_data[9]));
endmodule

(* ORIG_REF_NAME = "geralds_decimator_v1_0_signal_out" *) 
module design_1_geralds_decimator_0_0_geralds_decimator_v1_0_signal_out
   (signal_out_tvalid,
    p_0_in,
    signal_out_tlast,
    signal_out_tdata,
    signal_in_aclk,
    is_last_delay,
    signal_out_tready,
    initiate_txn_reg,
    signal_in_aresetn,
    Q);
  output signal_out_tvalid;
  output p_0_in;
  output signal_out_tlast;
  output [31:0]signal_out_tdata;
  input signal_in_aclk;
  input is_last_delay;
  input signal_out_tready;
  input initiate_txn_reg;
  input signal_in_aresetn;
  input [31:0]Q;

  wire [31:0]Q;
  wire \__0/i__n_0 ;
  wire initiate_txn_reg;
  wire is_last_delay;
  wire [1:1]mst_exec_state;
  wire p_0_in;
  wire signal_in_aclk;
  wire signal_in_aresetn;
  wire [31:0]signal_out_tdata;
  wire signal_out_tlast;
  wire signal_out_tready;
  wire signal_out_tvalid;

  LUT3 #(
    .INIT(8'h74)) 
    \__0/i_ 
       (.I0(signal_out_tready),
        .I1(mst_exec_state),
        .I2(initiate_txn_reg),
        .O(\__0/i__n_0 ));
  FDRE axis_tlast_delay_reg
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(is_last_delay),
        .Q(signal_out_tlast),
        .R(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    axis_tvalid_delay_i_1
       (.I0(signal_in_aresetn),
        .O(p_0_in));
  FDRE axis_tvalid_delay_reg
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(mst_exec_state),
        .Q(signal_out_tvalid),
        .R(p_0_in));
  FDRE \mst_exec_state_reg[1] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(\__0/i__n_0 ),
        .Q(mst_exec_state),
        .R(p_0_in));
  FDRE \stream_data_out_reg[0] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[0]),
        .Q(signal_out_tdata[0]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[10] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[10]),
        .Q(signal_out_tdata[10]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[11] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[11]),
        .Q(signal_out_tdata[11]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[12] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[12]),
        .Q(signal_out_tdata[12]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[13] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[13]),
        .Q(signal_out_tdata[13]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[14] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[14]),
        .Q(signal_out_tdata[14]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[15] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[15]),
        .Q(signal_out_tdata[15]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[16] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[16]),
        .Q(signal_out_tdata[16]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[17] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[17]),
        .Q(signal_out_tdata[17]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[18] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[18]),
        .Q(signal_out_tdata[18]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[19] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[19]),
        .Q(signal_out_tdata[19]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[1] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[1]),
        .Q(signal_out_tdata[1]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[20] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[20]),
        .Q(signal_out_tdata[20]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[21] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[21]),
        .Q(signal_out_tdata[21]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[22] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[22]),
        .Q(signal_out_tdata[22]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[23] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[23]),
        .Q(signal_out_tdata[23]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[24] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[24]),
        .Q(signal_out_tdata[24]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[25] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[25]),
        .Q(signal_out_tdata[25]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[26] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[26]),
        .Q(signal_out_tdata[26]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[27] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[27]),
        .Q(signal_out_tdata[27]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[28] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[28]),
        .Q(signal_out_tdata[28]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[29] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[29]),
        .Q(signal_out_tdata[29]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[2] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[2]),
        .Q(signal_out_tdata[2]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[30] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[30]),
        .Q(signal_out_tdata[30]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[31] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[31]),
        .Q(signal_out_tdata[31]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[3] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[3]),
        .Q(signal_out_tdata[3]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[4] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[4]),
        .Q(signal_out_tdata[4]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[5] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[5]),
        .Q(signal_out_tdata[5]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[6] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[6]),
        .Q(signal_out_tdata[6]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[7] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[7]),
        .Q(signal_out_tdata[7]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[8] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[8]),
        .Q(signal_out_tdata[8]),
        .R(p_0_in));
  FDRE \stream_data_out_reg[9] 
       (.C(signal_in_aclk),
        .CE(1'b1),
        .D(Q[9]),
        .Q(signal_out_tdata[9]),
        .R(p_0_in));
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

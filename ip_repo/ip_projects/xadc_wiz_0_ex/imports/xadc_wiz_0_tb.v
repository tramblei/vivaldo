
// file: xadc_wiz_0_tb.v
// (c) Copyright 2009 - 2013 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
//----------------------------------------------------------------------------
// XADC Monitor wizard demonstration testbench
//----------------------------------------------------------------------------
// This demonstration testbench instantiates the example design for the 
// XADC wizard. Input clock is generated in this testbench.
//----------------------------------------------------------------------------
// Bipolar signals are applied with Vn = 0

`timescale 1ps/1ps
`define wait_eoc @(negedge EOC_TB)
`define wait_eoc_p @(posedge EOC_TB)
`define wait_eos @(posedge EOS_TB)
`define wait_rvalid @(posedge s_axi_rvalid)
`define wait_rvalid_n @(negedge s_axi_rvalid)
`define wait_done @(posedge BUSY_TB)
`define wait_busy @(negedge BUSY_TB)
`define wait_m_tvalid @(posedge m_axis_tvalid)
`define wait_m_tvalid_n @(negedge m_axis_tvalid)
module xadc_wiz_0_tb ();

  // timescale is 1ps/1ps
  localparam  ONE_NS      = 1000;
   integer    count       = 0   ;
  localparam time PER1    = 10*ONE_NS;
  // Declare the input clock signals
  reg         s_axi_aclk     = 0;
  reg         s_axi_aclk_tb  = 0;

reg s_axi_aresetn;
reg [10:0] s_axi_awaddr;
reg [31:0] s_axi_wdata;
reg [3:0] s_axi_wstrb;
reg s_axi_wvalid;
reg s_axi_awvalid;
reg s_axi_bready = 1'b1;
reg [10:0] s_axi_araddr;
reg s_axi_arvalid;
reg s_axi_rready = 1'b1;
wire s_axi_awready;
wire s_axi_wready;
wire [1:0] s_axi_bresp;
wire s_axi_bvalid;
wire s_axi_arready;
wire [31:0] s_axi_rdata;
wire [1:0] s_axi_rresp;
wire s_axi_rvalid;
wire ip2intc_irpt;
  wire ALARM_OUT_TB;
  wire VCCAUX_ALARM_TB;
  wire VCCINT_ALARM_TB;
  wire USER_TEMP_ALARM_TB;
  wire BUSY_TB;
  wire [4:0] CHANNEL_TB;
  wire OT_TB;
  wire EOC_TB;
  wire EOS_TB;

// Input clock generation

always begin
  s_axi_aclk = #(PER1/2) ~s_axi_aclk;
end

always begin
  s_axi_aclk_tb = #10 s_axi_aclk;
end

  localparam time PER_A4S = 10*ONE_NS; // 10ns
  reg         s_axis_aclk     = 0;
  reg         s_axis_aclk_tb  = 0;
  reg         m_axis_tready   = 0;
  wire [15:0] m_axis_tdata;
  wire m_axis_tvalid;
  wire [4:0] m_axis_tid;
  wire [11:0] TEMP_OUT_TB;
always begin
  s_axis_aclk = #(PER_A4S/2) ~s_axis_aclk;
end

always begin
  s_axis_aclk_tb = #10 s_axis_aclk;
end


always begin
  #(256*32*1040.0*ONE_NS);
  $display ("ERROR: Test is Exiting");
  $finish;
end


always @(posedge s_axi_aclk or negedge s_axi_aresetn)
begin
  if (!s_axi_aresetn) begin
   s_axi_awaddr = 11'b00000000000; //{5'b00, CHANNEL_TB};
   s_axi_araddr = 11'b00000000000; //{5'b00, CHANNEL_TB};
   s_axi_wdata = 32'h00000000;
   s_axi_wstrb = 4'h0;
   s_axi_arvalid = 1'b0; 
   s_axi_awvalid = 1'b0;
   s_axi_wvalid = 1'b0;
  end
  else begin
   //s_axi_awaddr = {4'b0100, CHANNEL_TB, 2'b00};
   //s_axi_araddr = {4'b0100, CHANNEL_TB, 2'b00};
    s_axi_awaddr = 'b01001001100;
   s_axi_araddr = 'b01001001100;
   s_axi_wdata = 32'h0000b5ed;
   s_axi_wstrb = 4'hF;
   s_axi_awvalid = 1'b0; 
   s_axi_wvalid = 1'b0;
   if (EOC_TB == 1'b1)  
     s_axi_arvalid <= 1'b1;
   else if (s_axi_arready == 1'b1) 
     s_axi_arvalid <= 1'b0;
  end
end
initial
begin
  $display ("Timing checks are not valid");
  assign s_axi_aresetn = 1'b0;
  assign m_axis_tready = 1'b0;
  #(10*PER1);
  #(100*ONE_NS);
  assign s_axi_aresetn = 1'b1;
  #(2*PER1);
  assign m_axis_tready = 1'b1;
  #(10*PER1);
  $display ("Timing checks are valid");
    $display("------------------------------------------------");
    $display (" AXI4STREAM is Enabled: Check Enabled Channels");
   `wait_eos;
   `wait_m_tvalid;	
   `wait_m_tvalid_n;	
  $display ("Test Completed Successfully");
  $finish;
  #(256*32*1040.0*ONE_NS);
end

always begin
  #(256*32*1040.0*ONE_NS);
  $display ("ERROR: Test is Exiting");
  $finish;
end

// Start of the testbench


   always @(posedge s_axi_aclk)
    begin
     if (EOC_TB == 1) 
      begin
       $display ("EOC is asserted.") ;
        count = count + 1 ;
     end
  end

  always @(posedge s_axi_aclk)
   begin
     if (s_axi_rvalid == 1)
      begin
       $display ("RVALID is asserted. Valid data is on the RDATA bus") ;
    if (count == 4) 
     begin
      $display("Test Completed Successfully");
      $finish;
    end
   end 
  end 

///////////////////////////////////////////////////////////////////////
///// Channel Sequencer Setup - Random selection of any no. of channels
///////////////////////////////////////////////////////////////////////
////////////////// Non-averaged sequencer channels ////////////////////
///////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////
////////////////// First round through the sequence ///////////////////
///////////////////////////////////////////////////////////////////////
   always @(posedge s_axi_aclk)
    begin
     if (CHANNEL_TB == 5'b00 && s_axi_rvalid == 1'b1)
      begin  
       if( (s_axi_rdata[15:4] <= (2732+4)) &&  (s_axi_rdata[15:4] >= (2732-4)) ) begin
       $display ("Monitored temperature is within the expected range") ;
  end
  else begin
    $display ("Monitored temperature is out of expected range") ;
    $display ("ERROR !!!") ;
    $display("SYSTEM_CLOCK_COUNTER : %0d\n",$time/PER1);
  //  $finish;
  end
if( s_axi_rdata[15:4] > (2910) ) begin
  if(USER_TEMP_ALARM_TB == 1'b1) begin
    $display ("USER TEMP. ALARM is asserted.") ;
  end
  else begin	
    $display ("USER TEMP. ALARM is not asserted.") ;
    $display ("ERROR !!!") ;
    $display("SYSTEM_CLOCK_COUNTER : %0d\n",$time/PER1);
   // $finish;
   end
  end
 end
end
   always @(posedge s_axi_aclk)
    begin
     if (CHANNEL_TB == 5'b11 && s_axi_rvalid == 1'b1)
      begin
      if( s_axi_rdata[15:4] >= (2048 - 4) && s_axi_rdata[15:4] <= (2048 + 4)) begin
      $display ("Monitored Vp/Vn is written correctly in the Vp/Vn Status register") ;
  end
  else begin
    $display ("Monitored Vp/Vn is not written correctly in the Vp/Vn Status register") ;
    $display ("ERROR !!!") ;
    $display("SYSTEM_CLOCK_COUNTER : %0d\n",$time/PER1);
   // $finish;
  end
 end
end
   always @(posedge s_axi_aclk)
    begin
    if (s_axi_rvalid ==1 && CHANNEL_TB == 19)
     begin
     if( (s_axi_rdata[15:4] >= (2048-4)) && (s_axi_rdata[15:4] <= (2048+4))) begin  
    $display ("Monitored Vauxp[3]/Vauxn[3] is written correctly in the Vauxp[3]/Vauxn[3] Status register") ;
  end
  else begin
    $display ("Monitored Vauxp[3]/Vauxn[3] is not written correctly in the Vauxp[3]/Vauxn[3] Status register") ;
    $display ("ERROR !!!") ;
    $display("SYSTEM_CLOCK_COUNTER : %0d\n",$time/PER1);
    $finish;
  end
 end
end



always @(posedge m_axis_tvalid)
  begin
    if (m_axis_tvalid == 1 ) begin
    if (m_axis_tid == 0 ) begin
      $display ("TVALID is asserted. Valid data is on the STREAM bus");
      $display("Temprature Channel is enabled.Proceed to data check");
      if( (m_axis_tdata[15:4] <= (2732+4)) &&  (m_axis_tdata[15:4] >= (2732-4)) ) begin
        $display ("Monitored temperature through AXI-Stream is within the expected range") ;
      end
      else begin
       $display ("Monitored temperature is out of expected range") ;
       $display ("ERROR !!!") ;
       $display("SYSTEM_CLOCK_COUNTER : %0d\n",$time/PER_A4S);
       $finish;
      end
    end
    if (m_axis_tid == 1 ) begin
      $display ("TVALID is asserted. Valid data is on the STREAM bus");
      $display("VCCINT Channel is enabled.Proceed to data check");
      if( m_axis_tdata[15:4] == (1392)  ) begin
        $display ("Monitored VCCINT through AXI-Stream matched with the expected vccint") ;
      end
      else begin
        $display ("Monitored VCCINT is not matched with expected vccint") ;
        $display ("ERROR !!!") ;
        $display("SYSTEM_CLOCK_COUNTER : %0d\n",$time/PER_A4S);
        $finish;
      end
    end
    if (m_axis_tid == 2 ) begin
      $display ("TVALID is asserted. Valid data is on the STREAM bus");
      $display("VCCAUX Channel is enabled.Proceed to data check");
      if( m_axis_tdata[15:4] == (2457)  ) begin
        $display ("Monitored VCCAUX through AXI-Stream matched with the expected vccaux") ;
      end
      else begin
        $display ("Monitored VCCAUX is not matched with expected vccaux") ;
        $display ("ERROR !!!") ;
        $display("SYSTEM_CLOCK_COUNTER : %0d\n",$time/PER_A4S);
        $finish;
      end
    end
   if (m_axis_tid == 3 ) begin
     $display ("TVALID is asserted. Valid data is on the STREAM bus");
     $display("VP/VN Channel is enabled.Proceed to data check");
     if( m_axis_tdata[15:4] >= (2048 -4 ) && m_axis_tdata[15:4] <= (2048 + 4)  ) begin
       $display ("Monitored VP/VN through AXI-Stream matched with the expected vp/vn") ;
     end
     else begin
       $display ("Monitored VP/VN is not matched with expected vp/vn") ;
       $display ("ERROR !!!") ;
       $display("SYSTEM_CLOCK_COUNTER : %0d\n",$time/PER_A4S);
       $finish;
     end
   end
   if (m_axis_tid == 4 ) begin
     $display ("TVALID is asserted. Valid data is on the STREAM bus");
     $display("VREFP Channel is enabled.Proceed to data check");
     if( m_axis_tdata[15:4] == (12'b011010101010)  ) begin
       $display ("Monitored VREFP 2.5v through AXI-Stream matched with the expected vrefp") ;
     end
     else begin
       $display ("Monitored VREFP is not matched with expected vrefp") ;
       $display ("ERROR !!!") ;
       $display("SYSTEM_CLOCK_COUNTER : %0d\n",$time/PER_A4S);
       $finish;
     end
   end
   if (m_axis_tid == 5 ) begin
     $display ("TVALID is asserted. Valid data is on the STREAM bus");
     $display("VREFN Channel is enabled.Proceed to data check");
     if( m_axis_tdata[15:4] == 12'b000000000000 ) begin
       $display ("Monitored VREFN  0.0V through AXI-Stream matched with the expected vrefn") ;
     end
     else begin
       $display ("Monitored VREFN is not matched with expected vrefn") ;
       $display ("ERROR !!!") ;
       $display("SYSTEM_CLOCK_COUNTER : %0d\n",$time/PER_A4S);
       $finish;
     end
   end
   if (m_axis_tid == 6 ) begin
     $display ("TVALID is asserted. Valid data is on the STREAM bus");
     $display("VCCBRAM Channel is enabled.Proceed to data check");
     if( m_axis_tdata[15:4] == (1392)  ) begin
       $display ("Monitored VCCBRAM through AXI-Stream matched with the expected vccbram") ;
     end
     else begin
       $display ("Monitored VCCBRAM is not matched with expected vccbram") ;
       $display ("ERROR !!!") ;
       $display("SYSTEM_CLOCK_COUNTER : %0d\n",$time/PER_A4S);
       $finish;
     end
   end

   if(m_axis_tid ==  16 ) begin
     $display ("TVALID is asserted. Valid data is on the STREAM bus");
     $display ("Vauxp[0]/Vauxn[0]. is enabled/Proceed to data check");
     if( (m_axis_tdata[15:4] >= (2048-4)) && (m_axis_tdata[15:4] <= (2048+4))) begin  
       $display ("Monitored Vauxp[0]/Vauxn[0] through AXI-Stream matched correctly with the Vauxp[0]/Vauxn[0] value") ;
     end
     else begin
       $display ("Monitored Vauxp[0]/Vauxn[0] is not matched with the Vauxp[0]/Vauxn[0] value") ;
       $display ("ERROR !!!") ;
       $display("SYSTEM_CLOCK_COUNTER : %0d\n",$time/PER_A4S);
       $finish;
     end
   end

   if(m_axis_tid ==  17 ) begin
     $display ("TVALID is asserted. Valid data is on the STREAM bus");
     $display ("Vauxp[1]/Vauxn[1]. is enabled/Proceed to data check");
     if( (m_axis_tdata[15:4] >= (2048-4)) && (m_axis_tdata[15:4] <= (2048+4))) begin  
       $display ("Monitored Vauxp[1]/Vauxn[1] through AXI-Stream matched correctly with the Vauxp[1]/Vauxn[1] value") ;
     end
     else begin
       $display ("Monitored Vauxp[1]/Vauxn[1] is not matched with the Vauxp[1]/Vauxn[1] value") ;
       $display ("ERROR !!!") ;
       $display("SYSTEM_CLOCK_COUNTER : %0d\n",$time/PER_A4S);
       $finish;
     end
   end

   if(m_axis_tid ==  18 ) begin
     $display ("TVALID is asserted. Valid data is on the STREAM bus");
     $display ("Vauxp[2]/Vauxn[2]. is enabled/Proceed to data check");
     if( (m_axis_tdata[15:4] >= (2048-4)) && (m_axis_tdata[15:4] <= (2048+4))) begin  
       $display ("Monitored Vauxp[2]/Vauxn[2] through AXI-Stream matched correctly with the Vauxp[2]/Vauxn[2] value") ;
     end
     else begin
       $display ("Monitored Vauxp[2]/Vauxn[2] is not matched with the Vauxp[2]/Vauxn[2] value") ;
       $display ("ERROR !!!") ;
       $display("SYSTEM_CLOCK_COUNTER : %0d\n",$time/PER_A4S);
       $finish;
     end
   end

   if(m_axis_tid ==  19 ) begin
     $display ("TVALID is asserted. Valid data is on the STREAM bus");
     $display ("Vauxp[3]/Vauxn[3]. is enabled/Proceed to data check");
     if( (m_axis_tdata[15:4] >= (2048-4)) && (m_axis_tdata[15:4] <= (2048+4))) begin  
       $display ("Monitored Vauxp[3]/Vauxn[3] through AXI-Stream matched correctly with the Vauxp[3]/Vauxn[3] value") ;
     end
     else begin
       $display ("Monitored Vauxp[3]/Vauxn[3] is not matched with the Vauxp[3]/Vauxn[3] value") ;
       $display ("ERROR !!!") ;
       $display("SYSTEM_CLOCK_COUNTER : %0d\n",$time/PER_A4S);
       $finish;
     end
   end

   if(m_axis_tid ==  20 ) begin
     $display ("TVALID is asserted. Valid data is on the STREAM bus");
     $display ("Vauxp[4]/Vauxn[4]. is enabled/Proceed to data check");
     if( (m_axis_tdata[15:4] >= (2048-4)) && (m_axis_tdata[15:4] <= (2048+4))) begin  
       $display ("Monitored Vauxp[4]/Vauxn[4] through AXI-Stream matched correctly with the Vauxp[4]/Vauxn[4] value") ;
     end
     else begin
       $display ("Monitored Vauxp[4]/Vauxn[4] is not matched with the Vauxp[4]/Vauxn[4] value") ;
       $display ("ERROR !!!") ;
       $display("SYSTEM_CLOCK_COUNTER : %0d\n",$time/PER_A4S);
       $finish;
     end
   end

   if(m_axis_tid ==  21 ) begin
     $display ("TVALID is asserted. Valid data is on the STREAM bus");
     $display ("Vauxp[5]/Vauxn[5]. is enabled/Proceed to data check");
     if( (m_axis_tdata[15:4] >= (2048-4)) && (m_axis_tdata[15:4] <= (2048+4))) begin  
       $display ("Monitored Vauxp[5]/Vauxn[5] through AXI-Stream matched correctly with the Vauxp[5]/Vauxn[5] value") ;
     end
     else begin
       $display ("Monitored Vauxp[5]/Vauxn[5] is not matched with the Vauxp[5]/Vauxn[5] value") ;
       $display ("ERROR !!!") ;
       $display("SYSTEM_CLOCK_COUNTER : %0d\n",$time/PER_A4S);
       $finish;
     end
   end

   if(m_axis_tid ==  22 ) begin
     $display ("TVALID is asserted. Valid data is on the STREAM bus");
     $display ("Vauxp[6]/Vauxn[6]. is enabled/Proceed to data check");
     if( (m_axis_tdata[15:4] >= (2048-4)) && (m_axis_tdata[15:4] <= (2048+4))) begin  
       $display ("Monitored Vauxp[6]/Vauxn[6] through AXI-Stream matched correctly with the Vauxp[6]/Vauxn[6] value") ;
     end
     else begin
       $display ("Monitored Vauxp[6]/Vauxn[6] is not matched with the Vauxp[6]/Vauxn[6] value") ;
       $display ("ERROR !!!") ;
       $display("SYSTEM_CLOCK_COUNTER : %0d\n",$time/PER_A4S);
       $finish;
     end
   end

   if(m_axis_tid ==  23 ) begin
     $display ("TVALID is asserted. Valid data is on the STREAM bus");
     $display ("Vauxp[7]/Vauxn[7]. is enabled/Proceed to data check");
     if( (m_axis_tdata[15:4] >= (2048-4)) && (m_axis_tdata[15:4] <= (2048+4))) begin  
       $display ("Monitored Vauxp[7]/Vauxn[7] through AXI-Stream matched correctly with the Vauxp[7]/Vauxn[7] value") ;
     end
     else begin
       $display ("Monitored Vauxp[7]/Vauxn[7] is not matched with the Vauxp[7]/Vauxn[7] value") ;
       $display ("ERROR !!!") ;
       $display("SYSTEM_CLOCK_COUNTER : %0d\n",$time/PER_A4S);
       $finish;
     end
   end

   if(m_axis_tid ==  24 ) begin
     $display ("TVALID is asserted. Valid data is on the STREAM bus");
     $display ("Vauxp[8]/Vauxn[8]. is enabled/Proceed to data check");
     if( (m_axis_tdata[15:4] >= (2048-4)) && (m_axis_tdata[15:4] <= (2048+4))) begin  
       $display ("Monitored Vauxp[8]/Vauxn[8] through AXI-Stream matched correctly with the Vauxp[8]/Vauxn[8] value") ;
     end
     else begin
       $display ("Monitored Vauxp[8]/Vauxn[8] is not matched with the Vauxp[8]/Vauxn[8] value") ;
       $display ("ERROR !!!") ;
       $display("SYSTEM_CLOCK_COUNTER : %0d\n",$time/PER_A4S);
       $finish;
     end
   end

   if(m_axis_tid ==  25 ) begin
     $display ("TVALID is asserted. Valid data is on the STREAM bus");
     $display ("Vauxp[9]/Vauxn[9]. is enabled/Proceed to data check");
     if( (m_axis_tdata[15:4] >= (2048-4)) && (m_axis_tdata[15:4] <= (2048+4))) begin  
       $display ("Monitored Vauxp[9]/Vauxn[9] through AXI-Stream matched correctly with the Vauxp[9]/Vauxn[9] value") ;
     end
     else begin
       $display ("Monitored Vauxp[9]/Vauxn[9] is not matched with the Vauxp[9]/Vauxn[9] value") ;
       $display ("ERROR !!!") ;
       $display("SYSTEM_CLOCK_COUNTER : %0d\n",$time/PER_A4S);
       $finish;
     end
   end

   if(m_axis_tid ==  26 ) begin
     $display ("TVALID is asserted. Valid data is on the STREAM bus");
     $display ("Vauxp[10]/Vauxn[10]. is enabled/Proceed to data check");
     if( (m_axis_tdata[15:4] >= (2048-4)) && (m_axis_tdata[15:4] <= (2048+4))) begin  
       $display ("Monitored Vauxp[10]/Vauxn[10] through AXI-Stream matched correctly with the Vauxp[10]/Vauxn[10] value") ;
     end
     else begin
       $display ("Monitored Vauxp[10]/Vauxn[10] is not matched with the Vauxp[10]/Vauxn[10] value") ;
       $display ("ERROR !!!") ;
       $display("SYSTEM_CLOCK_COUNTER : %0d\n",$time/PER_A4S);
       $finish;
     end
   end

   if(m_axis_tid ==  27 ) begin
     $display ("TVALID is asserted. Valid data is on the STREAM bus");
     $display ("Vauxp[11]/Vauxn[11]. is enabled/Proceed to data check");
     if( (m_axis_tdata[15:4] >= (2048-4)) && (m_axis_tdata[15:4] <= (2048+4))) begin  
       $display ("Monitored Vauxp[11]/Vauxn[11] through AXI-Stream matched correctly with the Vauxp[11]/Vauxn[11] value") ;
     end
     else begin
       $display ("Monitored Vauxp[11]/Vauxn[11] is not matched with the Vauxp[11]/Vauxn[11] value") ;
       $display ("ERROR !!!") ;
       $display("SYSTEM_CLOCK_COUNTER : %0d\n",$time/PER_A4S);
       $finish;
     end
   end

   if(m_axis_tid ==  28 ) begin
     $display ("TVALID is asserted. Valid data is on the STREAM bus");
     $display ("Vauxp[12]/Vauxn[12]. is enabled/Proceed to data check");
     if( (m_axis_tdata[15:4] >= (2048-4)) && (m_axis_tdata[15:4] <= (2048+4))) begin  
       $display ("Monitored Vauxp[12]/Vauxn[12] through AXI-Stream matched correctly with the Vauxp[12]/Vauxn[12] value") ;
     end
     else begin
       $display ("Monitored Vauxp[12]/Vauxn[12] is not matched with the Vauxp[12]/Vauxn[12] value") ;
       $display ("ERROR !!!") ;
       $display("SYSTEM_CLOCK_COUNTER : %0d\n",$time/PER_A4S);
       $finish;
     end
   end

   if(m_axis_tid ==  29 ) begin
     $display ("TVALID is asserted. Valid data is on the STREAM bus");
     $display ("Vauxp[13]/Vauxn[13]. is enabled/Proceed to data check");
     if( (m_axis_tdata[15:4] >= (2048-4)) && (m_axis_tdata[15:4] <= (2048+4))) begin  
       $display ("Monitored Vauxp[13]/Vauxn[13] through AXI-Stream matched correctly with the Vauxp[13]/Vauxn[13] value") ;
     end
     else begin
       $display ("Monitored Vauxp[13]/Vauxn[13] is not matched with the Vauxp[13]/Vauxn[13] value") ;
       $display ("ERROR !!!") ;
       $display("SYSTEM_CLOCK_COUNTER : %0d\n",$time/PER_A4S);
       $finish;
     end
   end

   if(m_axis_tid ==  30 ) begin
     $display ("TVALID is asserted. Valid data is on the STREAM bus");
     $display ("Vauxp[14]/Vauxn[14]. is enabled/Proceed to data check");
     if( (m_axis_tdata[15:4] >= (2048-4)) && (m_axis_tdata[15:4] <= (2048+4))) begin  
       $display ("Monitored Vauxp[14]/Vauxn[14] through AXI-Stream matched correctly with the Vauxp[14]/Vauxn[14] value") ;
     end
     else begin
       $display ("Monitored Vauxp[14]/Vauxn[14] is not matched with the Vauxp[14]/Vauxn[14] value") ;
       $display ("ERROR !!!") ;
       $display("SYSTEM_CLOCK_COUNTER : %0d\n",$time/PER_A4S);
       $finish;
     end
   end

   if(m_axis_tid ==  31 ) begin
     $display ("TVALID is asserted. Valid data is on the STREAM bus");
     $display ("Vauxp[15]/Vauxn[15]. is enabled/Proceed to data check");
     if( (m_axis_tdata[15:4] >= (2048-4)) && (m_axis_tdata[15:4] <= (2048+4))) begin  
       $display ("Monitored Vauxp[15]/Vauxn[15] through AXI-Stream matched correctly with the Vauxp[15]/Vauxn[15] value") ;
     end
     else begin
       $display ("Monitored Vauxp[15]/Vauxn[15] is not matched with the Vauxp[15]/Vauxn[15] value") ;
       $display ("ERROR !!!") ;
       $display("SYSTEM_CLOCK_COUNTER : %0d\n",$time/PER_A4S);
       $finish;
     end
   end
   end
   end



  // Instantiation of the example design
  //---------------------------------------------------------
  xadc_wiz_0_exdes dut (
     .s_axi_aclk      (s_axi_aclk_tb),                    
     .s_axi_aresetn   (s_axi_aresetn),                    
     .s_axi_awaddr    (s_axi_awaddr),                    
     .s_axi_awvalid   (s_axi_awvalid),                    
     .s_axi_awready   (s_axi_awready),                    
     .s_axi_wdata     (s_axi_wdata),                    
     .s_axi_wstrb     (s_axi_wstrb),                    
     .s_axi_wvalid    (s_axi_wvalid),                    
     .s_axi_wready    (s_axi_wready),                    
     .s_axi_bresp     (s_axi_bresp),                    
     .s_axi_bvalid    (s_axi_bvalid),                    
     .s_axi_bready    (s_axi_bready),                    
     .s_axi_araddr    (s_axi_araddr),                    
     .s_axi_arvalid   (s_axi_arvalid),                    
     .s_axi_arready   (s_axi_arready),                    
     .s_axi_rdata     (s_axi_rdata),                    
     .s_axi_rresp     (s_axi_rresp),                    
     .s_axi_rvalid    (s_axi_rvalid),                    
     .s_axi_rready    (s_axi_rready),                    
     .ip2intc_irpt    (ip2intc_irpt),  
     .s_axis_aclk      (s_axis_aclk_tb),
              
     .m_axis_tdata     (m_axis_tdata),
     .m_axis_tvalid    (m_axis_tvalid),
     .m_axis_tid       (m_axis_tid),
     .m_axis_tready    (m_axis_tready),
     .vauxp3(1'b0),
     .vauxn3(1'b0),
     .vccaux_alarm_out(VCCAUX_ALARM_TB),
     .vccint_alarm_out(VCCINT_ALARM_TB),
     .user_temp_alarm_out(USER_TEMP_ALARM_TB),
     .busy_out(BUSY_TB),
     .channel_out(CHANNEL_TB[4:0]),
     .eoc_out(EOC_TB),
     .eos_out(EOS_TB),
     .ot_out(OT_TB),
     .alarm_out(ALARM_OUT_TB),
     .temp_out(TEMP_OUT_TB),
     .vp_in(1'b0),
     .vn_in(1'b0)

         );

endmodule




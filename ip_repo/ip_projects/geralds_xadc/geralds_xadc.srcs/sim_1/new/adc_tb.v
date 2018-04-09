`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/10/2018 10:37:59 PM
// Design Name: 
// Module Name: adc_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module adc_tb();
   localparam T=10;
   reg clk;
   reg vauxn3;
   reg vauxp3;
   
   always begin
       clk = 1'b1;
       #(T/2);
       clk = 1'b0;
       #(T/2);
   end
   
   always begin
        vauxn3 = 1'b1;
        vauxp3 = 1'b0;
        #45;
        vauxn3 = 1'b0;
        vauxp3 = 1'b0;
        #45;
   end
        

   wire enable;  
   wire ready;
   wire [15:0] xadc_raw_out;
   wire [11:0] data;
   assign data = xadc_raw_out[15:4] + 12'b1000_0000_0000; // convert from signed to unsigned
   wire [4:0] ch;
   reg [6:0] addr = 6'h16;

  //xadc instantiation connect the eoc_out .den_in to get continuous conversion
   xadc_axi_to_audio_out_wrapper xadc
   (.clk_in1(clk),
       .reset(1'b1),
       .vauxn3(vauxn3),
       .vauxp3(1'b0)
    );


endmodule

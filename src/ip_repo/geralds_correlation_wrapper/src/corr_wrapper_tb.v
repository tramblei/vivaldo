`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/16/2018 07:30:01 PM
// Design Name: 
// Module Name: corr_wrapper_tb
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


module corr_wrapper_tb(

    );
    
    reg clk;
    reg reset;
    reg [15:0] data1;
    reg [15:0] data2;
    reg valid1;
    reg valid2;
    
    wire ready1;
    wire ready2;
    reg signal_t_last;
    
    corr_wrapper_wrapper dut (
   .aresetn(reset),
   .sclk(clk),
   .sig1_axis_tdata(data1),
   .sig1_axis_tready(ready1),
    .sig1_axis_tvalid(valid1),
    .sig2_axis_tlast(signal_t_last),
    .sig2_axis_tdata(data2),
    
    .sig2_axis_tready(ready2),
    .sig2_axis_tvalid(valid2)

    );
    always #5 clk = ~clk;
    
    initial 
    begin
        clk = 0;
        reset = 0;
        signal_t_last = 1'b0;
        #20
        reset = 1;
        valid2 = 1;
        data1 = 'hFFFF;
        data2 = 'h0000;
        #10
        valid1 = 1;
        #5000
        signal_t_last = 1'b1;
        #10
        signal_t_last = 1'b0;
        #100 // 10 cycles
        valid2 = 0;
        # 30
        valid2 = 1;
        #10120 // 1012 cycles
        data2 = 'h0001;
        #20
        valid1 = 0;
        valid2 = 0;
        #100000
        reset = 1;       
    end
endmodule

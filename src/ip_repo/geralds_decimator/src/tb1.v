`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/11/2018 02:40:33 PM
// Design Name: 
// Module Name: tb1
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


module tb1(

    );
    
    reg clk;
    reg reset;
    reg[31:0] counter;
    
    // we want to see
    wire out_valid;
    wire [31:0]out_data;
    
    wire t_last;
    
    always
    begin
        #5
        clk = ~clk;
    end
    
    always @(posedge clk)
    begin
        if (reset == 0)
        begin
            counter <= 0;
        end
        else
        begin
            counter <= counter + 1;
        end
    end
    
    
    
    initial
    begin
        reset = 0;
        clk = 0;
        #100
        
        
        reset = 1;
        #10000
        reset = 0;
    end
    
	geralds_decimator_v1_0  #
    (
        .CLK_TO_TARGET_FRQ_RATIO(15),
        .FFT_SIZE(4)
    ) dut
    (
        .signal_in_aclk(clk),
        .signal_in_aresetn(reset),
        .signal_in_tdata(counter),
        .signal_in_tvalid(1'b1),
        .signal_out_tvalid(out_valid),
        .signal_out_tdata(out_data),
        .signal_out_tready(1'b1),
        .signal_out_tlast(t_last)
        
    );
    
endmodule

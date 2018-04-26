`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2018 09:22:46 PM
// Design Name: 
// Module Name: geralds_metronome_test
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


module geralds_metronome_test(

    );
    reg clk;
    reg aresetn;
    reg[31:0] trans_per_beat;
    wire[2:0] click;
    geralds_metronome dut (
        .clk(clk),
        .aresetn(aresetn),
        .trans_per_beat(trans_per_beat),
        .click(click)
        );
    
    always #5
    begin
        clk = ~clk;
    end
    
    initial
    begin
        clk = 0;
        aresetn = 0;
        // 600 BPM;
        trans_per_beat = 31'h989680;
        
        #40
        aresetn = 1;
    end
endmodule

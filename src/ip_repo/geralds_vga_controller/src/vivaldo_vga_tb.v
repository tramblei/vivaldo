`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/07/2018 11:17:31 PM
// Design Name: 
// Module Name: vivaldo_vga_tb
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


module vivaldo_vga_tb(

    );
    reg[3:0] red_in;
    reg[3:0] green_in;
    reg[3:0] blue_in;

    reg clk;
    reg aresetn;
    
    wire[3:0] red_out;
    wire[3:0] green_out;
    wire[3:0] blue_out;
    
    wire horizontal_sync_out;
    wire vertical_sync_out;
    
    vga_controller dut
    (
        .red_in(red_in),
        .green_in(green_in),
        .blue_in(blue_in),
        .clk(clk),
        .aresetn(aresetn),
        .red_out(red_out),
        .green_out(green_out),
        .blue_out(blue_out),
        .horizontal_sync_out(horizontal_sync_out),
        .vertical_sync_out(vertical_sync_out)
    );

    always
    begin
        clk = ~clk;
        #10;
    end

    initial
    begin
        clk = 0;
        // send the data over - a dirac
        red_in = 4'b1111;
        green_in = 4'b1111;
        blue_in = 4'b1111;

        aresetn = 1'b0;
        
        // Still within horizontal porch
        #40
        aresetn = 1'b1;
        
        red_in = 4'b0100;
        green_in = 4'b0110;
        blue_in = 4'b0111;
        
        // Still within vertical porch
        #20
        red_in = 4'b0111;
        green_in = 4'b0100;
        blue_in = 4'b0110;
        
        // No longer in vertical or horizontal porch
        #1000000
        aresetn = 1'b0;
    end
endmodule

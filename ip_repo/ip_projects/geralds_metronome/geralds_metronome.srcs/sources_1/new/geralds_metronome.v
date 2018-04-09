`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2018 08:46:10 PM
// Design Name: 
// Module Name: geralds_metronome
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


module geralds_metronome # (
    parameter integer CLOCK_FREQ = 100000000
)
(
    input wire clk,
    input wire aresetn,
    input wire[31:0] trans_per_beat,
    output wire[2:0] click
    );
    function integer clog2;
        input integer value;
        begin
            value = value - 1;
            for (clog2 = 0; value > 0; clog2 = clog2 + 1)
            begin
                value = value >> 1;
            end
        end
    endfunction
    localparam COUNT_SIZE = clog2(CLOCK_FREQ);
    // Show every beat, half beat, third beat, and quarter beat.
    reg[2:0] new_beat;
    // Assume the lowest BPM is 30 and the highest is around 300.
    // We need to be able to count 2 full seconds (i.e. 2 times the
    // the clock frequency) to reach 30 BPM.
    reg[COUNT_SIZE:0] count;
    always @(posedge clk or negedge aresetn)
    begin
        if (aresetn == 0)
        begin
            new_beat <= 0;
            count <= 0;
        end
        else
        begin
            if (count == 0)
            begin
                new_beat <= 3'b111;
                count <= count + 1;
            end
            if (count == trans_per_beat)
            begin
                count <= 0;
                new_beat <= 3'b111;
            end
            else if (count == trans_per_beat >> 3)
            begin
                count <= count + 1;
                new_beat <= 3'b000;
            end
            else if (count == trans_per_beat >> 1)
            begin
                count <= count + 1;
                new_beat <= 3'b011;
            end
            else if (count == (trans_per_beat >> 1) + (trans_per_beat >> 3))
            begin
                count <= count + 1;
                new_beat <= 3'b000;
            end
            else if (count == (trans_per_beat >> 2) || count == (trans_per_beat >> 1) + (trans_per_beat >> 2))
            begin
                count <= count + 1;
                new_beat <= 3'b0001;
            end
            else if (count == (trans_per_beat >> 2) + (trans_per_beat >> 3) || count == (trans_per_beat >> 1) + (trans_per_beat >> 2) + (trans_per_beat >> 3))
            begin
                count <= count + 1;
                new_beat <= 3'b000;
            end
            else
            begin
                count <= count + 1;
            end
        end
    end

    assign click = new_beat;
endmodule

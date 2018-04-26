`timescale 1 ns / 1 ps

module vga_controller #
(
    parameter integer NUM_RED_BITS = 4,
    parameter integer NUM_GREEN_BITS = 4,
    parameter integer NUM_BLUE_BITS = 4,
    parameter integer HORIZONTAL_WIDTH = 1280,
    parameter integer VERTICAL_WIDTH = 1024,
    parameter integer H_F_PORCH_CYCLES = 16,
    parameter integer H_B_PORCH_CYCLES = 48,
    parameter integer H_SYNC_CYCLES = 96,
    parameter integer V_F_PORCH_CYCLES = 10,
    parameter integer V_B_PORCH_CYCLES = 33,
    parameter integer V_SYNC_LINES = 3
)
(
    input wire[NUM_RED_BITS-1:0] red_in,
    input wire[NUM_GREEN_BITS-1:0] green_in,
    input wire[NUM_BLUE_BITS-1:0] blue_in,
    
    input wire clk,
    input wire aresetn,
    
    output wire[NUM_RED_BITS-1:0] red_out,
    output wire[NUM_GREEN_BITS-1:0] green_out,
    output wire[NUM_BLUE_BITS-1:0] blue_out,
    
    output wire horizontal_sync_out,
    output wire vertical_sync_out
);
    function integer clog2; 
       input integer value; 
       begin 
         value = value-1; 
         for (clog2=0; value>0; clog2=clog2+1) 
           value = value>>1; 
       end 
    endfunction

    localparam HORIZONTAL_BITS = clog2(HORIZONTAL_WIDTH);
    localparam VERTICAL_BITS = clog2(VERTICAL_WIDTH);
    localparam VERTICAL_LINE_HEIGHT = 100;
    localparam VERTICAL_LINE_JUMP = 50;
    /*localparam SQUARE_H_START = 460;
    localparam SQUARE_V_START = 256;
    localparam MAX_DISP_WIDTH = 640;
    localparam MAX_DISP_HEIGHT = 512;*/
    
    reg[VERTICAL_BITS-1:0] vertical_line_top;
    reg[HORIZONTAL_BITS-1:0] horizontal_counter;
    reg[VERTICAL_BITS-1:0] vertical_counter;
    reg[HORIZONTAL_BITS-1:0] line_count;

    reg[NUM_RED_BITS-1:0] red;
    reg[NUM_GREEN_BITS-1:0] green;
    reg[NUM_BLUE_BITS-1:0] blue;

    reg h_sync;
    reg v_sync;

    reg valid;
    reg[18:0] count;
    always @(posedge clk or negedge aresetn)
    begin
        if (aresetn == 0)
        begin
            red <= 0;
            green <=0;
            blue <= 0;
            horizontal_counter <= 0;
            vertical_counter <= 0;
            valid <= 0;
            h_sync <= 0;
            v_sync <= 0;
            count <= 0;
            line_count <= H_B_PORCH_CYCLES + H_SYNC_CYCLES;
            vertical_line_top <= V_B_PORCH_CYCLES + V_SYNC_LINES;
        end
        else
        begin
            // If we reach the end of a line, inform the monitor and reset the counter.
            if (horizontal_counter == HORIZONTAL_WIDTH - 1)
            begin
                valid <= 0;
                h_sync <= 1;
                horizontal_counter <= 0;
                vertical_counter <= vertical_counter + 1;
            end
            else if (horizontal_counter < H_SYNC_CYCLES)
            begin
                h_sync <= 1;
                horizontal_counter <= horizontal_counter + 1;
                valid <= 0;
            end
            // If we are in the front or back porch, we reset.
            else if (horizontal_counter < H_B_PORCH_CYCLES ||
                     horizontal_counter > HORIZONTAL_WIDTH - H_F_PORCH_CYCLES/* ||
                     horizontal_counter > MAX_DISP_WIDTH + SQUARE_H_START || horizontal_counter < SQUARE_H_START*/)
            begin
                h_sync <= 0;
                horizontal_counter <= horizontal_counter + 1;
                valid <= 0;
            end
            else
            begin
                h_sync <= 0;
                horizontal_counter <= horizontal_counter + 1;
                if (vertical_counter < V_B_PORCH_CYCLES ||
                    vertical_counter > VERTICAL_WIDTH - V_F_PORCH_CYCLES/* ||
                    vertical_counter > MAX_DISP_HEIGHT + SQUARE_V_START || vertical_counter < SQUARE_V_START*/)
                begin
                    valid <= 0;
                end
                else
                begin
                    valid <= 1;
                end
            end
            // If we reach the end of a frame, inform the monitor and reset the counter.
            if (vertical_counter == VERTICAL_WIDTH - 1)
            begin
                v_sync <= 1;
                vertical_counter <= 0;
            end
            else if (vertical_counter < V_SYNC_LINES)
            begin
                v_sync <= 1;
            end
            else
            begin
                v_sync <= 0;
            end
            
            // White line scrolling across the screen at some rate.
            if (line_count == HORIZONTAL_WIDTH - H_F_PORCH_CYCLES)
            begin
                if (vertical_line_top + VERTICAL_LINE_HEIGHT + VERTICAL_LINE_JUMP >= VERTICAL_WIDTH)
                begin
                    vertical_line_top <= 0;
                end
                else
                begin
                    vertical_line_top <= vertical_line_top + VERTICAL_LINE_HEIGHT + VERTICAL_LINE_JUMP;
                end
                line_count <= H_B_PORCH_CYCLES + H_SYNC_CYCLES;
            end
            if (count == 0)
            begin
                if (line_count + H_F_PORCH_CYCLES + 1 == 0)
                begin
                    line_count <= H_B_PORCH_CYCLES + H_SYNC_CYCLES;
                end
                else
                begin
                    line_count <= line_count + 1;
                end
            end
            count <= count + 1;
            if (vertical_counter >= vertical_line_top && vertical_counter <= vertical_line_top + VERTICAL_LINE_HEIGHT && horizontal_counter == line_count)
            begin
                red <= 4'b1111;
                blue <= 4'b1111;
                green <= 4'b1111;
            end
            else
            begin
                red <= red_in;
                green <= green_in;
                blue <= blue_in;
            end
        end
    end
    
    // Assign output ports to the appropriate data if the data is valid.
    assign red_out = valid ? red : 0;
    assign green_out = valid ? green : 0;
    assign blue_out = valid ? blue : 0;
    // Assign sync outputs.
    assign horizontal_sync_out = h_sync;
    assign vertical_sync_out = v_sync;
endmodule
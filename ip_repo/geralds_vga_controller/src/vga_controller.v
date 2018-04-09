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
    parameter integer V_SYNC_LINES = 2
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

    reg[HORIZONTAL_BITS-1:0] horizontal_counter;
    reg[VERTICAL_BITS-1:0] vertical_counter;

    reg[NUM_RED_BITS-1:0] red;
    reg[NUM_GREEN_BITS-1:0] green;
    reg[NUM_BLUE_BITS-1:0] blue;

    reg h_sync;
    reg v_sync;

    reg valid;
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
                     horizontal_counter > HORIZONTAL_WIDTH - H_F_PORCH_CYCLES)
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
                    vertical_counter > VERTICAL_WIDTH - V_F_PORCH_CYCLES)
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
            
            red <= red_in;
            green <= green_in;
            blue <= blue_in;
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
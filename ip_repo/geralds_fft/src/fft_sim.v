`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/11/2018 12:22:20 AM
// Design Name: 
// Module Name: fft_sim
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


module fft_sim(

    );
    
    reg sys_clk;
    reg reset;
    reg [11:0] real_part;
    
    wire [63:0]result;
    reg result_ready;
    wire result_valid;
    reg data_last;
    wire data_ready;
    reg data_valid;
    wire m_fft_last;
    wire m_fft_valid;
    wire config_tready;
    wire event_overflow;
    wire m_axis_status_valid;
    wire [7:0] m_axis_status_data;
    reg [9:0] counter;
    wire      event_data_in_channel_halt;
    wire event_data_out_channel_halt;
    wire event_frame_started;
    wire event_status_channel_halt;
    wire event_tlast_missing;
    wire event_tlast_unexpected;
    design_1_wrapper dut(
        .M_AXIS_RESULT_tdata(result),
        .M_AXIS_RESULT_tlast(m_fft_last),
        .M_AXIS_RESULT_tready(result_ready),
        .M_AXIS_RESULT_tvalid(result_valid),
        .s_axis_data(real_part),
        .s_axis_last(data_last),
        .s_axis_ready(data_ready),
        .s_axis_tvalid(data_valid),
        .aclk(sys_clk),
        .aresetn(reset),
        .event_data_in_channel_halt(event_data_in_channel_halt),
        .event_data_out_channel_halt(event_data_out_channel_halt),
        .event_frame_started(event_frame_started),
        .event_status_channel_halt(event_status_channel_halt),
        .event_tlast_missing(event_tlast_missing),
        .event_tlast_unexpected(event_tlast_unexpected)
    );
      
    always
    begin
    sys_clk = 1'b0;
    #5 sys_clk =  1'b1;
    #5;
    end
    
    always @(posedge sys_clk or negedge reset)
        if(reset == 0) begin
            counter <= 0;
        end
        else begin
            if(data_valid && data_ready) begin
                counter <= counter + 1;
            end
            if(counter == 1022) begin
                data_last <= 1;
            end
            else begin
                data_last <= 0;
            end
        end
    begin
    
    end
    
    
    initial
    begin
        // send the data over - a dirac
        real_part = 12'b0111_1111_1111;
        
        data_valid = 1'b1;
        data_last = 1'b0;
        reset = 1'b0;
        counter = 3'b000;
        result_ready = 1'b1;
        
        #40 // 4 cycles
        reset = 1;
        #45000 // Wait for the FFT to process.
        #10240 // 1024 samples later
        reset = 1'b0;
        #30 // 3 cycles
        reset = 1'b1;
        #30 // 3 cycles
        reset = 1'b0;
        #30 // 3 cycles
        reset = 1'b1;
        #45000 // Wait for the FFT to process.
        #10240 // 1024 samples later
        // reads the value over 2 cycles
        
//        // start the next signal in - repeats every signal
//        real_part = 12'b000000000001;
//        #10
//        real_part = 12'b000000000010;
//        #10
//        real_part = 12'b000000000101;
//        #10
//        real_part = 12'b000000000010;
//        #10
//        real_part = 12'b000000000001;
//        #10
//        real_part = 12'b000000000010;
//        #10
//        real_part = 12'b000000000101;
//        #10
//        real_part = 12'b000000000010;
//        data_last = 1'b1;

        #10000
        reset = 1'b0;
        
    end
    /*
    always @ (posedge sys_clk, posedge data_ready)
    begin
        if (reset == 1'b0 && data_ready != 1'b1)  begin
            reset <= 1'b1;
            data_valid <= 1'b1;
        end
        if (data_ready == 1'b1 && counter == 3'b000) begin
             //data_in[63:0] <= 16'h000000003f800000;
             data_valid <= 1'b1;
             counter <= counter + 1;
        end
        if (data_ready == 1'b1 && counter != 3'b111 && counter != 3'b000) begin
            //data_in[63:0] <= 16'h0000000000000000;
            data_valid <= 1'b1;
            counter <= counter + 1;
        end
        if (data_ready == 1'b1 && counter == 3'b111 && data_last == 1'b0)  begin
            //data_in[63:0] <= 16'h0000000000000000;
            data_valid <= 1'b1;
            data_last <= 1'b1;
        end
    end*/ 
endmodule

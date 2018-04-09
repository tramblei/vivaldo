
`timescale 1 ns / 1 ps

	module geralds_decimator_v1_0 #
	(
		// Users to add parameters here
		// this is the input clock frequency divided by the target sampling frequency
        parameter integer CLK_TO_TARGET_FRQ_RATIO = 2273,
        parameter integer COUNTER_WIDTH = 32,
        parameter integer FFT_SIZE = 10,
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface signal_in
		parameter integer C_signal_in_TDATA_WIDTH	= 32,

		// Parameters of Axi Master Bus Interface signal_out
		parameter integer C_signal_out_TDATA_WIDTH	= 32,
		parameter integer C_signal_out_START_COUNT	= 32
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface signal_in
		input wire  signal_in_aclk,
		input wire  signal_in_aresetn,
		output wire  signal_in_tready,
		input wire [C_signal_in_TDATA_WIDTH-1 : 0] signal_in_tdata,
		input wire [(C_signal_in_TDATA_WIDTH/8)-1 : 0] signal_in_tstrb,
		input wire  signal_in_tlast,
		input wire  signal_in_tvalid,

		// Ports of Axi Master Bus Interface signal_out
		output wire  signal_out_tvalid,
		output wire [C_signal_out_TDATA_WIDTH-1 : 0] signal_out_tdata,
		output wire [(C_signal_out_TDATA_WIDTH/8)-1 : 0] signal_out_tstrb,
		output wire  signal_out_tlast,
		input wire  signal_out_tready
	);
	reg [C_signal_in_TDATA_WIDTH-1:0] slave_data;
	reg [COUNTER_WIDTH-1:0] counter;
	reg [FFT_SIZE-1:0] packet_counter;
	reg sent;
	reg initiate_txn;
	reg is_last;
	reg is_last_delay;
// Instantiation of Axi Bus Interface signal_in
	geralds_decimator_v1_0_signal_in # ( 
		.C_S_AXIS_TDATA_WIDTH(C_signal_in_TDATA_WIDTH)
	) geralds_decimator_v1_0_signal_in_inst (
		.S_AXIS_ACLK(signal_in_aclk),
		.S_AXIS_ARESETN(signal_in_aresetn),
		.S_AXIS_TREADY(signal_in_tready),
		.S_AXIS_TDATA(signal_in_tdata),
		.S_AXIS_TSTRB(signal_in_tstrb),
		.S_AXIS_TLAST(signal_in_tlast),
		.S_AXIS_TVALID(signal_in_tvalid)
	);

// Instantiation of Axi Bus Interface signal_out
	geralds_decimator_v1_0_signal_out # ( 
		.C_M_AXIS_TDATA_WIDTH(C_signal_out_TDATA_WIDTH),
		.C_M_START_COUNT(C_signal_out_START_COUNT)
	) geralds_decimator_v1_0_signal_out_inst (
		.M_AXIS_ACLK(signal_in_aclk),
		.M_AXIS_ARESETN(signal_in_aresetn),
		.M_AXIS_TVALID(signal_out_tvalid),
		.M_AXIS_TDATA(signal_out_tdata),
		.M_AXIS_TSTRB(signal_out_tstrb),
		.M_AXIS_TLAST(signal_out_tlast),
		.M_AXIS_TREADY(signal_out_tready),
		.data_in(slave_data),
		.initiate_txn(initiate_txn),
		.is_last(is_last_delay)
	);

	// Add user logic here
    always @(posedge signal_in_aclk or negedge signal_in_aresetn) begin
        if(signal_in_aresetn == 0) begin
            slave_data <= 0;
            counter <= 0;
            initiate_txn <=0;
            packet_counter <= 0;
            is_last <= 0;
            is_last_delay <=0;
        end
        else begin
            if(signal_in_tvalid) begin
               slave_data <= signal_in_tdata;
            end
            if(counter == CLK_TO_TARGET_FRQ_RATIO -1) begin
                counter <= 0;
                initiate_txn <= 1; 
                packet_counter <= packet_counter + 1;
                if(packet_counter == 2**FFT_SIZE - 1) begin
                    is_last <= 1;
                end
            end
            else begin
                counter <= counter + 1;
                initiate_txn <= 0;
                if(packet_counter != 2**FFT_SIZE - 1) begin
                    is_last <= 0;
                end
            end
            is_last_delay <= is_last;
        end
    end
	// User logic ends

	endmodule

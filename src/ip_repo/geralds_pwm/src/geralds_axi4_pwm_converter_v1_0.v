
`timescale 1 ns / 1 ps

	module geralds_axi4_pwm_converter_v1_0 #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface S00_AXIS
		parameter integer C_S00_AXIS_TDATA_WIDTH	= 16,
		parameter [11:0] MAX_COUNT = 12'b1111_1111_1111,
        parameter [11:0] THRESH = 12'b0000_0000_0011,
        parameter COUNT_SPEED = 1,
        parameter GAIN = 1,
        parameter TOGGLE_DATA = 1
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface S00_AXIS
		input wire  s00_axis_aclk,
		input wire  s00_axis_aresetn,
		output wire  s00_axis_tready,
		input wire [C_S00_AXIS_TDATA_WIDTH-1 : 0] s00_axis_tdata,
		input wire [(C_S00_AXIS_TDATA_WIDTH/8)-1 : 0] s00_axis_tstrb,
		input wire  s00_axis_tlast,
		input wire  s00_axis_tvalid,
		output wire pwm_out,
		output wire aud_sd
	);
	wire pwm_block_out;
// Instantiation of Axi Bus Interface S00_AXIS
	geralds_axi4_pwm_converter_v1_0_S00_AXIS # ( 
		.C_S_AXIS_TDATA_WIDTH(C_S00_AXIS_TDATA_WIDTH),
		.MAX_COUNT(MAX_COUNT),
		.THRESH(THRESH),
		.COUNT_SPEED(COUNT_SPEED),
		.GAIN(GAIN),
		.TOGGLE_DATA(TOGGLE_DATA)
	) geralds_axi4_pwm_converter_v1_0_S00_AXIS_inst (
		.S_AXIS_ACLK(s00_axis_aclk),
		.S_AXIS_ARESETN(s00_axis_aresetn),
		.S_AXIS_TREADY(s00_axis_tready),
		.S_AXIS_TDATA(s00_axis_tdata),
		.S_AXIS_TSTRB(s00_axis_tstrb),
		.S_AXIS_TLAST(s00_axis_tlast),
		.S_AXIS_TVALID(s00_axis_tvalid),
		.pwm_out(pwm_out),
		.aud_sd(aud_sd)
	);
	// User logic begins
 	// User logic ends

	endmodule

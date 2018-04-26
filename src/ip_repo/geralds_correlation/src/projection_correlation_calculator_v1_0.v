
`timescale 1 ns / 1 ps

	module projection_correlation_calculator_v1_0 #
	(
		// Users to add parameters here
        parameter integer CORRELATION_SIZE = 32,
        parameter integer FFT_BITS = 10,
        parameter integer CORRELATION_SHIFT = 8,
        parameter integer DOT_PRODUCT_SIZE = 64,
		// User parameters ends
		// Do not modify the parameters beyond this line


		// Parameters of Axi Slave Bus Interface signal_fft_AXIS
		parameter integer C_fft_AXIS_TDATA_WIDTH = 16,
        parameter integer C_fft_FIFO_BLOCK_SIZE = 3,
        
		// Parameters of Axi Slave Bus Interface golden_fft_AXIS

		// Parameters of Axi Slave Bus Interface correlation_out_AXI
		parameter integer C_correlation_out_AXI_DATA_WIDTH	= 32,
		parameter integer C_correlation_out_AXI_ADDR_WIDTH	= 4
	)
	(
		// Users to add ports here

		// User ports ends
		// Do not modify the ports beyond this line


		// Ports of Axi Slave Bus Interface signal_fft_AXIS
		input wire  signal_fft_axis_aclk,
		input wire  signal_fft_axis_aresetn,
		output wire  signal_fft_axis_tready,
		input wire [C_fft_AXIS_TDATA_WIDTH-1 : 0] signal_fft_axis_tdata,
		input wire [(C_fft_AXIS_TDATA_WIDTH/8)-1 : 0] signal_fft_axis_tstrb,
		input wire  signal_fft_axis_tlast,
		input wire  signal_fft_axis_tvalid,

		// Ports of Axi Slave Bus Interface golden_fft_AXIS
		input wire  golden_fft_axis_aclk,
		input wire  golden_fft_axis_aresetn,
		output wire  golden_fft_axis_tready,
		input wire [C_fft_AXIS_TDATA_WIDTH-1 : 0] golden_fft_axis_tdata,
		input wire [(C_fft_AXIS_TDATA_WIDTH/8)-1 : 0] golden_fft_axis_tstrb,
		input wire  golden_fft_axis_tlast,
		input wire  golden_fft_axis_tvalid,

		// Ports of Axi Slave Bus Interface correlation_out_AXI
		input wire  correlation_out_axi_aclk,
		input wire  correlation_out_axi_aresetn,
		input wire [C_correlation_out_AXI_ADDR_WIDTH-1 : 0] correlation_out_axi_awaddr,
		input wire [2 : 0] correlation_out_axi_awprot,
		input wire  correlation_out_axi_awvalid,
		output wire  correlation_out_axi_awready,
		input wire [C_correlation_out_AXI_DATA_WIDTH-1 : 0] correlation_out_axi_wdata,
		input wire [(C_correlation_out_AXI_DATA_WIDTH/8)-1 : 0] correlation_out_axi_wstrb,
		input wire  correlation_out_axi_wvalid,
		output wire  correlation_out_axi_wready,
		output wire [1 : 0] correlation_out_axi_bresp,
		output wire  correlation_out_axi_bvalid,
		input wire  correlation_out_axi_bready,
		input wire [C_correlation_out_AXI_ADDR_WIDTH-1 : 0] correlation_out_axi_araddr,
		input wire [2 : 0] correlation_out_axi_arprot,
		input wire  correlation_out_axi_arvalid,
		output wire  correlation_out_axi_arready,
		output wire [C_correlation_out_AXI_DATA_WIDTH-1 : 0] correlation_out_axi_rdata,
		output wire [1 : 0] correlation_out_axi_rresp,
		output wire  correlation_out_axi_rvalid,
		input wire  correlation_out_axi_rready,
		output wire[CORRELATION_SIZE-1:0] correlation_out_probe,
		
		// normalized stuff
		input wire[CORRELATION_SIZE-1:0] correlation_normalized,
		input wire correlation_normalized_valid,
		output wire[DOT_PRODUCT_SIZE-1:0] mag1,
		output wire[DOT_PRODUCT_SIZE-1:0] mag2,
        output wire[DOT_PRODUCT_SIZE-1:0] dot_product,
        output wire dot_product_valid,
        input wire dot_product_ready // if the downstream is ready and dot product valid, go low next cycle
	);
	localparam C_golden_fft_AXIS_TDATA_WIDTH = C_fft_AXIS_TDATA_WIDTH;
	localparam C_signal_fft_AXIS_TDATA_WIDTH = C_fft_AXIS_TDATA_WIDTH;

    // Used for synchronizing the output
    wire signal_t_last;

    // Write pointer outputs from the Slave FIFOs.
	wire[C_fft_FIFO_BLOCK_SIZE-1:0] signal_fifo_write;
    wire[C_fft_FIFO_BLOCK_SIZE-1:0] golden_fifo_write;

    // Read data outputs from the Slave FIFOs.
    reg[C_signal_fft_AXIS_TDATA_WIDTH-1:0] signal_fifo_read_data;
    reg[C_golden_fft_AXIS_TDATA_WIDTH-1:0] golden_fifo_read_data;
	// Read pointer inputted to both of the Slave FIFOs.
	reg[C_fft_FIFO_BLOCK_SIZE-1:0] fifo_read;
    reg[DOT_PRODUCT_SIZE-1:0] mul_data;
    reg[DOT_PRODUCT_SIZE-1:0] signal_mag_data;
    reg[DOT_PRODUCT_SIZE-1:0] golden_mag_data;

    // Store the correlation result here
    reg[DOT_PRODUCT_SIZE-1:0] correlation_result_squared;
    reg correlation_valid;
    wire[DOT_PRODUCT_SIZE-1:0] signal_data;
    wire[DOT_PRODUCT_SIZE-1:0] golden_data;

    // Instantiation of Axi Bus Interface signal_fft_AXIS
	projection_correlation_calculator_v1_0_signal_fft_AXIS # ( 
		.C_S_AXIS_TDATA_WIDTH(C_signal_fft_AXIS_TDATA_WIDTH),
		.FIFO_BLOCK_SIZE(C_fft_FIFO_BLOCK_SIZE)
	) projection_correlation_calculator_v1_0_signal_fft_AXIS_inst (
		.S_AXIS_ACLK(signal_fft_axis_aclk),
		.S_AXIS_ARESETN(signal_fft_axis_aresetn),
		.S_AXIS_TREADY(signal_fft_axis_tready),
		.S_AXIS_TDATA(signal_fft_axis_tdata),
		.S_AXIS_TSTRB(signal_fft_axis_tstrb),
		.S_AXIS_TLAST(signal_fft_axis_tlast),
		.S_AXIS_TVALID(signal_fft_axis_tvalid),
		.fifo_read(fifo_read),
		.fifo_write(signal_fifo_write),
		.fifo_read_data(signal_data),
		.signal_t_last(signal_t_last)
	);

    // Instantiation of Axi Bus Interface golden_fft_AXIS
	projection_correlation_calculator_v1_0_golden_fft_AXIS # ( 
		.C_S_AXIS_TDATA_WIDTH(C_golden_fft_AXIS_TDATA_WIDTH),
		.FIFO_BLOCK_SIZE(C_fft_FIFO_BLOCK_SIZE)
	) projection_correlation_calculator_v1_0_golden_fft_AXIS_inst (
		.S_AXIS_ACLK(golden_fft_axis_aclk),
		.S_AXIS_ARESETN(golden_fft_axis_aresetn),
		.S_AXIS_TREADY(golden_fft_axis_tready),
		.S_AXIS_TDATA(golden_fft_axis_tdata),
		.S_AXIS_TSTRB(golden_fft_axis_tstrb),
		.S_AXIS_TLAST(golden_fft_axis_tlast),
		.S_AXIS_TVALID(golden_fft_axis_tvalid),
		.fifo_read(fifo_read),
        .fifo_write(golden_fifo_write),
        .fifo_read_data(golden_data)
	);

    // Instantiation of Axi Bus Interface correlation_out_AXI
	projection_correlation_calculator_v1_0_correlation_out_AXI # ( 
		.C_S_AXI_DATA_WIDTH(C_correlation_out_AXI_DATA_WIDTH),
		.C_S_AXI_ADDR_WIDTH(C_correlation_out_AXI_ADDR_WIDTH),
		.C_S_AXI_CORRELATION_SIZE(CORRELATION_SIZE)
	) projection_correlation_calculator_v1_0_correlation_out_AXI_inst (
		.S_AXI_ACLK(correlation_out_axi_aclk),
		.S_AXI_ARESETN(correlation_out_axi_aresetn),
		.S_AXI_AWADDR(correlation_out_axi_awaddr),
		.S_AXI_AWPROT(correlation_out_axi_awprot),
		.S_AXI_AWVALID(correlation_out_axi_awvalid),
		.S_AXI_AWREADY(correlation_out_axi_awready),
		.S_AXI_WDATA(correlation_out_axi_wdata),
		.S_AXI_WSTRB(correlation_out_axi_wstrb),
		.S_AXI_WVALID(correlation_out_axi_wvalid),
		.S_AXI_WREADY(correlation_out_axi_wready),
		.S_AXI_BRESP(correlation_out_axi_bresp),
		.S_AXI_BVALID(correlation_out_axi_bvalid),
		.S_AXI_BREADY(correlation_out_axi_bready),
		.S_AXI_ARADDR(correlation_out_axi_araddr),
		.S_AXI_ARPROT(correlation_out_axi_arprot),
		.S_AXI_ARVALID(correlation_out_axi_arvalid),
		.S_AXI_ARREADY(correlation_out_axi_arready),
		.S_AXI_RDATA(correlation_out_axi_rdata),
		.S_AXI_RRESP(correlation_out_axi_rresp),
		.S_AXI_RVALID(correlation_out_axi_rvalid),
		.S_AXI_RREADY(correlation_out_axi_rready),
		.correlation_data(correlation_normalized),
		.correlation_valid(correlation_normalized_valid),
		.dot_product_valid(dot_product_valid)
	);

	// Add user logic here
	reg[DOT_PRODUCT_SIZE-1:0] sum;
	reg[DOT_PRODUCT_SIZE-1:0] signal_read_data_mag;
	reg[DOT_PRODUCT_SIZE-1:0] golden_read_data_mag;
    reg[1:0] pipe_fill;
    reg[DOT_PRODUCT_SIZE-1:0] sum_out;
	reg[DOT_PRODUCT_SIZE-1:0] signal_read_data_out;
    reg[DOT_PRODUCT_SIZE-1:0] golden_read_data_out;

    reg restart;
    reg data_ready;

    always @(posedge signal_fft_axis_aclk or negedge signal_fft_axis_aresetn)
    begin
        if (signal_fft_axis_aresetn == 0 || (signal_t_last == 1 && signal_fifo_write != 2**FFT_BITS-1))
        begin
            // Restart is used to signify the first sample that we receive, so we ignore
            // previous data in the data registers.
            restart <= 1'b1;
            data_ready <= 1'b0;
            correlation_valid <= 1'b0;
            correlation_result_squared <= 0;
            sum <= 0;
            signal_read_data_mag <= 0;
            golden_read_data_mag <= 0;
            fifo_read <= 0;
        end
        else
        begin
            // Last FFT sample is received and the data is valid.
            if (fifo_read == 2**FFT_BITS-1)
            begin
                data_ready <= 1'b1;
                sum <= sum + signal_fifo_read_data * golden_fifo_read_data;
                signal_read_data_mag <= signal_read_data_mag + signal_fifo_read_data * signal_fifo_read_data;
                golden_read_data_mag <= golden_read_data_mag + golden_fifo_read_data * golden_fifo_read_data;
                // Reads the last piece of data into our registers.
                signal_fifo_read_data <= signal_data;
                golden_fifo_read_data <= golden_data;
            end
            if (data_ready)
            begin
                correlation_valid <= 1'b1;
                // Update the correlation results with the final piece of data.
                signal_read_data_out <= signal_read_data_mag + signal_fifo_read_data * signal_fifo_read_data;
                golden_read_data_out <= golden_read_data_mag + golden_fifo_read_data * golden_fifo_read_data;
                sum_out <= sum + signal_fifo_read_data * golden_fifo_read_data;
                data_ready <= 1'b0;
                // Reset accumulators.
                fifo_read <= 0;
                sum <= 0;
                signal_read_data_mag <= 0;
                golden_read_data_mag <= 0;
            end
            else if (fifo_read < signal_fifo_write &&
                      fifo_read < golden_fifo_write)
            begin
                if (!restart)
                begin
                  sum <= sum + signal_fifo_read_data * golden_fifo_read_data;
                  signal_read_data_mag <= signal_read_data_mag + signal_fifo_read_data * signal_fifo_read_data;
                  golden_read_data_mag <= golden_read_data_mag + golden_fifo_read_data * golden_fifo_read_data;
                end
                else
                begin
                  restart <= 1'b0;
                end
                fifo_read <= fifo_read + 1;
                signal_fifo_read_data <= signal_data;
                golden_fifo_read_data <= golden_data;
            end
            if (correlation_valid && dot_product_ready)
            begin // both were high for a cycle - now we can go low
              // because this means that the value has been accepted
              correlation_valid <= 0;
            end
        end
    end

    assign correlation_out_probe = correlation_result_squared[31:0];
    assign dot_product_valid = correlation_valid;
    assign dot_product = sum_out;
    assign mag1 = signal_read_data_out;
    assign mag2 = golden_read_data_out;
	// User logic ends

	endmodule

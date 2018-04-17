`ifndef _include_memory_
`define _include_memory_

module Memory(
	input  wire [11:0] r_addr,
	output reg  [15:0] r_data,

	input  wire [11:0] w_addr,
	input  wire [15:0] w_data,
	input  wire        w_en,

	input  wire [11:0] pc,
	output reg  [15:0] inst,

   input  wire [11:0] w_addr_b,
	input  wire [15:0] w_data_b,
	input  wire        w_en_b,

	input  wire        clk, 
	input  wire        rst
);
	reg [15:0] memory[4095:0];
	
	wire [11:0] write_address;
	wire [15:0] write_data;
	wire write_en;
	
	assign write_address = (
		w_en ? w_addr :
		w_en_b ? w_addr_b :
		0
	);
	
	assign write_data = (
		w_en ? w_data :
		w_en_b ? w_data_b :
		0
	);
	
	assign write_en = (
		w_en ? w_en :
		w_en_b ? w_en_b :
		0
	);

	integer ii;
	initial begin
		for (ii=0; ii<4096; ii=ii+1) begin
			memory[ii] = 0;
		end
	end
	
	always @(negedge clk) begin
		r_data <= memory[r_addr];
	end
	
	always @(posedge clk) begin
		if (rst) begin
			inst <= 16'b1010_000000_000000; // mov r0 r0 (noop)
		end else begin
			inst <= memory[pc];
		end
	end

	always @(posedge clk) begin
		if (write_en) begin
			//$display("%t sw [%d] %d", $time, w_addr, w_data);
			memory[write_address] <= write_data;
		end
	end

	/*
	always @(posedge clk) begin
		if (w_en_b) begin
			//$write("\n%t sw [%d] %h\n", $time, w_addr_b, w_data_b);
			memory[w_addr_b] <= w_data_b;
		end
	end
	*/
	

endmodule

`endif // _include_memory_

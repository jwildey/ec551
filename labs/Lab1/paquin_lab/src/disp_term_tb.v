`timescale 1ns / 1ns

`include "compiler.v"

`ifdef __icarus_verilog
`include "disp_term.v"
`else // __xilinx_verilog
`include "const.v"
`endif // __icarus_verilog

module main();
	reg clk;
	reg rst;

	reg [6:0] hctr;
	reg [6:0] vctr;
	wire pixel;

	localparam hmax = 80;
	localparam vmax = 48;

	reg [3:0] w_v_addr;
	reg [3:0] w_h_addr;
	reg [5:0] w_data;
	reg       w_en;


	DisplayTerminal uut(
		.w_h_addr({4'b0000, w_h_addr}),
		.w_v_addr({4'b0000, w_v_addr}),
		.w_data(w_data),
		.w_en(w_en),

		.h_ctr({4'b0000, hctr}),
		.v_ctr({4'b0000, vctr}),
		.pixel_on(pixel),

		.clk(clk),
		.rst(rst)
	);

	initial begin
		w_v_addr <= 0; w_h_addr <= 0; w_data <= 0; w_en <= 0;
		#10; w_en <= 1;
		#10; w_data <= `CHAR_A; 
		#10; w_h_addr <= w_h_addr + 1; w_data <= `CHAR_N;
		#10; w_h_addr <= w_h_addr + 1; w_data <= `CHAR_T;
		#10; w_h_addr <= w_h_addr + 1; w_data <= `CHAR_O;
		#10; w_h_addr <= w_h_addr + 1; w_data <= `CHAR_N;
		#10; w_h_addr <= 0; w_v_addr <= 1; w_data <= `CHAR_W;
		#10; w_h_addr <= w_h_addr + 1; w_data <= `CHAR_A;
		#10; w_h_addr <= w_h_addr + 1; w_data <= `CHAR_S;
		#10; w_h_addr <= 0; w_v_addr <= 2; w_data <= `CHAR_H;
		#10; w_h_addr <= w_h_addr + 1; w_data <= `CHAR_E;
		#10; w_h_addr <= w_h_addr + 1; w_data <= `CHAR_R;
		#10; w_h_addr <= w_h_addr + 1; w_data <= `CHAR_E;
		#10; w_en <= 0;
	end

	initial begin
		clk = 1;
		forever #5 clk = ~clk;
	end

	initial begin
		rst = 1;
		#20 rst = 0;
	end

	always @(posedge clk) begin
		if (rst) begin
			hctr <= 0;
			vctr <= 0;
		end else if (hctr == hmax) begin
			if (pixel) begin
				$write("#\n");
			end else begin
				$write(" \n");
			end
			hctr <= 0;
			if (vctr == vmax) begin
				$write("\033[H");
				vctr <= 0;
			end else begin 
				vctr <= vctr + 1;
			end
		end else begin
			if (pixel) begin
				$write("#");
			end else begin
				$write(" ");
			end
			hctr <= hctr + 1;
		end
	end

endmodule

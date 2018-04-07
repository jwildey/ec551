`timescale 1ns / 1ns

`include "compiler.v"

`ifdef __icarus_verilog
`include "disp_char.v"
`else // __xilinx_verilog
`include "const.v"
`endif // __icarus_verilog


module main();
	reg clk;
	reg rst;

	reg [5:0] hsync;
	reg [5:0] vsync;

	reg unsigned [5:0] char_grid[7:0][7:0];

	wire [5:0] charsel;

	wire out;

	CharDisplay uut(
		.hscan_lo(hsync[2:0]),
		.vscan_lo(vsync[2:0]),
		.charsel(charsel),

		.out(out),

		.clk(clk),
		.rst(rst)
	);

	always @(posedge clk) begin
		if (rst) ;
		else if (out) $write("1");
		else $write(" ");

		if (rst) begin
		end else if (hsync == 63) begin
			hsync <= 0;
			vsync <= vsync + 1;
			$write("\n");
		end else begin
			hsync <= hsync + 1;
		end
	end

	assign charsel = char_grid[vsync[5:3]][hsync[5:3]];

	initial begin
		clk = 1;
		forever #5 clk = ~clk;
	end

	initial begin
		rst = 1;
		#10 rst = 0;
		#40970 $finish;
	end

	integer ii, jj;

	initial begin
		hsync = 0;
		vsync = 0;
		for (ii=0; ii<8; ii++) begin
			for (jj=0; jj<8; jj++) begin
				char_grid[ii][jj] = (8*ii)+jj;
			end
		end
	end
endmodule

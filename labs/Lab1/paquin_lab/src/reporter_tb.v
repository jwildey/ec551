`include "compiler.v"

`ifdef __icarus_verilog
`include "reporter.v"
`include "vga_fake.v"
`else // __xilinx_verilog
`include "const.v"
`endif // __icarus_verilog

module main();

	wire [10:0] hcounter;
	wire [10:0] vcounter;
	wire pixel;

	reg [15:0] test_num;
	reg [15:0] test_num_counter;
	localparam test_num_clkdivide = 16'h0400;

	reg clk;
	reg rst;

	VgaFake #(
		.HMAX(234),
		.VMAX(53)
	) vga_fake (
		.hcounter(hcounter),
		.vcounter(vcounter),
		.pixel_on(pixel),
		
		.clk(clk),
		.rst(rst)
	);

	Reporter uut(
		.vga_h_ctr(hcounter),
		.vga_v_ctr(vcounter),
		.vga_pixel_on(pixel),

		.r0(16'hABCD),
		.r1(16'hB0B0),
		.r2(16'hFE0F),
		.r3(16'h0123),
		.r4(16'h56F4),
		.r5(16'h789E),
		.r6(test_num),

		.clk(clk),
		.rst(rst)
	);

	initial begin
		clk = 1;
		forever #5 clk = ~clk;
	end

	initial begin
		rst = 1;
		#10 rst = 0;
	end

	initial begin
		test_num = 0;
		test_num_counter = 0;
	end

	always @(posedge clk) begin
		if (vcounter == 0 && hcounter == 0) begin
			test_num <= test_num + 1;
		end
	end
endmodule

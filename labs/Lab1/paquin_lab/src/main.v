`timescale 1ns / 1ns

`include "compiler.v"

`ifdef __icarus_verilog
`include "cpu.v"
`include "reporter.v"
`include "deouncer.v"
`include "vga.v"
`else // __xilinx_verilog
`include "const.v"
`endif // __icarus_verilog

module main(
	input  wire clk,
	
	output wire [6:0] seg7_led,
	output wire [3:0] seg7_select,

	output wire [2:0] vga_r,
	output wire [2:0] vga_g,
	output wire [1:0] vga_b,
	output wire       vga_hsync,
	output wire       vga_vsync,
	
	output wire [7:0] led,
	input  wire [7:0] switch,
	input  wire [4:0] button
);
	wire button_reset;
	wire button_unhalt;
	wire switch_slow;
	wire switch_halt;
	
	wire debounced_reset;
	wire debounced_unhalt;
	
	wire cpu_clk;
	reg  [25:0] cpu_clk_div;

	wire [10:0] vga_h_counter;
	wire [10:0] vga_v_counter;
	wire vga_pixel;

	assign vga_r = (vga_pixel) ? 3'b111 : 3'b000;
	assign vga_g = (vga_pixel) ? 3'b111 : 3'b000;
	assign vga_b = (vga_pixel) ? 2'b11  : 2'b00;
	
	assign led[0] = 1'b1;
	assign led[1] = 1'b0;
	assign led[2] = debounced_reset;
	assign led[3] = debounced_unhalt;
	assign led[4] = button_reset;
	assign led[5] = button_unhalt;
	assign led[6] = cpu_clk;
	assign led[7] = 1'b1;
	
	assign button_reset  = switch[0];
	assign switch_halt   = switch[5];
	assign switch_slow   = switch[6];
	assign button_unhalt = switch[7];
	
	assign cpu_clk = (
		(switch_halt) ? 1'b1 :
		(switch_slow) ? cpu_clk_div[25] : 
		cpu_clk_div[0]
	);
	
	wire [15:0] cpu_r0;
	wire [15:0] cpu_r1;
	wire [15:0] cpu_r2;
	wire [15:0] cpu_r3;
	wire [15:0] cpu_r4;
	wire [15:0] cpu_r5;
	wire [15:0] cpu_r6;

	Cpu cpu(
		.clk(cpu_clk),
		.rst(debounced_reset),
		.unhalt(debounced_unhalt),
		.regexpose({cpu_r0, cpu_r1, cpu_r2, cpu_r3, cpu_r4, cpu_r5, cpu_r6})
	);

	Reporter reporter(
		.vga_h_ctr(vga_h_counter),
		.vga_v_ctr(vga_v_counter),
		.vga_pixel_on(vga_pixel),

		.seg7_digit_sel(seg7_select),
		.seg7_led_on(seg7_led),

		.r0(cpu_r0),
		.r1(cpu_r1),
		.r2(cpu_r2),
		.r3(cpu_r3),
		.r4(cpu_r4),
		.r5(cpu_r5),
		.r6(cpu_r6),

		.clk(clk),
		.rst(debounced_reset)
	);

	VgaController vga_controller(
		.hsync(vga_hsync),
		.vsync(vga_vsync),
		.hcounter(vga_h_counter),
		.vcounter(vga_v_counter),
		.clk(clk),
		.rst(debounced_reset)
	);
	
	Debouncer db_reset(
		.btn_in(button_reset),
		.signal_out(debounced_reset),
		.clk(clk),
		.rst(1'b0)
	);

	Debouncer db_unhalt(
		.btn_in(button_unhalt),
		.signal_out(debounced_unhalt),
		.clk(clk),
		.rst(debounced_reset)
	);
	
	always @(posedge clk) begin
		cpu_clk_div <= cpu_clk_div + 1;
	end
endmodule

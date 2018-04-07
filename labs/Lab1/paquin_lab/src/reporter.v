`ifndef _include_reporter_
`define _include_reporter_

`timescale 1ns / 1ns

`include "compiler.v"

`ifdef __icarus_verilog
`include "disp_term.v"
`include "seg7.v"
`else // __xilinx_verilog
`include "const.v"
`endif // __icarus_verilog

module Reporter(
	input  wire [10:0] vga_h_ctr,
	input  wire [10:0] vga_v_ctr,
	output wire 	   vga_pixel_on,

	output wire [ 3:0] seg7_digit_sel,
	output wire [ 6:0] seg7_led_on,

	input  wire [15:0] r0,
	input  wire [15:0] r1,
	input  wire [15:0] r2,
	input  wire [15:0] r3,
	input  wire [15:0] r4,
	input  wire [15:0] r5,
	input  wire [15:0] r6,

	input  wire        clk,
	input  wire        rst
);
	reg [7:0] init;
	reg [5:0] init_char;
	reg [7:0] init_h;
	reg [7:0] init_v;
	wire init_en;
	localparam init_steps = 15;

	reg  [4:0] register_disp_counter;
	reg  [3:0] register_hex;
	reg  [5:0] register_char;
	wire [5:0] register_h;
	wire [5:0] register_v;

	wire [7:0] term_h;
	wire [7:0] term_v;
	wire [5:0] term_char;
	reg       term_w_en;
	
	Seg7 seg_display(
		.num(r6[11:0]),
		.led_on(seg7_led_on),
		.digit_select(seg7_digit_sel),
		.clk(clk),
		.rst(rst)
	);

	DisplayTerminal display_terminal(
		.w_h_addr(term_h),
		.w_v_addr(term_v),
		.w_data(term_char),
		.w_en(term_w_en),

		.h_ctr(vga_h_ctr),
		.v_ctr(vga_v_ctr),
		.pixel_on(vga_pixel_on),

		.clk(clk),
		.rst(rst)
	);

	assign init_en = (init != init_steps);

	assign term_h    = init_en ? init_h    : register_h;
	assign term_v    = init_en ? init_v    : register_v;
	assign term_char = init_en ? init_char : register_char;

	assign register_h = register_disp_counter[1:0] + 3;
	assign register_v = register_disp_counter[4:2];
	
	always @(*) begin
		case (register_disp_counter)
			 0: register_hex = r0[15:12];
			 1: register_hex = r0[11: 8];
			 2: register_hex = r0[ 7: 4];
			 3: register_hex = r0[ 3: 0];
			 4: register_hex = r1[15:12];
			 5: register_hex = r1[11: 8];
			 6: register_hex = r1[ 7: 4];
			 7: register_hex = r1[ 3: 0];
			 8: register_hex = r2[15:12];
			 9: register_hex = r2[11: 8];
			10: register_hex = r2[ 7: 4];
			11: register_hex = r2[ 3: 0];
			12: register_hex = r3[15:12];
			13: register_hex = r3[11: 8];
			14: register_hex = r3[ 7: 4];
			15: register_hex = r3[ 3: 0];
			16: register_hex = r4[15:12];
			17: register_hex = r4[11: 8];
			18: register_hex = r4[ 7: 4];
			19: register_hex = r4[ 3: 0];
			20: register_hex = r5[15:12];
			21: register_hex = r5[11: 8];
			22: register_hex = r5[ 7: 4];
			23: register_hex = r5[ 3: 0];
			24: register_hex = r6[15:12];
			25: register_hex = r6[11: 8];
			26: register_hex = r6[ 7: 4];
			27: register_hex = r6[ 3: 0];
			default: register_hex = 4'b0000;
		endcase
	end

	always @(*) begin
		case(register_hex)
			 0: register_char = `CHAR_0;
			 1: register_char = `CHAR_1;
			 2: register_char = `CHAR_2;
			 3: register_char = `CHAR_3;
			 4: register_char = `CHAR_4;
			 5: register_char = `CHAR_5;
			 6: register_char = `CHAR_6;
			 7: register_char = `CHAR_7;
			 8: register_char = `CHAR_8;
			 9: register_char = `CHAR_9;
			10: register_char = `CHAR_A;
			11: register_char = `CHAR_B;
			12: register_char = `CHAR_C;
			13: register_char = `CHAR_D;
			14: register_char = `CHAR_E;
			15: register_char = `CHAR_F;
		endcase
	end

	always @(posedge clk) begin
		if (rst) begin
			init <= 0;
		end else if (init_en) begin
			init <= init + 1;
		end
	end
	
	always @(posedge clk) begin
		if (rst) begin
			register_disp_counter <= 0;
		end else if (register_disp_counter >= 27) begin
			register_disp_counter <= 0;
		end else begin
			register_disp_counter <= register_disp_counter + 1;
		end
	end

	always @(posedge clk) begin
		case (init)
			0: begin
				term_w_en <= 1;
				init_h <= 0;
				init_v <= 0;
				init_char <= `CHAR_R;
			end
			1, 2, 3, 4, 5, 6: init_v <= init_v + 1;
			7: begin
				init_h <= 1; 
				init_v <= 0; 
				init_char <= `CHAR_0;
			end
			8, 9, 10, 11, 12, 13, 14: begin
				init_v <= init_v + 1;
				init_char <= init_char + 1;
			end
		endcase
	end
endmodule
`endif // _include_reporter_

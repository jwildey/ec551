`include "definitions.vh"
//////////////////////////////////////////////////////////////////////////////////
// Company: BU
// Engineer: Josh Wildey
// 
// Create Date:    10:11:16 02/25/2018
// Module Name:    lab1 
// Project Name: Lab 1 - ALU and Microprocessor Design and implementation
// Target Devices: Nexys3 Spartan 6
// Revision 0.01 - File Created
//
//////////////////////////////////////////////////////////////////////////////////
module lab1(
	input  wire        rst,       // Reset
	input  wire        clk_in,    // 100 MHz clock in
	input  wire        btn_up,    // Up button
	input  wire        btn_down,  // Down button
	input  wire        btn_left,  // Left button
	input  wire        btn_right, // Right button
	input  wire        btn_sel,   // Select button
	input  wire [7:0]  sw,        // User switches
	output wire [7:0]  led,       // LEDs for switches
	output wire [7:0]  rgb,       // 8-bit color for VGA output
   output wire        hsync,     // Horizontal Sync for VGA
   output wire        vsync,     // Vertical Sync for VGA
   output wire [7:0]  seg,       // 7 Segment display
   output wire [3:0]  an         // Anodes for the 4 different 7 Segments
//	output wire        MemOE,     // Memory Output enable
//	output wire        MemWR,     // Memory Write Enable
//	output wire        MemAdv,    // Memory Address Valid
//	input  wire        MemWait,   // Memory Wait
//	output wire        MemClk,    // Memory Clock
//	output wire        RamCS,     // Memory Chip Enable (Device on when LOW)
//	output wire        RamCRE,    // Memory Control Register Enable (Keep LOW)
//	output wire        RamUB,     // Memory Upper Byte Enable
//	output wire        RamLB,     // Memory Lower Byte Enable
//	output wire [25:0] MemAdr,    // Memory Address  (More address bits available, but only using 12)
//	inout  wire [15:0] MemDB      // Memory Data Bus
   );
	
	parameter [11:0] RESET_ADDR = 12'd31;
	parameter [7:0]  INIT_TIME = 8'd200;
	
	// Clock Variables
	reg [31:0] clk_count = 32'd0;
	reg clk = 1'b0;
	
	// Divide the Clock to 1 MHz
	always @ (posedge(clk_in)) begin
		if (clk_count == 50) begin
			clk_count <= 0;
			clk <= ~clk;
		end else begin
			clk_count <= clk_count + 1;
		end
	end
	
	reg [3:0] state = `STATE_INIT;
	reg [3:0] prev_state = `STATE_INIT;
	
	reg [7:0] init_counter = 0;
	
	reg [15:0] cc; // CPU status register
	
	reg [11:0] pc = RESET_ADDR; // CPU Program Counter register
	reg [2:0] rc = 0; // CPU Register Counter
	
	reg [3:0]  op_code;
	reg [5:0]  operand_1;
	reg [5:0]  operand_2;
	wire [11:0] operand_whole = {operand_1, operand_2};
	
	// Enable Signals for the Buttons after Debouncing
	// Should only be high for one cycle for each press
	reg  btn_up_en_prev = 1'b0;
	wire btn_up_en;
	reg  btn_down_en_prev = 1'b0;
	wire btn_down_en;
	reg  btn_left_en_prev = 1'b0;
	wire btn_left_en;
	reg  btn_right_en_prev = 1'b0;
	wire btn_right_en;
	reg  btn_sel_en_prev = 1'b0;
	wire btn_sel_en;
	// Debouce all buttons
	debouncer debouncer_btn_up (
		.rst(rst),
		.clk(clk),
		.noisy(btn_up),
		.clean(btn_up_en)
	);
	debouncer debouncer_btn_down (
		.rst(rst),
		.clk(clk),
		.noisy(btn_down),
		.clean(btn_down_en)
	);
	debouncer debouncer_btn_left (
		.rst(rst),
		.clk(clk),
		.noisy(btn_left),
		.clean(btn_left_en)
	);
	debouncer debouncer_btn_right (
		.rst(rst),
		.clk(clk),
		.noisy(btn_right),
		.clean(btn_right_en)
	);
	debouncer debouncer_btn_sel (
		.rst(rst),
		.clk(clk),
		.noisy(btn_sel),
		.clean(btn_sel_en)
	);
	
	// Coordinate the LEDs with the switches
	reg       display_reg_mem;  // flag to display register value (0) or memory value (1)
	reg [7:0] sw_read;
	assign led = rc;
	
	always @ (posedge clk) begin
		sw_read = sw;
	end

	// 7 Segment Display Variables
	reg  [19:0] seg_1hz = 20'd0;
	wire [15:0] seg_disp;

	seg_display reg_display (
		.clk(clk),
		.value(seg_disp),
		.seg(seg),
		.an(an)
	);
	
	// Register Variables
	reg         reg_write_en = 0;
	reg  [2:0]  reg_wr_addr = 0;
	reg  [15:0] reg_wr_data = 0;
	reg  [2:0]  reg_rd_addr_A = 0;
	wire [15:0] reg_rd_data_A;
	reg  [2:0]  reg_rd_addr_B = 0;
	wire [15:0] reg_rd_data_B;
	regfile registers (
		.clk(clk), 
		.rst(sw[7]), 
		.write(reg_write_en), 
		.wr_addr(reg_wr_addr), 
		.wr_data(reg_wr_data), 
		.rd_addr_A(reg_rd_addr_A), 
		.rd_data_A(reg_rd_data_A), 
		.rd_addr_B(reg_rd_addr_B), 
		.rd_data_B(reg_rd_data_B)
	);
	
	task reg_read;
		input [2:0] addrA;
		input [2:0] addrB;
		
		begin
			reg_rd_addr_A <= addrA;
			reg_rd_addr_B <= addrB;
			reg_write_en <= 0;
		end
	endtask
	
	task reg_write;
		input [2:0] addr;
		input [15:0] data;
		
		begin
			reg_wr_addr <= addr;
			reg_write_en <= 1;
			reg_wr_data <= data;
		end
	endtask
	
	task reg_reset_wr_en;
		begin
			reg_write_en <= 0;
		end
	endtask

	// TODO need to implement VGA Display
	assign rgb = 0;
   assign hsync = 0;
   assign vsync = 0;
	
	// Memory Variables
	reg         mem_write_en = 0;
	reg  [11:0] mem_wr_addr = 0;
	reg  [15:0] mem_wr_data = 0;
	reg  [11:0] mem_rd_addr_A = 0;
	wire [15:0] mem_rd_data_A;
	reg  [11:0] mem_rd_addr_B = 0;
	wire [15:0] mem_rd_data_B;
	memfile memoryfile (
		.clk(clk), 
		.rst(sw[7]), 
		.write(mem_write_en), 
		.wr_addr(mem_wr_addr), 
		.wr_data(mem_wr_data), 
		.rd_addr_A(mem_rd_addr_A), 
		.rd_data_A(mem_rd_data_A), 
		.rd_addr_B(mem_rd_addr_B), 
		.rd_data_B(mem_rd_data_B)
	);
	
	// Interface with memory
//	reg  [25:0] mem_addr = 0;
//	reg         mem_go;
//	reg         mem_wr = 1;
//	wire [15:0] mem_data_read;
//	reg  [15:0] mem_data_write = 0;
//	
//	memory_interface memory (
//		.oe_o(MemOE),
//		.we_o(MemWR),
//		.adv_o(MemAdv),
//		.wait_i(MemWait),
//		.clk_o(MemClk),
//		.ce_o(RamCS),
//		.cre_o(RamCRE),
//		.ub_o(RamUB),
//		.lb_o(RamLB),
//		.addr_o(MemAdr),
//		.db_io(MemDB),
//		.clk(clk_in),
//		.addr_i(mem_addr),
//		.go_i(mem_go),
//		.we_i(mem_wr),
//		.data_i(mem_data_write),
//		.data_o(mem_data_read)
//		);
	
	task mem_read;
		input [11:0] addrA;
		input [11:0] addrB;
		
		begin
			mem_rd_addr_A <= addrA;
			mem_rd_addr_B <= addrB;
			mem_write_en <= 0;
		end
	endtask
	
	task mem_write;
		input [11:0] addr;
		input [15:0] data;
		
		begin
			mem_wr_addr <= addr;
			mem_write_en <= 1;
			mem_wr_data <= data;
		end
	endtask
	
	task mem_reset_wr_en;
		begin
			mem_write_en <= 0;
		end
	endtask
	
	assign seg_disp = display_reg_mem ? mem_rd_data_A : reg_rd_data_A;
	
	task decode;
		begin
			case(op_code)
				
				`OP_HALT: begin
					state <= `STATE_HALT;
				end
				
				`OP_JMP: begin
					pc <= operand_whole;
					state <= `STATE_PRE_FETCH;
				end
				
				`OP_JNE: begin
					if (!cc[`EQUAL]) begin
						pc <= operand_whole;
						state <= `STATE_PRE_FETCH;
					end else begin
						pc <= pc + 1'b1;
						state <= `STATE_PRE_FETCH;
					end
				end
				
				`OP_JE: begin
					if (cc[`EQUAL]) begin
						pc <= operand_whole;
						state <= `STATE_PRE_FETCH;
					end else begin
						pc <= pc + 1'b1;
						state <= `STATE_PRE_FETCH;
					end
				end
				
				`OP_INC: begin
					pc <= pc + 1'b1;
					state <= `STATE_READ_OPERANDS;
				end
				
				`OP_ADD: begin
					reg_read(operand_1, operand_2);
					pc <= pc + 1'b1;
					state <= `STATE_ALU_OPS;
				end
				
				`OP_SUB: begin
					pc <= pc + 1'b1;
					state <= `STATE_READ_OPERANDS;
				end
				
				`OP_XOR: begin
					pc <= pc + 1'b1;
					state <= `STATE_READ_OPERANDS;
				end
				
				`OP_CMP: begin
					pc <= pc + 1'b1;
					state <= `STATE_READ_OPERANDS;
				end
				
				`OP_SADD: begin
					pc <= pc + 1'b1;
					state <= `STATE_READ_OPERANDS;
				end
				
				`OP_SSUB: begin
					pc <= pc + 1'b1;
					state <= `STATE_READ_OPERANDS;
				end
				
				`OP_SMUL: begin
					pc <= pc + 1'b1;
					state <= `STATE_READ_OPERANDS;
				end
				
				`OP_MVRN: begin
					pc <= pc + 1'b1;
					state <= `STATE_WRITE_RESULT;
				end
				
				`OP_MVRR: begin
					pc <= pc + 1'b1;
					state <= `STATE_READ_OPERANDS;
				end
				
				`OP_MVMR: begin
					pc <= pc + 1'b1;
					state <= `STATE_READ_OPERANDS;
				end
				
				`OP_MVRM: begin
					pc <= pc + 1'b1;
					state <= `STATE_READ_OPERANDS;
				end
				
			endcase
		end
	endtask
	
	// ******************
	// Main CPU Loop
	// ******************
	always @ (posedge clk) begin
		// Detect posedge of UP button
		if (!btn_up_en_prev && btn_up_en) begin
			// Do UP button activities
			rc <= rc + 1'b1;
		
		// Detect posedge of DOWN button
		end else if (!btn_down_en_prev && btn_down_en) begin
			// Do DOWN button activities
			rc <= rc - 1'b1;
		
		// Detect posedge of LEFT button
		end else if (!btn_left_en_prev && btn_left_en) begin
			// Do LEFT button activities
			display_reg_mem <= 0;
		
		// Detect posedge of RIGHT button
		end else if (!btn_right_en_prev && btn_right_en) begin
			// Do RIGHT button activities
			display_reg_mem <= 1;
		
		// Detect posedge of SELECT button
		end else if (!btn_sel_en_prev && btn_sel_en) begin
			// Do SELECT button activities
			if (state == `STATE_HALT) state <= prev_state;
			else state <= `STATE_HALT;
		end
		
		case(state)
			
			`STATE_HALT: begin
				mem_read(pc, 0);
				reg_read(0, 1);
			
			end //`STATE_HALT
			
			`STATE_INIT: begin
				if (init_counter == INIT_TIME) begin
					state <= `STATE_PRE_FETCH;
					init_counter <= 0;
				end else begin
					init_counter <= init_counter + 1'b1;
				end
				
			end //`STATE_INIT
			
			`STATE_PRE_FETCH: begin
				mem_read(pc, 0);
				state <= `STATE_FETCH;
			end //`STATE_PRE_FETCH
			
			`STATE_FETCH: begin
				mem_reset_wr_en();
				reg_reset_wr_en();
				state <= `STATE_READ_OPERANDS;
				
			end //`STATE_FETCH
				
			`STATE_READ_OPERANDS: begin
				op_code <= mem_rd_data_A[15:12];
				operand_1 <= mem_rd_data_A[11:6];
				operand_2 <= mem_rd_data_A[5:0];
				state <= `STATE_DECODE;
			end //`STATE_READ_OPERANDS
		
			`STATE_DECODE: begin
				decode();
			end //`STATE_DECODE
		
			`STATE_ALU_OPS: begin
				state <= `STATE_WRITE_RESULT;
			end //`STATE_ALU_OPS
		
			`STATE_MEM_OPS: begin
				state <= `STATE_WRITE_RESULT;
			end //`STATE_MEM_OPS
		
			`STATE_WRITE_RESULT: begin
				reg_write(operand_1, operand_2);
				state <= `STATE_PRE_FETCH;
			end //`STATE_WRITE_RESULT
		
			`STATE_READ_REG: begin
				state <= `STATE_HALT;
			end //`STATE_READ_REG
		
		endcase
		
		// Used as 1Hz debug timer
//		if (seg_1hz == 1000000) begin
//			seg_1hz <= 0;
//		end else begin
//			seg_1hz <= seg_1hz + 1'b1;
//		end
		
		// Store previous state of buttons
		btn_up_en_prev <= btn_up_en;
		btn_down_en_prev <= btn_down_en;
		btn_left_en_prev <= btn_left_en;
		btn_right_en_prev <= btn_right_en;
		btn_sel_en_prev <= btn_sel_en;
		if (state != `STATE_HALT) prev_state <= state;
	end
	
endmodule

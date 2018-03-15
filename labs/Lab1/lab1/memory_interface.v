`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: BU
// Engineer: Josh Wildey
// 
// Create Date:    09:54:04 03/10/2018 
// Module Name:    memory_interface 
// Project Name: Lab 1 - ALU and Microprocessor Design and implementation
// Target Devices: Nexys3 Spartan 6
// Revision 0.01 - File Created
//
//////////////////////////////////////////////////////////////////////////////////
module memory_interface(
	// Pins interfacing with Cellular RAM
	output reg         oe_o,      // Memory Output enable
	output reg         we_o,      // Memory Write Enable
	output reg         adv_o,     // Memory Address Valid
	input  wire        wait_i,    // Memory Wait
	output reg         clk_o,     // Memory Clock
	output reg         ce_o,      // Memory Chip Enable (Device on when LOW)
	output reg         cre_o,     // Memory Control Register Enable (Keep LOW)
	output reg         ub_o,      // Memory Upper Byte Enable
	output reg         lb_o,      // Memory Lower Byte Enable
	output reg  [25:0] addr_o,    // Memory Address  (More address bits available, but only using 12)
	inout  wire [15:0] db_io,     // Memory Data Bus
	// Pins used for interface with parent module
	input  wire        clk,       // 100 MHz Clock in for precise timing
	input  wire [25:0] addr_i,    // Address user wants to access
	input  wire        go_i,      // Go bit to tell state machine to read/write
	input  wire        we_i,      // User input write enable
	input  wire [15:0] data_i,    // Data input
	output reg  [15:0] data_o     // Data output
   );
	
	// Parameter in 10's of ns since that is the resolution of the master clock
	parameter INIT_TIME = 15100;
	parameter PRE_READ_TIME = 2;
	parameter OE_DOWN_TIME = 4;
	parameter WRITE_WE_TIME = 6;
	
	// Memory State
	`define MEM_STATE_INIT 4'd0
	`define MEM_STATE_IDLE 4'd1
	`define MEM_STATE_CE_HIGH 4'd2
	`define MEM_STATE_PRE_READ 4'd3
	`define MEM_STATE_OE_DOWN 4'd4
	`define MEM_STATE_GET_DATA 4'd5
	`define MEM_STATE_PRE_WRITE 4'd6
	`define MEM_STATE_WRITE_WE 4'd7
	`define MEM_STATE_SET_DATA 4'd8
	
	reg [3:0] state = `MEM_STATE_INIT;
	reg       prev_go_i = 1'b0;
	
	reg [13:0] mem_counter = 14'd1;
	
	reg writeToDB = 0;
	
	assign db_io = writeToDB ? data_i : 16'bz;
	
	always @ (posedge clk) begin
		case (state)
			`MEM_STATE_INIT: begin
				
				// Bit Operations
				cre_o <= 0;
				clk_o <= 0;
				addr_o <= 0;
				adv_o <= 1;
				ce_o <= 1;
				lb_o <= 1;
				ub_o <= 1;
				oe_o <= 1;
				we_o <= 1;
				writeToDB <= 0;
				
				// State Change
				if (mem_counter == INIT_TIME) begin
					state <= `MEM_STATE_IDLE;
					mem_counter <= 14'd1;
				end else begin
					mem_counter <= mem_counter + 1'b1;
				end
				
			end //STATE_INIT
			
			`MEM_STATE_IDLE: begin
				
				// Bit Operations
				addr_o <= addr_i;
				adv_o <= 0;
				ce_o <= 1;
				lb_o <= 1;
				ub_o <= 1;
				oe_o <= 1;
				we_o <= 1;
				writeToDB <= 0;
				
				// State Change
				if (!prev_go_i && go_i && !we_i) begin
					state <= `MEM_STATE_CE_HIGH;
					ce_o <= 0;
				end else if (!prev_go_i && go_i && we_i) begin
					state <= `MEM_STATE_PRE_WRITE;
					we_o <= 0;
					oe_o <= 0;
				end else state <= `MEM_STATE_IDLE;
				
			end // STATE_IDLE
		
			`MEM_STATE_CE_HIGH: begin
			
				// Bit Operations
				ce_o <= 1;
				
				// State Change
				state <= `MEM_STATE_PRE_READ;
				
			end // STATE_CE_HIGH
		
			`MEM_STATE_PRE_READ: begin
				
				// Bit Operations
				ce_o <= 0;
				lb_o <= 0;
				ub_o <= 0;
				
				// State Change
				if (mem_counter == PRE_READ_TIME) begin
					state <= `MEM_STATE_OE_DOWN;
					mem_counter <= 14'd1;
				end else begin
					mem_counter <= mem_counter + 1'b1;
				end
				
			end // STATE_PRE_READ
			
			`MEM_STATE_OE_DOWN: begin
			
				// Bit Operations
				oe_o <= 0;
				
				// State Change
				if (mem_counter == OE_DOWN_TIME) begin
					state <= `MEM_STATE_GET_DATA;
					mem_counter <= 14'd1;
				end else begin
					mem_counter <= mem_counter + 1'b1;
				end
				
			end // STATE_OE_DOWN
			
			`MEM_STATE_GET_DATA: begin
			
				// Bit Operations
				ce_o <= 1;
				lb_o <= 1;
				ub_o <= 1;
				oe_o <= 1;
				data_o <= db_io;
				
				// State Change
				state <= `MEM_STATE_IDLE;
				
			end // STATE_GET_DATA
			
			`MEM_STATE_PRE_WRITE: begin
			
				// Bit Operations
				ce_o <= 0;
				lb_o <= 0;
				ub_o <= 0;
				we_o <= 1;
				
				// State Change
				state <= `MEM_STATE_WRITE_WE;
				
			end // STATE_PRE_WRITE
			
			`MEM_STATE_WRITE_WE: begin
			
				// Bit Operations
				we_o <= 0;
				writeToDB <= 1;
				
				// State Change
				if (mem_counter == WRITE_WE_TIME) begin
					state <= `MEM_STATE_SET_DATA;
					mem_counter <= 14'd1;
				end else begin
					mem_counter <= mem_counter + 1'b1;
				end
				
			end // STATE_WRITE_WE
			
			`MEM_STATE_SET_DATA: begin
			
				// Bit Operations
				we_o <= 1;
				
				// State Change
				state <= `MEM_STATE_IDLE;
				
			end // STATE_SET_DATA
			
		endcase
		
		prev_go_i <= go_i;
		
	end // Always @ posedge clk

endmodule

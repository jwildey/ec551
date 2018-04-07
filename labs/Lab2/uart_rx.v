`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: BU
// Engineer: Josh Wildey
// 
// Create Date:    14:30:14 04/07/2018 
// Module Name:    uart_rx 
// Project Name: Lab 2 - Peripheral and Processor Integration with I/O
// Target Devices: Nexys3 Spartan 6
// Revision 0.01 - File Created
//
//////////////////////////////////////////////////////////////////////////////////
module uart_rx(
	input wire       clk,          // Input clock from FPGA
	input wire       uart_data_in, // UART Serial Data line in
	output reg       byte_rxed,    // Signal for when 1 byte has been recevied (high for 1 cycle)
	output reg [7:0] rx_byte       // Byte of data received
   );
	
	parameter UART_RATE = 115200;
	
	// State definitions
	`define STATE_IDLE         3'b000
	`define STATE_RX_START_BIT 3'b001
	`define STATE_RX_DATA_BITS 3'b010
	`define STATE_RX_STOP_BIT  3'b011
	`define STATE_CLEANUP      3'b100
	
	reg [2:0] state = `STATE_IDLE;  // register to save current state;
	
	
	
	always @ (posedge clk) begin
		case (state)
			`STATE_IDLE: begin
			end
			
			`STATE_RX_START_BIT: begin
			end
			
			`STATE_RX_DATA_BITS: begin
			end
			
			`STATE_RX_STOP_BIT: begin
			end
			
			`STATE_CLEANUP: begin
			end
			
			default: begin
				state <= `STATE_IDLE;
			end
			
		endcase	
	end


endmodule

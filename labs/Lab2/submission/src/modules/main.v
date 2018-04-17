`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: BU
// Engineer: Josh Wildey
// 
// Create Date:    14:31:44 04/07/2018 
// Module Name:    main 
// Project Name: Lab 2 - Peripheral and Processor Integration with I/O
// Target Devices: Nexys3 Spartan 6
// Revision 0.01 - File Created
//
//////////////////////////////////////////////////////////////////////////////////

`include "keyboard_controller.v"
`include "uart_rx.v"
`include "uart_tx.v"
`include "uart_tx_buffer.v"
`include "seg_display.v"
`include "logic.v"

module main(
	input  wire       clk_in,          // 100 MHz (10 ns) clock in
	input  wire       rst,
	input  wire       PS2KeyboardData, // Keyboard Data Input
	input  wire       PS2KeyboardClk,  // Keyboard Clock Input
	input  wire       RxD,             // UART RX Port
	output wire       TxD,             // UART TX Port
	output wire [7:0] seg,             // 7 Segment Display
	output wire [3:0] an,              // Anodes for the 4 different 7 Segments
	output wire [7:0] led              // 8 LEDs above switches
   );
	
	// Keyboard Variables
	wire [7:0] key;
	wire       shift;
	keyboard_controller keyboard (
		.clk(PS2KeyboardClk),
		.data(PS2KeyboardData),
		.key(key),
		.shift(shift)
	);
	
	// UART Receive
	wire       byte_rxed;
	reg  [7:0] rx_byte_pre;
	wire [7:0] rx_byte;
	uart_rx serial_rx(
		.clk(clk_in),
		.uart_data_in(RxD),
		.byte_rxed(byte_rxed),
		.rx_byte(rx_byte)
	);
	
		// UART Transmit
	reg       tx_wr_pre;
	reg       tx_wr;
	reg [7:0] tx_data;
	wire      tx_active;
	wire      tx_done;
	
	wire [7:0] uart_logic_tx_data;
   wire uart_logic_tx_valid;
	uart_tx serial_tx(
		.clk(clk_in),
		//.tx_wr(tx_wr),
		//.tx_byte(tx_data),
      .tx_wr(uart_logic_tx_valid),
      .tx_byte(uart_logic_tx_data),
		.tx_active(tx_active),
		.tx_data_out(TxD),
		.tx_done(tx_done)
	);
	
	// 7 Segment Display Variables
	seg_display sev_seg_display (
		.clk(clk_in),
		.value({rx_byte, key}),  // upper byte UART Rx, lower byte keyboard key
		.seg(seg),
		.an(an)
	);
	
	wire [7:0] logic_char_data;
   wire       logic_char_valid;
	Logic mlogic (
        .key_in(rx_byte),
        .key_valid(byte_rxed),

        .print_char(logic_char_data),
        .print_valid(logic_char_valid),

        .clk(clk_in),
        .rst(rst)
    );
	
	UartTxBuffer tx_buff (
        .byte_in(logic_char_data),
        .in_valid(logic_char_valid),

        .byte_out(uart_logic_tx_data),
        .out_advance(tx_done),
        .out_ready(uart_logic_tx_valid),

        .clk(clk_in),
        .rst(rst)
    );
	
	always @(posedge clk_in) begin
		if (tx_wr_pre) tx_wr <= 1'b0; // reset tx_wr
		if (rx_byte_pre == 8'h0D) begin
			if (!tx_active) begin
				tx_data <= 8'h0A;
				tx_wr <= 1'b1;
				rx_byte_pre <= 8'h00;
			end
		end else if (byte_rxed)	begin
			tx_data <= rx_byte;
			tx_wr <= 1'b1;
			rx_byte_pre <= rx_byte;
		end
		tx_wr_pre <= tx_wr;
	end
	
	assign led = {4'd0, tx_wr_pre, tx_wr, byte_rxed, shift};

endmodule

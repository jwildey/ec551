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
module main(
	input  wire       clk_in,          // 100 MHz clock in
	input  wire       PS2KeyboardData, // Keyboard Data Input
	input  wire       PS2KeyboardClk,  // Keyboard Clock Input
	input  wire       RxD,             // UART RX Port
	output reg        TxD,             // UART TX Port
	output wire [7:0] seg,             // 7 Segment Display
	output wire [3:0] an               // Anodes for the 4 different 7 Segments
   );
	
	// 7 Segment Display Variables
	reg [15:0] seg_disp = 16'd0;
	
	seg_display sev_seg_display (
		.clk(clk_in),
		.value(seg_disp),
		.seg(seg),
		.an(an)
	);


endmodule

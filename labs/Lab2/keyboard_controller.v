`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: BU
// Engineer: Josh Wildey
// 
// Create Date:    14:31:26 04/07/2018 
// Module Name:    keyboard_controller 
// Project Name: Lab 2 - Peripheral and Processor Integration with I/O
// Target Devices: Nexys3 Spartan 6
// Revision 0.01 - File Created
// Description:
//   Used keyboard controller code from:
//   https://github.com/BU-EC551/Hnefatafl/blob/master/keyboardtest/keyboardtest.v
//
//////////////////////////////////////////////////////////////////////////////////
module keyboard_controller(
	input wire       clk,  // Clock from keyboard
	input wire       data, // Data from keyboard
	output reg [7:0] key   // Key pressed on keyboard
   );
	
	reg [7:0] data_curr; 
	reg [7:0] data_pre; 
	reg [3:0] b; 
	reg flag; 
 
	initial 
	begin 
		b<=4'h1; 
		flag<=1'b0; 
		data_curr<=8'hf0; 
		data_pre<=8'hf0; 
		key<=8'hf0; 
	end 
	 
	always @(negedge clk) //Activating at negative edge of clock from keyboard 
	begin 
		case(b) 
		1:; //first bit 
		2:data_curr[0]<=data; 
		3:data_curr[1]<=data; 
		4:data_curr[2]<=data; 
		5:data_curr[3]<=data; 
		6:data_curr[4]<=data; 
		7:data_curr[5]<=data; 
		8:data_curr[6]<=data; 
		9:data_curr[7]<=data; 
		10:flag<=1'b1; //Parity bit 
		11:flag<=1'b0; //Ending bit 
		endcase
		
		if(b<=10) b<=b+1; 
		else if(b==11) b<=1; 
		
	end 
	 
	always@(posedge flag) // Printing data obtained to led 
	begin 
		if(data_curr==8'hf0) key<=data_pre; 
		else data_pre<=data_curr; 
	end

endmodule

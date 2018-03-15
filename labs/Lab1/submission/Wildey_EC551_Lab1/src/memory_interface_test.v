`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:42:05 03/10/2018
// Design Name:   memory_interface
// Module Name:   C:/School/EC551/Lab1/lab1/memory_interface_test.v
// Project Name:  lab1
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: memory_interface
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module memory_interface_test;

	// Inputs
	reg wait_i;
	reg clk_in;
	reg [25:0] mem_addr;
	reg mem_go;
	reg mem_wr;
	reg [15:0] mem_data_write;

	// Outputs
	wire oe_o;
	wire we_o;
	wire adv_o;
	wire clk_o;
	wire ce_o;
	wire cre_o;
	wire ub_o;
	wire lb_o;
	wire [25:0] addr_o;
	wire [15:0] db_io;
	reg [15:0] mem_data_read;

	// Instantiate the Unit Under Test (UUT)
	memory_interface uut (
		.oe_o(oe_o), 
		.we_o(we_o), 
		.adv_o(adv_o), 
		.wait_i(wait_i), 
		.clk_o(clk_o), 
		.ce_o(ce_o), 
		.cre_o(cre_o), 
		.ub_o(ub_o), 
		.lb_o(lb_o), 
		.addr_o(addr_o),
		.db_io(db_io),
		.clk(clk_in),
		.addr_i(mem_addr),
		.go_i(mem_go),
		.we_i(mem_wr),
		.data_i(mem_data_write),
		.data_o(mem_data_read)
	);

	initial begin
		// Initialize Inputs
		wait_i = 0;
		clk_in = 0;
		mem_addr = 0;
		mem_go = 0;
		mem_wr = 0;
		mem_data_write = 0;

		// Wait 200 us to get past init state
		#200000;
        
		// Read Test
		mem_addr <= 31;
		mem_go <= 1;
		mem_wr <= 0;
		#1000 mem_go <= 0; // Next us turn go off
		
		# 1000000  // wait a ms
		
		// Write Test
		mem_addr <= 20;
		mem_go <= 1;
		mem_wr <= 1;
		mem_data_write <= 16'hBEEF;
		#1000 mem_go <= 0; // Next us turn go off

	end
      
	always begin
		#5 clk_in = !clk_in;
	end	
	
endmodule


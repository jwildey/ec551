`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: BU
// Engineer: Josh Wildey
// 
// Create Date:    14:27:14 03/24/2018 
// Module Name:    main 
// Project Name: Memory VGA
// Target Devices: Nexys3 Spartan 6
// Revision 0.01 - File Created
//
//////////////////////////////////////////////////////////////////////////////////
module main(
	input  wire        clk_in,    // 100 MHz clock in
	output wire [7:0]  rgb,       // 8-bit color for VGA output
   output wire        hsync,     // Horizontal Sync for VGA
   output wire        vsync,     // Vertical Sync for VGA
	input  wire        btn_up,    // Up button
	input  wire        btn_down,  // Down button
	input  wire        btn_left,  // Left button
	input  wire        btn_right, // Right button
	input  wire        btn_sel,   // Select button
	output wire [7:0]  seg,       // 7 Segment display
   output wire [3:0]  an,        // Anodes for the 4 different 7 Segments
	output wire        MemOE,     // Memory Output enable
	output wire        MemWR,     // Memory Write Enable
	output wire        MemAdv,    // Memory Address Valid
	input  wire        MemWait,   // Memory Wait
	output wire        MemClk,    // Memory Clock
	output wire        RamCS,     // Memory Chip Enable (Device on when LOW)
	output wire        RamCRE,    // Memory Control Register Enable (Keep LOW)
	output wire        RamUB,     // Memory Upper Byte Enable
	output wire        RamLB,     // Memory Lower Byte Enable
	output wire [25:0] MemAdr,    // Memory Address Bus
	inout  wire [15:0] MemDB      // Memory Data Bus
   );
	
	// Pixel Clock Variables for VGA control
	reg pixel_clk_count = 1'd0;
	reg pixel_clk = 1'b0;
	
	// Divide the Clock to 25 MHz for Pixel Clock
	always @ (posedge(clk_in)) begin
		if (pixel_clk_count) begin
			pixel_clk_count <= 0;
			pixel_clk <= ~pixel_clk;
		end else begin
			pixel_clk_count <= pixel_clk_count + 1;
		end
	end
	
	// VGA Controller
	wire HS;
	wire VS;
	wire [10:0] col;
	wire [10:0] row;
	wire blank;
	
	vga_controller_640_60 vga_controller (
		.pixel_clk(pixel_clk), 
		.HS(HS), 
		.VS(VS), 
		.hcounter(col), 
		.vcounter(row), 
		.blank(blank)
	);
	
	assign hsync = HS;
	assign vsync = VS;	
	
	reg [18:0] curr_pixel;
	reg [11:0] mem_read_addr;
	reg [7:0] mem_bus_idx;
	
	always @ (posedge pixel_clk) begin
		// need to account for front porches for rows/columns
		//if (col >= 16 && row >= 10) begin
		curr_pixel = (640 * (row - 10)) + (col - 16);
		//if (curr_pixel == 3840) curr_pixel = 0;
		mem_read_addr = (curr_pixel / 128);
		mem_bus_idx = (curr_pixel % 128);
		//end
	end
	
	assign rgb = 8'b11111111;
	
	// Enable Signals for the Buttons after Debouncing
	// Should only be high for one cycle for each press
	reg rst;
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
		.clk(clk_in),
		.noisy(btn_up),
		.clean(btn_up_en)
	);
	
	debouncer debouncer_btn_down (
		.rst(rst),
		.clk(clk_in),
		.noisy(btn_down),
		.clean(btn_down_en)
	);
	
	debouncer debouncer_btn_left (
		.rst(rst),
		.clk(clk_in),
		.noisy(btn_left),
		.clean(btn_left_en)
	);
	
	debouncer debouncer_btn_right (
		.rst(rst),
		.clk(clk_in),
		.noisy(btn_right),
		.clean(btn_right_en)
	);
	
	debouncer debouncer_btn_sel (
		.rst(rst),
		.clk(clk_in),
		.noisy(btn_sel),
		.clean(btn_sel_en)
	);
	
	// *********************
	// Button Handling Loop
	// *********************
	always @ (posedge clk_in) begin
		// Detect posedge of UP button
		if (!btn_up_en_prev && btn_up_en) begin
			// Do UP button activities
			mem_addr <= mem_addr + 1'b1;
		
		// Detect posedge of DOWN button
		end else if (!btn_down_en_prev && btn_down_en) begin
			// Do DOWN button activities
			mem_addr <= mem_addr - 1'b1;
		
		// Detect posedge of LEFT button
		end else if (!btn_left_en_prev && btn_left_en) begin
			// Do LEFT button activities
		
		// Detect posedge of RIGHT button
		end else if (!btn_right_en_prev && btn_right_en) begin
			// Do RIGHT button activities
			mem_read(mem_addr);
		
		// Detect posedge of SELECT button
		end else if (!btn_sel_en_prev && btn_sel_en) begin
			// Do SELECT button activities
			seg_disp_toggle <= ~seg_disp_toggle;
		end
		
		// Store previous state of buttons
		btn_up_en_prev <= btn_up_en;
		btn_down_en_prev <= btn_down_en;
		btn_left_en_prev <= btn_left_en;
		btn_right_en_prev <= btn_right_en;
		btn_sel_en_prev <= btn_sel_en;
	end
	
	// 7 Segment Display Variables
	reg         seg_disp_toggle = 1'b1;
	reg  [19:0] seg_1hz = 20'd0;
	wire [15:0] seg_disp;
	
	assign seg_disp = seg_disp_toggle ? mem_addr[15:0] : mem_data_read;
	
	seg_display sev_seg_display (
		.clk(clk_in),
		.value(seg_disp),
		.seg(seg),
		.an(an)
	);
	
	// Memory
	reg  [25:0] mem_addr = 0;
	reg         mem_go = 1'b0;
	reg         mem_wr = 1;
	wire [15:0] mem_data_read;
	reg  [15:0] mem_data_write = 0;
	
	memory_interface cell_ram(
		.oe_o(MemOE),  
		.we_o(MemWR),  
		.adv_o(MemAdv), 
		.wait_i(MemWait),
		.clk_o(MemClk), 
		.ce_o(RamCS),  
		.cre_o(RamCRE), 
		.ub_o(RamUB),  
		.lb_o(RamLB),  
		.addr_o(MemAdr),
		.db_io(MemDB),
		.clk(clk_in),   
		.addr_i(mem_addr),
		.go_i(mem_go),  
		.we_i(mem_wr),
		.data_i(mem_data_write),
		.data_o(mem_data_read)
	);
	
	task mem_read;
		input [25:0] addr;
		
		begin
			mem_addr <= addr;
			mem_wr <= 1'b0;
			mem_go <= 1'b1;
		end
	endtask
	
	task mem_write;
		input [25:0] addr;
		input [15:0] data;
		
		begin
			mem_addr <= addr;
			mem_data_write <= data;
			mem_wr <= 1'b1;
		end
	endtask
	
	task mem_reset_wr_en;
		begin
			mem_wr <= 1'b0;
		end
	endtask

endmodule

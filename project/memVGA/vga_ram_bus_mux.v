`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:44:49 03/25/2018 
// Design Name: 
// Module Name:    vga_ram_bus_mux 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module vga_ram_bus_mux(
	input wire [1023:0] bus,
	input wire [7:0]    idx,
	output reg [7:0]    out
   );

	always @(*) begin
		case (idx)
			  0: out = bus[7:0];
			  1: out = bus[15:8];
			  2: out = bus[23:16];
			  3: out = bus[31:24];
			  4: out = bus[39:32];
			  5: out = bus[47:40];
			  6: out = bus[55:48];
			  7: out = bus[63:56];
			  8: out = bus[71:64];
			  9: out = bus[79:72];
			 10: out = bus[87:80];
			 11: out = bus[95:88];
			 12: out = bus[103:96];
			 13: out = bus[111:104];
			 14: out = bus[119:112];
			 15: out = bus[127:120];
			 16: out = bus[135:128];
			 17: out = bus[143:136];
			 18: out = bus[151:144];
			 19: out = bus[159:152];
			 20: out = bus[167:160];
			 21: out = bus[175:168];
			 22: out = bus[183:176];
			 23: out = bus[191:184];
			 24: out = bus[199:192];
			 25: out = bus[207:200];
			 26: out = bus[215:208];
			 27: out = bus[223:216];
			 28: out = bus[231:224];
			 29: out = bus[239:232];
			 30: out = bus[247:240];
			 31: out = bus[255:248];
			 32: out = bus[263:256];
			 33: out = bus[271:264];
			 34: out = bus[279:272];
			 35: out = bus[287:280];
			 36: out = bus[295:288];
			 37: out = bus[303:296];
			 38: out = bus[311:304];
			 39: out = bus[319:312];
			 40: out = bus[327:320];
			 41: out = bus[335:328];
			 42: out = bus[343:336];
			 43: out = bus[351:344];
			 44: out = bus[359:352];
			 45: out = bus[367:360];
			 46: out = bus[375:368];
			 47: out = bus[383:376];
			 48: out = bus[391:384];
			 49: out = bus[399:392];
			 50: out = bus[407:400];
			 51: out = bus[415:408];
			 52: out = bus[423:416];
			 53: out = bus[431:424];
			 54: out = bus[439:432];
			 55: out = bus[447:440];
			 56: out = bus[455:448];
			 57: out = bus[563:456];
			 58: out = bus[471:464];
			 59: out = bus[479:472];
			 60: out = bus[487:480];
			 61: out = bus[495:488];
			 62: out = bus[503:496];
			 63: out = bus[511:504];
			 64: out = bus[519:512];
			 65: out = bus[527:520];
			 66: out = bus[535:528];
			 67: out = bus[543:536];
			 68: out = bus[551:544];
			 69: out = bus[559:552];
			 70: out = bus[567:560];
			 71: out = bus[575:568];
			 72: out = bus[583:576];
			 73: out = bus[591:584];
			 74: out = bus[599:592];
			 75: out = bus[607:600];
			 76: out = bus[615:608];
			 77: out = bus[623:616];
			 78: out = bus[631:624];
			 79: out = bus[639:632];
			 80: out = bus[647:640];
			 81: out = bus[655:648];
			 82: out = bus[663:656];
			 83: out = bus[671:664];
			 84: out = bus[679:672];
			 85: out = bus[687:680];
			 86: out = bus[695:688];
			 87: out = bus[703:696];
			 88: out = bus[711:704];
			 89: out = bus[719:712];
			 90: out = bus[727:720];
			 91: out = bus[735:728];
			 92: out = bus[743:736];
			 93: out = bus[751:744];
			 94: out = bus[759:752];
			 95: out = bus[767:760];
			 96: out = bus[775:768];
			 97: out = bus[783:776];
			 98: out = bus[791:784];
			 99: out = bus[799:792];
			100: out = bus[807:800];
			101: out = bus[815:808];
			102: out = bus[823:816];
			103: out = bus[831:824];
			104: out = bus[839:832];
			105: out = bus[847:840];
			106: out = bus[855:848];
			107: out = bus[863:856];
			108: out = bus[871:864];
			109: out = bus[879:872];
			110: out = bus[887:880];
			111: out = bus[895:888];
			112: out = bus[903:896];
			113: out = bus[911:904];
			114: out = bus[919:912];
			115: out = bus[927:920];
			116: out = bus[935:928];
			117: out = bus[943:936];
			118: out = bus[951:944];
			119: out = bus[959:952];
			120: out = bus[967:960];
			121: out = bus[975:968];
			122: out = bus[983:976];
			123: out = bus[991:984];
			124: out = bus[999:992];
			125: out = bus[1007:1000];
			126: out = bus[1015:1008];
			127: out = bus[1023:1016];
			default: out = bus[7:0];
		endcase
	end

endmodule

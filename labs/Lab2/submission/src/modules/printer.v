`ifndef _include_printer_
`define _include_printer_

`define STRING_NONE    3'b000
`define STRING_INTRO   3'b001
`define STRING_BENCH   3'b010
`define STRING_ALU     3'b011
`define STRING_CPU     3'b100
`define STRING_INVALID 3'b101
`define STRING_REPORT  3'b110


`define REPORT_NONE  3'b000
`define REPORT_ALU   3'b001
`define REPORT_CPU   3'b010
`define REPORT_BENCH 3'b011

module Printer (
        output reg         print_en,
        output reg  [ 7:0] print_char,
        output reg         print_done,

        input  wire [ 7:0] key_in,
        input  wire        key_valid,

        input  wire [15:0] alu_in,
        input  wire        alu_valid,

        input  wire [31:0] cpu_in,
        input  wire        cpu_valid,

        input  wire [ 7:0] bench_in,
        input  wire        bench_valid,

        input  wire [ 2:0] print_cmd,

        input  wire        clk,
        input  wire        rst
    );

    reg [6:0] print_counter;

    reg [2:0] print_report_target;

    always @(posedge clk) begin
        if (rst) begin
            print_report_target <= `REPORT_NONE;
        end else if (alu_valid) begin
            print_report_target <= `REPORT_ALU;
        end else if (cpu_valid) begin
            print_report_target <= `REPORT_CPU;
        end else if (bench_valid) begin
            print_report_target <= `REPORT_BENCH;
        end
    end

    always @(posedge clk) begin
        if (rst) begin
            print_en <= 0;
            print_counter <= 0;
            print_char <= 0;
            print_done <= 0;

        end else if (print_cmd == `STRING_NONE) begin
            if (key_valid) begin
                print_en <= 1;
					 print_char <= key_in;
						
            end else begin
                print_en <= 0;
                print_char <= 0;
            end
            print_counter <= 0;
            print_done <= 0;

        end else if (print_cmd == `STRING_INTRO) begin
            case (print_counter)
                `include "string_intro.v"
            endcase

        end else if (print_cmd == `STRING_BENCH) begin
            case (print_counter)
                `include "string_bench.v"
            endcase
        
        end else if (print_cmd == `STRING_ALU) begin
            case (print_counter)
                `include "string_alu.v"
            endcase

        end else if (print_cmd == `STRING_CPU) begin
            case (print_counter)
                `include "string_cpu.v"
            endcase

        end else if (print_cmd == `STRING_INVALID) begin
            case (print_counter)
                `include "string_invalid.v"
            endcase

        end else if (print_cmd == `STRING_REPORT) begin
            if (print_report_target == `REPORT_ALU) begin
                case (print_counter)
                    0: begin print_char <= alu_in[15:8]; print_counter <= print_counter + 1; print_en <= 1; end
                    1: begin print_char <= alu_in[7:0]; print_counter <= print_counter + 1; print_en <= 1; end
						  2: begin print_char <= 13; print_counter <= print_counter + 1; print_en <= 1; end
                    default: begin print_char <= 0; print_en <= 0; print_done <= 1; end
                endcase
            end else if (print_report_target == `REPORT_CPU) begin
                case (print_counter)
                    0: begin print_char <= cpu_in[31:24]; print_counter <= print_counter + 1; print_en <= 1; end
                    1: begin print_char <= cpu_in[23:16]; print_counter <= print_counter + 1; print_en <= 1; end
                    2: begin print_char <= cpu_in[15:8]; print_counter <= print_counter + 1; print_en <= 1; end
                    3: begin print_char <= cpu_in[7:0]; print_counter <= print_counter + 1; print_en <= 1; end
						  4: begin print_char <= 13; print_counter <= print_counter + 1; print_en <= 1; end
                    default: begin print_char <= 0; print_en <= 0; print_done <= 1; end
                endcase
            end else if (print_report_target == `REPORT_BENCH) begin
                if (bench_valid) begin
                    print_char <= bench_in;
                    print_en <= 1;
                end else begin
                    print_char <= 0;
                    print_done <= 1;
                    print_en <= 0;
                end
            end


        end else begin
            print_en <= 0;
            print_counter <= 0;
            print_char <= 0;
        end
    end
endmodule
`endif // _include_printer_

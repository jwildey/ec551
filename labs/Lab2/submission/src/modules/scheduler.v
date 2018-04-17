`ifndef _include_scheduler_
`define _include_scheduler_

`define INPUT_STATE_BLOCKED 1'b0
`define INPUT_STATE_ALLOWED 1'b1

`define EXEC_STATE_INTRO 2'b00
`define EXEC_STATE_BENCH 2'b01
`define EXEC_STATE_CPU   2'b10
`define EXEC_STATE_ALU   2'b11

`include "printer.v"
`include "intro_command.v"

module Scheduler (
        output reg        state_input,
        output reg  [2:0] state_string,
        output reg  [1:0] state_exec,

        input  wire       printer_done,

        input  wire [2:0] intro_command,
        input  wire       intro_command_valid,

        input  wire       alu_output_valid,
        input  wire       cpu_output_valid,
        input  wire       bench_output_valid,

        input  wire       clk,
        input  wire       rst
    );

    always @(posedge clk) begin
        if (rst) begin
            state_input <= `INPUT_STATE_BLOCKED;
            state_exec <= `EXEC_STATE_INTRO;
            state_string <= `STRING_INTRO;
        end else if (printer_done) begin
            state_input <= `INPUT_STATE_ALLOWED;
            state_string <= `STRING_NONE;
        end else if (state_exec == `EXEC_STATE_INTRO && intro_command_valid) begin
            if (intro_command == `INTRO_ENTER_CPU) begin
                state_input <= `INPUT_STATE_BLOCKED;
                state_exec <= `EXEC_STATE_CPU;
                state_string <= `STRING_CPU;
            end else if (intro_command == `INTRO_ENTER_ALU) begin
                state_input <= `INPUT_STATE_BLOCKED;
                state_exec <= `EXEC_STATE_ALU;
                state_string <= `STRING_ALU;
            end else if (intro_command == `INTRO_ENTER_BENCH) begin
                state_input <= `INPUT_STATE_BLOCKED;
                state_exec <= `EXEC_STATE_BENCH;
                state_string <= `STRING_BENCH;
            end else if (intro_command == `INTRO_PRINT_INVALID) begin
                state_input <= `INPUT_STATE_BLOCKED;
                state_string <= `STRING_INVALID;
            end
        end else if (state_exec == `EXEC_STATE_ALU && alu_output_valid) begin
            state_string <= `STRING_REPORT;
        end else if (state_exec == `EXEC_STATE_CPU && cpu_output_valid) begin
            state_string <= `STRING_REPORT;
        end else if (state_exec == `EXEC_STATE_BENCH && bench_output_valid) begin
            state_string <= `STRING_REPORT;
        end
    end

endmodule


`endif // _include_scheduler_

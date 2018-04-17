`include "scheduler.v"
`include "kb_buffer.v"
`include "intro_command.v"
`include "alu_command.v"
`include "cpu_command.v"
`include "bench_command.v"
`include "printer.v"
`include "cpu.v"

module Logic (
        input wire [7:0] key_in,
        input wire key_valid,

        output wire [7:0] print_char,
        output wire print_valid,

        input wire clk,
        input wire rst
    );

    wire [127:0] buffer;
    wire buffer_valid;

    wire print_done;

    wire [2:0] intro_command;
    wire intro_command_valid;

    wire [15:0] alu_print;
    wire alu_print_valid;

    wire [31:0] cpu_print;
    wire cpu_print_valid;

    wire [7:0] bench_print;
    wire bench_valid;

    wire [2:0] state_print;
    wire [1:0] state_exec;
    wire state_input;
    
    Scheduler scheduler (
        .state_input(state_input),
        .state_string(state_print),
        .state_exec(state_exec),

        .printer_done(print_done),

        .intro_command(intro_command),
        .intro_command_valid(intro_command_valid),

        .alu_output_valid(alu_print_valid),
        .cpu_output_valid(cpu_print_valid),
        .bench_output_valid(bench_print_valid),

        .clk(clk),
        .rst(rst)
    );

    Printer printer (
        .print_en(print_valid),
        .print_char(print_char),
        .print_done(print_done),

        .key_in(key_in),
        .key_valid(key_valid),

        .alu_in(alu_print),
        .alu_valid(alu_print_valid),

        .cpu_in(cpu_print),
        .cpu_valid(cpu_print_valid),

        .bench_in(bench_print),
        .bench_valid(bench_print_valid),

        .print_cmd(state_print),

        .clk(clk),
        .rst(rst)
    );

    KbBuffer keybuff (
        .key(key_in),
        .key_valid(key_valid),

        .buffer_out(buffer),
        .buffer_valid(buffer_valid),
        
        .clk(clk),
        .rst(rst)
    );

    IntroCommand icommand (
        .buffer(buffer),
        .buffer_valid(buffer_valid),

        .command(intro_command),
        .command_valid(intro_command_valid),

        .clk(clk),
        .rst(rst)
    );

    AluCommand acommand (
        .buffer(buffer),
        .buffer_valid(buffer_valid),

        .print_out(alu_print),
        .print_valid(alu_print_valid),

        .clk(clk),
        .rst(rst || (state_exec != `EXEC_STATE_ALU))
    );

    CpuCommand ccommand (
        .buffer(buffer),
        .buffer_valid(buffer_valid),

        .print_data(cpu_print),
        .print_valid(cpu_print_valid),
        
        .clk(clk),
        .rst(rst || (state_exec != `EXEC_STATE_CPU))
    );

    BenchCommand bcommand (
        .buffer(buffer),
        .buffer_valid(buffer_valid),

        .print_data(bench_print),
        .print_valid(bench_print_valid),

        .clk(clk),
        .rst(rst || (state_exec != `EXEC_STATE_BENCH))
    );

endmodule

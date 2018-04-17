`ifndef _include_intro_command_
`define _include_intro_command_

`define INTRO_ENTER_CPU     3'b000
`define INTRO_ENTER_ALU     3'b001
`define INTRO_ENTER_BENCH   3'b010
`define INTRO_PRINT_INVALID 3'b011

module IntroCommand (
        input wire [127:0] buffer,
        input wire         buffer_valid,

        output reg [2:0] command,
        output reg       command_valid,

        input wire clk,
        input wire rst
    );

    always @(posedge clk) begin
        case (buffer[127:120])
            "I": command <= `INTRO_ENTER_CPU;
            "A": command <= `INTRO_ENTER_ALU;
            "B": command <= `INTRO_ENTER_BENCH;
            default: command <= `INTRO_PRINT_INVALID;
        endcase
        
        command_valid <= buffer_valid;
    end

endmodule

`endif // _include_command_

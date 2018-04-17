`ifndef _include_alu_command_
`define _include_alu_command_

`define ALU_CMD_XOR 3'b000
`define ALU_CMD_ADD 3'b001
`define ALU_CMD_SUB 3'b010
`define ALU_CMD_MUL 3'b011
`define ALU_CMD_QQQ 3'b100

module AluCommand (
        input  wire [127:0] buffer,
        input  wire         buffer_valid,

        output reg  [ 15:0] print_out,
        output reg          print_valid,

        input  wire         clk,
        input  wire         rst
    );

    reg [2:0] A, B;
    reg [2:0] cmd;
    reg [5:0] result;

    always @(*) begin
        case (buffer[127:120])
            "0": A = 3'd0;
            "1": A = 3'd1;
            "2": A = 3'd2;
            "3": A = 3'd3;
            "4": A = 3'd4;
            "5": A = 3'd5;
            "6": A = 3'd6;
            "7": A = 3'd7;
            default: A = 3'd0;
        endcase
    end

    always @(*) begin
        case (buffer[95:88])
            "0": B = 3'd0;
            "1": B = 3'd1;
            "2": B = 3'd2;
            "3": B = 3'd3;
            "4": B = 3'd4;
            "5": B = 3'd5;
            "6": B = 3'd6;
            "7": B = 3'd7;
            default: B = 3'd0;
        endcase
    end

    always @(*) begin
        case (buffer[111:104])
            "^": cmd = `ALU_CMD_XOR;
            "+": cmd = `ALU_CMD_ADD;
            "-": cmd = `ALU_CMD_SUB;
            "#": cmd = `ALU_CMD_MUL;
            default: cmd = `ALU_CMD_QQQ;
        endcase
    end

    always @(*) begin
        case (cmd)
            `ALU_CMD_XOR: result = {3'b0, A ^ B};
            `ALU_CMD_ADD: result = A + B;
            `ALU_CMD_SUB: result = A - B;
            `ALU_CMD_MUL: result = A * B;
				`ALU_CMD_QQQ: result = 0;
				default: result = 0;
        endcase
    end

    always @(posedge clk) begin
        if (rst) begin
            print_out <= {2{8'b00100000}};
            print_valid <= 0;

        end else if (buffer_valid) begin
            print_out[15:8] <= (result / 10) + "0";
            print_out[7:0] <= (result % 10) + "0";
            print_valid <= 1;
        end else begin
            print_valid <= 0;
        end
    end
endmodule
`endif // _include_alu_command_


`ifndef _include_bench_command_
`define _include_bench_command_

module BenchCommand (
        input  wire [127:0] buffer,
        input  wire         buffer_valid,

        output reg  [  7:0] print_data,
        output reg          print_valid,

        input  wire         clk,
        input  wire         rst
    );

    reg [2:0] A [2:0] [2:0];
    reg [2:0] B [2:0] [2:0];

    reg [2:0] load_counter;

    reg [1:0] print_row;
    reg [1:0] print_col;
    reg [1:0] print_digit;

    wire [7:0] out_result;

    assign out_result = (
        A[print_col][0] * B[0][print_row] +
        A[print_col][1] * B[1][print_row] +
        A[print_col][2] * B[2][print_row]
    );

    function automatic [2:0] decode_ascii;
        input [7:0] data;
        case (data)
                "0": decode_ascii = 3'b000;
                "1": decode_ascii = 3'b001;
                "2": decode_ascii = 3'b010;
                "3": decode_ascii = 3'b011;
                "4": decode_ascii = 3'b100;
                "5": decode_ascii = 3'b101;
                "6": decode_ascii = 3'b110;
                "7": decode_ascii = 3'b111;
                default: decode_ascii = 3'b111;
        endcase
    endfunction

    always @(posedge clk) begin
        if (rst) begin
            load_counter <= 0;
        end else if (0 <= load_counter && load_counter < 6) begin
            if (buffer_valid) begin
                load_counter <= load_counter + 1;
                if (load_counter < 3) begin
                    A [load_counter] [0] <= decode_ascii(buffer[127:120]);
                    A [load_counter] [1] <= decode_ascii(buffer[111:104]);
                    A [load_counter] [2] <= decode_ascii(buffer[ 95: 88]);
                end else begin
                    B [load_counter-3] [0] <= decode_ascii(buffer[127:120]);
                    B [load_counter-3] [1] <= decode_ascii(buffer[111:104]);
                    B [load_counter-3] [2] <= decode_ascii(buffer[ 95: 88]);
                end
            end
        end else if (load_counter < 7) begin
            load_counter <= load_counter + 1;
        end else if (print_row == 3 && print_col == 3) begin
            load_counter <= 0;
        end
    end

    always @(posedge clk) begin
        if (rst) begin
            print_row <= 0;
            print_col <= 0;
            print_digit <= 0;
            print_valid <= 0;
        end else if (load_counter < 6) begin
            print_row <= 0;
            print_col <= 0;
            print_digit <= 0;
            print_valid <= 0;
        end else if (load_counter == 6) begin
            print_valid <= 1;
        end else begin
            print_data <= (
                print_digit == 0 ? "0" + (out_result / 100) :
                print_digit == 1 ? "0" + (out_result % 100) / 10 :
                print_digit == 2 ? "0" + (out_result % 10) :
                (print_row == 2 ? 13 : " ")
            );
            
            print_row <= (
                print_digit != 3 ? print_row :
                print_row == 2 && print_col == 2 ? 3 :
                print_row == 2 ? 0 :
                print_row + 1
            );

            print_col <= (
                (print_row != 2 || print_digit != 3) ? print_col :
                print_col + 1
            );

            print_valid <= ~(print_row == 3 && print_col == 3);


            print_digit <= print_digit + 1;
        end
    end
endmodule

`endif // _include_bench_command_

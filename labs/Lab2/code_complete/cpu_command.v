`ifndef _include_cpu_command_
`define _include_cpu_command_

`include "cpu.v"

module CpuCommand (
        input wire [127:0] buffer,
        input wire         buffer_valid,

        output reg  [31:0] print_data,
        output reg         print_valid,

        input wire clk,
        input wire rst
    );

    reg [15:0] hex_decode;

    reg cpu_rst;

    reg [11:0] mem_addr;
    reg [15:0] mem_data;
    reg        mem_valid;

    wire [111:0] cpu_reg;
    wire cpu_done;

    reg [11:0] print_raw;

    Cpu cpu (
        .regexpose(cpu_reg),
        .done(cpu_done),

        .memhack_addr(mem_addr),
        .memhack_data(mem_data),
        .memhack_valid(mem_valid),

        .clk(clk),
        .rst(cpu_rst)
    );

    always @(posedge clk) begin
        if (rst) begin
            mem_addr <= 31;
            mem_data <= 0;
            mem_valid <= 0;
        end else if (buffer_valid) begin
            if (buffer[127:120] == "r") begin
            end else begin
                mem_data <= hex_decode;
                mem_addr <= mem_addr + 1;
                mem_valid <= 1;
            end
        end else begin
            mem_valid <= 0;
        end
    end

    always @(posedge clk) begin
        if (rst) begin
            cpu_rst <= 1;
            print_valid <= 0;
            print_raw <= 0;
        end else if (buffer_valid) begin
            if (buffer[127:120] == "r") begin
                cpu_rst <= 0;
            end
        end else if (cpu_done) begin
            print_raw <= cpu_reg[11:0];
            print_valid <= 1;
            cpu_rst <= 1;
        end else begin
            print_valid <= 0;
        end
    end

    always @(*) begin
        print_data[31:24] = "0" + (print_raw / 1000);
        print_data[23:16] = "0" + (print_raw % 1000) / 100;
        print_data[15:8]  = "0" + (print_raw % 100 ) / 10;
        print_data[7:0]   = "0" + (print_raw % 10  );
    end


    always @(*) begin
        case (buffer[127:120])
            "0": hex_decode[15:12] = 4'h0;
            "1": hex_decode[15:12] = 4'h1;
            "2": hex_decode[15:12] = 4'h2;
            "3": hex_decode[15:12] = 4'h3;
            "4": hex_decode[15:12] = 4'h4;
            "5": hex_decode[15:12] = 4'h5;
            "6": hex_decode[15:12] = 4'h6;
            "7": hex_decode[15:12] = 4'h7;
            "8": hex_decode[15:12] = 4'h8;
            "9": hex_decode[15:12] = 4'h9;
            "A": hex_decode[15:12] = 4'ha;
            "B": hex_decode[15:12] = 4'hb;
            "C": hex_decode[15:12] = 4'hc;
            "D": hex_decode[15:12] = 4'hd;
            "E": hex_decode[15:12] = 4'he;
            "F": hex_decode[15:12] = 4'hf;
            default: hex_decode[15:12] = 4'h0;
        endcase
    end

    always @(*) begin
        case (buffer[119:112])
            "0": hex_decode[11:8] = 4'h0;
            "1": hex_decode[11:8] = 4'h1;
            "2": hex_decode[11:8] = 4'h2;
            "3": hex_decode[11:8] = 4'h3;
            "4": hex_decode[11:8] = 4'h4;
            "5": hex_decode[11:8] = 4'h5;
            "6": hex_decode[11:8] = 4'h6;
            "7": hex_decode[11:8] = 4'h7;
            "8": hex_decode[11:8] = 4'h8;
            "9": hex_decode[11:8] = 4'h9;
            "A": hex_decode[11:8] = 4'ha;
            "B": hex_decode[11:8] = 4'hb;
            "C": hex_decode[11:8] = 4'hc;
            "D": hex_decode[11:8] = 4'hd;
            "E": hex_decode[11:8] = 4'he;
            "F": hex_decode[11:8] = 4'hf;
            default: hex_decode[11:8] = 4'h0;
        endcase
    end

    always @(*) begin
        case (buffer[111:104])
            "0": hex_decode[7:4] = 4'h0;
            "1": hex_decode[7:4] = 4'h1;
            "2": hex_decode[7:4] = 4'h2;
            "3": hex_decode[7:4] = 4'h3;
            "4": hex_decode[7:4] = 4'h4;
            "5": hex_decode[7:4] = 4'h5;
            "6": hex_decode[7:4] = 4'h6;
            "7": hex_decode[7:4] = 4'h7;
            "8": hex_decode[7:4] = 4'h8;
            "9": hex_decode[7:4] = 4'h9;
            "A": hex_decode[7:4] = 4'ha;
            "B": hex_decode[7:4] = 4'hb;
            "C": hex_decode[7:4] = 4'hc;
            "D": hex_decode[7:4] = 4'hd;
            "E": hex_decode[7:4] = 4'he;
            "F": hex_decode[7:4] = 4'hf;
            default: hex_decode[7:4] = 4'h0;
        endcase
    end

    always @(*) begin
        case (buffer[103:96])
            "0": hex_decode[3:0] = 4'h0;
            "1": hex_decode[3:0] = 4'h1;
            "2": hex_decode[3:0] = 4'h2;
            "3": hex_decode[3:0] = 4'h3;
            "4": hex_decode[3:0] = 4'h4;
            "5": hex_decode[3:0] = 4'h5;
            "6": hex_decode[3:0] = 4'h6;
            "7": hex_decode[3:0] = 4'h7;
            "8": hex_decode[3:0] = 4'h8;
            "9": hex_decode[3:0] = 4'h9;
            "A": hex_decode[3:0] = 4'ha;
            "B": hex_decode[3:0] = 4'hb;
            "C": hex_decode[3:0] = 4'hc;
            "D": hex_decode[3:0] = 4'hd;
            "E": hex_decode[3:0] = 4'he;
            "F": hex_decode[3:0] = 4'hf;
            default: hex_decode[3:0] = 4'h0;
        endcase
    end

endmodule

`endif // _include_cpu_command_

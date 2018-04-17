`include "logic.v"

module main (
    );
    reg clk;
    reg rst;

    reg [7:0] key_in;
    reg key_valid;

    wire [7:0] print_char;
    wire print_valid;

    Logic uut (
        .key_in(key_in),
        .key_valid(key_valid),

        .print_char(print_char),
        .print_valid(print_valid),

        .clk(clk),
        .rst(rst)
    );

    initial begin
        key_in = 0;
        key_valid = 0;
        #1000;
        @(negedge clk);
            key_in = "I";
            key_valid = 1;
        @(negedge clk);
            key_in = 10;
        @(negedge clk);
            key_valid = 0;

        #1000;
        @(negedge clk);
            key_valid = 1;
            key_in = "9";
        @(negedge clk);
            key_in = "0";
        @(negedge clk);
            key_in = "0";
        @(negedge clk);
            key_in = "A";
        @(negedge clk);
            key_in = 10;
        @(negedge clk);
            key_valid = 0;

        #1000;
        @(negedge clk);
            key_valid = 1;
            key_in = "9";
        @(negedge clk);
            key_in = "0";
        @(negedge clk);
            key_in = "8";
        @(negedge clk);
            key_in = "B";
        @(negedge clk);
            key_in = 10;
        @(negedge clk);
            key_valid = 0;

        #1000;
        @(negedge clk);
            key_valid = 1;
            key_in = "9";
        @(negedge clk);
            key_in = "0";
        @(negedge clk);
            key_in = "9";
        @(negedge clk);
            key_in = "8";
        @(negedge clk);
            key_in = 10;
        @(negedge clk);
            key_valid = 0;

        #1000;
        @(negedge clk);
            key_valid = 1;
            key_in = "B";
        @(negedge clk);
            key_in = "0";
        @(negedge clk);
            key_in = "0";
        @(negedge clk);
            key_in = "1";
        @(negedge clk);
            key_in = 10;
        @(negedge clk);
            key_valid = 0;

        #1000;
        @(negedge clk);
            key_valid = 1;
            key_in = "r";
        @(negedge clk);
            key_in = 10;
        @(negedge clk);
            key_valid = 0;

        #1000;
        @(negedge clk);
            key_valid = 1;
            key_in = "r";
        @(negedge clk);
            key_in = 10;
        @(negedge clk);
            key_valid = 0;
    end

    initial begin
        $dumpfile("logic.vcd");
        $dumpvars;
    end

    initial begin
        clk = 1;
        forever #5 clk = ~clk;
    end

    initial begin
        rst = 1;
        #10 rst = 0;
    end

    always @(posedge clk) begin
        if (print_valid) begin
            $write("%c", print_char);
        end
    end

endmodule

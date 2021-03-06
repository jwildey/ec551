`ifndef _include_kb_buffer_
`define _include_kb_buffer_

`define KEY_LINEFEED 8'b00001101

module KbBuffer (
        input  wire [  7:0] key,
        input  wire         key_valid,
        output reg  [127:0] buffer_out,
        output reg          buffer_valid,

        input wire          clk,
        input wire          rst
    );

    integer ii;

    reg [3:0] buffer_pos;
    reg [7:0] buffer [15:0];

    always @(posedge clk) begin
        if (rst) begin
            for (ii=0; ii<16; ii=ii+1) begin
                buffer[ii] <= 0;
            end

            buffer_valid <= 0;
            buffer_pos <= 0;
        end else if (key_valid) begin
            if (key == `KEY_LINEFEED) begin
                buffer_pos <= 0;
                buffer_valid <= 1;
                buffer_out <= {buffer[0], buffer[1], buffer[2], buffer[3],
                               buffer[4], buffer[5], buffer[6], buffer[7],
                               buffer[8], buffer[9], buffer[10], buffer[11],
                               buffer[12], buffer[13], buffer[14], buffer[15]};
            end else begin
                buffer[buffer_pos] <= key;
                buffer_pos <= buffer_pos + 1;
                buffer_valid <= 0;
            end
        end else begin
            buffer_valid <= 0;
        end
    end

endmodule
`endif // _include_kb_buffer_


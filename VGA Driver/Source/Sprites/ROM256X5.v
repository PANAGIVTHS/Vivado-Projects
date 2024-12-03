/*
    This module is a ROM that stores the pixel data for a sprite.

    Inputs:
        - line: The line of the sprite to read from
        - offset: The offset of the sprite to read from

    Outputs:
        - out: The pixel data at the given line and offset
*/

module ROM256X5 #(
    parameter INIT_00 = 256'h0,
    parameter INIT_01 = 256'h0,
    parameter INIT_02 = 256'h0,
    parameter INIT_03 = 256'h0,
    parameter INIT_04 = 256'h0,
    parameter INIT_05 = 256'h0,
    parameter INIT_06 = 256'h0,
    parameter INIT_07 = 256'h0,
    parameter INIT_08 = 256'h0,
    parameter INIT_09 = 256'h0,
    parameter INIT_0A = 256'h0,
    parameter INIT_0B = 256'h0,
    parameter INIT_0C = 256'h0,
    parameter INIT_0D = 256'h0,
    parameter INIT_0E = 256'h0,
    parameter INIT_0F = 256'h0,
    parameter HEIGHT = 7'd0
)(
    input [6:0] line,
    input [6:0] offset,
    output reg out
);
    reg [255:0] mem [15:0];

    initial mem[0] = INIT_00; 
    initial mem[1] = INIT_01;
    initial mem[2] = INIT_02;
    initial mem[3] = INIT_03; 
    initial mem[4] = INIT_04;
    initial mem[5] = INIT_05;
    initial mem[6] = INIT_06;
    initial mem[7] = INIT_07;
    initial mem[8] = INIT_08;
    initial mem[9] = INIT_09;
    initial mem[10] = INIT_0A;
    initial mem[11] = INIT_0B;
    initial mem[12] = INIT_0C;
    initial mem[13] = INIT_0D;
    initial mem[14] = INIT_0E;
    initial mem[15] = INIT_0F;
    
    // Out corresponds to one bit indexed by addr:
    always @* begin
        if (line < HEIGHT && offset < 256) begin
            out = mem[line[6:1]][{line[0],offset}];
        end else begin
            out = 1'b0;
        end
    end
endmodule

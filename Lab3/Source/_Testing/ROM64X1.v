module ROM64X1 #(
    parameter WIDTH = 7'b0,
    parameter HEIGHT = 7'b0,
    parameter COLLIDABLE = 1'b0,
    parameter DATA_ADDR = 14'b0,
    parameter NEXT_SPRITE_ADDR = 14'b0 
)(
    output isCollidable,
    output [13:0] nextAddr,
    output [13:0] dataAddr,
    output [15:0] dimensions
);
    wire [63:0] mem;

    assign mem = {7'b0, COLLIDABLE, HEIGHT, WIDTH, 2'b0, NEXT_SPRITE_ADDR, 2'b0, DATA_ADDR};
    
    assign isCollidable = mem[8];
    assign dataAddr = mem[63:50];
    assign nextAddr = mem[49:36];
    assign dimensions = {mem[7:0], mem[15:8]};
endmodule
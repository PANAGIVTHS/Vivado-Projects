module ROM64X1M #(
    parameter WIDTH = 7'b0,
    parameter HEIGHT = 7'b0,
    parameter COLLIDABLE = 1'b1,
    parameter DATA_ADDR = 14'b0,
    parameter NEXT_SPRITE_ADDR = 14'b0 
)(
    output isCollidable,
    output [13:0] nextAddr,
    output [13:0] dataAddr,
    output [15:0] dimensions
);
    reg [63:0] mem;

    initial mem = {11'b0, COLLIDABLE, HEIGHT, WIDTH, NEXT_SPRITE_ADDR, DATA_ADDR};
    
    assign isCollidable = COLLIDABLE;
    assign dimensions = {HEIGHT, WIDTH};
    assign nextAddr = NEXT_SPRITE_ADDR;
    assign dataAddr = DATA_ADDR;
endmodule
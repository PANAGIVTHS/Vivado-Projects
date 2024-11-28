/*
    This module is a ROM that stores the data for a sprite. It contains the width and height of the sprite,
    as well as the address of the next sprite in memory and the address of the sprite's data. The module
    outputs these values when given an address to read from.

    Inputs:
        - WIDTH: Width of the sprite
        - HEIGHT: Height of the sprite
        - COLLIDABLE: Whether the sprite can collide with other sprites
        - DATA_ADDR: Address of the sprite's data
        - NEXT_SPRITE_ADDR: Address of the next sprite in memory 

    Outputs:
        - isCollidable: Whether the sprite can collide with other sprites
        - nextAddr: Address of the next sprite in memory
        - dataAddr: Address of the sprite's data
        - dimensions: Width and height of the sprite
*/

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
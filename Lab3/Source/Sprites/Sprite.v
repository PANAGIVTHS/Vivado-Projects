/*
    This module is a Sprite that can be displayed on the screen. It contains the width and height of the sprite,
    as well as the address of the next sprite in memory and the address of the sprite's data. The module
    outputs these values when given an address to read from.

    Inputs:
        - xPos: Current X position
        - yPos: Current Y position
        - addr: Address of the sprite's data

    Outputs:
        - isCollidable: Whether the sprite can collide with the borders of the screen
        - nextAddr: Address of the next sprite in memory
        - non_sprite_pixel: Whether the pixel is part of the sprite
        - pixel_data: The pixel data at the given line and offset
*/

module Sprite #(
    parameter WIDTH = 7'b0,
    parameter HEIGHT = 7'b0,
    parameter COLLIDABLE = 1'b0,
    parameter DATA_ADDR = 14'b0,
    parameter NEXT_SPRITE_ADDR = 14'b0
)(
    input [6:0] xPos,
    input [6:0] yPos,
    input [13:0] addr,
    output isCollidable,
    output [13:0] nextAddr,
    output non_sprite_pixel,
    output pixel_data
);

    wire [15:0] dimensions;
    wire [13:0] dataAddr, pixel_data_addr;
    wire [6:0] line, offset;


    ROM64X1M #(.WIDTH(WIDTH), .HEIGHT(HEIGHT), .COLLIDABLE(COLLIDABLE), .DATA_ADDR(DATA_ADDR), .NEXT_SPRITE_ADDR(NEXT_SPRITE_ADDR)) 
        ROM_inst (.isCollidable(isCollidable), .nextAddr(nextAddr), .dataAddr(dataAddr), .dimensions(dimensions));

    ROM256X5 #(
        .INIT_00(256'h00000000000000000000000000051000000000000000000000000000000E0000),
        .INIT_01(256'h0000000000000000000000000000080000000000000000000000000000001000),
        .INIT_02(256'h000000000000000000000000E0000001000000000000000000000000C0000000),
        .INIT_03(256'h000000000000000000000000C0000001000000000000000000000000E0028001),
        .INIT_04(256'h0000000000000000000000000003F00000000000000000000000000000033001),
        .INIT_05(256'h0000000000000000000000000087F00000000000000000000000000000062000),
        .INIT_06(256'h000000000000000000000000E3C7F78000000000000000000000000001C7F000),
        .INIT_07(256'h0000000000000000000000000CFFFFC300000000000000000000000087F7EFC0),
        .INIT_08(256'h0000000000000000000000008C3FF0C10000000000000000000000008C3FF840),
        .INIT_09(256'h000000000000000000000000000FE03E000000000000000000000000381FF0F7),
        .INIT_0A(256'h000000000000000000000000280000010000000000000000000000002003C000),
        .INIT_0B(256'h0000000000000000000000007EFC173300000000000000000000000078180402),
        .INIT_0C(256'h0000000000000000000000007DFE7FBC0000000000000000000000007CFC3DB9),
        .INIT_0D(256'h0000000000000000000000007DFEFFFE0000000000000000000000007DFEFFBE),
        .INIT_0E(256'h00000000000000000000000000FEFF800000000000000000000000003FFEFFFC),
        .INIT_0F(256'h0000000000000000000000007DC0000C00000000000000000000000040000000),
        .HEIGHT(7'd32)
    ) ROM256X5_inst (.line(line), .offset(offset), .out(pixel_data));

    assign line = addr[13:7] - yPos;
    assign offset = addr[6:0] - xPos;

    assign non_sprite_pixel = addr[6:0] < xPos || addr[6:0] >= xPos + WIDTH || addr[13:7] < yPos || addr[13:7] >= yPos + HEIGHT;
endmodule
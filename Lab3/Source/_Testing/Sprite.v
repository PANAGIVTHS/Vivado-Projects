
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
    output non_sprite_pixel
);

    wire [15:0] O, A0, A1, A2, A3, A4, A5;
    wire [15:0] dimensions;
    wire [13:0] dataAddr, pixel_data_addr;

    ROM64X1 #(.WIDTH(WIDTH), .HEIGHT(HEIGHT), .COLLIDABLE(COLLIDABLE), .DATA_ADDR(DATA_ADDR), .NEXT_SPRITE_ADDR(NEXT_SPRITE_ADDR)) 
        ROM_inst (.isCollidable(isCollidable), .nextAddr(nextAddr), .dataAddr(dataAddr), .dimensions(dimensions));

    ROM256X5 #(
        .INIT_00(256'hffffffffffffffffaaaaaaaaaaaaaaaabbbbbbbbbbbbbbbb0000000000000000), 
        .INIT_01(256'h0),
        .INIT_02(256'h0),
        .INIT_03(256'h0),
        .INIT_04(256'h0)
    ) ROM256X5_inst (.addr(pixel_data_addr), .out(pixel_data));

    assign pixel_data_addr = addr - {yPos, xPos};
    assign non_sprite_pixel = addr[6:0] < xPos || addr[6:0] >= xPos + WIDTH || addr[13:7] < yPos || addr[13:7] >= yPos + HEIGHT || pixel_data;
endmodule
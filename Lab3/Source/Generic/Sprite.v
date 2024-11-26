
// called only when pixel was in a sprite
// you need a bram that has depicts sprite domains

// this will return the pixel and also return the next frame
module SpriteParser (
    input clk,
    input reset,
    input enable,
    input [13:0] address,
    output pixel_data
);
    localparam BLOCK_LENGTH = 16;
    wire [15:0] OUTA, OUTB;
    wire [13:0] sprite_data_addr;

    GUCounter #(.BITS(8)) SpriteCoutner (.clk(clk), .reset_in({reset, address == 14'b0}), .enable(enable), .count(SpriteCount), .overflow());

    SpriteBRAM SpriteBRAM_inst (
        .clk(clk),
        .reset(reset),
        .RENA(enable),
        .RENB(enable),
        .ADDRA(ADDRA),
        .ADDRB(ADDRA + BLOCK_LENGTH),
        .OUTA(OUTA),
        .OUTB(OUTB)
    );

    assign next_sprite = OUTA[13:0];
    assign sprite_data_addr = OUTA[15:0];
    assign in_sprite = address
    
    SDATABram SDATABram_inst (
        .clk(clk),
        .reset(reset),
        .RENA(enable),
        .RENB(1'b0),
        .ADDRA(address - sprite_data_addr),
        .ADDRB(14'b0),
        .OUTA(pixel_data),
        .OUTB()
    );



endmodule
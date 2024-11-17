

module PixelAddrGenerator (input clk, input reset, input [9:0] HPIXEL, input [18:0] VPIXEL, output reg [6:0] xPixelAddr, output reg [6:0] yPixelAddr);
    localparam H_DISP_START = 144;
    localparam V_DISP_START = 1600 + 23200;
    localparam OUT_OF_BOUNDS_ADDR = 7'b1111111;
    localparam VGA_WIDTH = 640;
    localparam VGA_HEIGHT = 480;

    wire HEN, VEN;

    // Incriment upscaled pixel counters
    GUCounter #(.BITS(2)) HPIXEL_counter_inst (.clk(clk), .reset_in({reset, 1'b0}), .enable(HEN), .count(incHPIXEL), .overflow(HENADDR));
    GUCounter #(.BITS(2)) VPIXEL_counter_inst (.clk(clk), .reset_in({reset, 1'b0}), .enable(VEN), .count(incVPIXEL), .overflow(VENADDR));

    // Incriement BRAM pixel counters after 5 Bram pixel on 1 VGA pixel
    GUCounter #(.BITS(7)) HPIXEL_counter_inst (.clk(clk), .reset_in({reset, user_reset}), .enable(HENADDR), .count(xPixelAddr));
    GUCounter #(.BITS(7)) VPIXEL_counter_inst (.clk(clk), .reset_in({reset, user_reset}), .enable(VENADDR), .count(yPixelAddr));

    // Reset the counters every frame
    assign user_reset = !HPIXEL && !VPIXEL;

    assign HEN = H_DISP_START <= HPIXEL && HPIXEL < H_DISP_START + VGA_WIDTH;
    assign VEN = HPIXEL == H_DISP_START + VGA_WIDTH;
endmodule
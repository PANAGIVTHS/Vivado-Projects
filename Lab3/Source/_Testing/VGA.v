module VGAC (input reset, input clk, input enable, input ACTIVE_SIG, output VGA_RED, output VGA_GREEN, output VGA_BLUE, output VGA_HSYNC, output VGA_VSYNC);
    wire [9:0] HPIXEL;
    wire [18:0] VPIXEL;
    wire new_clk, locked, valid_pixel;
    wire [6:0] xPixel, yPixel;
    wire internal_enable;
    wire red_val, green_val, blue_val;

    assign internal_enable = enable & locked;
    
    // Get pixel address from Pixel Address Generator (PixelAddrGenerator)
    PixelAddrGenerator PixelAddrGenerator_inst (.clk(new_clk), .reset(reset), .HPIXEL(HPIXEL), .VPIXEL(VPIXEL), .xPixelAddr(xPixel), .yPixelAddr(yPixel));
    //call get pixel
    getPixel getPixel_inst (.clk(new_clk), .reset(reset), .line(yPixel), .offset(xPixel), .pixel_data({red_val, green_val, blue_val}));
    // Get VGA sync signals from VGA Synchonization Unit (VGASyncUnit)
    VGASync VGASyncUnit_inst (.reset(reset), .clk(new_clk), .enable(internal_enable), .ACTIVE_SIG(ACTIVE_SIG), .VGA_HSYNC(VGA_HSYNC), .VGA_VSYNC(VGA_VSYNC), .HPIXEL(HPIXEL), .VPIXEL(VPIXEL), .valid_pixel(valid_pixel));
    // Setup the clock divider for the VGA controller
    ClockGenerator PixelClk_inst (.clk(clk), .new_clk(new_clk), .locked(locked));

    // Assign the pixel data to the VGA output signals if the pixel is valid, otherwise output black
    assign VGA_RED = valid_pixel ? red_val : 0;
    assign VGA_GREEN = valid_pixel ? green_val : 0;
    assign VGA_BLUE = valid_pixel ? blue_val : 0;
endmodule

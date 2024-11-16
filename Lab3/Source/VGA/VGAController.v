module VGAController (input reset, input clk, input enable, input ACTIVE_SIG, output VGA_RED, output VGA_GREEN, output VGA_BLUE, output VGA_HSYNC, output VGA_VSYNC);
    wire [6:0] HPIXEL, VPIXEL;
    wire new_clk, locked, valid_pixel;
    wire [6:0] xPixel, yPixel;
    wire out_of_bounds;
    wire internal_enable, red_val, green_val, blue_val;

    assign internal_enable = enable & locked;
    
    // Get pixel address from Pixel Address Generator (PixelAddrGenerator)
    PixelAddrGenerator PixelAddrGenerator_inst (.clk(clk), .reset(reset), .HPIXEL(HPIXEL), .VPIXEL(VPIXEL), .xPixelAddr(xPixel), .yPixelAddr(yPixel));
    // Get pixel data from Pixel Aquisition Processing Unit (PAPUnit)
    PAPUnit PAPUnit_inst (.clk(clk), .reset(reset), .enable(internal_enable), .line(yPixel), .offset(xPixel), .pixel_data({red_val, green_val, blue_val}), .valid_pixel(valid_pixel));
    // Get VGA sync signals from VGA Synchonization Unit (VGASyncUnit)
    VGASyncUnit VGASyncUnit_inst (.reset(reset), .clk(clk), .enable(internal_enable), .ACTIVE_SIG(ACTIVE_SIG), .VGA_HSYNC(VGA_HSYNC), .VGA_VSYNC(VGA_VSYNC));
    // Setup the clock divider for the VGA controller
    ClockGenerator PixelClk_inst (.clk(clk), .new_clk(new_clk), .locked(locked));

    // Assign the pixel data to the VGA output signals if the pixel is valid, otherwise output black
    assign VGA_RED = valid_pixel ? red_val : 3'b000;
    assign VGA_GREEN = valid_pixel ? green_val : 3'b000;
    assign VGA_BLUE = valid_pixel ? blue_val : 3'b000;
endmodule

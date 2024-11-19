module VGA (
    input reset, 
    input clk, 
    input enable, 
    input ACTIVE_SIG, 
    output VGA_RED, 
    output VGA_GREEN, 
    output VGA_BLUE, 
    output VGA_HSYNC, 
    output VGA_VSYNC
);
    wire new_clk, locked;
    wire HDISP, VDISP;
    wire [6:0] xPixelAddr, yPixelAddr;
    wire red_val, green_val, blue_val;
    wire valid_pixel;
    wire internal_enable;

    assign internal_enable = enable & locked;

    SSyncFSM #(.COUNTER_BITS(10), .SHOLD(96), .SBP(48), .DISPLAY_TIME(640), .SFP(16)) HSyncFSM (.reset(reset), .clk(new_clk), .enable(internal_enable), .ACTIVE_SIG(ACTIVE_SIG), .VGA_SIG(VGA_HSYNC), .displaying(HDISP));
    SSyncFSM #(.COUNTER_BITS(19), .SHOLD(1600), .SBP(23200), .DISPLAY_TIME(384000), .SFP(8000)) VSyncFSM (.reset(reset), .clk(new_clk), .enable(internal_enable), .ACTIVE_SIG(ACTIVE_SIG), .VGA_SIG(VGA_VSYNC), .displaying(VDISP));
    PixelAddrGen PixelAddrGen_inst (.clk(new_clk), .reset(reset), .HDISP(HDISP), .VDISP(VDISP), .xPixelAddr(xPixelAddr), .yPixelAddr(yPixelAddr));
    PAPUnit PAPUnit_inst (.clk(new_clk), .reset(reset), .enable(internal_enable), .line(yPixelAddr), .offset(xPixelAddr), .pixel_data({red_val, green_val, blue_val}), .valid_pixel(valid_pixel));
    ClockGenerator PixelClk_inst (.clk(clk), .new_clk(new_clk), .locked(locked));
    
    // Assign the pixel data to the VGA output signals if the pixel is valid, otherwise output black
    assign VGA_RED = (valid_pixel && HDISP && VDISP) ? red_val : 0;
    assign VGA_GREEN = (valid_pixel && HDISP && VDISP) ? green_val : 0;
    assign VGA_BLUE = (valid_pixel && HDISP && VDISP) ? blue_val : 0;
endmodule

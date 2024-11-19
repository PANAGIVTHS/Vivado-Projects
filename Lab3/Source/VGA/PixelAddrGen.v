module PixelAddrGen (input clk, input reset, input HDISP, input VDISP, output [6:0] xPixelAddr, output [6:0] yPixelAddr);
    wire HENADDR, VENADDR;
    wire user_reset;

    // Reset the counters every frame
    assign user_reset = !VDISP;
    
    // Upscale the pixel counters
    UpscallingUnit UpUnit_inst (.clk(clk), .reset(reset), .HDISP(HDISP), .VDISP(VDISP), .HENADDR(HENADDR), .VENADDR(VENADDR));

    // Incriement BRAM pixel counters after 5 Bram pixel on 1 VGA pixel
    GUCounter #(.BITS(7)) HPIXEL_counter_inst (.clk(clk), .reset_in({reset, user_reset}), .enable(HENADDR), .count(xPixelAddr), .stall(1'b0), .overflow());
    GUCounter #(.BITS(7)) VPIXEL_counter_inst (.clk(clk), .reset_in({reset, user_reset}), .enable(VENADDR), .count(yPixelAddr), .stall(1'b0), .overflow());
endmodule
module VGASync (
    input reset,            // Reset signal
    input clk,              // Clock signal
    input enable,           // Enable signal
    input ACTIVE_SIG,       // Active signal to determine whether the sync should be inverted
    output VGA_HSYNC,       // VGA Horizontal Sync signal
    output VGA_VSYNC,       // VGA Vertical Sync signal
    output wire [9:0] HPIXEL, // Horizontal pixel counter (10 bits)
    output wire [18:0] VPIXEL, // Vertical pixel counter (19 bits)
    output valid_pixel
);

    // Local parameters for VGA sync timing
    localparam EOL = 800;         // End of Line (800 pixels for VGA)
    localparam EOF = 416750;      // End of Frame (416750 pixel time for 60Hz refresh rate)
    localparam DISPLAY_HEIGHT = 480; // Display Height in pixels
    localparam DISPLAY_WIDTH = 640;  // Display Width in pixels    
    localparam HHOLD = 96;        // Horizontal Hold time (96 pixels)
    localparam VHOLD = 1600;      // Vertical Hold time (1600 pixels)

    // Internal reset logic for HPIXEL and VPIXEL counters
    wire HCOUNT_user_reset, VCOUNT_user_reset;
    wire res_h, res_v;

    // Generate user reset signals
    assign HCOUNT_user_reset = (HPIXEL == EOL) || (VPIXEL < VHOLD + 23200);
    assign VCOUNT_user_reset = (VPIXEL == EOF);

    // Instantiate the Horizontal - Vertical pixel counter (GUCounter)
    GUCounter #(.BITS(10)) HPIXEL_counter_inst (.clk(clk), .reset_in({reset, HCOUNT_user_reset}), .enable(enable), .count(HPIXEL), .stall(1'b0));
    GUCounter #(.BITS(19)) VPIXEL_counter_inst (.clk(clk), .reset_in({reset, VCOUNT_user_reset}), .enable(enable), .count(VPIXEL), .stall(1'b0));

    // Calculate Horizontal - Vertical Sync signal (active during certain pixels)
    assign res_h = HPIXEL >= HHOLD && HPIXEL <= EOL;
    assign res_v = VPIXEL >= VHOLD && VPIXEL <= EOF;
    assign valid_pixel = HPIXEL >= 144 && HPIXEL < 784 && VPIXEL >= 9600 && VPIXEL < 9600 + 384000;

    // Output the VGA sync signals based on active status
    assign VGA_HSYNC = ACTIVE_SIG ? res_h : !res_h;
    assign VGA_VSYNC = ACTIVE_SIG ? res_v : !res_v;
endmodule

/*
    This is the top-level module for the VGA Controller. It instantiates the necessary modules to generate the VGA signals and pixel data.
    The VGA Controller is responsible for generating the VGA signals (VGA_RED, VGA_GREEN, VGA_BLUE, VGA_HSYNC, VGA_VSYNC) based on the pixel
    data from the Pixel Aquisition Processing Unit (PAPUnit). It also interfaces with the Clock Generator module to generate a new clock signal
    for the VGA timing. The VGA Controller uses SyncFSM modules to generate the horizontal and vertical sync signals, and a PixelAddrGen module
    to generate the pixel address signals (xPixelAddr, yPixelAddr) for the PAPUnit. The PAPUnit processes the pixel data based on the pixel address
    and outputs the RGB values for the VGA signals. The VGA Controller also stays dusabled until the clock is locked to ensure proper timing.

    *Notice: The module will not enable itself until the clock is locked.
    !Danger: The Design uses synchonized resets to ensure there is no asynchoronous assignment of address to the BRAMs.
    !Changing this behaviour will cause timing violations.
    
    Inputs:
    - reset: Reset signal.
    - clk: Clock signal.
    - enable: Enable signal.
    - ACTIVE_SIG: Active signal to indicate Active High or Active Low on SYNC signals.

    Outputs:
    - VGA_RED: Red component of the VGA pixe;.
    - VGA_GREEN: Green component of the VGA pixel.
    - VGA_BLUE: Blue component of the VGA pixel.
    - VGA_HSYNC: Horizontal sync signal.
    - VGA_VSYNC: Vertical sync signal.
*/

module VGAController (input reset, input clk, input enable, input data_src, input ACTIVE_SIG, output VGA_RED, output VGA_GREEN, output VGA_BLUE, output VGA_HSYNC, output VGA_VSYNC);
    wire new_clk, locked;
    wire HDISP, VDISP;
    wire [6:0] xPixelAddr, yPixelAddr;
    wire red_val, green_val, blue_val;
    wire valid_pixel, reset_debounced, enable_debounced;
    wire internal_enable;

    // Enable the VGA controller only when the clock is locked
    assign internal_enable = enable_debounced & locked;

    // Debounce Switches
    Debouncer #(.HOLD_SIGNAL(25000), .BITS(15)) 
        Debouncer_activeSig (.clk(clk), .button(ACTIVE_SIG), .button_debounced(ACTIVE_SIG_debounced));
    Debouncer #(.HOLD_SIGNAL(25000), .BITS(15)) 
        Debouncer_dataSrc (.clk(clk), .button(data_src), .button_debounced(data_src_debounced));

    // Debounce reset and enable signals
    Debouncer #(.HOLD_SIGNAL(25000), .BITS(15)) 
        Debouncer_reset (.clk(clk), .button(reset), .button_debounced(reset_debounced));
    Debouncer #(.HOLD_SIGNAL(25000), .BITS(15)) 
        Debouncer_enable (.clk(clk), .button(enable), .button_debounced(enable_debounced));
        
    // Instantiate the syncing modules implemented with FSMs
    SSyncFSM #(.COUNTER_BITS(10), .SHOLD(96), .SBP(48), .DISPLAY_TIME(640), .SFP(16)) 
        HSyncFSM (.reset(reset_debounced), .clk(new_clk), .enable(internal_enable), .ACTIVE_SIG(ACTIVE_SIG_debounced), .VGA_SIG(VGA_HSYNC), .displaying(HDISP));

    SSyncFSM #(.COUNTER_BITS(19), .SHOLD(1600), .SBP(23200), .DISPLAY_TIME(384000), .SFP(8000)) 
        VSyncFSM (.reset(reset_debounced), .clk(new_clk), .enable(internal_enable), .ACTIVE_SIG(ACTIVE_SIG_debounced), .VGA_SIG(VGA_VSYNC), .displaying(VDISP));
    
    // Instantiate the Pixel Address Generator whose output is the calculated pixel positions
    PixelAddrGen PixelAddrGen_inst (.clk(new_clk), .reset(reset_debounced), .HDISP(HDISP), .VDISP(VDISP), .xPixelAddr(xPixelAddr), .yPixelAddr(yPixelAddr));

    // Instantiate the Pixel Address Processor Unit whose job is to calculate the right address and output the RGB values stored in the VRAMs
    PAPUnit #(.HOLD_FRAME(15), .BITS(4))
        PAPUnit_inst (.clk(new_clk), .reset(reset_debounced), .enable(internal_enable), .data_src(data_src_debounced), .line(yPixelAddr), .offset(xPixelAddr), .pixel_data({red_val, green_val, blue_val}), .valid_pixel(valid_pixel));
    
    // Instantiate the Clock Generator to generate the new clock signal for the VGA timing (Slower than a counter but cleaner)
    ClockGenerator PixelClk_inst (.clk(clk), .new_clk(new_clk), .locked(locked));

    // Assign the pixel data to the VGA output signals if the pixel is valid, otherwise output black
    assign VGA_RED = (valid_pixel && HDISP && VDISP) ? red_val : 0;
    assign VGA_GREEN = (valid_pixel && HDISP && VDISP) ? green_val : 0;
    assign VGA_BLUE = (valid_pixel && HDISP && VDISP) ? blue_val : 0;
endmodule

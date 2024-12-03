/*
    The Pixel Address Generator module is responsible for generating the pixel address signals (xPixelAddr, yPixelAddr) for the Pixel Aquisition
    Processing Unit (PAPUnit). The module uses an UpscallingUnit module to upscale the pixel counters by a factor of 5. The module then uses two
    General Use Counter (GUCounter) modules that increment the pixel address counters when signaled by the UpscallingUnit. The module will reset
    the counters every frame to ensure proper operation.

    *Notice: The UpscallingUnit module is used to upscale the pixel counters by a factor of 5. This can be changed by modifying its parameters.

    Inputs:
    - clk: Clock signal.
    - reset: Reset signal.
    - HDISP: Horizontal displaying flag.
    - VDISP: Vertical displaying flag.

    Outputs:
    - xPixelAddr: X pixel address.
    - yPixelAddr: Y pixel address.
*/

module PixelAddrGen (input clk, input reset, input HDISP, input VDISP, output [6:0] xPixelAddr, output [6:0] yPixelAddr);
    wire HENADDR, VENADDR;
    reg user_reset;

    // Reset the counters every frame
    always @(posedge clk) begin 
        if (reset) begin
            user_reset <= 0;
        end else begin
            user_reset <= !VDISP;
        end
    end 
    
    // Upscale the pixel counters. For lines 5 * a_line = 4000pxls, a_line = 800pxls.
    UpscallingUnit #(.H_COUNTER_BITS(3), .V_COUNTER_BITS(12), .pixelScaling(5), .lineScaling(4000)) 
        UpUnit_inst (.clk(clk), .reset(reset), .HDISP(HDISP), .VDISP(VDISP), .HENADDR(HENADDR), .VENADDR(VENADDR));

    // Incriement BRAM pixel counters after 5 VGA pixels
    GUCounter #(.BITS(7)) HPIXEL_counter_inst (.clk(clk), .reset_in({reset, user_reset}), .enable(HENADDR), .count(xPixelAddr), .overflow());
    GUCounter #(.BITS(7)) VPIXEL_counter_inst (.clk(clk), .reset_in({reset, user_reset}), .enable(VENADDR), .count(yPixelAddr), .overflow());
endmodule
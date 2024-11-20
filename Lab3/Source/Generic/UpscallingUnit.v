/*
    The UpscallingUnit module is responsible for upscaling the pixel counters some given factor. The module uses two General Use Counter (GUCounter) modules
    to stall the pixel, in other words the module will output the enable signals for the pixel counters when the given factor is reached. The module includes
    a pre-fetch parameter to ensure the pixel counters are enabled before the pixel data is needed as reading from a BRAM will take at least 1 cycle. The 
    parameters for the module are pixelScaling, lineScaling, H_COUNTER_BITS, and V_COUNTER_BITS.

    *Notice: Line scaling is counted in pixels, not lines. For this reason the line scaling is set to pxls * lines where lines = pixelScaling for symetric scaling.

    Inputs:
    - clk: Clock signal.
    - reset: Reset signal.
    - HDISP: Horizontal displaying flag.
    - VDISP: Vertical displaying flag.

    Outputs:
    - HENADDR: Horizontal enable address.
    - VENADDR: Vertical enable address.
*/

module UpscallingUnit #(pixelScaling = 5, lineScaling = 4000, H_COUNTER_BITS = 3, V_COUNTER_BITS = 12) (input clk, input reset, input HDISP, input VDISP, output HENADDR, output VENADDR);
    wire [H_COUNTER_BITS - 1:0] HCounter;
    wire [V_COUNTER_BITS - 1:0] VCounter;

    localparam PRE_FETCH = 2;
    
    GUCounter #(.BITS(H_COUNTER_BITS)) HCounter_inst (.clk(clk), .reset_in({reset, HCounter == pixelScaling - 1}), .enable(HDISP), .count(HCounter), .overflow());
    GUCounter #(.BITS(V_COUNTER_BITS)) VCounter_inst (.clk(clk), .reset_in({reset, VCounter == lineScaling - 1}), .enable(VDISP), .count(VCounter), .overflow());

    assign HENADDR = HCounter == (pixelScaling - 1) - PRE_FETCH;
    assign VENADDR = VCounter == (lineScaling - 1);
endmodule
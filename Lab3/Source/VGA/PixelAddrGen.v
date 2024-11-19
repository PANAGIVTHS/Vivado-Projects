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
    
    // Upscale the pixel counters
    UpscallingUnit UpUnit_inst (.clk(clk), .reset(reset), .HDISP(HDISP), .VDISP(VDISP), .HENADDR(HENADDR), .VENADDR(VENADDR));

    // Incriement BRAM pixel counters after 5 Bram pixel on 1 VGA pixel
    GUCounter #(.BITS(7)) HPIXEL_counter_inst (.clk(clk), .reset_in({reset, user_reset}), .enable(HENADDR), .count(xPixelAddr), .stall(1'b0), .overflow());
    GUCounter #(.BITS(7)) VPIXEL_counter_inst (.clk(clk), .reset_in({reset, user_reset}), .enable(VENADDR), .count(yPixelAddr), .stall(1'b0), .overflow());
endmodule
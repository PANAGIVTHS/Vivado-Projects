module PixelAddrGen (input clk, input reset, input HDISP, input VDISP, input HSYNC, input ACTIVE_SIG, output [6:0] xPixelAddr, output [6:0] yPixelAddr);
    wire HEN, VEN;
    wire HENADDR, VENADDR;
    wire H_reset;
    wire [2:0] temp;
    wire [1:0] temp1;
    wire user_reset;
    wire overflow;


    assign HEN = HDISP && VDISP; // Enable horizontal when in display area
    assign user_reset = !VDISP;  // Reset the counters every frame

    Hold_to_step HEN_inst (.clk(clk), .reset(reset), .button(HDISP), .spike(VEN));

    // Incriment upscaled pixel counters
    GUCounter #(.BITS(2)) H_upscale_counter_inst (.clk(clk), .reset_in({reset, H_reset || !HEN}), .enable(HEN), .count(temp1), .overflow(overflow), .stall(1'b1));
    GUCounter #(.BITS(3)) V_upscale_counter_inst (.clk(clk), .reset_in({reset, VENADDR || !VDISP}), .enable(VEN && VDISP), .count(temp), .stall(1'b0));

    assign H_reset = overflow;       // reset every 5 pixels
    assign VENADDR = temp == 3'b101; // reset every 5 pixels
    assign HENADDR = temp1 == 2'b11; // reset every 5 pixels

    // Incriement BRAM pixel counters after 5 Bram pixel on 1 VGA pixel
    GUCounter #(.BITS(7)) HPIXEL_counter_inst (.clk(clk), .reset_in({reset, user_reset}), .enable(HENADDR), .count(xPixelAddr), .stall(1'b0));
    GUCounter #(.BITS(7)) VPIXEL_counter_inst (.clk(clk), .reset_in({reset, user_reset}), .enable(VENADDR), .count(yPixelAddr), .stall(1'b0));
endmodule
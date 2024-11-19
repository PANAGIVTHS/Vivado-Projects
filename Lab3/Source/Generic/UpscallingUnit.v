module UpscallingUnit (input clk, input reset, input HDISP, input VDISP, output HENADDR, output VENADDR);
    wire HEN, VEN;
    wire H_reset, overflow;
    wire [2:0] temp;
    wire [1:0] temp1;

    assign HEN = HDISP && VDISP; // Enable horizontal when in display area

    Hold_to_step HEN_inst (.clk(clk), .reset(reset), .button(HDISP), .spike(VEN));

    // Incriment upscaled pixel counters
    GUCounter #(.BITS(2)) H_upscale_counter_inst (.clk(clk), .reset_in({reset, H_reset || !HEN}), .enable(HEN), .count(temp1), .overflow(overflow), .stall(1'b1));
    GUCounter #(.BITS(3)) V_upscale_counter_inst (.clk(clk), .reset_in({reset, VENADDR || !VDISP}), .enable(VEN && VDISP), .count(temp), .stall(1'b0), .overflow());

    assign H_reset = overflow;       // reset every 5 pixels
    assign VENADDR = temp == 3'b101; // reset every 5 pixels
    assign HENADDR = temp1 == 2'b11; // reset every 5 pixels
endmodule
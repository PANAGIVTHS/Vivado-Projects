

module PixelAddrGenerator (input clk, input reset, input [9:0] HPIXEL, input [18:0] VPIXEL, output wire [6:0] xPixelAddr, output wire [6:0] yPixelAddr);
    localparam H_DISP_START = 144;
    localparam V_DISP_START = 1600 + 23200;
    localparam OUT_OF_BOUNDS_ADDR = 7'b1111111;
    localparam VGA_WIDTH = 640;
    localparam VGA_HEIGHT = 480;
    wire HEN, VEN;
    reg VENADDR, cycles;
    wire c_from_start, user_reset;
    wire [2:0] temp;

    // Incriment upscaled pixel counters
    GUCounter #(.BITS(2)) H_upscale_counter_inst (.clk(clk), .reset_in({reset, user_reset}), .enable(HEN), .overflow(HENADDR), .stall(1'b1));
    GUCounter #(.BITS(3)) V_upscale_counter_inst (.clk(clk), .reset_in({reset, (user_reset || cycles)}), .enable(VEN), .count(temp), .stall(1'b0));

    // Incriement BRAM pixel counters after 5 Bram pixel on 1 VGA pixel
    GUCounter #(.BITS(7)) HPIXEL_counter_inst (.clk(clk), .reset_in({reset, user_reset}), .enable(HENADDR), .count(xPixelAddr), .stall(1'b0));
    GUCounter #(.BITS(7)) VPIXEL_counter_inst (.clk(clk), .reset_in({reset, user_reset}), .enable(VENADDR), .count(yPixelAddr), .stall(1'b0));

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            VENADDR <= 0;
            cycles <= 0;
        end else if (temp == 5 && !cycles) begin
            VENADDR <= 1;
            cycles <= 1;
        end else begin
            VENADDR <= 0;
            cycles <= 0;
        end
    end

    // Reset the counters every frame
    assign user_reset = !HPIXEL && !VPIXEL;
    
    assign HEN = H_DISP_START <= HPIXEL && HPIXEL < H_DISP_START + VGA_WIDTH;
    assign VEN = HPIXEL == H_DISP_START + VGA_WIDTH - 1;
endmodule
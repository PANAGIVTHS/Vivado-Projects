module VGASyncFSM #(
    parameter integer DISPLAY_TIME = 640,  // Display Width in pixels
    parameter integer SHOLD = 96,          // Signal Hold time
    parameter integer SBP = 48,            // Signal Back Porch time
    parameter integer SFP = 16,            // Signal Front Porch time
    parameter integer COUNTER_BITS = 10    // Number of bits in the GUCounter
)(
    input reset,             // Reset signal
    input clk,               // Clock signal
    input enable,            // Enable signal
    input ACTIVE_SIG,        // Active signal to determine whether the sync should be inverted
    output VGA_SIG,        // VGA Horizontal Sync signal
    output state,
    output valid_pixel
);

    reg [1:0] cur_state, next_state;
    reg user_reset;

    localparam BACK_PORCH = 2'b01, FRONT_PORCH = 2'b11, HSYNC_PULSE = 2'b00, DISPLAYING  = 2'b10;

    // GUCounter instantiation with parameterized bit width
    GUCounter #(.BITS(COUNTER_BITS)) CPIXEL_counter_inst (.clk(clk), .reset_in({reset, user_reset}), .enable(enable), .count(CPIXEL), .stall(1'b0));

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            cur_state <= BACK_PORCH;
        end else begin
            cur_state <= next_state;
        end
    end

    always @(*) begin
        case (cur_state)
            HSYNC_PULSE: begin
                if (CPIXEL == HHOLD - 1) begin
                    next_state = BACK_PORCH;
                    user_reset = 1'b1;
                end else begin
                    next_state = HSYNC_PULSE;
                    user_reset = 1'b0;
                end
            end
            BACK_PORCH: begin
                if (CPIXEL == HBP - 1) begin
                    next_state = DISPLAYING;
                    user_reset = 1'b1;
                end else begin
                    next_state = BACK_PORCH;
                    user_reset = 1'b0;
                end
            end
            DISPLAYING: begin
                if (CPIXEL == DISPLAY_WIDTH - 1) begin
                    next_state = FRONT_PORCH;
                    user_reset = 1'b1;
                end else begin
                    next_state = DISPLAYING;
                    user_reset = 1'b0;
                end
            end
            FRONT_PORCH: begin
                if (CPIXEL == HFP - 1) begin
                    next_state = HSYNC_PULSE;
                    user_reset = 1'b1;
                end else begin
                    next_state = FRONT_PORCH;
                    user_reset = 1'b0;
                end
            end
        endcase
    end
endmodule

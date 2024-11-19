module SSyncFSM #(
    parameter DISPLAY_TIME = 640,  // Display time in pixels
    parameter SHOLD = 96,          // Signal Hold time
    parameter SBP = 48,            // Signal Back Porch time
    parameter SFP = 16,            // Signal Front Porch time
    parameter COUNTER_BITS = 10    // Number of bits in the GUCounter
)(
    input reset,             // Reset signal
    input clk,               // Clock signal
    input enable,            // Enable signal
    input ACTIVE_SIG,        // Active signal to determine whether the sync should be inverted
    output VGA_SIG,          // VGA Horizontal Sync signal
    output reg displaying
);
    
    reg [1:0] cur_state, next_state;
    reg [COUNTER_BITS - 1:0] max;
    wire [COUNTER_BITS - 1:0] CPIXEL;
    wire user_reset;
    reg VGA_SIG_temp;

    localparam HSYNC_PULSE = 2'b00, BACK_PORCH = 2'b01, DISPLAYING  = 2'b10, FRONT_PORCH = 2'b11;
    
    // GUCounter instantiation with parameterized bits
    GUCounter #(.BITS(COUNTER_BITS)) CPIXEL_counter_inst (.clk(clk), .reset_in({reset, user_reset}), .enable(enable), .count(CPIXEL), .stall(1'b0), .overflow());
    
    assign user_reset = CPIXEL == max - 1;

    always @(posedge clk) begin
        if (reset) begin
            cur_state <= HSYNC_PULSE;
        end else begin
            cur_state <= next_state;
        end
    end

    always @(*) begin
        case (cur_state)
            HSYNC_PULSE: begin
                displaying = 1'b0;
                VGA_SIG_temp = 1;
                max = SHOLD;
                if (CPIXEL == SHOLD - 1) begin
                    next_state = BACK_PORCH;
                end else begin
                    next_state = HSYNC_PULSE;
                end
            end
            BACK_PORCH: begin
                displaying = 1'b0;
                VGA_SIG_temp = 0;
                max = SBP;
                if (CPIXEL == SBP - 1) begin
                    next_state = DISPLAYING;
                end else begin
                    next_state = BACK_PORCH;
                end
            end
            DISPLAYING: begin
                displaying = 1'b1;
                VGA_SIG_temp = 0;
                max = DISPLAY_TIME;
                if (CPIXEL == DISPLAY_TIME - 1) begin
                    next_state = FRONT_PORCH;
                end else begin
                    next_state = DISPLAYING;
                end
            end
            FRONT_PORCH: begin
                displaying = 1'b0;
                VGA_SIG_temp = 0;
                max = SFP;
                if (CPIXEL == SFP - 1) begin
                    next_state = HSYNC_PULSE;
                end else begin
                    next_state = FRONT_PORCH;
                end
            end
        endcase
    end

    assign VGA_SIG = ACTIVE_SIG ? VGA_SIG_temp : !VGA_SIG_temp;

endmodule

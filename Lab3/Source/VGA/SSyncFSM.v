/*
    The Signal Synchronization Finite State Machine (SSyncFSM) module is responsible for generating the VGA sync signals (VGA_HSYNC, VGA_VSYNC).
    It uses a General Use Counter (GUCounter) module to count the number of pixels (clock cycles) for each state of the sync signal. The SSyncFSM
    module has 4 states: SSYNC_PULSE, BACK_PORCH, DISPLAYING, and FRONT_PORCH. The module will indicate when in the displaying state by setting
    the displaying signal to 1. The module will also invert the sync signal if the ACTIVE_SIG is set to 1. The amount of cycles for each state is
    determined by the parameters DISPLAY_TIME, SHOLD, SBP, SFP, and COUNTER_BITS. The module will transition to the next state when the counter
    reaches the maximum number of cycles for the current state.

    Inputs:
    - reset: Reset signal.
    - clk: Clock signal.
    - enable: Enable signal.
    - ACTIVE_SIG: Active signal to determine whether the sync should be inverted.

    Outputs:
    - VGA_SIG: VGA Sync signal.
    - displaying: Signal to indicate when the VGA is displaying.
*/

module SSyncFSM #(
    parameter DISPLAY_TIME = 640,  // Display time in pixels
    parameter SHOLD = 96,          // Signal Hold time
    parameter SBP = 48,            // Signal Back Porch time
    parameter SFP = 16,            // Signal Front Porch time
    parameter COUNTER_BITS = 10    // Number of bits in the GUCounter
) ( input reset, input clk, input enable, input ACTIVE_SIG, output VGA_SIG, output reg displaying);
    
    reg [1:0] cur_state, next_state;
    reg [COUNTER_BITS - 1:0] max;
    wire [COUNTER_BITS - 1:0] CPIXEL;
    wire user_reset;
    reg VGA_SIG_temp;

    localparam SSYNC_PULSE = 2'b00, BACK_PORCH = 2'b01, DISPLAYING  = 2'b10, FRONT_PORCH = 2'b11;
    
    // GUCounter instantiation to count the number of pixels
    GUCounter #(.BITS(COUNTER_BITS)) CPIXEL_counter_inst (.clk(clk), .reset_in({reset, user_reset}), .enable(enable), .count(CPIXEL), .overflow());    
    assign user_reset = CPIXEL == max - 1;

    always @(posedge clk) begin
        if (reset) begin
            cur_state <= SSYNC_PULSE;
        end else begin
            cur_state <= next_state;
        end
    end

    always @(*) begin
        case (cur_state)
            SSYNC_PULSE: begin
                displaying = 1'b0;
                VGA_SIG_temp = 1;
                max = SHOLD;
                if (CPIXEL == SHOLD - 1) begin
                    next_state = BACK_PORCH;
                end else begin
                    next_state = SSYNC_PULSE;
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
                    next_state = SSYNC_PULSE;
                end else begin
                    next_state = FRONT_PORCH;
                end
            end
        endcase
    end

    // Invert the sync signal if ACTIVE_SIG is set
    assign VGA_SIG = ACTIVE_SIG ? VGA_SIG_temp : !VGA_SIG_temp;

endmodule

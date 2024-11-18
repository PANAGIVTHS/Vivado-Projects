/*
    This is a General Use Counter module that can be used to count up to a specified number of bits.
    The counter can be reset using the reset input or a user reset input, an enable singal is provided
    when LOW the counter will hold its current value. When the counter overflows the flag overflow will
    be HIGH. The counter will hold the current count when the enable input is not asserted.

    Parameters:
    - BITS: The number of bits for the counter (default is 8 bits)
    Inputs:
    - clk: Clock input
    - reset_in: Reset input (2 bits, LSB is used for reset, MSB is used for user reset)
    - enable: Enable input to increment the counter
    Outputs:
    - count: The current count value (BITS bits)
    - overflow: Overflow flag to indicate when the counter has reached the maximum value
*/

module GUCounter #(parameter BITS = 10) (input clk, input [1:0] reset_in, input enable, input stall, output reg [BITS-1:0] count, output reg overflow);
    assign reset = reset_in[1]; // Use only the LSB of the reset input
    assign user_reset = reset_in[0]; // Use only the MSB of the reset input
    reg overflow; // Overflow flag

    // Counter logic
    always @(posedge clk) begin
        if (reset) begin
            count <= 0; // Reset the counter to 0
            overflow <= 0; // Reset the overflow flag
        end else if (user_reset) begin 
            count <= 0; // Reset the counter to 0 if user reset is asserted
            overflow <= 0; // Reset the overflow flag
        end else if (stall && overflow) begin
            count <= 0; // Hold the current count if stall_on_overflow is enabled and overflow is asserted
            overflow <= 0; // Reset the overflow flag if stall_on_overflow is enabled and overflow is asserted
        end else if (enable) begin
            {overflow, count} <= count + 1; // Increment the counter
        end else begin
            count <= count; // Hold the current count
        end
    end
endmodule

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

module GUCounter #(parameter BITS = 10) (input clk, input [1:0] reset_in, input enable, output reg [BITS-1:0] count);
    wire reset = reset_in[1]; 
    wire user_reset = reset_in[0]; 
    
    localparam SYNCH_RESET = 1;

    generate
        if (SYNCH_RESET == 0) begin
            // Counter logic
            always @(posedge clk) begin
                if (reset) begin
                    count <= 0; 
                end else if (user_reset) begin 
                    count <= 0; 
                end else if (enable) begin
                    count <= count + 1; 
                end
            end
        end else begin 
            // Counter logic
            always @(posedge clk or posedge reset) begin
                if (reset) begin
                    count <= 0; 
                end else if (user_reset) begin 
                    count <= 0; 
                end else if (enable) begin
                    count <= count + 1; 
                end
            end
        end
    endgenerate
endmodule

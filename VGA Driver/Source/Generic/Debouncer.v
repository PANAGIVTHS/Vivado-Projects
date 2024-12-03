/*
    This module is a debouncer that debounces a button signal.
    After the button is pressed, the debouncer will make sure that the 
    signal stays high for some time before it is considered as a valid press.
*/

module Debouncer #(
    parameter HOLD_SIGNAL = 25000,
    parameter BITS = 15
)(
    input clk, 
    input button, 
    output reg button_debounced
);
    reg [2:0] FF_wire;
    reg [BITS-1:0] counter;
    
    always @(posedge clk) begin
        FF_wire[0] <= button;
        FF_wire[1] <= FF_wire[0];
        FF_wire[2] <= FF_wire[1];
    end

    assign enabled = ~(FF_wire[1] ^ FF_wire[2]);

    always @(posedge clk) begin
        // If counter is HOLD_SIGNAL, then button_debounced is FF_wire[2]
        if (counter == HOLD_SIGNAL) begin
            button_debounced <= FF_wire[2];
        end
        // If enabled, increment counter
        if (enabled) begin
            counter <= counter + 1;
        end else begin
            counter <= 0; // Reset counter if not enabled
        end
    end

endmodule
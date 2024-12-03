
/*
    This module is a synchronizer that synchronizes an asynchronous signal to a target clock.
    It uses a two-stage synchronizer to prevent metastability issues.   
*/

module synchronizer (
    input wire clk,          // Target clock
    input wire async_signal, // Asynchronous input signal
    output reg sync_signal   // Synchronized output signal
);
    // Intermediate signal for the first stage
    reg sync_stage1;

    // Synchronizer logic
    always @(posedge clk) begin
        sync_stage1 <= async_signal; // First stage
        sync_signal <= sync_stage1;  // Second stage
    end
endmodule 

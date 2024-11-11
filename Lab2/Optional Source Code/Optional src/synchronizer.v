
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

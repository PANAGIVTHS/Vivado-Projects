
module Synchronizer (input clk, input signal, output reg signal_sync);
    reg signal_prime;

    always@(posedge clk) begin
        signal_prime <= signal;
        signal_sync <= signal_prime;
    end
endmodule
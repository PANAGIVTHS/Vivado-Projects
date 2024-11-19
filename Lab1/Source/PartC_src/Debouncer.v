module Debouncer (input clk, input button, output reg button_debounced);
    reg [2:0] FF_wire;
    reg [4:0] counter;
    
    always @(posedge clk) begin
        FF_wire[0] <= button;
        FF_wire[1] <= FF_wire[0];
        FF_wire[2] <= FF_wire[1];
    end

    assign enabled = ~(FF_wire[1] ^ FF_wire[2]);

    always @(posedge clk) begin
        // If counter is 5'b11111, then button_debounced is FF_wire[2]
        if (counter == 5'b11111) begin
            button_debounced <= FF_wire[2];
        end
        // If enabled, increment counter
        if (enabled) begin
            counter <= counter + 1;
        end else begin
            counter <= 5'b0; // Reset counter if not enabled
        end
    end

endmodule
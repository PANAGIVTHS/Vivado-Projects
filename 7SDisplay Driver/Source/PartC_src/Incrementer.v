module Incrementer (input clk, input reset, input button_debounced, output reg [3:0] button_presses);
    wire increment;
    reg [1:0] FF;

    always @(posedge clk) begin
        FF[0] <= button_debounced;
        FF[1] <= FF[0];
    end
    
    // on "negedge" button
    assign increment = ~FF[0] & FF[1];

    always @(posedge clk or posedge reset) begin
        if (reset | (increment & (button_presses == 4'b1100))) begin
            button_presses <= 4'b0;
        end else if (increment) begin    
            button_presses <= button_presses + 4'b1;
        end
    end
endmodule
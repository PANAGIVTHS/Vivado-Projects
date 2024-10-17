module incrementer (input clk, input reset, input button_debounced, output reg [4:0] button_presses);
    wire increment;
    reg [1:0] FF;

    always @(posedge clk) begin
        FF[0] <= button_debounced;
        FF[1] <= FF[0];
    end
    
    // on "negedge" button
    assign increment = ~FF[0] & FF[1];

    always @(posedge clk or posedge reset) begin
        if (reset | (increment & (button_presses == 5'b01111))) begin
            button_presses <= 5'b0;
        end else if (increment) begin    
            button_presses <= button_presses + 5'b1;
        end
    end
endmodule
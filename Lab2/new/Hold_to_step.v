
module Hold_to_step (input clk, input reset, input button, output reg spike);
    reg [1:0] FF;
    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            FF[1] <= 0;
            FF[0] <= 0;
        end else begin
            FF[0] <= button;
            FF[1] <= FF[0];
        end
    end

    assign spike = ~FF[1] & FF[0];

endmodule
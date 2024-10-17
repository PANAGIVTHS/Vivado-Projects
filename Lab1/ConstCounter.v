module ConstCounter (input clk, input reset, output reg [3:0] counter);
    always @(posedge clk or posedge reset) begin
        if (reset == 1'b1) begin 
            counter = 4'b0000;
        end else begin
            counter = counter + 4'b0001;
        end
    end
endmodule
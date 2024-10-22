module ScrollCounter (input clk, input reset, output reg overflow);
    reg [22:0] counter;

    always @(posedge clk or posedge reset) begin
        if (reset == 1'b1) begin 
            counter <= 23'b0;
        end else begin
            {overflow, counter} <= counter + 23'b1;
        end
    end
endmodule
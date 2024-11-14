

module pixel_counter (input clk, input reset, input enable, output reg [13:0] cur_pixel);
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            cur_pixel <= 0;
        end else begin
            cur_pixel <= cur_pixel + 1;
        end
    end
endmodule
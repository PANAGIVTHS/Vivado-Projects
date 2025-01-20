module AverageCalculator #(
    localparam NUM_ROWS = 16
)(
    input clk,
    input reset,
    input signed [7:0] i_MEM_Data,
    input i_MEM_AddSignal,
    input i_AVG_CalcSignal,
    output signed [7:0] o_AVG_Average
);
    reg signed [11:0] sum;
    reg signed o_AVG_Average;
    integer i;

    // Average calculation logic
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            sum <= 12'b0;
            o_AVG_Average <= 8'b0;
        end else if (i_AVG_AddSignal) begin 
            sum <= sum + {4'b0, i_MEM_Data};
        end else if (i_AVG_CalcSignal) begin
            o_AVG_Average <= sum >> 4;
        end
    end
endmodule

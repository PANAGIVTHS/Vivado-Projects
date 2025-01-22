
module AverageCalculator #(
    parameter DATA_WIDTH = 12,
    localparam AVG_N = 16
)(
    input clk,
    input reset,
    input signed [DATA_WIDTH-1:0] i_MEM_Data,
    input i_MEM_AddSignal,
    output reg signed [DATA_WIDTH-1:0] o_AVG_Average,
    output reg o_AVG_Ready
);
    wire [4:0] count;

    GUCounter #(.BITS(5))
            GUCounterInst (.clk(clk), .reset_in({reset, count == AVG_N}), .enable(i_MEM_AddSignal), .count(count));

    generate
        if (DATA_WIDTH == 8) begin 
            reg signed [11:0] sum;
            // Average calculation logic for 8-bit input
            always @(posedge clk or posedge reset) begin
                if (reset) begin
                    sum <= 12'b0;
                    o_AVG_Average <= 8'b0;
                end else if (i_MEM_AddSignal) begin 
                    sum <= sum + {4'b0, i_MEM_Data}; // Shift to handle 8-bit addition into a 12-bit sum
                end else if (count == AVG_N - 1) begin
                    o_AVG_Average <= sum >>> 4; // Divide by AVG_N (16), which is equivalent to a right shift by 4
                end
            end
        end else if (DATA_WIDTH == 19) begin 
            reg signed [22:0] sum;
            // Average calculation logic for 19-bit input
            always @(posedge clk or posedge reset) begin
                if (reset) begin
                    sum <= 23'b0;
                    o_AVG_Average <= 19'b0;
                end else if (count == 0 && !i_MEM_AddSignal) begin 
                    sum <= 23'b0;
                end else if (i_MEM_AddSignal) begin 
                    sum <= sum + i_MEM_Data; // Add 19-bit values to a 23-bit sum
                end else if (count == AVG_N) begin
                    o_AVG_Average <= sum >>> 4; // Divide by AVG_N (16) with a right shift by 4
                end
            end
        end else if (DATA_WIDTH == 12) begin
            reg signed [15:0] sum;
            // Average calculation logic for 12-bit input
            always @(posedge clk or posedge reset) begin
                if (reset) begin
                    sum <= 16'b0;
                    o_AVG_Average <= 12'b0;
                end else if (count == 0 && !i_MEM_AddSignal) begin 
                    sum <= 16'b0;
                end else if (i_MEM_AddSignal) begin 
                    sum <= sum + i_MEM_Data; // Add 12-bit values to a 16-bit sum
                end else if (count == AVG_N) begin
                    o_AVG_Average <= sum >>> 4; // Divide by AVG_N (16) with a right shift by 4
                end
            end
        end else begin
            initial begin // Unsupported data width: fatal error
                $fatal("Unsupported DATA_WIDTH: %d", DATA_WIDTH);
            end
        end
    endgenerate

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            o_AVG_Ready <= 0;
        end else if (count == AVG_N) begin
            o_AVG_Ready <= 1;
        end else begin
            o_AVG_Ready <= 0;
        end
    end

endmodule

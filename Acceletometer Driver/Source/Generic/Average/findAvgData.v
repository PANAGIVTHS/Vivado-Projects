module findAvgData (
    input clk,
    input reset,
    input i_AVG_dataReady,
    input signed [11:0] accel_X,
    input signed [11:0] accel_Y,
    input signed [11:0] accel_Z,
    input signed [18:0] accel_T,
    output signed [11:0] o_AVG_AccelX,
    output signed [11:0] o_AVG_AccelY,
    output signed [11:0] o_AVG_AccelZ,
    output signed [18:0] o_AVG_AccelT
);
    
    wire avgReadyX, avgReadyY, avgReadyZ, avgReadyT;
    wire avgReady;

    // Stall 1 cycle to allow the data to go from raw to binary
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            dataReady <= 0;
        end else begin
            dataReady <= i_AVG_dataReady;
        end
    end

    AverageCalculator #(.DATA_WIDTH(12)) AverageCalculatorX (.clk(clk), .reset(reset), .i_MEM_Data(accel_X),
        .i_MEM_AddSignal(dataReady), .o_AVG_Average(accel_X_avg), .o_AVG_Ready(avgReadyX)
    );

    AverageCalculator #(.DATA_WIDTH(12)) AverageCalculatorY (.clk(clk), .reset(reset), .i_MEM_Data(accel_Y),
        .i_MEM_AddSignal(dataReady), .o_AVG_Average(accel_Y_avg), .o_AVG_Ready(avgReadyY)
    );

    AverageCalculator #(.DATA_WIDTH(12)) AverageCalculatorZ (.clk(clk), .reset(reset), .i_MEM_Data(accel_Z),
        .i_MEM_AddSignal(dataReady), .o_AVG_Average(accel_Z_avg), .o_AVG_Ready(avgReadyZ)
    );

    AverageCalculator #(.DATA_WIDTH(19)) AverageCalculatorT (.clk(clk), .reset(reset), .i_MEM_Data(accel_T),
        .i_MEM_AddSignal(dataReady), .o_AVG_Average(accel_T_avg), .o_AVG_Ready(avgReadyT)
    );

    assign avgReady = avgReadyX & avgReadyY & avgReadyZ & avgReadyT;

    always @(posedge clk or posedge reset) begin 
        if (reset) begin 
            accel_X <= 0;
            accel_Y <= 0;
            accel_Z <= 0;
            accel_T <= 0;
        end else if (avgReady) begin 
            o_AVG_AccelX <= accel_X_avg;
            o_AVG_AccelY <= accel_Y_avg;
            o_AVG_AccelZ <= accel_Z_avg;
            o_AVG_AccelT <= accel_T_avg;
        end
    end
endmodule
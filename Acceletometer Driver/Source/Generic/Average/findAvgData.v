/*
 * -----------------------------------------------------------------------------
 ? Signal Naming Convention:
 *   The naming convention used in this module is as follows:
 *     x_Y_z
 *     where:
 !       x - Indicates the signal type:
 *           'i' for input signals.
 *           'o' for output signals.
 *           <none>: for insternal signals.
 !       Y - Specifies the class or category of the signal (optional):
 *           AVG: Average-related signals.
 *           ACCEL: Accelerometer-related signals. (e.g., i_ACCEL_X)
 !       z - Descriptive name of the variable:
 *           A meaningful identifier for the signal.
 *
 * -----------------------------------------------------------------------------
 ? More Information about Naming:
 *   Examples and more in Top module.
 * -----------------------------------------------------------------------------
 ? Module Description:
 *   The findAvgData module is used to find the average of the three-axis and
 *   temperature data from the accelerometer. The module uses the AverageCalculator
 *   module to calculate the average of the data. The module waits for the data to
 *   be ready before calculating the average. The module then outputs the average
 *   data to the user.
 *
 ?   Inputs:
 *     - clk: Clock signal.
 *     - reset: Reset signal.
 *     - i_AVG_dataReady: Input signal indicating that the data is ready.
 *     - i_ACCEL_X: Input signal carrying the X-axis data.
 *     - i_ACCEL_Y: Input signal carrying the Y-axis data.
 *     - i_ACCEL_Z: Input signal carrying the Z-axis data.
 *     - i_ACCEL_T: Input signal carrying the temperature data.
 *
 ?   Outputs:
 *     - o_AVG_AccelX: Output signal carrying the X-axis average data.
 *     - o_AVG_AccelY: Output signal carrying the Y-axis average data.
 *     - o_AVG_AccelZ: Output signal carrying the Z-axis average data.
 *     - o_AVG_AccelT: Output signal carrying the temperature average data.
 *     - o_AVG_Ready: Output signal indicating that the average data is ready.
 *
 * -----------------------------------------------------------------------------
 */

module findAvgData (
    input clk,
    input reset,
    input i_AVG_dataReady,
    input signed [11:0] i_ACCEL_X,
    input signed [11:0] i_ACCEL_Y,
    input signed [11:0] i_ACCEL_Z,
    input signed [18:0] i_ACCEL_T,
    output reg signed [11:0] o_AVG_AccelX,
    output reg signed [11:0] o_AVG_AccelY,
    output reg signed [11:0] o_AVG_AccelZ,
    output reg signed [18:0] o_AVG_AccelT,
    output reg o_AVG_Ready
);
    
    wire avgReadyX, avgReadyY, avgReadyZ, avgReadyT;
    wire avgReady;
    reg dataReady;
    wire [11:0] accelXavg, accelYavg, accelZavg;
    wire [18:0] accelTavg;
    
    // Stall 1 cycle to allow the data to go from raw to binary.
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            dataReady <= 0;
        end else begin
            dataReady <= i_AVG_dataReady;
        end
    end

    AverageCalculator #(.DATA_WIDTH(12)) AverageCalculatorX (.clk(clk), .reset(reset), .i_MEM_Data(i_ACCEL_X),
        .i_MEM_AddSignal(dataReady), .o_AVG_Average(accelXavg), .o_AVG_Ready(avgReadyX)
    );

    AverageCalculator #(.DATA_WIDTH(12)) AverageCalculatorY (.clk(clk), .reset(reset), .i_MEM_Data(i_ACCEL_Y),
        .i_MEM_AddSignal(dataReady), .o_AVG_Average(accelYavg), .o_AVG_Ready(avgReadyY)
    );

    AverageCalculator #(.DATA_WIDTH(12)) AverageCalculatorZ (.clk(clk), .reset(reset), .i_MEM_Data(i_ACCEL_Z),
        .i_MEM_AddSignal(dataReady), .o_AVG_Average(accelZavg), .o_AVG_Ready(avgReadyZ)
    );

    AverageCalculator #(.DATA_WIDTH(19)) AverageCalculatorT (.clk(clk), .reset(reset), .i_MEM_Data(i_ACCEL_T),
        .i_MEM_AddSignal(dataReady), .o_AVG_Average(accelTavg), .o_AVG_Ready(avgReadyT)
    );

    assign avgReady = avgReadyX & avgReadyY & avgReadyZ & avgReadyT;

    always @(posedge clk or posedge reset) begin 
        if (reset) begin 
            o_AVG_AccelX <= 0;
            o_AVG_AccelY <= 0;
            o_AVG_AccelZ <= 0;
            o_AVG_AccelT <= 0;
            o_AVG_Ready <= 0;
        end else if (avgReady) begin 
            o_AVG_AccelX <= accelXavg;
            o_AVG_AccelY <= accelYavg;
            o_AVG_AccelZ <= accelZavg;
            o_AVG_AccelT <= accelTavg;
            o_AVG_Ready <= 1;
        end else begin 
            o_AVG_Ready <= 0;
        end
    end
endmodule
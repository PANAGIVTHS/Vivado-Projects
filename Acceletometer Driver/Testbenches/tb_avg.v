
`timescale 1ns / 10ps

module tb_avg;

    reg clk, reset, enable;
    reg [11:0] i_ACCEL_X, i_ACCEL_Y, i_ACCEL_Z;
    reg [18:0] i_ACCEL_T;
    wire [11:0] o_AVG_AccelX, o_AVG_AccelY, o_AVG_AccelZ;
    wire [18:0] o_AVG_AccelT;
    reg ready;

    localparam CLK_PERIOD = 10; // Clock period of 10 ns (100 MHz clock)
    always #(CLK_PERIOD / 2) clk = ~clk;

    findAvgData findAvgDataInst (
        .clk(clk),
        .reset(reset),
        .i_AVG_dataReady(ready),
        .i_ACCEL_X(i_ACCEL_X),
        .i_ACCEL_Y(i_ACCEL_Y),
        .i_ACCEL_Z(i_ACCEL_Z),
        .i_ACCEL_T(i_ACCEL_T),
        .o_AVG_AccelX(o_AVG_AccelX),
        .o_AVG_AccelY(o_AVG_AccelY),
        .o_AVG_AccelZ(o_AVG_AccelZ),
        .o_AVG_AccelT(o_AVG_AccelT)
    );
    
    integer i;
    
    // Stimulus and test sequence
    initial begin
        // Initialize signals
        clk = 0;
        reset = 1;
        enable = 1;
        ready = 0;
        i_ACCEL_X = 12'h000;
        i_ACCEL_Y = 12'h000;
        i_ACCEL_Z = 12'h000;
        i_ACCEL_T = 19'h00000;
        #1000;
        reset = 0;
        #2000;

        for (i = 0; i < 17; i = i + 1) begin
            i_ACCEL_X = 12'h028;
            i_ACCEL_Y = 12'h073;
            i_ACCEL_Z = 12'h0A3;
            i_ACCEL_T = 19'hB71B0;
            #100;
            ready = 1;
            #(CLK_PERIOD) ready = 0;
        end
    end

endmodule

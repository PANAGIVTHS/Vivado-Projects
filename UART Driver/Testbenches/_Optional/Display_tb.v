`timescale 1ns/1ps

module SenderTestModule_tb;

    // Testbench Signals
    reg clk;
    reg reset;
    reg [2:0] baud_select;
    reg Tx_EN;
    reg Tx_WR;

    wire [3:0] anodes;
    wire [6:0] LED;
    wire dp;
    reg Rx_EN;

    localparam CLOCK_PERIOD = 10;

    // Instantiate the DUT (Device Under Test)
    SSD_Transmittor_Driver SSD_Transmittor_Driver_inst (
        .clk(clk), 
        .reset(reset), 
        .baud_select(baud_select), 
        .Tx_EN(Tx_EN), 
        .Rx_EN(Rx_EN),
        .Tx_WR(Tx_WR), 
        .anodes(anodes), 
        .LED(LED),
        .dp(dp)
    );

    // Clock generation: 10ns period (100MHz clock)
    always #(CLOCK_PERIOD / 2) clk = ~clk;

    // Test sequence
    initial begin
        #100
        clk = 0;
        Tx_EN = 0;
        Tx_WR = 0;
        reset = 0;
        baud_select = 3'b111;

        #(CLOCK_PERIOD * 100) reset = 1;
        #1000 reset = 0;

        Rx_EN = 1;
        Tx_EN = 1;

        #(CLOCK_PERIOD * 4) Tx_WR = 1;
        #(CLOCK_PERIOD * 100) Tx_WR = 0;

        #(CLOCK_PERIOD * 10000) Tx_WR = 1;
        #(CLOCK_PERIOD* 100) Tx_WR = 0;
        
        #(CLOCK_PERIOD * 10000) Tx_WR = 1;
        #(CLOCK_PERIOD* 100) Tx_WR = 0;
        
        #(CLOCK_PERIOD * 10000) Tx_WR = 1;
        #(CLOCK_PERIOD* 100) Tx_WR = 0;
        
        #(CLOCK_PERIOD * 10000) Tx_WR = 1;
        #(CLOCK_PERIOD* 100) Tx_WR = 0;
        
        #(CLOCK_PERIOD * 10000) Tx_WR = 1;
        #(CLOCK_PERIOD* 100) Tx_WR = 0;
        
        #(CLOCK_PERIOD * 10000) Tx_WR = 1;
        #(CLOCK_PERIOD* 100) Tx_WR = 0;

    end
endmodule

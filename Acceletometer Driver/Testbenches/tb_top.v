`timescale 1ns / 10ps

module tb_tob;

    reg clk, reset, enable;
    wire miso;
    wire mosi, sclk, cs, TxD;

    // instantiate the accelerometer_driver module
    accelerometer_driver accelerometer_driverInst (.clk(clk), .reset(reset), .enable(enable), .TxD(TxD),
                                                   .mosi(mosi), .miso(miso), .sclk(sclk), .cs(cs));

    // Instantiate the SPISlave module
    reg [7:0] slaveTxData = 8'h3C; // Example slave transmit byte
    wire [7:0] slaveRxData;

    SPISlave #(
        .SHIFT_REG_WIDTH(8)
    ) slave (
        .reset(reset),
        .i_SPI_Clk(sclk),
        .i_SPI_CSLow(cs),
        .i_SPI_Mosi(mosi),
        .o_SPI_Miso(miso),
        .o_Rx_Byte(slaveRxData),
        .i_Tx_Byte(slaveTxData)
    );

    localparam CLK_PERIOD = 10; // Clock period of 10 ns (100 MHz clock)
    always #(CLK_PERIOD / 2) clk = ~clk;

    // Stimulus and test sequence
    initial begin
        // Initialize signals
        clk = 0;
        reset = 1;
        enable = 1;
        
        // Apply reset
        #2000;
        reset = 0;


    end

endmodule

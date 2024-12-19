`timescale 1ns / 10ps

module SPIM;

    // Parameters for SPI Mode (CPOL, CPHA)
    reg clk;
    reg reset;
    reg [7:0] i_Tx_Byte;
    reg i_Tx_Valid;
    wire i_SPI_Miso;
    wire o_SPI_CSLow;
    wire o_SPI_Mosi;
    wire o_SPI_Clk;
    wire [7:0] o_Rx_Byte;
    wire o_Rx_Ready;

    // Instantiate the SPIMaster module
    SPIMaster #(
        .CPOL(0),  // Adjust CPOL here
        .CPHA(0)   // Adjust CPHA here
    ) uut (
        .clk(clk),
        .reset(reset),
        .i_Tx_Byte(i_Tx_Byte),
        .i_Tx_Valid(i_Tx_Valid),
        .o_Tx_Ready(),
        .o_Rx_Byte(o_Rx_Byte),
        .o_Rx_Ready(o_Rx_Ready),
        .i_SPI_Miso(i_SPI_Miso),
        .o_SPI_CSLow(o_SPI_CSLow),
        .o_SPI_Mosi(o_SPI_Mosi),
        .o_SPI_Clk(o_SPI_Clk)
    );

    // Instantiate the SPISlave module
    reg [7:0] slaveTxData = 8'h3C; // Example slave transmit byte
    wire [7:0] slaveRxData;

    SPISlave #(
        .SHIFT_REG_WIDTH(8)
    ) slave (
        .i_SPI_Clk(o_SPI_Clk),
        .i_SPI_CSLow(o_SPI_CSLow),
        .i_SPI_Mosi(o_SPI_Mosi),
        .o_SPI_Miso(i_SPI_Miso),
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
        i_Tx_Byte = 8'b0;
        i_Tx_Valid = 0;

        // Apply reset
        #20;
        reset = 0;

        // Test for SPI Mode 0 (CPOL = 0, CPHA = 0)
        // Transmission of first byte
        i_Tx_Byte = 8'hA5; // Master sends 0xA5
        #20;
        i_Tx_Valid = 1;
        # (CLK_PERIOD * 340); // Wait for the transmission to complete
        i_Tx_Valid = 0;

        // Transmission of second byte
        i_Tx_Byte = 8'b01011010; // Master sends 0x5A
        #20;
        i_Tx_Valid = 1;
        # (CLK_PERIOD * 450); // Wait for the transmission to complete
        i_Tx_Valid = 0;

        // Wait for the results to stabilize
        #500;

        // Display the results
        $display("Test 1: Master sent: 0x%H, Slave received: 0x%H", 8'hA5, slaveRxData);
        $display("Test 2: Master sent: 0x%H, Slave received: 0x%H", 8'b01011010, slaveRxData);
        $display("Slave sent: 0x%H, Master received: 0x%H", slaveTxData, o_Rx_Byte);

        // End simulation
        #1000;
    end

endmodule

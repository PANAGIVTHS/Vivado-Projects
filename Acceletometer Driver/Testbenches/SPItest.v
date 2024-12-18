`timescale 1ns / 10ps

module SPIMaster_tb;

    // Parameters for SPI Mode (CPOL, CPHA)
    reg clk;
    reg reset;
    reg [7:0] i_Tx_Byte;
    reg i_Tx_Valid;
    reg i_SPI_Miso;
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
    localparam CLK_PERIOD = 10;
    always #(CLK_PERIOD/2) clk=~clk;


    // Stimulus and test sequence
    initial begin
        #2000;
        // Initialize signals
        reset = 1;
        clk = 0;
        i_Tx_Byte = 8'b0;
        i_Tx_Valid = 0;
        i_SPI_Miso = 0;
        
        // Apply reset
        #20;
        reset = 0;
        
        // Test for SPI Mode 0 (CPOL = 0, CPHA = 0)
        // Test the transmission of a byte with some values
        i_Tx_Byte = 8'hA5;  // Example byte to transmit
        i_Tx_Valid = 1;
        
        // Wait for transmission to complete
        #1000;
        
        i_Tx_Valid = 0;
        // Apply some more tests for receiving and transmitting in different modes
        // You can expand here based on your specific test needs (e.g., reading MISO, verifying MOSI, etc.)

        // Test for Mode 1 (CPOL = 0, CPHA = 1)
        #2000;
        uut.CPOL = 0;
        uut.CPHA = 1;
        i_Tx_Byte = 8'h3C;  // Another test byte
        i_Tx_Valid = 1;

        // Wait for some time and simulate SPI transactions
        #100;
        
        i_Tx_Valid = 0;
        
        // Test for Mode 2 (CPOL = 1, CPHA = 0)
        #2000;
        uut.CPOL = 1;
        uut.CPHA = 0;
        i_Tx_Byte = 8'hF0;
        i_Tx_Valid = 1;

        // Wait for some time
        #1000;
        
        i_Tx_Valid = 0;
        
        // Test for Mode 3 (CPOL = 1, CPHA = 1)
        #2000;
        uut.CPOL = 1;
        uut.CPHA = 1;
        i_Tx_Byte = 8'hFF;  // Another test byte
        i_Tx_Valid = 1;

        // Wait for transmission to complete
        #1000;
        
        i_Tx_Valid = 0;
        
        // End simulation
        #2000;
        $finish;
    end

endmodule

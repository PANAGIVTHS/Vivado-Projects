module SPISlave #(
    parameter SHIFT_REG_WIDTH = 8
)(
    input i_SPI_Clk,              // SPI clock from the master
    input i_SPI_CSLow,            // Chip select signal from the master (active low)
    input i_SPI_Mosi,             // Master-Out-Slave-In signal
    output reg o_SPI_Miso,        // Master-In-Slave-Out signal
    output reg [SHIFT_REG_WIDTH-1:0] o_Rx_Byte, // Received byte
    input [SHIFT_REG_WIDTH-1:0] i_Tx_Byte       // Byte to transmit
);
    reg [SHIFT_REG_WIDTH-1:0] shiftReg;
    reg [SHIFT_REG_WIDTH-1:0] txReg;
    reg [2:0] bitCounter;         // To count bits received/transmitted

    always @(posedge i_SPI_Clk or posedge i_SPI_CSLow) begin
        if (i_SPI_CSLow) begin
            // Reset when chip select is deasserted
            shiftReg <= 0;
            txReg <= i_Tx_Byte;   // Load the transmit byte
            bitCounter <= 0;
        end else begin
            // Shift data on clock edge when chip select is asserted
            shiftReg <= {shiftReg[SHIFT_REG_WIDTH-2:0], i_SPI_Mosi}; // Shift in MOSI data
            o_SPI_Miso <= txReg[SHIFT_REG_WIDTH-1];                  // Shift out MSB
            txReg <= {txReg[SHIFT_REG_WIDTH-2:0], i_SPI_Mosi};             // Prepare next bit for transmission
            bitCounter <= bitCounter + 1;
        end
    end

    always @(posedge i_SPI_Clk) begin
        o_Rx_Byte <= shiftReg; // Latch received byte when transmission ends
    end
endmodule

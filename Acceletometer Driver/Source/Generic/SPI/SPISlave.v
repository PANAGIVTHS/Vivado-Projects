module SPISlave #(
    parameter SHIFT_REG_WIDTH = 8
)(
    input reset,
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


// USE BELOW ONLY WITH BEHAVIOURAL!!!

// module SPISlave #(
//     parameter SHIFT_REG_WIDTH = 8
// )(
//     input reset,
//     input i_SPI_Clk,              // SPI clock from the master
//     input i_SPI_CSLow,            // Chip select signal from the master (active low)
//     input i_SPI_Mosi,             // Master-Out-Slave-In signal
//     output reg o_SPI_Miso,        // Master-In-Slave-Out signal
//     output reg [SHIFT_REG_WIDTH-1:0] o_Rx_Byte, // Received byte
//     input [SHIFT_REG_WIDTH-1:0] i_Tx_Byte       // Byte to transmit
// );
//     reg [SHIFT_REG_WIDTH-1:0] shiftReg;
//     reg [SHIFT_REG_WIDTH-1:0] txReg;
//     reg [SHIFT_REG_WIDTH-1:0] Byte;
//     reg [2:0] bitCounter;         // To count bits received/transmitted
//     wire [3:0] bytes;
//     wire [3:0] commands;
//     reg start, start2, flag;

//     GUCounter #(.BITS(4))
//         GUCounterInst (.clk(i_SPI_Clk), .reset_in({reset, bytes == 3}), .enable(start2 && flag), .count(bytes));
    
//     GUCounter #(.BITS(4))
//         GUCounterInst2 (.clk(i_SPI_Clk), .reset_in({reset, commands == 5}), .enable(bytes == 3), .count(commands));

//     always @(posedge i_SPI_Clk or posedge reset) begin
//         if (reset) begin
//             flag <= 0;
//         end else if (bitCounter == 0 && shiftReg == 8'h0B) begin
//             flag <= 1;
//         end
//     end

//     always @(posedge i_SPI_Clk or posedge reset) begin
//         if (reset) begin
//             start2 <= 0;
//         end else begin
//             start2 <= start;
//         end
//     end
            
//     always @(posedge i_SPI_Clk or posedge reset) begin
//         if (reset) begin
//             start <= 0;
//         end else if (bitCounter == 7) begin
//             start <= 1;
//         end else begin 
//             start <= 0;
//         end
//     end

//     always @(posedge i_SPI_Clk or posedge i_SPI_CSLow) begin
//         if (i_SPI_CSLow) begin
//             // Reset when chip select is deasserted
//             shiftReg <= 0;
//             txReg <= Byte;   // Load the transmit byte
//             bitCounter <= 0;
//         end else begin
//             // Shift data on clock edge when chip select is asserted
//             shiftReg <= {shiftReg[SHIFT_REG_WIDTH-2:0], i_SPI_Mosi}; // Shift in MOSI data
//             o_SPI_Miso <= txReg[SHIFT_REG_WIDTH-1];                  // Shift out MSB
//             txReg <= {txReg[SHIFT_REG_WIDTH-2:0], txReg[SHIFT_REG_WIDTH - 1]};             // Prepare next bit for transmission
//             bitCounter <= bitCounter + 1;
//         end
//     end

//     always @(*) begin 
//         case(commands)
//             0: Byte = (8'd123 >> 4) - 8'd8;
//             1: Byte = (8'd234 >> 4) - 8'd8;
//             2: Byte = (8'd345 >> 4) - 8'd8;
//             3: Byte = (11'd423 >> 6) - 11'd4;
//             4: Byte = (11'd2456 >> 6) - 11'd2;
//             default: Byte = (11'd2456 >> 6) - 11'd2;
//         endcase
//     end

//     always @(posedge i_SPI_CSLow) begin
//         if (i_SPI_CSLow) begin
//             o_Rx_Byte <= shiftReg; // Latch received byte when transmission ends
//         end
//     end
// endmodule

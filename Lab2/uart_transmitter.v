
module uart_transmitter (
    input reset,
    input clk,
    input [7:0] Tx_DATA,         // Δεδομένα προς αποστολή
    input [2:0] baud_select,     // Επιλογή Baud Rate
    input Tx_WR,                 // Σήμα εγγραφής δεδομένων
    input Tx_EN,                 // Ενεργοποίηση αποστολής
    output reg TxD,              // Σειριακή έξοδος
    output reg Tx_BUSY           // Ενδειξη αποστολής
);

    reg [3:0] bit_counter;        // Shift register bits (0-10 για τα 11 bit)
    reg [9:0] shift_reg;          // Shift register
    wire sample_ENABLE;           // Signal to sample data

    baud_controller_t baud_controller_t_inst (.reset(reset), .clk(clk), .baud_select(baud_select), .sample_ENABLE(sample_ENABLE));

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            bit_counter <= 0;
            Tx_BUSY <= 0;
            TxD <= 1;  // No transmission
        end else if (Tx_EN && Tx_WR && !Tx_BUSY) begin
            // Έναρξη αποστολής
            shift_reg <= {1'b1, Tx_DATA, 1'b0};  // setup shift register for transmission
            bit_counter <= 0;
            Tx_BUSY <= 1; // Set state to busy
        end else if (Tx_BUSY && sample_ENABLE) begin
            // Read and send one bit from the buffer
            TxD <= shift_reg[bit_counter];
            bit_counter <= bit_counter + 1;
            if (bit_counter == 10) begin
                Tx_BUSY <= 0;  // Transmoission complete no longer busy
            end
        end
    end

endmodule
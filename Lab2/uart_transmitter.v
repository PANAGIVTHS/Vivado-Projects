
module uart_transmitter (
    input reset,
    input clk,
    input [7:0] Tx_DATA,         // Data to be transmitted
    input [2:0] baud_select,     // Baud Rate Selection
    input Tx_WR,                 // Signal to write data
    input Tx_EN,                 // Enable transmission
    output reg TxD,              // Output serial data
    output reg Tx_BUSY           // Transmission status
);

    reg [3:0] bit_counter;        // Shift register bits (0-10 για τα 11 bit)
    reg [9:0] shift_reg;          // Shift register
    wire sample_ENABLE;           // Signal to sample data
    reg [1:0] cur_state, next_state;

    localparam SETUP = 2'b00, IDLE = 2'b01, TRANSMITTING = 2'b10;

    baud_controller_t baud_controller_t_inst (.reset(reset), .clk(clk), .baud_select(baud_select), .sample_ENABLE(sample_ENABLE));

    always @(posedge clk or posedge reset) begin 
        if (reset) begin
            bit_counter <= 0;
            Tx_BUSY <= 0;
            TxD <= 1;  // No transmission
            next_state <= IDLE;
        end else if begin
            cur_state <= next_state;
        end
    end

    always @(*) begin 
        if (Tx_EN && Tx_WR && !Tx_BUSY) begin
            next_state <= SETUP; // Start-SetUp transmission
        end else if (Tx_EN && Tx_WR && Tx_BUSY && sample_ENABLE) begin
            next_state <= TRANSMITTING; // Transmitting new bit of data
        end else begin
            next_state <= IDLE; // Default state, hold memory 
        end
    end

    always @(*) begin
        case(cur_state)
            SETUP: begin
                shift_reg <= {1'b1, Tx_DATA, 1'b0};  // setup shift register for transmission
                bit_counter <= 0;
                Tx_BUSY <= 1; // Set state to busy
            end
            TRANSMITTING: begin
                // Read and send one bit from the buffer
                TxD <= shift_reg[bit_counter];
                bit_counter <= bit_counter + 1;
                if (bit_counter == 10) begin
                    Tx_BUSY <= 0;  // Transmission complete no longer busy
                end    
            end
            IDLE: begin
                TxD <= TxD; // For Clarity this is what default does. 'Default' is to be in IDLE state 
            end
        endcase
    end
endmodule
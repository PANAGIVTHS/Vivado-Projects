
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
    
    // Shift register bits (0-10 για τα 11 bit)
    wire sample_ENABLE;           // Signal to sample data
    reg [3:0] cur_state, next_state;
    wire [0:9] buffer = {1'b0, Tx_DATA, 1'b1}; // Add start and stop bits to data

    localparam START_BIT = 4'b0000, IDLE = 4'b1010, DISABLED = 4'b1011, UNUSED1 = 4'b1101, UNUSED2 = 4'b1110, UNUSED3 = 4'b1111;

    baud_controller_t baud_controller_t_inst (.reset(reset), .clk(clk), .baud_select(baud_select), .sample_ENABLE(sample_ENABLE));

    always @(posedge clk or posedge reset) begin 
        if (reset) begin
            next_state <= IDLE;
        end else begin
            cur_state <= next_state;
        end
    end

    always @(Tx_EN or Tx_WR or sample_ENABLE) begin 
        if (!Tx_EN) begin
            next_state <= DISABLED; // Start-SetUp transmission
        end else if (!Tx_WR && !Tx_BUSY) begin
            next_state <= IDLE; // Transmitting new bit of data
        end else if (Tx_WR && !Tx_BUSY) begin
            next_state <= START_BIT; // Transmitting new bit of data
        end else if (sample_ENABLE) begin
            next_state <= cur_state + 1; // Transmitting next bit
        end else begin
            next_state <= cur_state; // Default state, hold memory 
        end
    end

    always @(cur_state) begin
        case(cur_state)
            DISABLED: begin
                Tx_BUSY <= 0; // Set state to busy
                TxD <= 1; // No transmission
            end
            IDLE: begin
                Tx_BUSY <= 0; // Set state to idle
                TxD <= 1; // No transmission
            end
            // TRANSMITTING
            default: begin
                Tx_BUSY <= 1; // Set state to busy
                TxD <= buffer[cur_state]; // Transmit data
            end
        endcase
    end
endmodule
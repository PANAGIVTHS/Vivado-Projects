
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
    wire sample_ENABLE;
    reg [3:0] cur_state, next_state;
    
    // State machine states. Order is important do not change
    // All from START_BIT to DISABLED are used for the state machine
    localparam START_BIT = 4'b0000, PARITY = 4'b1001, IDLE = 4'b1011, DISABLED = 4'b1100;

    // Buffer to store data to be transmitted
    // second 1'b1 is parity bit could also asign it and remove paroty case from state machine
    // as it is it just skips the value of the bit but it's needed to offset end of frame
    wire [0:9] buffer = {1'b0, Tx_DATA, 1'b1, 1'b1}; // Add start and stop bits to data

    // Instantiate baud rate controller for transmitter to enable sampling at the required frequency
    baud_controller_t baud_controller_t_inst (.reset(reset), .clk(clk), .baud_select(baud_select), .sample_ENABLE(sample_ENABLE));

    // State machine state register
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            cur_state <= IDLE;           
        end else begin
            cur_state <= next_state;
        end
    end

    // State machine logic
    always @(Tx_EN or Tx_WR or sample_ENABLE or Tx_BUSY or cur_state) begin
        if (!Tx_EN) begin
            next_state <= DISABLED; // Start-SetUp transmission
        end else if (!Tx_WR && !Tx_BUSY) begin
            next_state <= IDLE; // Transmitting new bit of data
        end else if (Tx_WR && !Tx_BUSY) begin
            next_state <= START_BIT; // Transmitting new bit of data
        end else if (sample_ENABLE) begin
            next_state <= cur_state + 1; // Transmitting next bit
        end else begin
            next_state <= cur_state; // Default state, hold state 
        end
    end

    // State machine output
    always @(cur_state or Tx_DATA or buffer) begin
        case(cur_state)
            DISABLED: begin
                Tx_BUSY <= 0; // Set state to busy
                TxD <= 1; // No transmission
            end
            IDLE: begin
                Tx_BUSY <= 0; // Set state to idle
                TxD <= 1; // No transmission
            end
            PARITY: begin
                Tx_BUSY <= 1; // Set state to busy
                TxD <= ^Tx_DATA; // Parity bit
            end
            // TRANSMITTING
            default: begin
                Tx_BUSY <= 1; // Set state to busy
                TxD <= buffer[cur_state]; // Transmit data
            end
        endcase
    end
endmodule
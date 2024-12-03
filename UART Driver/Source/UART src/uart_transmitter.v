/*
    This module is a UART transmitter that sends data serially. It uses a state machine to control the transmission of data.
    The module has inputs for the data to be transmitted, the baud rate selection, a write signal, and an enable signal. It
    also has an output for the serial data and a busy signal to indicate the transmission status.

    *Notice* The Trasmitter doesnt handle value changes in the Tx_DATA input while transmitting. It will only transmit the 
    *value that was present at the time of the write signal.

    Inputs:
    - Tx_DATA: Data to be transmitted
    - baud_select: Baud Rate Selection
    - Tx_WR: Signal to write data
    - Tx_EN: Enable transmission

    Outputs:
    - TxD: Output serial data
    - Tx_BUSY: Transmission status
*/

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
    reg [3:0] cur_state;
    reg [3:0] next_state;

    // State machine states with unique values
    localparam START_BIT = 4'b0000, BIT_0 = 4'b0001, BIT_1 = 4'b0010, BIT_2 = 4'b0011;
    localparam BIT_3 = 4'b0100, BIT_4 = 4'b0101, BIT_5 = 4'b0110, BIT_6 = 4'b0111, BIT_7 = 4'b1000;
    localparam PARITY = 4'b1001, END_BIT = 4'b1010, IDLE = 4'b1011, DISABLED = 4'b1100;
    // swap the order of the bits in the buffer
    wire [0:7] buffer = Tx_DATA;

    // Instantiate baud rate controller for transmitter
    baud_controller_t baud_controller_t_inst (.reset(reset), .clk(clk), .baud_select(baud_select), .sample_ENABLE(sample_ENABLE), .Enable_controller(Tx_WR & Tx_EN));

    // State transition (sequential) block
    always @(posedge clk or posedge reset) begin
        if (reset)
            cur_state <= IDLE; // Reset to IDLE
        else
            cur_state <= next_state;
    end

    // Next state logic and output control (combinational) block
    always @(cur_state, Tx_EN, Tx_WR, sample_ENABLE, buffer, Tx_DATA) begin
        case (cur_state)
            DISABLED: begin
                TxD = 1;       // Tx line idle
                Tx_BUSY = 0;   // Not busy
                next_state = Tx_EN ? IDLE : DISABLED;
            end
            IDLE: begin
                TxD = 1;       // Idle state for Tx line
                Tx_BUSY = 0;
                next_state = Tx_WR ? START_BIT : IDLE;
            end
            START_BIT: begin    
                TxD = 0;       // Start bit
                Tx_BUSY = 1;
                next_state = sample_ENABLE ? BIT_0 : START_BIT;
            end
            BIT_0: begin 
                TxD = buffer[0];
                Tx_BUSY = 1;
                next_state = sample_ENABLE ? BIT_1 : BIT_0;
            end
            BIT_1: begin
                TxD = buffer[1];
                Tx_BUSY = 1;
                next_state = sample_ENABLE ? BIT_2 : BIT_1;
            end
            BIT_2: begin
                TxD = buffer[2];
                Tx_BUSY = 1;
                next_state = sample_ENABLE ? BIT_3 : BIT_2;
            end
            BIT_3: begin
                TxD = buffer[3];
                Tx_BUSY = 1;
                next_state = sample_ENABLE ? BIT_4 : BIT_3;
            end
            BIT_4: begin
                TxD = buffer[4];
                Tx_BUSY = 1;
                next_state = sample_ENABLE ? BIT_5 : BIT_4;
            end
            BIT_5: begin
                TxD = buffer[5];
                Tx_BUSY = 1;
                next_state = sample_ENABLE ? BIT_6 : BIT_5;
            end
            BIT_6: begin
                TxD = buffer[6];
                Tx_BUSY = 1;
                next_state = sample_ENABLE ? BIT_7 : BIT_6;
            end
            BIT_7: begin
                TxD = buffer[7];
                Tx_BUSY = 1;
                next_state = sample_ENABLE ? PARITY : BIT_7;
            end
            PARITY: begin
                TxD = ^Tx_DATA;  // Parity bit calculation
                Tx_BUSY = 1;
                next_state = sample_ENABLE ? END_BIT : PARITY;
            end
            END_BIT: begin
                TxD = 1;       // Stop bit
                Tx_BUSY = 1;
                next_state = sample_ENABLE ? DISABLED : END_BIT;
                if (sample_ENABLE && !Tx_EN) begin
                    next_state = DISABLED;
                end else if (sample_ENABLE && Tx_EN) begin
                    next_state = IDLE;
                end else begin
                    next_state = END_BIT;
                end
            end
            default: begin
                TxD = 1;
                Tx_BUSY = 0;
                next_state = DISABLED; // Fallback to DISABLED state
            end
        endcase

    end
endmodule

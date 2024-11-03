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
    reg [3:0] counter;
    // State machine states with unique values
    localparam START_BIT = 4'b0000, TRANSMIT = 4'b0001, PARITY = 4'b1001, END_BIT = 4'b1010, IDLE = 4'b1011, DISABLED = 4'b1100;
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

    always @(posedge clk or posedge reset) begin
        if (reset)
            counter <= 0; // Reset counter
        else if (cur_state == TRANSMIT && sample_ENABLE)
            counter <= counter + 1; // Reset counter
        else begin
            counter <= counter; // Hold counter
        end
    end

    // Next state logic and output control (combinational) block
    always @(*) begin
        // Default assignments
        next_state = cur_state;
        TxD = 1'b1;            // Idle output (default high for UART)
        Tx_BUSY = 1'b0;        // Not busy by default

        case (cur_state)
            DISABLED: begin
                TxD = 1;       // Tx line idle
                Tx_BUSY = 0;   // Not busy
                if (Tx_EN) 
                    next_state = IDLE;
            end

            IDLE: begin
                TxD = 1;       // Idle state for Tx line
                Tx_BUSY = 0;
                if (Tx_WR)
                    next_state = START_BIT;
            end

            START_BIT: begin    
                TxD = 0;       // Start bit
                Tx_BUSY = 1;
                if (sample_ENABLE)
                    next_state = TRANSMIT;
            end

            TRANSMIT: begin
                TxD = buffer[counter];  // Transmit data bits in sequence
                Tx_BUSY = 1;
                if (counter == 7 && sample_ENABLE) begin
                    next_state = PARITY; // Next state is PARITY
                end
            end

            PARITY: begin
                TxD = 0;
                TxD = ^Tx_DATA;  // Parity bit calculation
                Tx_BUSY = 1;
                if (sample_ENABLE)
                    next_state = END_BIT; // Return to disabled or stop state
            end

            END_BIT: begin
                TxD = 1;       // Stop bit
                Tx_BUSY = 1;
                if (sample_ENABLE)
                    next_state = DISABLED; // Return to disabled or stop state
            end

            default: begin
                next_state = DISABLED; // Fallback to DISABLED state
            end
        endcase
    end
endmodule



module uart_receiver (
    input reset,
    input clk,
    input [2:0] baud_select,
    input Rx_EN,
    input RxD,                // Serial data input
    output reg [7:0] Rx_DATA, // Received data
    output reg Rx_FERROR,     // Framing error flag
    output reg Rx_PERROR,     // Parity error flag
    output reg Rx_VALID       // Data valid flag
);

    // Baud rate controller to enable sampling at the required frequency
    wire Rx_sample_ENABLE, sample_ENABLE;
    wire bit_stable;
    reg [3:0] cur_state, next_state;
    reg [10:0] buffer; // Buffer to store received data
    reg [3:0] sample_counter;
    reg idle_flag;

    // State machine states. Order is important do not change
    localparam START_BIT = 4'b0000, PARITY = 4'b1001, END_BIT = 4'b1010,  DISABLED = 4'b1011, IDLE = 4'b1100, PERROR = 4'b1101, FERROR = 4'b1110;
    
    baud_controller_r baud_controller_r_inst(reset, clk, baud_select, sample_ENABLE);
    receiver_sampler receiver_sampler_inst(.reset(reset), .clk(clk), .Sx_EN(Rx_sample_ENABLE), .RxD(RxD), .sample_ENABLE(sample_ENABLE), .bit_stable(bit_stable));
    
    assign Rx_DATA = buffer[8:1];

    // State machine state register
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            cur_state <= IDLE;
            sample_counter <= 0;
        end else begin
            cur_state <= next_state;
        end
    end

    // make sample enable 16x slower
    always @(sample_ENABLE) begin
        {Rx_sample_ENABLE, sample_counter} <= sample_counter + 1;
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            buffer <= 11'b0;
        end else (/*IN RECEIVING STATE*/) begin
            buffer[cur_state] <= RxD;
        end else begin
            // HOLD STATE
        end
    end

    // State machine logic
    always @(*) begin
        if (!Rx_EN) begin
            next_state <= DISABLED; // Sleep mode
        end else if (Rx_FERROR) begin
            next_state <= FERROR; // Error: Framing error Lock
        end else if (Rx_PERROR) begin
            next_state <= PERROR; // Error: Parity error Lock
        end else if (idle_flag && Rx_sample_ENABLE && !RxD) begin
            next_state <= START_BIT; // Start bit detected
        end else if (Rx_sample_ENABLE && !Rx_VALID) begin
            next_state <= cur_state + 1; // if true but reached end of frame then we have framing error
        end else begin
            next_state <= cur_state; // Default state, hold state 
        end
    end

    // State machine output
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
                Tx_BUSY = 0;
                if (sample_ENABLE)
                    next_state = DISABLED; // Return to disabled or stop state
            end

            default: begin
                next_state = DISABLED; // Fallback to DISABLED state
            end
        endcase
    end
endmodule

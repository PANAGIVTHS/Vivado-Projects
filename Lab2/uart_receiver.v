/*
    This module is a UART receiver that receives serial data and outputs the received data
    along with error flags. The module is implemented using a state machine that samples the
    received data at the correct baud rate and checks for framing and parity errors.

    *Notice*: This module will enter a LOCK state when met with a framing or parity error.
    This is done for the convenience of the user to be able to detect the error at the end
    of frame and not any time during the frame. -NOTE- DO NOT CHANGE THIS BEHAVIOR

    *Danger*: The module will be unresponsive when in LOCK state until either reset by the
    user or Rx_EN is set to 0.

    Inputs:
        reset: Reset signal
        clk: Clock signal
        baud_select: Baud rate selection
        Rx_EN: Signal to enable the receiver
        RxD: Received data
    Outputs:
        Rx_DATA: Received data
        Rx_FERROR: Framing error flag
        Rx_PERROR: Parity error flag
        Rx_VALID: Data valid flag
*/

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

    reg [3:0] cur_state, next_state;
    reg [3:0] sample_counter;
    reg [3:0] buffer_index;
    wire Rx_sample_ENABLE, sample_ENABLE;
    wire bit_stable;

    // State machine states. Order is important do not change
    localparam START_BIT = 4'b000, RECEIVING = 4'b001, PARITY = 4'b010, END_BIT = 4'b011;
    localparam DISABLED = 4'b100, IDLE = 4'b101, PERROR = 4'b110, FERROR = 4'b111;
    
    baud_controller_r baud_controller_r_inst(reset, clk, baud_select, sample_ENABLE);
    receiver_sampler receiver_sampler_inst(.reset(reset), .clk(clk), .Sx_EN(Rx_sample_ENABLE), .RxD(RxD), .sample_ENABLE(sample_ENABLE), .bit_stable(bit_stable));

    // State machine state register
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            cur_state <= DISABLED;
            sample_counter <= 0;
        end else begin
            cur_state <= next_state;
        end
    end

    // make sample enable 16x slower
    always @(sample_ENABLE) begin
        {Rx_sample_ENABLE, sample_counter} <= sample_counter + 1;
    end

    // Counter to store received data in buffer
    always @(posedge clk or posedge reset) begin
        if (reset)
            buffer_index <= 0; // Reset counter
        else if (cur_state == TRANSMIT && sample_ENABLE)
            buffer_index <= buffer_index + 1; // Reset counter
        else begin
            buffer_index <= buffer_index; // Hold counter
        end
    end

    // Buffer to store received data
    // This could be replaced with a memory block
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            Rx_DATA <= 8'b0;
        end else (cur_state == RECEIVING) begin
            Rx_DATA[buffer_index] <= RxD;
        end else begin
            Rx_DATA <= Rx_DATA;
        end
    end

    // State machine state transition logic
    always @(*) begin
        // Highest priority error flags part of each state in the state machine
        // FERROR higher priority than PERROR
        if (!Rx_EN) begin
            next_state = DISABLED;
        end else if (Rx_FERROR) begin
            next_state = FERROR;
        end else if (Rx_PERROR) begin
            next_state = PERROR;
        end else begin
            // State chaining
            case(cur_state)
                DISABLED: begin
                    // If you are here Rx_EN is high
                    next_state = IDLE;
                end
                IDLE: begin
                    // TODO -- activate baud controller
                    next_state = (!RxD) ? START_BIT : IDLE;
                end
                START_BIT: begin
                    next_state = Rx_sample_ENABLE ? RECEIVING : START_BIT;
                end
                RECEIVING: begin
                    next_state = (buffer_index == 7 && Rx_sample_ENABLE) ? PARITY : RECEIVING;
                end
                PARITY: begin
                    next_state = Rx_sample_ENABLE ? END_BIT : PARITY;
                end
                END_BIT: begin
                    next_state = (Rx_sample_ENABLE && !Rx_EN) ? DISABLED : END_BIT;
                end
                default: begin
                    next_state = DISABLED;
                end
            endcase
        end
    end

    // State machine output
    always @(cur_state or Tx_DATA or Rx_DATA) begin
        
        // Default assignments
        Rx_PERROR = 0;
        Rx_FERROR = 0;
        Rx_VALID = 0;

        case(cur_state)
            PERROR: begin
                // Error: Parity error LOCK state
                Rx_PERROR = 1;
            end
            FERROR: begin
                // Error: Framing error LOCK state
                Rx_FERROR = 1;
            end
            DISABLED: begin
                // DISABLED state
            end
            IDLE: begin
                // IDLE state
            end
            START_BIT: begin
                Rx_FERROR = !bit_stable;
            end
            RECEIVING: begin
                Rx_FERROR = !bit_stable;
            end
            PARITY: begin
                Rx_FERROR = !bit_stable; 
                Rx_PERROR = (RxD != ^Rx_DATA); // Check for parity error
            end
            END_BIT: begin
                // Check for framing error
                Rx_FERROR = !RxD || !bit_stable;
                Rx_VALID = !Rx_FERROR;
            end
        endcase
    end
endmodule

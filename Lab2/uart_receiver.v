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

    reg [3:0] cur_state;
    reg [3:0] next_state;
    reg [3:0] sample_counter;
    reg [3:0] buffer_index;
    wire sample_ENABLE;
    reg Rx_sample_ENABLE;
    wire bit_stable;

    // State machine states. Order is important do not change
    localparam START_BIT = 4'b000, RECEIVING = 4'b001, PARITY = 4'b010, END_BIT = 4'b011;
    localparam DISABLED = 4'b100, IDLE = 4'b101, PERROR = 4'b110, FERROR = 4'b111;
    
    baud_controller_r baud_controller_r_inst(.reset(reset), .clk(clk), .baud_select(baud_select), .sample_ENABLE(sample_ENABLE), .Enable_controller(Rx_EN));
    receiver_sampler receiver_sampler_inst(.reset(reset), .clk(clk), .Sx_EN(Rx_EN), .RxD(RxD), .sample_ENABLE(sample_ENABLE), .bit_stable(bit_stable));

    // State machine state register
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            cur_state <= DISABLED;
        end else begin
            cur_state <= next_state;
        end
    end

    // make sample enable 16x slower
    always @(posedge clk or posedge reset) begin
        Rx_sample_ENABLE <= 0;
        if (reset) begin
            sample_counter <= 0;
            Rx_sample_ENABLE <= 0;
        end else if (sample_ENABLE) begin
            {Rx_sample_ENABLE, sample_counter} <= sample_counter + 1;
        end else if (cur_state == IDLE) begin 
            sample_counter <= 0;
        end else begin
            sample_counter <= sample_counter;
        end
    end

    // Counter to store received data in buffer
    always @(posedge clk or posedge reset) begin
        if (reset)
            buffer_index <= 0; // Reset counter
        else if (cur_state == RECEIVING && Rx_sample_ENABLE)
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
        end else if (cur_state == RECEIVING && sample_ENABLE) begin
            Rx_DATA[buffer_index] <= RxD;
        end else begin
            Rx_DATA <= Rx_DATA;
        end
    end

    // State machine state transition logic
    always @(*) begin
        // Highest priority error flags part of each state in the state machine
        // FERROR higher priority than PERROR
            case(cur_state)
                PERROR: begin
                    // If you are here Rx_EN is high
                    next_state = PERROR;
                end
                FERROR: begin
                    // If you are here Rx_EN is high
                    next_state = FERROR;
                end
                DISABLED: begin
                    // If you are here Rx_EN is high
                    next_state = Rx_EN ? IDLE : DISABLED;// Rx_FERROR
                end
                IDLE: begin
                    next_state = (!RxD) ? START_BIT : IDLE;
                end
                START_BIT: begin
                    if (Rx_FERROR) begin
                        next_state = FERROR;
                    end else begin
                        next_state = Rx_sample_ENABLE ? RECEIVING : START_BIT;
                    end
                end
                RECEIVING: begin
                    if (Rx_FERROR) begin
                        next_state = FERROR;
                    end else begin
                        next_state = (buffer_index == 7 && Rx_sample_ENABLE) ? PARITY : RECEIVING;
                    end
                end
                PARITY: begin
                    if (Rx_FERROR) begin
                        next_state = FERROR;
                    end else if (Rx_PERROR) begin
                        next_state = PERROR;
                    end else begin
                        next_state = Rx_sample_ENABLE ? END_BIT : PARITY;
                    end
                end
                END_BIT: begin
                    if (Rx_FERROR) begin
                        next_state = FERROR;
                    end else begin 
                        next_state = (Rx_sample_ENABLE && !Rx_EN) ? DISABLED : END_BIT;
                    end
                end
                default: begin
                    next_state = DISABLED;
                end
            endcase
    end

    // State machine output
    always @(*) begin
        
        // Default assignments
        Rx_PERROR = 0;
        Rx_FERROR = 0;
        Rx_VALID = 0;

        case(cur_state)
            PERROR: begin
                // Error: Parity error LOCK state
                Rx_PERROR = 1;
                Rx_FERROR = 0;
                Rx_VALID = 0;
            end
            FERROR: begin
                // Error: Framing error LOCK state
                Rx_FERROR = 1;
                Rx_PERROR = 0;
                Rx_VALID = 0;
            end
            DISABLED: begin
                // DISABLED state
                Rx_PERROR = 0;
                Rx_FERROR = 0;
                Rx_VALID = 0;
            end
            IDLE: begin
                // IDLE state
                Rx_PERROR = 0;
                Rx_FERROR = 0;
                Rx_VALID = 0;
            end
            START_BIT: begin
                Rx_FERROR = !bit_stable;
                Rx_PERROR = 0;
                Rx_VALID = 0;
            end
            RECEIVING: begin
                Rx_FERROR = !bit_stable;
                Rx_PERROR = 0;
                Rx_VALID = 0;
            end
            PARITY: begin
                Rx_FERROR = !bit_stable; 
                Rx_PERROR = (RxD != ^Rx_DATA); // Check for parity error
                Rx_VALID = 0;
            end
            END_BIT: begin
                // Check for framing error
                Rx_FERROR = !RxD || !bit_stable;
                Rx_VALID = !Rx_FERROR;
                Rx_PERROR = 0;
            end
        endcase
    end
endmodule

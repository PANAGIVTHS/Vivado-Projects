

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
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            Rx_DATA <= 8'b0;
        end else (cur_state == RECEIVING) begin
            Rx_DATA[buffer_index] <= RxD;
        end else begin
            Rx_DATA <= Rx_DATA;
        end
    end

    // State machine logic
    always @(*) begin
        // FERROR higher priority than PERROR
        if (Rx_FERROR) begin
            next_state = FERROR;
        end else if (Rx_PERROR) begin
            next_state = PERROR;
        end else begin
            case(cur_state)
                PERROR: begin 
                    next_state = PERROR;
                end
                FERROR: begin
                    next_state = FERROR;
                end
                DISABLED: begin
                    next_state = Rx_EN ? IDLE : DISABLED;
                end
                IDLE: begin
                    next_state = (Rx_sample_ENABLE && !RxD) ? START_BIT : IDLE;
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

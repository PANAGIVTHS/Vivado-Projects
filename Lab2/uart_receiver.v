

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
    always @(cur_state or Tx_DATA or buffer) begin
        case(cur_state)
            PERROR: begin
                Rx_VALID <= 0;
                Rx_FERROR <= 0;
                Rx_PERROR <= 1;
                buffer <= 11'b0;
                idle_flag <= 0;
            end
            FERROR: begin
                Rx_VALID <= 0;
                Rx_FERROR <= 1;
                Rx_PERROR <= 0;
                buffer <= 11'b0;
                idle_flag <= 0;
            end
            DISABLED: begin
                Rx_VALID <= 0;
                Rx_FERROR <= 0;
                Rx_PERROR <= 0;
                buffer <= 11'b0;
                idle_flag <= 0;
            end
            IDLE: begin
                Rx_VALID <= 0;
                Rx_FERROR <= 0;
                Rx_PERROR <= 0;
                buffer <= 11'b0;
                idle_flag <= 1;
            end
            PARITY: begin
                Rx_VALID <= 0;
                Rx_FERROR <= 0;
                idle_flag <= 0;
                if (RxD != ^Rx_DATA) begin
                    // Error: Parity bit mismatch
                    Rx_PERROR <= 1;
                end else begin
                    Rx_PERROR <= 0;
                end
                buffer[cur_state] <= RxD;
            end
            END_BIT: begin
                Rx_PERROR <= 0;
                idle_flag <= 0;
                if (RxD) begin
                    // Error: End bit not 1
                    Rx_VALID <= 0;
                    Rx_FERROR <= 1;
                end else begin
                    Rx_VALID <= 1;
                    Rx_FERROR <= 0;
                end
                buffer[cur_state] <= RxD;
            end
            // RECEIVE DATA
            default: begin
                Rx_PERROR <= 0;
                idle_flag <= 0;
                if (bit_stable) begin
                    Rx_FERROR <= 0;
                end else begin
                    Rx_FERROR <= 1;
                end
                Rx_VALID <= 0;
                buffer[cur_state] <= RxD;
            end
        endcase
    end
endmodule

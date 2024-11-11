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
    output reg Rx_VALID,       // Data valid flag
    output wire parity
);

    reg [3:0] cur_state; 
    reg [3:0] next_state;
    reg [3:0] sample_counter;
    wire sample_ENABLE;
    reg bit_stable, prev_bit;
    reg start_sequence, end_sequence, check_parity, disabled, idle, cur_bit;
    wire sync_RxD;
    
    // State machine states. Order is important do not change
    localparam START_BIT = 4'b0000, BIT_0 = 4'b0001, BIT_1 = 4'b0010, BIT_2 = 4'b0011;
    localparam BIT_3 = 4'b0100, BIT_4 = 4'b0101, BIT_5 = 4'b0110, BIT_6 = 4'b0111, BIT_7 = 4'b1000;
    localparam PARITY = 4'b1001, END_BIT = 4'b1010, DISABLED = 4'b1011, IDLE = 4'b1100;
    
    wire Rx_sample_ENABLE = (sample_counter == 4'b1111 && sample_ENABLE);
    wire Sx_sample_ENABLE = !Rx_sample_ENABLE && (sample_counter[0] == 1'b1 && sample_ENABLE);
    wire Dx_sample_ENABLE = (sample_counter == 4'b0111 && sample_ENABLE);
    wire Ex_sample_ENABLE = (sample_counter == 4'b1000 && sample_ENABLE);
    baud_controller_r baud_controller_r_inst(.reset(reset), .clk(clk), .baud_select(baud_select), .sample_ENABLE(sample_ENABLE), .Enable_controller(disabled || idle));
    synchronizer synchronizer_inst(.clk(clk), .async_signal(RxD), .sync_signal(sync_RxD));
    
    assign parity = /*!*/ (^Rx_DATA);
    // State machine state register
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            cur_state <= IDLE;
        end else begin
            cur_state <= next_state;
        end
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            sample_counter <= 0;
        end else begin 
            sample_counter = sample_ENABLE ? sample_counter + 1 : sample_counter;
        end
    end

    always @(posedge clk or posedge reset) begin 
        if (reset) begin
            bit_stable <= 1;
            prev_bit <= 0;
        end else if (sample_counter == 4'b0001 && Sx_sample_ENABLE) begin
            bit_stable <= 1;
            prev_bit <= sync_RxD;
        end else if (!bit_stable || (Sx_sample_ENABLE && prev_bit != sync_RxD)) begin
            bit_stable <= 0;
        end else if (Sx_sample_ENABLE && prev_bit == sync_RxD) begin
            prev_bit <= sync_RxD;
            bit_stable <= 1;
        end else begin
            prev_bit <= sync_RxD;
            bit_stable <= 1;
        end
    end
    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            Rx_FERROR <= 0;
        end else if (Ex_sample_ENABLE && !bit_stable && !disabled && !idle || (Ex_sample_ENABLE && end_sequence && !cur_bit)) begin
            Rx_FERROR <= 1;
        end else if (start_sequence) begin
            Rx_FERROR <= 0;
        end else begin
            Rx_FERROR <= Rx_FERROR;
        end
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            Rx_PERROR <= 0;
        end else if (Ex_sample_ENABLE && check_parity && parity != cur_bit) begin
            Rx_PERROR <= 1;
        end else if (start_sequence) begin
            Rx_PERROR <= 0;
        end else begin
            Rx_PERROR <= Rx_PERROR;
        end
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            Rx_VALID <= 0;
        end else if (Rx_sample_ENABLE && end_sequence && bit_stable && cur_bit) begin
            Rx_VALID <= 1;
        end else if (start_sequence) begin
            Rx_VALID <= 0;
        end else begin
            Rx_VALID <= Rx_VALID;
        end
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            Rx_DATA <= 0;
        end else if (!(check_parity || start_sequence || end_sequence || idle || disabled) && Dx_sample_ENABLE) begin
            Rx_DATA <= {Rx_DATA[6:0], sync_RxD}; // Shift left and add sync_RxD to LSB
        end else begin
            Rx_DATA <= Rx_DATA;
        end
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            cur_bit <= 0;
        end else if (Dx_sample_ENABLE) begin 
            cur_bit <= sync_RxD;
        end else begin
            cur_bit <= cur_bit;
        end
    end 

    // transition to next state
    always @(cur_state, Rx_EN, sync_RxD, Rx_sample_ENABLE, bit_stable, cur_bit, parity) begin
        start_sequence = 0;
        end_sequence = 0;
        check_parity = 0;
        disabled = 0;
        idle = 0;
        case (cur_state)
            DISABLED: begin
                if (Rx_EN) begin
                    next_state = IDLE;
                end else begin
                    next_state = DISABLED;
                end
                disabled = 1;
            end
            IDLE: begin
                if (Rx_EN && !sync_RxD) begin
                    next_state = START_BIT;
                end else if (!Rx_EN) begin 
                    next_state = DISABLED;
                end else begin
                    next_state = IDLE;
                end
                idle = 1;
            end
            START_BIT: begin
                // Reset IDLE's decision
                if (Rx_sample_ENABLE) begin 
                    if (!cur_bit && bit_stable) begin
                        next_state = BIT_0;
                    end else begin
                        next_state = IDLE;  
                    end
                end else begin
                    next_state = START_BIT;
                end
                start_sequence = 1;
            end
            BIT_0: begin 
                if (Rx_sample_ENABLE) begin
                    if (bit_stable) begin
                        next_state = BIT_1;
                    end else begin 
                        next_state = IDLE;
                    end
                end else begin
                    next_state = BIT_0;
                end
            end
            BIT_1: begin 
                if (Rx_sample_ENABLE) begin
                    if (bit_stable) begin
                        next_state = BIT_2;
                    end else begin 
                        next_state = IDLE;
                    end
                end else begin
                    next_state = BIT_1;
                end
            end
            BIT_2: begin
                if (Rx_sample_ENABLE) begin
                    if (bit_stable) begin
                        next_state = BIT_3;
                    end else begin 
                        next_state = IDLE;
                    end
                end else begin
                    next_state = BIT_2;
                end
            end
            BIT_3: begin
                if (Rx_sample_ENABLE) begin
                    if (bit_stable) begin
                        next_state = BIT_4;
                    end else begin 
                        next_state = IDLE;
                    end
                end else begin
                    next_state = BIT_3;
                end
            end
            BIT_4: begin
                if (Rx_sample_ENABLE) begin
                    if (bit_stable) begin
                        next_state = BIT_5;
                    end else begin 
                        next_state = IDLE;
                    end
                end else begin
                    next_state = BIT_4;
                end
            end
            BIT_5: begin
                if (Rx_sample_ENABLE) begin
                    if (bit_stable) begin
                        next_state = BIT_6;
                    end else begin 
                        next_state = IDLE;
                    end
                end else begin
                    next_state = BIT_5;
                end
            end
            BIT_6: begin
                if (Rx_sample_ENABLE) begin
                    if (bit_stable) begin
                        next_state = BIT_7;
                    end else begin 
                        next_state = IDLE;
                    end
                end else begin
                    next_state = BIT_6;
                end
            end
            BIT_7: begin
                if (Rx_sample_ENABLE) begin
                    if (bit_stable) begin
                        next_state = PARITY;
                    end else begin 
                        next_state = IDLE;
                    end
                end else begin
                    next_state = BIT_7;
                end
            end
            PARITY: begin
                if (Rx_sample_ENABLE) begin
                    if (cur_bit == parity && bit_stable) begin
                        next_state = END_BIT;
                    end else begin
                        next_state = IDLE;
                    end
                end else begin
                    next_state = PARITY;
                end
                check_parity = 1;
            end
            END_BIT: begin
                if (Rx_sample_ENABLE) begin
                    if (bit_stable && cur_bit && !sync_RxD) begin
                        next_state = START_BIT;
                    end else begin
                        next_state = IDLE;
                    end
                end else begin
                    next_state = END_BIT;
                end
                end_sequence = 1;
            end
            default: begin
                next_state = DISABLED;
            end
        endcase
    end
endmodule

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

    (* fsm_encoding = "sequential" *) reg [3:0] cur_state; 
    reg [3:0] next_state;
    reg [3:0] sample_counter;
    reg [3:0] buffer_index;
    wire sample_ENABLE;
    wire bit_stable;

    // State machine states. Order is important do not change
    localparam START_BIT = 4'b0000, BIT_0 = 4'b0001, BIT_1 = 4'b0010, BIT_2 = 4'b0011;
    localparam BIT_3 = 4'b0100, BIT_4 = 4'b0101, BIT_5 = 4'b0110, BIT_6 = 4'b0111, BIT_7 = 4'b1000;
    localparam PARITY = 4'b1001, END_BIT = 4'b1010, DISABLED = 4'b1011, IDLE = 4'b1100;
    
    baud_controller_r baud_controller_r_inst(.reset(reset), .clk(clk), .baud_select(baud_select), .sample_ENABLE(sample_ENABLE), .Enable_controller(Rx_EN));
    receiver_sampler receiver_sampler_inst(.reset(reset), .clk(clk), .Sx_EN(Rx_EN), .RxD(RxD), .sample_ENABLE(sample_ENABLE), .bit_stable(bit_stable));

    wire parity = ^Rx_DATA;
    wire Rx_sample_ENABLE = (sample_counter == 4'b1111) && sample_ENABLE;

    // State machine state register
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            cur_state <= DISABLED;
            sample_counter <= 0;
            Rx_FERROR <= 0;
            Rx_PERROR <= 0;   
            Rx_DATA <= 0;
            Rx_VALID <= 0;
        end else begin
            cur_state <= next_state;
            sample_counter = sample_ENABLE ? sample_counter + 1 : sample_counter;
        end
    end

    // transition to next state
    always @(*) begin
        case (cur_state)
            DISABLED: begin
                if (Rx_EN) begin
                    next_state = IDLE;
                end else if (Rx_EN && !RxD) begin
                    next_state = START_BIT;
                end else begin
                    next_state = cur_state;
                end
            end
            IDLE: begin
                if (Rx_EN && !RxD) begin
                    next_state = START_BIT;
                end else begin
                    next_state = cur_state;
                end
            end
            START_BIT: begin
                if (Rx_sample_ENABLE) begin 
                    if (RxD && bit_stable) begin
                        next_state = BIT_1;
                    end else begin
                        next_state = DISABLED;
                        Rx_FERROR = 1;
                    end
                end else begin
                    next_state = START_BIT;
                end
            end
            BIT_0: begin 
                if (Rx_sample_ENABLE) begin
                    if (bit_stable) begin
                        next_state = BIT_1;
                        Rx_DATA[0] = RxD;
                        // 8ese to buffer (To kanei panw ana clk)
                    end else begin 
                        next_state = DISABLED;
                        Rx_FERROR = 1;
                    end
                end else begin
                    next_state = cur_state;
                end
            end
            BIT_1: begin 
                if (Rx_sample_ENABLE) begin
                    if (bit_stable) begin
                        next_state = BIT_2;
                        Rx_DATA[1] = RxD;
                        // 8ese to buffer (To kanei panw ana clk)
                    end else begin 
                        next_state = DISABLED;
                        Rx_FERROR = 1;
                    end
                end else begin
                    next_state = cur_state;
                end
            end
            BIT_2: begin
                if (Rx_sample_ENABLE) begin
                    if (bit_stable) begin
                        next_state = BIT_3;
                        Rx_DATA[2] = RxD;
                        // 8ese to buffer (To kanei panw ana clk)
                    end else begin 
                        next_state = DISABLED;
                        Rx_FERROR = 1;
                    end
                end else begin
                    next_state = cur_state;
                end
            end
            BIT_3: begin
                if (Rx_sample_ENABLE) begin
                    if (bit_stable) begin
                        Rx_DATA[3] = RxD;
                        next_state = BIT_4;
                        // 8ese to buffer (To kanei panw ana clk)
                    end else begin 
                        next_state = DISABLED;
                        Rx_FERROR = 1;
                    end
                end else begin
                    next_state = cur_state;
                end
            end
            BIT_4: begin
                if (Rx_sample_ENABLE) begin
                    if (bit_stable) begin
                        next_state = BIT_5;
                        Rx_DATA[4] = RxD;
                        // 8ese to buffer (To kanei panw ana clk)
                    end else begin 
                        next_state = DISABLED;
                        Rx_FERROR = 1;
                    end
                end else begin
                    next_state = cur_state;
                end
            end
            BIT_5: begin
                if (Rx_sample_ENABLE) begin
                    if (bit_stable) begin
                        next_state = BIT_6;
                        Rx_DATA[5] = RxD;

                        // 8ese to buffer (To kanei panw ana clk)
                    end else begin 
                        next_state = DISABLED;
                        Rx_FERROR = 1;
                    end
                end else begin
                    next_state = cur_state;
                end
            end
            BIT_6: begin
                if (Rx_sample_ENABLE) begin
                    if (bit_stable) begin
                        next_state = BIT_7;
                        Rx_DATA[6] = RxD;
                        // 8ese to buffer (To kanei panw ana clk)
                    end else begin 
                        next_state = DISABLED;
                        Rx_FERROR = 1;
                    end
                end else begin
                    next_state = cur_state;
                end
            end
            BIT_7: begin
                if (Rx_sample_ENABLE) begin
                    if (bit_stable) begin
                        next_state = IDLE;
                        Rx_DATA[7] = RxD;
                        // 8ese to buffer (To kanei panw ana clk)
                    end else begin 
                        next_state = DISABLED;
                        Rx_FERROR = 1;
                    end
                end else begin
                    next_state = cur_state;
                end
            end
            PARITY: begin
                if (Rx_sample_ENABLE) begin
                    if (RxD == parity && bit_stable) begin
                        next_state = END_BIT;
                    end else if (RxD != parity) begin
                        next_state = DISABLED;
                        Rx_PERROR = 1;
                    end else begin
                        next_state = DISABLED;
                        Rx_FERROR = 1;
                    end
                end else begin
                    next_state = cur_state;
                end
            end
            END_BIT: begin
                if (Rx_sample_ENABLE) begin
                    if (bit_stable && RxD) begin
                        next_state = DISABLED;
                        Rx_VALID = 1;    
                    end else begin
                        next_state = DISABLED;
                        Rx_FERROR = 1;
                    end
                end else begin
                    next_state = cur_state;
                end
            end
        endcase
    end
endmodule

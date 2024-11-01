/* 
    This module samples the received data in its input RxD at the baud rate
    to ensure that the data is stable. The module will need an external baud
    signal that is frequent enough for the machine to have time to complete a
    cycle. It's woken up by the Sx_EN signal, which is the signal that tells 
    the module that a new bit is ready to be sampled.
    
    *Danger*: The module will not work properly if the baud signal is too slow
    and there will be no feedback to indicate this.
    
    *Notice*: This module will stop sampling at the 7th bit and not the 8th bit.
    This is done on purpose to keep state 3'b111 as the locking state,
    this way we use 1 less FF for the state machine instead of having
    unused states. This can be reverted by raising the number of bits
    in the state machine to 4 bits, and moving the lock state to 4'b1xxx.

    Inputs:
        sample_ENABLE: Signal to enable sampling
        reset: Reset signal
        clk: Clock signal
        RxD: Received data
        Sx_EN: Signal to enable the state machine
    Outputs:
        bit_stable: Signal to indicate that the bit is stable
        sampled_value: The sampled value
*/

module receiver_sampler (sample_ENABLE, reset, clk, RxD, bit_stable, Sx_EN);
    reg bit_stable;
    reg sampled_value;
    reg [2:0] cur_state, next_state;
    reg sample_bit, sample_bit_old;
    reg overflow;

    // State definitions
    localparam LOCK = 3'b111;
    localparam SAMPLE_START = 3'b001, SAMPLE_1 = 3'b010, SAMPLE_2 = 3'b011;
    localparam SAMPLE_3 = 3'b100, SAMPLE_4 = 3'b101, SAMPLE_END = 3'b110;

    // State machine state register
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            next_state <= START_BIT;
        end else begin
            cur_state <= next_state;
            sample_bit_old <= sample_bit; // Remember last sampled bit
        end
    end

    // State machine state transition logic
    always @(*) begin
        case (cur_state)
            LOCK: begin
                // Lock state, wait for a new bit to need sampling
                next_state = Sx_EN ? SAMPLE_START : LOCK;
            end
            SAMPLE_START: begin
                next_state = Sx_EN ? SAMPLE_1 : SAMPLE_START;
            end
            SAMPLE_1: begin
                next_state = sample_ENABLE ? SAMPLE_2 : SAMPLE_1;
            end
            SAMPLE_2: begin
                next_state = sample_ENABLE ? SAMPLE_3 : SAMPLE_2;
            end
            SAMPLE_3: begin
                next_state = sample_ENABLE ? SAMPLE_4 : SAMPLE_3;
            end
            SAMPLE_4: begin
                next_state = sample_ENABLE ? SAMPLE_END : SAMPLE_4;
            end
            SAMPLE_END: begin
                // Hold value until next bit needs to be sampled
                next_state = Sx_EN ? SAMPLE_START : SAMPLE_END;
            end
        endcase
    end

    // State machine output - Sample bit
    always @(*) begin
        case (cur_state)
            LOCK: begin
                sample_bit <= RxD;
                bit_stable <= 1'b0;
            end
            SAMPLE_START: begin
                sample_bit <= RxD;
                bit_stable <= 1'b1;
            end
            SAMPLE_1: begin
                sample_bit <= RxD;
                bit_stable <= (sample_bit == sample_bit_old);
            end
            SAMPLE_2: begin
                sample_bit <= RxD;
                bit_stable <= (sample_bit == sample_bit_old);
            end
            SAMPLE_3: begin
                sample_bit <= RxD;
                bit_stable <= (sample_bit == sample_bit_old);
            end
            SAMPLE_4: begin
                sample_bit <= RxD;
                bit_stable <= (sample_bit == sample_bit_old);
            end
            SAMPLE_END: begin
                sample_bit <= RxD;
                bit_stable <= (sample_bit == sample_bit_old);
            end
        endcase
    end
endmodule
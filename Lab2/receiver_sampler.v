module receiver_sampler (sample_ENABLE, reset, clk, RxD, bit_stable, Sx_EN);
    reg bit_stable;
    reg sampled_value;
    reg [4:0] cur_state, next_state;
    reg sample_bit, sample_bit_old;
    reg overflow;

    localparam LOCK = 5'b11111, MAX = 5'b01111, START = 5'b00000;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            next_state <= MAX;
        end else begin
            cur_state <= next_state;
            sample_bit_old <= sample_bit;
        end
    end

    always @(*) begin
        if (cur_state == MAX && Sx_EN) begin 
            next_state <= START;
        end else if (!bit_stable) begin
            next_state <= LOCK;
        end else if (sample_ENABLE) begin
            next_state <= cur_state + 1;
        end else begin
            next_state <= cur_state;
        end
    end

    always @(sample_ENABLE) begin        
        case (cur_state)
            LOCK: begin
                sample_bit <= RxD;
                bit_stable <= 1'b0;
            end
            default: begin
                sample_bit <= RxD;
                bit_stable <= (sample_bit == sample_bit_old);
            end
        endcase
    end
endmodule
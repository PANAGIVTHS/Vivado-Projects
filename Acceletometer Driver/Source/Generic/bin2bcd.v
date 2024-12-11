
module bin2bdcN #(
    parameter BIN_WIDTH = 13,                       
    parameter BCD_DIGITS = 4  // Approximate BCD digit count
) (
    input clk,
    input reset,
    input enable,
    input [BIN_WIDTH-1:0] bin,
    output reg [(BCD_DIGITS * 4)-1:0] bcd,
    output reg ready
);
    
    reg [1:0] cur_state;
    reg [1:0] next_state;
    reg [2:0] counter2;
    reg [BIN_WIDTH-1:0] binary;
    reg [BIN_WIDTH-1:0] count;
    reg shifting, adding, done, idle;
    integer i;

    localparam IDLE = 2'b00, SHIFT = 2'b01, CHECK_ADD = 2'b11, DONE = 2'b10;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            counter2 <= 0;
        end else begin
            counter2 <= counter2 + 1;
        end
    end

    assign new_clk = counter2 == 3'b111;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            cur_state <= 0;
        end else if (enable) begin
            cur_state <= next_state;
        end else begin
            cur_state <= IDLE;
        end
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count <= 0;
        end else if (shifting) begin
            count <= count + 1;
        end else if (idle) begin
            count <= 0;
        end else begin
            count <= count;
        end
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            binary <= 0;
            bcd <= 0;
            ready <= 0;
        end else if (enable && idle) begin
            binary <= bin;
            bcd <= 0;
            ready <= 0;
        end else if (enable && shifting) begin
            bcd <= {bcd[(BCD_DIGITS * 4)-2:0], binary[BIN_WIDTH-1]};
            binary <= {binary[BIN_WIDTH-2:0], 1'b0};
            ready <= 0;
        end else if (enable && adding) begin
            for (i = 0; i < BCD_DIGITS; i = i + 1) begin
                if (bcd[(i * 4) +: 4] > 4) begin 
                    bcd[(i * 4) +: 4] <= bcd[(i * 4) +: 4] + 3;
                end
            end
            ready <= 0;
        end else if (enable && done) begin
            ready <= 1;
        end else begin
            ready <= 0;
        end
    end

    always @(*) begin
        idle = 0;
        shifting = 0;
        adding = 0;
        done = 0;
        case (cur_state)
            IDLE: begin
                next_state = SHIFT;
                idle = 1;
            end
            SHIFT: begin
                next_state = count == BIN_WIDTH - 1 ? DONE : CHECK_ADD;
                shifting = 1;
            end
            CHECK_ADD: begin
                next_state = SHIFT;
                adding = 1;
            end
            DONE: begin
                next_state = IDLE;
                done = 1;
            end
            default: next_state = IDLE;
        endcase
    end
endmodule
/*
    *Erwthsh 1: To parakatw FSM einai MIXED FSM?
    !Solution: Implement ena feature ston counter. max(num_to_self_reset) if 0 den kanei self reset.
*/
always @(*) begin
    valid_pixel = 0;
    case (cur_state)
        HSYNC_PULSE: begin
            displaying = 1'b0;
            if (CPIXEL == HHOLD - 1) begin
                next_state = BACK_PORCH;
                user_reset = 1'b1;
            end else begin
                next_state = HSYNC_PULSE;
                user_reset = 1'b0;
            end
        end
        BACK_PORCH: begin
            displaying = 1'b0;
            if (CPIXEL == HBP - 1) begin
                next_state = DISPLAYING;
                user_reset = 1'b1;
            end else begin
                next_state = BACK_PORCH;
                user_reset = 1'b0;
            end
        end
        DISPLAYING: begin
            displaying = 1'b1;
            valid_pixel = 1'b1;
            if (CPIXEL == DISPLAY_WIDTH - 1) begin
                next_state = FRONT_PORCH;
                user_reset = 1'b1;
            end else begin
                next_state = DISPLAYING;
                user_reset = 1'b0;
            end
        end
        FRONT_PORCH: begin
            displaying = 1'b0;
            if (CPIXEL == HFP - 1) begin
                next_state = HSYNC_PULSE;
                user_reset = 1'b1;
            end else begin
                next_state = FRONT_PORCH;
                user_reset = 1'b0;
            end
        end
    endcase
end

/*
    *Erwthsh 2: pou 8eloume fsm?
    *Erwthsh 3: To pixel timing einai swsto?
    *erwthsh 4: pote allazw thn grammh?
    *erwthsh 5: ti ginetai an paw nakanw display pixel p den uparxei?
    *erwthsh 6: borw na balw allo roloi gia ta Vertical?
    *erwthsh 7: pws 8etw parameterized counters? counter <= BITS'd(num) einai syntax error
    *erwthsh 8: ginete na agnoisw edelws ta timing apo to Vertical ke na kanw increment otan EOL;

*/
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
    *erwthsh 9: posh wra pernei na paroume info apo bram ke posh wra pernei to enableing kai disableing

*/

[DRC REQP-1840] RAMB18 async control check: The RAMB18E1 PAPUnit_inst/B_BRAM_inst/RAMB18E1_inst has an input control pin PAPUnit_inst/B_BRAM_inst/RAMB18E1_inst/ADDRARDADDR[0] (net: PAPUnit_inst/B_BRAM_inst/ADDRARDADDR[0]) which is driven by a register (PixelAddrGen_inst/HPIXEL_counter_inst/count_reg[0]) that has an active asychronous set or reset. This may cause corruption of the memory contents and/or read values when the set/reset is asserted and is not analyzed by the default static timing analysis. It is suggested to eliminate the use of a set/reset to registers driving this RAMB pin or else use a synchronous reset in which the assertion of the reset is timed by default.

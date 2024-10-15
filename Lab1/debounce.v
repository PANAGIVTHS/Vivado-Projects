
module debounce(clk, reset, button, button_debounced, button_ON, enabled);
    input clk, reset, button;
    output button_debounced;
    reg button_debounced;
    reg [2:0] FF_wire;
    reg [4:0] counter;
    output wire enabled;
    output wire button_ON;

    // No need to reset cause button has only 2 states
    // after 3 cycles, button_ON will be 0
    always @(posedge clk) begin
        FF_wire[0] <= button;
        FF_wire[1] <= FF_wire[0];
        FF_wire[2] <= FF_wire[1];
    end

    assign button_ON = FF_wire[1] & FF_wire[2];
    assign enabled = ~(button_debounced & button_ON);

    always @(posedge clk) begin
        if (enabled) begin
            if (button_ON) begin 
                {button_debounced, counter} <= counter + 1;
            end
            else begin
                button_debounced <= 1'b0;
                counter <= 5'b0;
            end
        end
    end
endmodule
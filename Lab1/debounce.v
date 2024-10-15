
module debounce(clk, reset, button, button_debounced);
    input clk, reset, button;
    output reg button_debounced;
    reg [2:0] FF_wire;
    reg [6:0] counter;
    wire button_ON;

    always @(button or posedge reset) begin
        if (reset) begin
            FF_wire <= 3'b0;
        end else begin
            FF_wire[0] <= button;
            FF_wire[1] <= FF_wire[0];
            FF_wire[2] <= FF_wire[1];
        end
    end

    assign button_ON = FF_wire[1] & FF_wire[2];

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            button_debounced <= 1'b0;
            button_ON <= 1'b0;
            counter <= 8'b0;
        end else begin
            if (button_ON) begin 
                {button_debounced, counter} <= counter + 1;
            end
        end
    end
endmodule
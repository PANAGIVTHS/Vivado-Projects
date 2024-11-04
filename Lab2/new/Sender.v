
module Sender (input clk, input reset, input Enable, input Send, input [2:0] BAUD_RATE, output [3:0] button_presses, output button_step, output TxD, output Tx_BUSY);
    wire TxD, Tx_BUSY;
    wire button_step;
    wire Send_debounced;
    reg [3:0] button_presses;
    wire enable_debounced;
    reg [7:0] Tx_DATA;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            Tx_DATA <= 8'b11001010;
        end
    end
    Debouncer Debouncer_inst (.clk(clk), .button(Enable), .button_debounced(Enable_debounced));
    Debouncer Debouncer_inst (.clk(clk), .button(Send), .button_debounced(Send_debounced));
    Hold_to_step Hold_to_step_inst (.clk(clk), .reset(reset), .button(Send_debounced), .spike(button_step));
    incrementer incrementer_inst (.clk(clk), .reset(reset), .button_debounced(Send_debounced), .button_presses(button_presses)); // no need to use button step it does it by itself
    uart_transmitter uart_transmitter_inst (.reset(reset), .clk(clk), .baud_select(BAUD_RATE), .Tx_EN(Enable_debounced), .Tx_WR(button_step), .Tx_DATA(Tx_DATA), .TxD(TxD), .Tx_BUSY(Tx_BUSY));
    // change baud hz
endmodule

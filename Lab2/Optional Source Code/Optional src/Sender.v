
module Sender (input clk, input reset, input Tx_EN, input [7:0] Tx_DATA, input Tx_WR, input [2:0] BAUD_RATE, output TxD, output Tx_BUSY);
    wire Tx_WR_DS; //debounced,step
    Debouncer write_debouncer (.clk(clk), .button(Tx_WR), .button_debounced(Tx_WR_debounced));
    Hold_to_step Hold_to_step_inst (.clk(clk), .reset(reset_debounced), .button(Tx_WR_debounced), .spike(Tx_WR_DS));
    Debouncer reset_debouncer (.clk(clk), .button(reset), .button_debounced(reset_debounced));
    uart_transmitter uart_transmitter_inst (.reset(reset_debounced), .clk(clk), .baud_select(BAUD_RATE), 
    .Tx_EN(Tx_EN), .Tx_WR(Tx_WR_DS), .Tx_DATA(Tx_DATA), .TxD(TxD), .Tx_BUSY(Tx_BUSY));
endmodule


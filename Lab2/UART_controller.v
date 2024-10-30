module UART_controller (reset, clk, baud_select, Tx_DATA, Tx_WR, Tx_EN, TxD, Tx_BUSY);
    input reset, clk;
    input [7:0] Tx_DATA;
    input wire [2:0] baud_select;
    input Tx_WR, Tx_EN;
    output wire TxD;
    output wire Tx_BUSY;
    wire sample_ENABLE;
    reg [3:0] counter;

    baud_controller_t baud_controller_t_inst (.reset(reset), .clk(clk), .baud_select(baud_select), .sample_ENABLE(sample_ENABLE));
    uart_transmitter uart_transmitter_inst (.reset(reset), .clk(clk), .Tx_DATA(Tx_DATA), .baud_select(baud_select), .Tx_WR(Tx_WR), .Tx_EN(Tx_EN), .TxD(TxD), .Tx_BUSY(Tx_BUSY));

endmodule
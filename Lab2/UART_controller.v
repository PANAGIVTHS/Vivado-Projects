module UART_controller (reset, clk, baud_select, Tx_DATA, Tx_WR, Tx_EN, TxD, Tx_BUSY, Tx_DATA_copy);
    input reset, clk;
    input [7:0] Tx_DATA;
    output wire [7:0] Tx_DATA_copy;
    input wire [2:0] baud_select;
    input Tx_WR, Tx_EN;
    output wire TxD;
    output wire Tx_BUSY;
    wire Rx_FERROR, Rx_PERROR, Rx_VALID;

    // Instantiate baud rate controller for transmitter to enable sampling at the required frequency
    uart_transmitter uart_transmitter_inst (.reset(reset), .clk(clk), .Tx_DATA(Tx_DATA), .baud_select(baud_select), .Tx_WR(Tx_WR), .Tx_EN(Tx_EN), .TxD(TxD), .Tx_BUSY(Tx_BUSY));
    uart_receiver uart_receiver_inst (.reset(reset), .clk(clk), .baud_select(baud_select), .Rx_EN(Tx_EN & Tx_WR), .RxD(TxD), .Rx_DATA(Tx_DATA_copy), .Rx_FERROR(Rx_FERROR), .Rx_PERROR(Rx_PERROR), .Rx_VALID(Rx_VALID));
endmodule
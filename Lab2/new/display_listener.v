
module display_listener (input clk, input reset, input [3:0] baud_select, input [3:0] button_presses, input Read_debounced, input TxD);
    wire append_char;
    wire [3:0] Rx_DATA;
    wire [3:0] append_char_to_mem;
    wire Rx_FERROR, Rx_PERROR, Rx_VALID, parity;
    wire TxD;

    uart_receiver uart_receiver_inst (.clk(clk), .reset(reset), .RxD(TxD), .Rx_EN(Read_debounced), .Rx_DATA(Rx_DATA), .Rx_BUSY(Rx_BUSY));
    FourDigitLEDdriver FourDigitLEDdriver_inst (.reset(reset), .clk(clk), .append_char_to_mem(Rx_DATA), .append_char(append_char), .an3(an3), .an2(an2), .an1(an1), .an0(an0), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .dp(dp), .button(button));    
    uart_receiver uart_receiver_inst (.reset(reset), .clk(clk), .baud_select(baud_select), .Rx_EN(Read_debounced), .RxD(TxD), .Rx_DATA(Rx_DATA), .Rx_FERROR(Rx_FERROR), .Rx_PERROR(Rx_PERROR), .Rx_VALID(Rx_VALID), .parity(parity));
    
endmodule
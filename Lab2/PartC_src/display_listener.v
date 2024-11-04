
module display_listener (input clk, input reset, input [2:0] baud_select, input Read_debounced, input TxD, output an3, output an2, output an1, output an0, output a, output b, output c, output d, output e, output f, output g, output dp);
    wire append_char;
    wire [3:0] Rx_DATA;
    wire [3:0] append_char_to_mem;
    wire Rx_FERROR, Rx_PERROR, Rx_VALID, parity;
    wire TxD;

    uart_receiver uart_receiver_inst (.reset(reset), .clk(clk), .baud_select(baud_select), .Rx_EN(Read_debounced), .RxD(TxD), .Rx_DATA(Rx_DATA), .Rx_FERROR(Rx_FERROR), .Rx_PERROR(Rx_PERROR), .Rx_VALID(Rx_VALID), .parity(parity));
    Hold_to_step Hold_to_step_inst (.clk(clk), .reset(reset), .button(Rx_VALID), .spike(append_char));
    FourDigitLEDdriver FourDigitLEDdriver_inst (.reset(reset), .clk(clk), .append_char_to_mem(Rx_DATA), .append_char(append_char), .an3(an3), .an2(an2), .an1(an1), .an0(an0), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .dp(dp));
endmodule
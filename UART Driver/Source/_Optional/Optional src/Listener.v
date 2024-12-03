/*
    This module is depected in the corispoding diagram in the lab report.
    It is a top-level module that instantiates the debouncer, uart_receiver, and FourDigitLEDdriver modules.
    It also instantiates the Hold_to_step module to generate a spike when a button is released.
    It is used to receive UART data and display it on the 4-digit 7-segment display.
    This module uses the decimal point to indicate a framing error or a parity error.
    
    Inputs:
    - clk: Clock signal
    - reset: Reset signal
    - baud_select: Baud Rate Selection
    - Rx_EN: Enable reception
    - RxD: Received data
    Outputs:
    - anodes: 7-segment display anodes
    - a, b, c, d, e, f, g: 7-segment display segments
    - dp: 7-segment display decimal point
*/


module Listener (input clk, input reset, input [2:0] baud_select, input Rx_EN, input RxD, output an3, output an2, output an1, output an0, output a, output b, output c, output d, output e, output f, output g, output dp);
    wire append_char;
    wire [7:0] Rx_DATA;
    wire Rx_FERROR, Rx_PERROR, Rx_VALID, parity;
    wire reset_debounced, append_sig;
    
    Debouncer reset_debouncer (.clk(clk), .button(reset), .button_debounced(reset_debounced));
    uart_receiver uart_receiver_inst (.reset(reset_debounced), .clk(clk), .baud_select(baud_select), .Rx_EN(Rx_EN), .RxD(RxD), .Rx_DATA(Rx_DATA), .Rx_FERROR(Rx_FERROR), .Rx_PERROR(Rx_PERROR), .Rx_VALID(Rx_VALID), .parity(parity));
    Hold_to_step Hold_to_step_inst (.clk(clk), .reset(reset_debounced), .button(Rx_VALID), .spike(append_sig));
    FourDigitLEDdriver FourDigitLEDdriver_inst (.reset(reset_debounced), .clk(clk), .appended_byte(Rx_DATA), .error(Rx_FERROR || Rx_PERROR), .append_sig(append_sig), .an3(an3), .an2(an2), .an1(an1), .an0(an0), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .dp(dp));
endmodule
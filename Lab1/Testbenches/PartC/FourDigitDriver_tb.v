`timescale 1ns/10ps

module tb_FourDigitDriver;
    reg clk;
    reg reset;
    wire an3, an2, an1, an0, a, b, c, d, e, f, g, dp;
    reg button;

    FourDigitLEDdriver FourDigitLEDdriver_inst (.clk(clk), .reset(reset), .an3(an3), .an2(an2), .an1(an1), .an0(an0), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .dp(dp), .button(button));

    initial begin
        clk = 1'b0;
        #90 reset = 1'b1;
        #20000 reset = 1'b0;
        #10 button = 1'b1;
        #100 button = 1'b0;
        #100 button = 1'b1;
        #100 button = 1'b0;
        #1000 button = 1'b1;
        #20000 button = 1'b0;
        #10000 button = 1'b1;
        #20000 button = 1'b0;
        #10000 button = 1'b1;
        #20000 button = 1'b0;
        #10000 button = 1'b1;
        #20000 button = 1'b0;
        #10000 button = 1'b1;
        #20000 button = 1'b0;
        #200000 $finish;
    end

    always begin
        #5 clk = ~clk;
    end
endmodule

`timescale 1ns/10ps

module tb_FourDigitDriver;
    reg clk;
    reg reset;
    wire an3, an2, an1, an0, a, b, c, d, e, f, g, dp;
    wire [3:0] counter;
    wire [3:0] char;
    reg button;

    FourDigitLEDdriver FourDigitLEDdriver_inst (.clk(clk), .reset(reset), .an3(an3), .an2(an2), .an1(an1), .an0(an0), .a(a), .b(b), .c(c), .d(d), .e(e), .f(f), .g(g), .dp(dp), .counter(counter), .button(button));

    initial begin
        $dumpfile("tb_FourDigitDriver.vcd");
        $dumpvars(0, tb_FourDigitDriver);
    end

    initial begin
        clk = 1'b0;
        #90 reset = 1'b1;
        #150 reset = 1'b0;
        #10 button = 1'b1;
        #1000 $finish;
    end

    always begin
        #5 clk = ~clk;
    end

    initial $monitor ("clk=%b reset=%b an3=%b an2=%b an1=%b an0=%b a=%b b=%b c=%b d=%b e=%b f=%b g=%b dp=%b", clk, reset, an3, an2, an1, an0, a, b, c, d, e, f, g, dp);
endmodule

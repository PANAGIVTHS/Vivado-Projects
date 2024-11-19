`timescale 1ns/10ps

module tb_debounce;
    reg clk;
    reg reset;
    reg button;
    wire button_debounced;
    Debouncer Debouncer_inst (.clk(clk), .button(button), .button_debounced(button_debounced));

    initial begin
        clk = 1'b0;
        button = 1'b0;
        #10 reset = 1'b1;
        #10 reset = 1'b0;
        #30 button = 1'b1;
        #30 button = 1'b0;
        #30 button = 1'b1;
        #30 button = 1'b0;
        #30 button = 1'b1;
        #30 button = 1'b0;
        #30 button = 1'b1;
        #500 button = 1'b0;
        #30 button = 1'b1;
        #30 button = 1'b0;
        #30 button = 1'b1;
        #30 button = 1'b0;
        #30 button = 1'b1;
        #100 $finish;
    end

    always begin
        #5 clk = ~clk;
    end

endmodule

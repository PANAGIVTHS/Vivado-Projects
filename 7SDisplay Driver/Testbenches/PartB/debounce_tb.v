`timescale 1ns/10ps

module tb_debounce;
    reg clk;
    reg reset;
    reg button;
    wire button_debounced;
    wire button_ON;
    wire enabled;
    debounce debounce_inst (.clk(clk), .reset(reset), .button(button), .button_debounced(button_debounced), .button_ON(button_ON), .enabled(enabled));

    initial begin
        clk = 1'b0;
        button = 1'b0;

        // Simulate a "Bad Signal"
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
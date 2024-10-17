
module FourDigitLEDdriver(reset, clk, an3, an2, an1, an0, a, b, c, d, e, f, g, dp, counter, button);
    input clk, reset;
    output an3, an2, an1, an0;
    output wire a, b, c, d, e, f, g, dp;
    wire button_debounced;
    assign dp = 1'b0;
    wire an3, an2, an1, an0;
    output wire [3:0] counter;
    wire new_clk;
    wire button_ON, enabled;
    input button;
    wire [4:0] button_presses;
    wire [3:0] char;
    wire reset_debounced;
    wire feedback;
        
    parameter AN0_LOW = 4'b0010;
    parameter AN1_LOW = 4'b0110;
    parameter AN2_LOW = 4'b1010;
    parameter AN3_LOW = 4'b1110;
    parameter AN0_SETUP_BUS = 4'b0000;
    parameter AN1_SETUP_BUS = 4'b0011;
    parameter AN2_SETUP_BUS = 4'b0111;
    parameter AN3_SETUP_BUS = 4'b1011;

    MMCME2_BASE #(
       .CLKFBOUT_MULT_F(6.0),     // Multiply value for all CLKOUT (2.000-64.000).
       .CLKIN1_PERIOD(10.0),      // Input clock period for 100 MHz clock.
       .CLKOUT0_DIVIDE_F(120.0),  // Divide value for CLKOUT0 to achieve 5 MHz.
       .DIVCLK_DIVIDE(1.0)        
    )
    MMCME2_BASE_inst (
      .CLKOUT0(new_clk),         
      .CLKFBOUT(feedback),   // 1-bit output: Feedback clock
      .CLKIN1(clk),       // 1-bit input: Clock
      .CLKFBIN(feedback)      // 1-bit input: Feedback clock
    );

    incrementer incrementer_inst (.clk(new_clk), .reset(reset_debounced), .button_presses(button_presses), .button_debounced(button_debounced));
    LEDdecoder LEDdecoder_inst (.char(char), .LED({a, b, c, d, e, f, g}));
    reset_debounce reset_debounce_inst (.clk(new_clk), .button(reset), .button_debounced(reset_debounced));
    reset_debounce reset_debounce_inst_2 (.clk(new_clk), .button(button), .button_debounced(button_debounced));
    //debounce debounce_inst (.clk(new_clk), .button(button), .button_debounced(button_debounced));
    //debounce debounce_inst_2 (.clk(new_clk), .button(reset), .button_debounced(reset_debounced));
    char_decoder char_decoder_inst (.counter(counter), .char(char), .button_presses(button_presses), .reset(reset_debounced));
    counter_module counter_inst (.clk(new_clk), .reset(reset_debounced), .counter(counter));
    anode_decoder anode_decoder_inst (.counter(counter), .an0(an0), .an1(an1), .an2(an2), .an3(an3));
endmodule

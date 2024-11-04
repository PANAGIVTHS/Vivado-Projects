
module FourDigitLEDdriver(reset, clk, append_char_to_mem, append_char, an3, an2, an1, an0, a, b, c, d, e, f, g, dp);
    input clk, reset;
    output an3, an2, an1, an0;
    output wire a, b, c, d, e, f, g, dp;
    wire [3:0] counter;
    wire button_debounced, an3, an2, an1, an0, feedback;
    wire button_ON, enabled, reset_debounced;
    wire [3:0] char;
    input append_char;
    input [3:0] append_char_to_mem;
    
    assign dp = 1'b1;

    
    MMCME2_BASE #(
       .CLKFBOUT_MULT_F(6.0),     // Multiply value for all CLKOUT (2.000-64.000).
       .CLKIN1_PERIOD(10.0),      // Input clock period for 100 MHz clock.
       .CLKOUT0_DIVIDE_F(120.0),  // Divide value for CLKOUT0 to achieve 5 MHz.
       .DIVCLK_DIVIDE(1.0)        
    )
    MMCME2_BASE_inst (
      .CLKOUT0(new_clk),         
      .CLKFBOUT(feedback),   // 1-bit output: Feedback clock
      .CLKIN1(clk),          // 1-bit input: Clock
      .CLKFBIN(feedback)     // 1-bit input: Feedback clock
    );

    // if other clock slower then hold to step 
    Debouncer Debouncer_inst (.clk(new_clk), .button(reset), .button_debounced(reset_debounced));
    ConstCounter ConstCounter_inst (.clk(new_clk), .reset(reset_debounced), .counter(counter));
    Debouncer Debouncer_inst_2 (.clk(new_clk), .button(button), .button_debounced(button_debounced));
    CharacterDecoder CharacterDecoder_inst (.clk(clk), .append_char_to_mem(append_char_to_mem), .append_char(append_char), .counter(counter), .char(char), .reset(reset));
    AnodeDecoder AnodeDecoder_inst (.counter(counter), .an0(an0), .an1(an1), .an2(an2), .an3(an3));
    LEDdecoder LEDdecoder_inst (.char(char), .LED({a, b, c, d, e, f, g}));
endmodule

module clockDivider (
    input clk,                    // Input clock (100 MHz)
    output new_clk,               // Output clock (5 MHz)
    output locked                 // LOCK signal to indicate the MMCM has locked
);
    wire feedback;
    
    MMCME2_BASE #(
   .CLKFBOUT_MULT_F(6.0),        // Multiply input clock by 6
   .CLKIN1_PERIOD(10.0),         // Input clock period for 100 MHz clock
   .CLKOUT0_DIVIDE_F(24.0),      // Divide output clock by 24 to achieve 25 MHz
   .DIVCLK_DIVIDE(1.0)           // Input clock is divided by 1 (no additional division)
    )
    MMCME2_BASE_inst (
    .CLKOUT0(new_clk),            // Output clock at 25 MHz
    .CLKFBOUT(feedback),          // feedback clock
    .CLKIN1(clk),                 // Input clock (100 MHz)
    .CLKFBIN(feedback),           // Feedback clock input
    .LOCKED(lock)                 // Locked signal indicating stable output
    );

endmodule

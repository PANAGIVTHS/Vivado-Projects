/*
    This module is a wrapper for the Xilinx MMCM (Mixed-Mode Clock Manager) IP core. The MMCM is used to generate a new clock signal from an input clock signal.
    The MMCM provides a LOCKED signal to indicate when the output clock signal is stable.

    Inputs:
    - clk: Input clock signal (100 MHz)

    Outputs:
    - new_clk: Output clock signal (25 MHz)
    - locked: LOCK signal to indicate the MMCM has locked
*/

module ClockGenerator (
    input clk,                    // Input clock (100 MHz)
    output new_clk,               // Output clock (25 MHz)
    output locked                 // LOCK signal to indicate the MMCM has locked
);
    wire feedback;
    
    // MMCM Instance
    MMCME2_BASE #(
        .BANDWIDTH("OPTIMIZED"),   // Jitter programming (OPTIMIZED, HIGH, LOW)
        .CLKFBOUT_MULT_F(6.0),      // Multiply input clock by 6 (100 MHz * 6 = 600 MHz)
        .CLKIN1_PERIOD(10.0),       // Input clock period for 100 MHz clock
        .CLKOUT0_DIVIDE_F(24.0),    // Divide output clock by 24 (600 MHz / 24 = 25 MHz)
        .DIVCLK_DIVIDE(1),          // Master division value
        .STARTUP_WAIT("FALSE")      // No delay until MMCM is locked
    )
    MMCME2_BASE_inst (
        // Clock Outputs: 1-bit (each) output: User configurable clock outputs
        .CLKOUT0(new_clk),          // 25 MHz output clock
        .CLKFBOUT(feedback),        // Feedback clock output
        .CLKIN1(clk),               // Input clock (100 MHz)
        .CLKFBIN(feedback),         // Feedback clock input
        .LOCKED(locked),            // Locked signal indicating stable output
        // Unused clock outputs - connect to '1'b0' to avoid warnings
        .CLKOUT0B(),                // Unused inverted output clock
        .CLKOUT1(),                 // Unused output clock 1
        .CLKOUT1B(),                // Unused inverted output clock 1
        .CLKOUT2(),                 // Unused output clock 2
        .CLKOUT2B(),                // Unused inverted output clock 2
        .CLKOUT3(),                 // Unused output clock 3
        .CLKOUT3B(),                // Unused inverted output clock 3
        .CLKOUT4(),                 // Unused output clock 4
        .CLKOUT5(),                 // Unused output clock 5
        .CLKOUT6(),                 // Unused output clock 6
        // Feedback Clocks: 1-bit (each) output: Clock feedback ports
        .CLKFBOUTB(),               // Unused inverted feedback clock output
        // Status Ports: 1-bit (each) output: MMCM status ports
        .PWRDWN(1'b0),              // Power-down control (low if unused)
        .RST(1'b0)                  // Reset control (low if unused)
    );

endmodule

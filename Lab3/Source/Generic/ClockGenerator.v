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
    
    MMCME2_BASE #(
    .CLKFBOUT_MULT_F(6.0),        // Multiply input clock by 6
    .CLKIN1_PERIOD(10.0),         // Input clock period for 100 MHz clock
    .CLKOUT0_DIVIDE_F(24.0),      // Divide output clock by 24 for 25 MHz
    .DIVCLK_DIVIDE(1.0)           
    )
    MMCME2_BASE_inst (
    .CLKOUT0(new_clk),            
    .CLKFBOUT(feedback),          // feedback clock
    .CLKIN1(clk),                 // Input clock (100 MHz)
    .CLKFBIN(feedback),           // Feedback clock input
    .LOCKED(locked)               // Locked signal indicating stable output
    );

endmodule
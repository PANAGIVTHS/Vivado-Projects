/*
    This module generates a 10 MHz clock using the MMCM and a 5 MHz clock using a counter from a 100 MHz input clock.
    It also includes a locked signal that indicates when the MMCM has locked.
*/

module ClockGenerator (
    input clk,                    // Input clock (100 MHz)
    input reset,
    output clk_5MHz,              // Output clock (5 MHz)
    output clk_10MHz,             // Output clock (10 MHz)
    output locked                 // LOCK signal to indicate MMCM is locked
);

    // 10 MHz Clock using MMCM
    wire feedback_10MHz;

    // MMCM Instance to generate 10 MHz clock
        // MMCM Instance to generate 10 MHz clock
    MMCME2_BASE #(
        .BANDWIDTH("OPTIMIZED"),   // Jitter programming (OPTIMIZED, HIGH, LOW)
        .CLKFBOUT_MULT_F(10.0),    // Multiply input clock by 10 (100 MHz * 10 = 1000 MHz)
        .CLKIN1_PERIOD(10.0),      // Input clock period for 100 MHz clock (10 ns)
        .CLKOUT0_DIVIDE_F(100.0),  // Divide output clock by 100 (1000 MHz / 100 = 10 MHz)
        .DIVCLK_DIVIDE(1),         // No division on the input clock (or divide by 1)
        .STARTUP_WAIT("FALSE")     // No delay until MMCM is locked
    )
    MMCME2_BASE_inst_5MHz (
        .CLKIN1(clk),               // Input clock (100 MHz)
        .CLKFBOUT(feedback_10MHz),   // Feedback clock output
        .CLKOUT0(clk_10MHz),         // 5 MHz output clock
        .CLKFBIN(feedback_10MHz),    // Feedback clock input
        .LOCKED(locked),       // Lock status for 5 MHz clock
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
        .CLKFBOUTB(),               // Unused inverted feedback clock output
        .PWRDWN(1'b0),              // Power-down control (low if unused)
        .RST(1'b0)                  // Reset control (low if unused)
    );

    // Output the locked signal (from the MMCM)

    // 5 MHz Clock using Counter (Dividing by 2)
    reg [1:0] counter;  // 2-bit counter for counting up to 2
    reg clk_5MHz_reg;   // Output 5 MHz clock signal

    always @(posedge clk_10MHz or posedge reset) begin
        if (reset) begin 
            counter <= 0;
            clk_5MHz_reg <= 0;
        end else if (counter == 1) begin
            counter <= 0;
            clk_5MHz_reg <= ~clk_5MHz_reg;  // Toggle the 5 MHz clock signal
        end else begin
            counter <= counter + 1;
        end
    end

    assign clk_5MHz = clk_5MHz_reg;  // Assign the generated 5 MHz clock

endmodule

/*
    This module generates a 10 MHz clock using the MMCM and a 5 MHz clock using a counter from a 100 MHz input clock.
    It also includes a locked signal that indicates when the MMCM has locked.
*/

module ClockGenerator (
    input clk,                    // Input clock (100 MHz)
    input reset,
    output clk_5MHz,              // Output clock (5 MHz)
    output reg locked                 // LOCK signal to indicate MMCM is locked
);

    wire feedback;
    wire async_locked;

    MMCME2_BASE #(
        .BANDWIDTH("OPTIMIZED"),  
        .CLKFBOUT_MULT_F(12.0), 
        .CLKIN1_PERIOD(10.0),     
        .CLKOUT0_DIVIDE_F(120.0), 
        .DIVCLK_DIVIDE(2),       
        .STARTUP_WAIT("FALSE")     
    )
    MMCME2_BASE_inst_5MHz (
        .CLKIN1(clk),
        .CLKFBOUT(feedback),
        .CLKOUT0(clk_5MHz),
        .CLKFBIN(feedback),
        .LOCKED(async_locked),
        .CLKOUT0B(),
        .CLKOUT1(),
        .CLKOUT1B(),
        .CLKOUT2(),
        .CLKOUT2B(),
        .CLKOUT3(),
        .CLKOUT3B(),
        .CLKOUT4(),
        .CLKOUT5(),
        .CLKOUT6(),
        .CLKFBOUTB(),
        .PWRDWN(1'b0),
        .RST(1'b0)
    );


    always @(posedge clk or posedge reset) begin
        if (reset) begin
            locked <= 0;
        end else begin
            locked <= async_locked;
        end
    end

endmodule

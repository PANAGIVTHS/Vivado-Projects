/*
 * -----------------------------------------------------------------------------
 ? Signal Naming Convention:
 *   The naming convention used in this module is as follows:
 *     x_Y_z
 *     where:
 !       x - Indicates the signal type:
 *           'i' for input signals.
 *           'o' for output signals.
 *           <none>: for insternal signals.
 !       Y - Specifies the class or category of the signal (optional):
 *           Rx: Receive-related signals.
 *           Tx: Transmit-related signals.
 *           SPI: SPI-specific signals (e.g., SCLK, MOSI, MISO, o_SPI_CSLow).
 *           <none>: Control signals (e.g., start, done, enable).
 !       z - Descriptive name of the variable:
 *           A meaningful identifier for the signal.
 *
 * -----------------------------------------------------------------------------
 ? Example:
 *   - i_Rx_data: An input signal carrying received data.
 *   - o_Tx_ready: An output signal indicating readiness to transmit.
 *   - i_SPI_clk: An input SPI clock signal.
 *   - o_done: A control signal indicating the operation is complete.
 *
 * -----------------------------------------------------------------------------
 ? Notes:
 *   1. Adhering to this naming convention ensures consistent and intuitive signal
 *      identification across the design.
 *   2. Signals should be grouped logically based on their categories in the
 *      module's code to further enhance readability.
 *
 * -----------------------------------------------------------------------------
 */

module SPIMaster #(
    parameter CPOL = 0,
    parameter CPHA = 0,
    localparam SHIFT_REG_WIDTH = 8,
    localparam SRWIDTH_LOG2 = 3,
    localparam LOCK_IN_BEHAVIOUR = 1
)(
    //? Control Signals
    input clk,
    input reset,
    
    //? Tx Signals
    input [SHIFT_REG_WIDTH-1:0] i_Tx_Byte,
    input i_Tx_Valid,
    output reg o_Tx_Ready,

    //? Rx Signals
    output reg [SHIFT_REG_WIDTH-1:0] o_Rx_Byte,
    output o_Rx_Hold,

    //? MSI Signals
    input i_SPI_Miso,
    output reg o_SPI_CSLow,
    output reg o_SPI_Mosi,
    output o_SPI_Clk
);

endmodule
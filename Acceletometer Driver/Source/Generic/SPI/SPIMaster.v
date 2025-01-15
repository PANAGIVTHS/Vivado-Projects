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
    wire [4:0] FSMCount;
    wire [4:0] curFsmMax;
    wire [4:0] transCount;
    wire changeState;
    wire clk_5MHz;
    reg [1:0] nextState;
    reg [1:0] curState;
    reg transfer;
    reg [SHIFT_REG_WIDTH-1:0] byteIn;

    localparam IDLE = 2'b00, TRANSFER = 2'b01;

    ClockGenerator ClockGeneratorInst (.clk(clk), .reset(reset), .clk_5MHz(clk_5MHz), .clk_10MHz(), .locked(locked));

    GUCounter #(.BITS(5))
        FSMCounter (.clk(clk), .reset_in({reset, FSMCount == 5'd9}), .enable(locked && !o_SPI_CSLow), .count(FSMCount));

    assign shiftIn = (FSMCount == 5'd9) && clk_5MHz && locked && transfer;
    assign shiftOut = (FSMCount == 5'd5) && !clk_5MHz && locked && transfer;
    assign newByte = (FSMCount == 5'd3) && !clk_5MHz && locked && transfer && transCount == 0;
    assign o_Rx_Hold = ((FSMCount == 5'd2) || (FSMCount == 5'd3)) && !clk_5MHz && locked && transCount == 0;
    assign o_SPI_Clk = clk_5MHz;

    GUCounter #(.BITS(5))
            transCounter (.clk(clk_5MHz), .reset_in({reset, transCount == SHIFT_REG_WIDTH - 1}), .enable(locked && !o_SPI_CSLow), .count(transCount));

    always @(negedge o_SPI_Clk or posedge reset) begin 
        if (reset) begin
            o_SPI_CSLow <= 1;
        end else if (transCount == 0) begin
            o_SPI_CSLow <= !i_Tx_Valid;
        end
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            curState <= IDLE;
        end else begin
            curState <= nextState;
        end
    end
    
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            o_SPI_Mosi <= 0;
            o_Rx_Byte <= 0;
            byteIn <= 0;
        end else if (newByte) begin
            byteIn <= i_Tx_Byte;
            o_Rx_Byte <= byteIn;
        end else if (o_SPI_CSLow) begin 
            o_Rx_Byte <= byteIn;
        end else if (shiftOut) begin
            o_SPI_Mosi <= byteIn[SHIFT_REG_WIDTH-1]; // Shift out MSB
        end else if (shiftIn) begin
            byteIn <= {byteIn[SHIFT_REG_WIDTH-1:0], i_SPI_Miso}; // Shift in MISO
        end
    end

    always @(*) begin
        case (curState)
            IDLE: begin
                nextState = !o_SPI_CSLow ? TRANSFER : IDLE;
                transfer = 0;
            end
            TRANSFER: begin
                if (transCount != SHIFT_REG_WIDTH - 1 || !o_SPI_CSLow) begin
                    nextState = TRANSFER;
                end else begin
                    nextState = IDLE;
                end
                transfer = 1;
            end
            default: begin
                nextState = IDLE;
                transfer = 0;
            end 
        endcase
    end

endmodule
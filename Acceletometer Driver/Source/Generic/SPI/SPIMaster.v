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
 *           CLK: Clock signals.
 *           <none>: Control signals (e.g., start, done, enable).
 !       z - Descriptive name of the variable:
 *           A meaningful identifier for the signal.
 *
 * -----------------------------------------------------------------------------
 ? Example:
 *   - i_Rx_Byte: An input signal carrying received data.
 *   - o_Tx_Hold: An output signal indicating the duration data should be held for.
 *   - i_SPI_Clk: An input SPI clock signal.
 *   - o_CLK_locked: A control signal indicating the Clock is operating normally.
 *
 * -----------------------------------------------------------------------------
 ? Notes:
 *   1. Adhering to this naming convention ensures consistent and intuitive signal
 *      identification across the design.
 *   2. Signals should be grouped logically based on their categories in the
 *      module's code to further enhance readability.
 *
 * -----------------------------------------------------------------------------
 ? Module Description:
 *   The SPIMaster module implements a simple SPI Master interface that can be
 *   used to communicate with SPI Slave devices. The module supports full-duplex
 *   communication and can transmit and receive data simultaneously. The moudule
 *   uses a shift register to transmit and receive data over the SPI interface.
 *   and uses a state machine with sampling signals to control the data transfer
 *   process.
 * -----------------------------------------------------------------------------
 */

module SPIMaster #(
    parameter SHIFT_REG_WIDTH = 8,
    parameter SRWIDTH_LOG2 = 3
)(
    //? Control Interface
    input clk,
    input reset,
    output o_CLK_locked,
    
    //? Tx Interface
    input [SHIFT_REG_WIDTH-1:0] i_Tx_Byte,
    input i_Tx_Valid,
    output o_Tx_holdValid,
    output o_Tx_Hold,

    //? Rx Interface
    output reg [SHIFT_REG_WIDTH-1:0] o_Rx_Byte,

    //? MSI Interface
    input i_SPI_Miso,
    output reg o_SPI_CSLow,
    output reg o_SPI_Mosi,
    output o_SPI_Clk
);
    //? Internal Signals
    wire [SRWIDTH_LOG2-1:0] transCount;
    reg [SHIFT_REG_WIDTH-1:0] byteIn; //? Received byte / Byte to transmit
    reg CSBuf;

    //? FSM Signals
    reg [1:0] nextState, curState;
    reg [4:0] FSMCount;
    reg transfer;

    localparam IDLE = 2'b00, TRANSFER = 2'b01;

    // Instantiate the ClockGenerator module create a 5 MHz clock
    ClockGenerator ClockGeneratorInst (.clk(clk), .reset(reset), .clk_5MHz(o_SPI_Clk), .locked(locked));
    // 5Mhz clock subticks. Sampling signals
    assign o_CLK_locked = locked;
    assign shiftIn = (FSMCount == 5'd19) && locked && transfer; 
    assign shiftOut = (FSMCount == 5'd5) && locked && transfer; // 9
    assign newByte = (FSMCount == 5'd3) && locked && transfer && transCount == 0;
    assign o_Tx_Hold = ((FSMCount == 5'd2) || (FSMCount == 5'd3)) && locked && transCount == 0;
    assign o_Tx_holdValid = transCount == 0 && ((FSMCount == 5'd0) || (FSMCount == 5'd19)) && locked;
    
    GUCounter #(.BITS(SRWIDTH_LOG2))
            transCounter (.clk(o_SPI_Clk), .reset_in({reset, transCount == SHIFT_REG_WIDTH - 1 || o_SPI_CSLow}), .enable(locked && !o_SPI_CSLow), .count(transCount));

    always @(negedge o_SPI_Clk or posedge reset) begin 
        if (reset) begin
            CSBuf <= 0;
            o_SPI_CSLow <= 1;
        end else if (transCount == 0 && i_Tx_Valid) begin
            CSBuf <= 0;
            o_SPI_CSLow <= 0;
        end else if (!i_Tx_Valid) begin
            if (!o_SPI_CSLow) begin 
                CSBuf <= 1;
                o_SPI_CSLow <= CSBuf;
            end else begin 
                CSBuf <= 0;
                o_SPI_CSLow <= 1;
            end
        end
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            FSMCount <= 0;
        end else if (FSMCount == 5'd19) begin
            FSMCount <= 0;
        end else if (locked && !o_SPI_CSLow) begin
            FSMCount <= FSMCount + 1;
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
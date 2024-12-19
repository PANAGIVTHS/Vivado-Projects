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
 *           SPI: SPI-specific signals (e.g., SCLK, MOSI, MISO, CS).
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
    output reg o_Rx_Ready,

    //? MSI Signals
    input i_SPI_Miso,
    output reg o_SPI_CSLow,
    output reg o_SPI_Mosi,
    output o_SPI_Clk
);
    reg [SHIFT_REG_WIDTH-1:0] byteIn;
    reg [1:0] curState;
    reg [1:0] nextState;
    reg transfer, stop;
    wire clk_5MHz, locked;
    reg CS;

    localparam IDLE = 2'b00, TRANSFER = 2'b01, STOP = 2'b11;

// TODO Add locked logic

    ClockGenerator ClockGeneratorInst (.clk(clk), .reset(reset), .clk_5MHz(clk_5MHz), .clk_10MHz(), .locked(locked));
    assign o_SPI_Clk = clk_5MHz;
    wire [4:0] count;
    reg shiftEnable;
    wire mosiEnable;

    GUCounter #(.BITS(5))
        CounterInst (.clk(clk), .reset_in({reset, count == 5'd19 || !transfer && !stop}), .enable(1'b1), .count(count));
    
    assign mosiEnable = count == 5'd2;
//    assign resetMosi = count == 5'd19;
    assign test = mosiEnable && shiftEnable;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            shiftEnable <= 0;
        end else if (mosiEnable) begin
            shiftEnable <= !shiftEnable;
        end
    end

    /* 
     ?  For unlocked Behaviour:
     *  Register Byte only when i_Tx_Valid is HIGH this should be an
     *  external pulse signal to signify the data has been setup for
     *  SPI to start the transmission with it.
     ?  For locked Behaviour:
     *  Same as above though the internal buffer will not change after
     *  being signaled once via i_Tx_Valid. The buffer will be able to
     * change once o_Tx_Ready is set to HIGH again.
    */ 
    generate
        if (LOCK_IN_BEHAVIOUR == 1) begin
            // Logic for non-locking behaviour
            always @(posedge clk or posedge reset) begin
                if (reset) begin
                    byteIn <= 0;
                    CS <= 1'b1;
                    o_Rx_Ready <= 1'b1;
                    o_SPI_Mosi <= 0;
                end else if (i_Tx_Valid && o_Rx_Ready && !stop) begin
                    byteIn <= i_Tx_Byte;
                    CS <= 1'b0;
                    o_Rx_Ready <= 1'b0;
                end else if (transfer && test) begin
                    o_SPI_Mosi <= byteIn[SHIFT_REG_WIDTH-1]; // Shift out MSB
                    byteIn <= {byteIn[SHIFT_REG_WIDTH-1:0], i_SPI_Miso}; // Shift in MISO
                    CS <= 1'b0;
                    o_Rx_Ready <= 1'b0;
                end else if (stop) begin
                    o_Rx_Byte <= byteIn;
                    if (test) begin
                        byteIn <= {byteIn[SHIFT_REG_WIDTH-1:0], i_SPI_Miso}; // Shift in MISO
                        o_Rx_Ready <= 1'b1;   // Ready for the next byte
                    end
                    if (!i_Tx_Valid) begin
                        CS <= 1'b1;  // Chip select is deactivated when transmission stops
                    end
                end
            end
        end
        else begin
            initial begin
                // If LOCK_IN_BEHAVIOUR is not 0 or 1, throw an exception
                $fatal("LOCK_IN_BEHAVIOUR insternal parameter must be 0 or 1, got %0d", LOCK_IN_BEHAVIOUR);
            end
        end
    endgenerate

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            o_SPI_CSLow <= 1;
        end else if (test) begin
            o_SPI_CSLow <= CS;
        end
    end

    wire [SRWIDTH_LOG2-1:0] transCount;

    GUCounter #(.BITS(SRWIDTH_LOG2))
        tranferCounter (.clk(o_SPI_Clk), .reset_in({reset, !transfer}), .enable(1'b1), .count(transCount)); 

    always @(posedge o_SPI_Clk or posedge reset) begin
        if (reset) begin
            curState <= IDLE;
        end else begin
            curState <= nextState;
        end
    end
    
    always @(*) begin
        transfer = 0;
        stop = 0;
        case (curState)
            IDLE: begin
                nextState = i_Tx_Valid ? TRANSFER : IDLE;
            end
            TRANSFER: begin
                nextState = transCount == SHIFT_REG_WIDTH - 1 ? STOP : TRANSFER;
                transfer = 1;
            end
            STOP: begin
                nextState = i_Tx_Valid ? TRANSFER : IDLE;
                stop = 1;
            end
            default: begin
                nextState = IDLE;
            end 
        endcase
    end

endmodule
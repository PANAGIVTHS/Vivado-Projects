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
    wire clk_5MHz, clk_10MHz, locked;

    localparam IDLE = 2'b00, TRANSFER = 2'b01, STOP = 2'b11;

    ClockGenerator ClockGeneratorInst (.clk(clk), .reset(reset), .clk_5MHz(clk_5MHz), .clk_10MHz(clk_10MHz), .locked(locked));
    assign o_SPI_Clk = clk_5MHz;
    // TODO Change it to more frequent clk and setup the Data eralier than negedge
    wire count;
    GUCounter #(.BITS(1))
        CounterInst (.clk(clk_10MHz), .reset_in({reset, !transfer}), .enable(1'b1), .count(count));

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
        if (LOCK_IN_BEHAVIOUR == 0) begin
            // Logic for non-locking behaviour
            always @(posedge clk_5MHz or posedge reset) begin
                if (reset) begin
                    byteIn <= 0;
                    o_SPI_CSLow <= 1'b0;
                    o_Rx_Ready <= 1'b0;
                end else if (i_Tx_Valid) begin
                    byteIn <= i_Tx_Byte;
                    o_SPI_CSLow <= 1'b0;
                    o_Rx_Ready <= 1'b0;
                end else if (transfer) begin
                    case ({CPOL, CPHA})  // SPI Mode based on CPOL and CPHA
                        2'b00: begin // CPOL == 0, CPHA == 0 (Mode 0)
                            if (count) begin
                                o_SPI_Mosi <= byteIn[SHIFT_REG_WIDTH-1]; // Shift out MSB
                            end else begin
                                byteIn <= {byteIn[SHIFT_REG_WIDTH-1:0], i_SPI_Miso}; // Shift in MISO
                            end
                            o_SPI_CSLow <= 1'b0;
                            o_Rx_Ready <= 1'b0;
                        end
                        2'b01: begin // CPOL == 0, CPHA == 1 (Mode 1)
                            if (!count) begin
                                o_SPI_Mosi <= byteIn[SHIFT_REG_WIDTH-1]; // Shift out MSB
                            end else begin
                                byteIn <= {byteIn[SHIFT_REG_WIDTH-1:0], i_SPI_Miso}; // Shift in MISO
                            end
                            o_SPI_CSLow <= 1'b0;
                            o_Rx_Ready <= 1'b0;
                        end
                        2'b10: begin // CPOL == 1, CPHA == 0 (Mode 2)
                            if (count) begin
                                o_SPI_Mosi <= byteIn[SHIFT_REG_WIDTH-1]; // Shift out MSB
                            end else begin
                                byteIn <= {byteIn[SHIFT_REG_WIDTH-1:0], i_SPI_Miso}; // Shift in MISO
                            end
                            o_SPI_CSLow <= 1'b0;
                            o_Rx_Ready <= 1'b0;
                        end
                        2'b11: begin // CPOL == 1, CPHA == 1 (Mode 3)
                            if (!count) begin
                                o_SPI_Mosi <= byteIn[SHIFT_REG_WIDTH-1]; // Shift out MSB
                            end else begin
                                byteIn <= {byteIn[SHIFT_REG_WIDTH-1:0], i_SPI_Miso}; // Shift in MISO
                            end
                            o_SPI_CSLow <= 1'b0;
                            o_Rx_Ready <= 1'b0;
                        end
                        default: begin
                            o_SPI_CSLow <= 1'b1;  // Chip select is inactive in default
                            o_Rx_Ready <= 1'b0;
                        end
                    endcase
                end else if (stop) begin
                    o_Rx_Byte <= byteIn;
                    o_SPI_CSLow <= 1'b1;  // Chip select is deactivated when transmission stops
                    o_Rx_Ready <= 1'b1;   // Ready for the next byte
                end
            end
        end
        else if (LOCK_IN_BEHAVIOUR == 1) begin
            // Logic for locking behaviour
            always @(posedge clk_5MHz or posedge reset) begin
                if (reset) begin
                    byteIn <= 0;
                    o_SPI_CSLow <= 1'b0;
                    o_Rx_Ready <= 1'b0;
                end else if (i_Tx_Valid || o_Tx_Ready) begin
                    byteIn <= i_Tx_Byte;
                    o_SPI_CSLow <= 1'b0;
                    o_Rx_Ready <= 1'b0;
                end else if (transfer) begin
                    case ({CPOL, CPHA})  // SPI Mode based on CPOL and CPHA
                        2'b00: begin // CPOL == 0, CPHA == 0 (Mode 0)
                            if (count) begin
                                o_SPI_Mosi <= byteIn[SHIFT_REG_WIDTH-1]; // Shift out MSB
                            end else begin
                                byteIn <= {byteIn[SHIFT_REG_WIDTH-1:0], i_SPI_Miso}; // Shift in MISO
                            end
                            o_SPI_CSLow <= 1'b0;
                            o_Rx_Ready <= 1'b0;
                        end
                        2'b01: begin // CPOL == 0, CPHA == 1 (Mode 1)
                            if (!count) begin
                                o_SPI_Mosi <= byteIn[SHIFT_REG_WIDTH-1]; // Shift out MSB
                            end else begin
                                byteIn <= {byteIn[SHIFT_REG_WIDTH-1:0], i_SPI_Miso}; // Shift in MISO
                            end
                            o_SPI_CSLow <= 1'b0;
                            o_Rx_Ready <= 1'b0;
                        end
                        2'b10: begin // CPOL == 1, CPHA == 0 (Mode 2)
                            if (count) begin
                                o_SPI_Mosi <= byteIn[SHIFT_REG_WIDTH-1]; // Shift out MSB
                            end else begin
                                byteIn <= {byteIn[SHIFT_REG_WIDTH-1:0], i_SPI_Miso}; // Shift in MISO
                            end
                            o_SPI_CSLow <= 1'b0;
                            o_Rx_Ready <= 1'b0;
                        end
                        2'b11: begin // CPOL == 1, CPHA == 1 (Mode 3)
                            if (!count) begin
                                o_SPI_Mosi <= byteIn[SHIFT_REG_WIDTH-1]; // Shift out MSB
                            end else begin
                                byteIn <= {byteIn[SHIFT_REG_WIDTH-1:0], i_SPI_Miso}; // Shift in MISO
                            end
                            o_SPI_CSLow <= 1'b0;
                            o_Rx_Ready <= 1'b0;
                        end
                        default: begin
                            o_SPI_CSLow <= 1'b1;  // Chip select is inactive in default
                            o_Rx_Ready <= 1'b0;
                        end
                    endcase
                end else if (stop) begin
                    o_Rx_Byte <= byteIn;
                    o_SPI_CSLow <= 1'b1;  // Chip select is deactivated when transmission stops
                    o_Rx_Ready <= 1'b1;   // Ready for the next byte
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

    wire [SRWIDTH_LOG2-1:0] transCount;

    GUCounter #(.BITS(SRWIDTH_LOG2))
        tranferCounter (.clk(clk_5MHz), .reset_in({reset, !transfer}), .enable(1'b1), .count(transCount)); 

    always @(posedge clk_5MHz or posedge reset) begin
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
                nextState = transCount == SHIFT_REG_WIDTH ? STOP : TRANSFER;
                transfer = 1;
            end
            STOP: begin
                nextState = IDLE;
                stop = 1;
            end
            default: begin
                nextState = IDLE;
            end 
        endcase
    end

endmodule
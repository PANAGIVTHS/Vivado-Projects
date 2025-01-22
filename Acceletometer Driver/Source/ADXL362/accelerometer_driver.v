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
 *           SPI: SPI-specific signals (e.g., i_SPI_Miso, o_SPI_Mosi, o_SPI_CSLow).
 *           CMD: Command-related signals (e.g., i_CMD_Instruction, o_CMD_Data).
 *           <none>: Control signals (e.g., start, done, enable).
 !       z - Descriptive name of the variable:
 *           A meaningful identifier for the signal.
 *
 * -----------------------------------------------------------------------------
 ? Example:
 *   - i_CMD_Instruction: An input signal carrying the command instruction.
 *   - i_SPI_Clk: An input SPI clock signal.
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
 *   The CMDHandler module is used to handle ADXL362 commands and data transfers
 *   over the SPI interface. The module uses a state machine to control the data
 *   transfer process and to ensure that the correct sequence of 8bit information
 *   is transmitted to create a valid command. The module also handles the timing
 *   requirements for each command.
 *
 ?   Inputs:
 *     - i_CMD_Instruction: 8-bit input signal carrying the command instruction.
 *     - i_CMD_Address: 8-bit input signal carrying the command address.
 *     - i_CMD_Data: 8-bit input signal carrying the command data.
 *     - i_SPI_Miso: Input signal carrying the SPI MISO data.
 *
 ?   Outputs:
 *     - o_CMD_Data: 8-bit output signal carrying the received byte from slave.
 *     - o_CMD_Stall: Output signal indicating that the command is stalled.
 *     - o_CMD_Ready: Output signal indicating that a command can be sent.
 *     - o_Rx_ByteValid: Output signal indicating that the current byte is valid.
 *     - o_SPI_Clk: Output signal carrying the SPI clock.
 *     - o_SPI_Mosi: Output signal carrying the SPI MOSI data.
 *     - o_SPI_CSLow: Output signal indicating that the SPI CS is low.
 * -----------------------------------------------------------------------------
 */

// TODO Add debounce logic and stuff

// Top module for accelerometer driver //
module accelerometer_driver (clk, reset, enable, TxD, mosi, miso, sclk, cs);
    input clk, reset, enable, miso;
    output TxD, mosi, sclk, cs;

    wire data_ready;

    wire [7:0] ascii_X1, ascii_X2, ascii_X3, ascii_X4;
    wire [7:0] ascii_Y1, ascii_Y2, ascii_Y3, ascii_Y4;
    wire [7:0] ascii_Z1, ascii_Z2, ascii_Z3, ascii_Z4;
    wire [7:0] ascii_T1, ascii_T2, ascii_T3, ascii_T4, ascii_T5, ascii_T6;
    wire is_negative_X, is_negative_Y, is_negative_Z, is_negative_T;
    wire [7:0] DataX;
    wire [7:0] DataY;
    wire [7:0] DataZ;
    wire [11:0] DataT;
    wire [11:0] DataX_BIN;
    wire [11:0] DataY_BIN;
    wire [11:0] DataZ_BIN;
    wire [18:0] DataT_BIN;
    wire dataReady, start;
    wire [11:0] accel_X_avg, accel_Y_avg, accel_Z_avg;
    wire [18:0] accel_T_avg;

    CMDController CMDControllerInst (.clk(clk), .reset(reset),
        .enable(enable), .o_CMD_DataX(DataX), .o_CMD_DataY(DataY),
        .o_CMD_DataZ(DataZ), .o_CMD_DataT(DataT), .o_CMD_dataReady(dataReady),
        .o_SPI_Clk(sclk), .o_SPI_Mosi(mosi), .o_SPI_CSLow(cs), .i_SPI_Miso(miso) 
    );

    rawToBinCoord rawToBinCoordX (.i_RAW_Data(DataX), .o_BIN_Data(DataX_BIN));
    rawToBinCoord rawToBinCoordY (.i_RAW_Data(DataY), .o_BIN_Data(DataY_BIN));
    rawToBinCoord rawToBinCoordZ (.i_RAW_Data(DataZ), .o_BIN_Data(DataZ_BIN));
    rawToBinTemp rawToBinTempT (.i_RAW_Data(DataT), .o_BIN_Data(DataT_BIN));

    findAvgData findAvgDataInst (.clk(clk), .reset(reset), .i_AVG_dataReady(dataReady),
        .i_ACCEL_X(DataX_BIN), .i_ACCEL_Y(DataY_BIN), .i_ACCEL_Z(DataZ_BIN), .i_ACCEL_T(DataT_BIN),
        .o_AVG_AccelX(accel_X_avg), .o_AVG_AccelY(accel_Y_avg), .o_AVG_AccelZ(accel_Z_avg),
        .o_AVG_AccelT(accel_T_avg), .o_AVG_Ready(start)
    ); 

    convertAccelOut convertAccelOut_inst(.clk(clk), .reset(reset), .enable(enable),
        .accel_X_buf(accel_X_avg), .accel_Y_buf(accel_Y_avg), .accel_Z_buf(accel_Z_avg), .accel_T_buf(accel_T_avg),
        .ascii_X1(ascii_X1), .ascii_X2(ascii_X2), .ascii_X3(ascii_X3), .ascii_X4(ascii_X4),
        .ascii_Y1(ascii_Y1), .ascii_Y2(ascii_Y2), .ascii_Y3(ascii_Y3), .ascii_Y4(ascii_Y4),
        .ascii_Z1(ascii_Z1), .ascii_Z2(ascii_Z2), .ascii_Z3(ascii_Z3), .ascii_Z4(ascii_Z4),
        .ascii_T1(ascii_T1), .ascii_T2(ascii_T2), .ascii_T3(ascii_T3), .ascii_T4(ascii_T4),
        .ascii_T5(ascii_T5), .ascii_T6(ascii_T6), .is_negative_X(is_negative_X),
        .is_negative_Y(is_negative_Y), .is_negative_Z(is_negative_Z),
        .is_negative_T(is_negative_T), .ready(data_ready), .start(start)
    );

    uart_transmitter_data_control uart_transmitter_data_control_inst(.clk(clk), .reset(reset),
        .TxD(TxD), .start_transmission(enable), .data_ready_for_printing(data_ready),
        .ascii_X1(ascii_X1), .ascii_X2(ascii_X2), .ascii_X3(ascii_X3), .ascii_X4(ascii_X4),
        .ascii_Y1(ascii_Y1), .ascii_Y2(ascii_Y2), .ascii_Y3(ascii_Y3), .ascii_Y4(ascii_Y4),
        .ascii_Z1(ascii_Z1), .ascii_Z2(ascii_Z2), .ascii_Z3(ascii_Z3), .ascii_Z4(ascii_Z4),
        .ascii_T1(ascii_T1), .ascii_T2(ascii_T2), .ascii_T3(ascii_T3), .ascii_T4(ascii_T4),
        .ascii_T5(ascii_T5), .ascii_T6(ascii_T6), .is_negative_X(is_negative_X),
        .is_negative_Y(is_negative_Y), .is_negative_Z(is_negative_Z), .is_negative_T(is_negative_T)
    );
endmodule

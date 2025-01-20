

// TODO Add debounce logic and stuff

// Top module for accelerometer driver //
module accelerometer_driver (clk, reset, enable, TxD, mosi, miso, sclk, cs);
    input clk, reset;
    output TxD;

    wire data_ready;

    wire [7:0] ascii_X1, ascii_X2, ascii_X3, ascii_X4;
    wire [7:0] ascii_Y1, ascii_Y2, ascii_Y3, ascii_Y4;
    wire [7:0] ascii_Z1, ascii_Z2, ascii_Z3, ascii_Z4;
    wire [7:0] ascii_T1, ascii_T2, ascii_T3, ascii_T4, ascii_T5, ascii_T6;
    wire is_negative_X, is_negative_Y, is_negative_Z, is_negative_T;
    wire [7:0] DataX;
    wire [7:0] DataY;
    wire [7:0] DataZ;
    wire [13:0] DataT;
    wire [11:0] DataX_BIN;
    wire [11:0] DataY_BIN;
    wire [11:0] DataZ_BIN;
    wire [18:0] DataT_BIN;
    wire dataReady;

    CMDController CMDControllerInst (.clk(clk), .reset(reset),
        .enable(enbale), .o_CMD_DataX(DataX), .o_CMD_DataY(DataY)
        .o_CMD_DataZ(DataZ), .o_CMD_DataT(DataT), .o_CMD_dataReady(dataReady),
        .o_SPI_Clk(sclk), .o_SPI_Mosi(mosi), .o_SPI_CSLow(cs), .i_SPI_Miso(miso) 
    );

    rawToBinCoord rawToBinCoordX (.i_RAW_Data(DataX), .o_BIN_Data(DataX_BIN));
    rawToBinCoord rawToBinCoordY (.i_RAW_Data(DataY), .o_BIN_Data(DataY_BIN));
    rawToBinCoord rawToBinCoordZ (.i_RAW_Data(DataZ), .o_BIN_Data(DataZ_BIN));
    rawToBinTemp rawToBinTempT (.i_RAW_Data(DataT), .o_BIN_Data(DataT_BIN));

    findAvgData findAvgDataInst (.clk(clk), .reset(reset), .i_AVG_dataReady(dataReady),
        .accel_X(DataX_BIN), .accel_Y(DataY_BIN), .accel_Z(DataZ_BIN), .accel_T(DataT_BIN),
        .o_AVG_AccelX(accel_X_avg), .o_AVG_AccelY(accel_Y_avg), .o_AVG_AccelZ(accel_Z_avg),
        .o_AVG_AccelT(accel_T_avg)
    ); 

    convertAccelOut convertAccelOut_inst(.clk(clk), .reset(reset),
        .accel_X_buf(accel_X_avg), .accel_Y_buf(accel_Y_avg), .accel_Z_buf(accel_Z_avg), .accel_T_buf(accel_T_avg),
        .ascii_X1(ascii_X1), .ascii_X2(ascii_X2), .ascii_X3(ascii_X3), .ascii_X4(ascii_X4),
        .ascii_Y1(ascii_Y1), .ascii_Y2(ascii_Y2), .ascii_Y3(ascii_Y3), .ascii_Y4(ascii_Y4),
        .ascii_Z1(ascii_Z1), .ascii_Z2(ascii_Z2), .ascii_Z3(ascii_Z3), .ascii_Z4(ascii_Z4),
        .ascii_T1(ascii_T1), .ascii_T2(ascii_T2), .ascii_T3(ascii_T3), .ascii_T4(ascii_T4),
        .ascii_T5(ascii_T5), .ascii_T6(ascii_T6), .is_negative_X(is_negative_X),
        .is_negative_Y(is_negative_Y), .is_negative_Z(is_negative_Z),
        .is_negative_T(is_negative_T), .ready(data_ready)
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

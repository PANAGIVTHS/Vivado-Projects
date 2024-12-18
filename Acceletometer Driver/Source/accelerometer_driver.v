// Top module for accelerometer driver //
// TODO: add your modules instantiations here //
// TODO: add SPI communication ports here //

module accelerometer_driver (clk, reset, enable, TxD);

input clk, reset;
output TxD;

wire data_ready;

wire [7:0] ascii_X1, ascii_X2, ascii_X3, ascii_X4;
wire [7:0] ascii_Y1, ascii_Y2, ascii_Y3, ascii_Y4;
wire [7:0] ascii_Z1, ascii_Z2, ascii_Z3, ascii_Z4;
wire [7:0] ascii_T1, ascii_T2, ascii_T3, ascii_T4, ascii_T5, ascii_T6;
wire is_negative_X, is_negative_Y, is_negative_Z, is_negative_T;

convertAccelOut convertAccelOut_inst(.clk(clk), .reset(reset),
    .accel_X_buf(accel_X), .accel_Y_buf(accel_Y), .accel_Z_buf(accel_Z), .accel_T_buf(accel_T),
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

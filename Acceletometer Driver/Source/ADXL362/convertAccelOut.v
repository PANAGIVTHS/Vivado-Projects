module convertAccelOut (
    input clk,
    input reset,
    input enable,

    input [11:0] accel_X_buf,
    input [11:0] accel_Y_buf,
    input [11:0] accel_Z_buf,
    input [18:0] accel_T_buf,

    input start,
    
    output [7:0] ascii_X1,
    output [7:0] ascii_X2,
    output [7:0] ascii_X3,
    output [7:0] ascii_X4,

    output [7:0] ascii_Y1,
    output [7:0] ascii_Y2,
    output [7:0] ascii_Y3,
    output [7:0] ascii_Y4,
    
    output [7:0] ascii_Z1,
    output [7:0] ascii_Z2,
    output [7:0] ascii_Z3,
    output [7:0] ascii_Z4,
    
    output [7:0] ascii_T1,
    output [7:0] ascii_T2,
    output [7:0] ascii_T3,
    output [7:0] ascii_T4,
    output [7:0] ascii_T5,
    output [7:0] ascii_T6,
    
    output is_negative_X,
    output is_negative_Y,
    output is_negative_Z,
    output is_negative_T,

    output ready
);
    wire ready_X, ready_Y, ready_Z, ready_T;
    wire start_X, start_Y, start_Z, start_T;
    
    reg [11:0] accel_X, accel_Y, accel_Z;
    reg [18:0] accel_T;

    // toPulse toPulseInst_X (
    //     .clk(clk),
    //     .reset(reset),
    //     .contSignal(ready_T),
    //     .pulse(ready)
    // );
    assign ready = ready_T;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            accel_X <= 0;
            accel_Y <= 0;
            accel_Z <= 0;
            accel_T <= 0;
        end else begin 
            accel_X <= accel_X_buf;
            accel_Y <= accel_Y_buf;
            accel_Z <= accel_Z_buf;
            accel_T <= accel_T_buf;
        end
    end

    binary_to_ascii #(.BIN_WIDTH(12), .BCD_DIGITS(4))
    binary_to_ascii_X (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .start(start),
        .bin(accel_X),
        .ascii_out({ascii_X1, ascii_X2, ascii_X3, ascii_X4}),
        .ready(ready_X),
        .is_negative(is_negative_X)
    );

    binary_to_ascii #(.BIN_WIDTH(12), .BCD_DIGITS(4))
    binary_to_ascii_Y (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .start(start),
        .bin(accel_Y),
        .ascii_out({ascii_Y1, ascii_Y2, ascii_Y3, ascii_Y4}),
        .ready(ready_Y),
        .is_negative(is_negative_Y)
    );

    binary_to_ascii #(.BIN_WIDTH(12), .BCD_DIGITS(4))
    binary_to_ascii_Z (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .start(start),
        .bin(accel_Z),
        .ascii_out({ascii_Z1, ascii_Z2, ascii_Z3, ascii_Z4}),
        .ready(ready_Z),
        .is_negative(is_negative_Z)
    );

    binary_to_ascii #(.BIN_WIDTH(19), .BCD_DIGITS(6)) 
    binary_to_ascii_T (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .start(start),
        .bin(accel_T),
        .ascii_out({ascii_T1, ascii_T2, ascii_T3, ascii_T4, ascii_T5, ascii_T6}),
        .ready(ready_T),
        .is_negative(is_negative_T)
    );
endmodule
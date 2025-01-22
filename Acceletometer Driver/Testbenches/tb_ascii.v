`timescale 1ns / 10ps

module tb_ascii;

    reg clk, reset, enable;
    reg [11:0] bin;
    reg start_buf;
    wire ready;
    reg start;
    reg [11:0] mem[10:0];
    reg [3:0] i;
    wire [7:0] ascii_X1, ascii_X2, ascii_X3, ascii_X4;

    localparam CLK_PERIOD = 10; // Clock period of 10 ns (100 MHz clock)
    always #(CLK_PERIOD / 2) clk = ~clk;

    binary_to_ascii #(.BIN_WIDTH(12), .BCD_DIGITS(4))
    binary_to_ascii_X (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .start(start),
        .bin(bin),
        .ascii_out({ascii_X1, ascii_X2, ascii_X3, ascii_X4}),
        .ready(ready),
        .is_negative(is_negative)
    );

    toPulse toPulseInst (
        .clk(clk),
        .reset(reset),
        .contSignal(ready),
        .pulse(readyPulse)
    );

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            i = 0;
            bin <= 0;
            start_buf <= 0;     
        end else if (readyPulse) begin
            bin <= mem[i];
            i <= i + 1;
            start_buf <= 1;     
        end else begin
            start_buf <= 0;
        end
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            i = 0;
        end else if (i != 11 && readyPulse) begin
            i <= i + 1;
        end else if (i == 11) begin
            i <= 0;
        end
    end

    reg FF1, FF2;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            FF1 <= 0;
            FF2 <= 0;
            start <= 0;
        end else begin
            FF1 <= start_buf;
            FF2 <= FF1;
            start <= FF2;
        end
    end

    // Stimulus and test sequence
    initial begin
        // Initialize signals
        clk = 0;
        reset = 1;
        enable = 1;

        mem[0] = 12'sd0;
        mem[1] = 12'sd1;
        mem[2] = -12'sd1;
        mem[3] = 12'sd4;
        mem[4] = -12'sd4;
        mem[5] = 12'sd10;
        mem[6] = -12'sd10;
        mem[7] = 12'sd999;
        mem[8] = -12'sd999;
        mem[9] = 12'sd2047;
        mem[10] = -12'sd2048;

        // Apply reset
        #2000;
        reset = 0;
        #3525;
        $finish;
    end

endmodule

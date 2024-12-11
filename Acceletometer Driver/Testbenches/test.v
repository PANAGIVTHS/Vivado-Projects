
`timescale 1ns/1ps

module test();
    localparam BIN_WIDTH = 8;

    reg clk;
    reg reset;
    reg enable;
    wire ready;
    wire [BIN_WIDTH+(BIN_WIDTH-4)/3:0] bcd_out;
    reg [BIN_WIDTH-1:0] bin;

    // Instantiate the DUT (Design Under Test)
    bin2bcdN #(
        .W(BIN_WIDTH)
    ) uut (
        .bin(bin),
        .bcd(bcd_out)
    );

    localparam CLK_PERIOD = 10;
    always #(CLK_PERIOD/2) clk=~clk;

    // Stimulus
    initial begin
        // Initialize signals
        #100
        clk = 0;
        reset = 0;
        enable = 1;
        bin = 0;

        // Apply reset
        $display("Applying reset...");
        reset = 1;

        #10;
        reset = 0;
        #1000;

        bin = 255;

    end
endmodule

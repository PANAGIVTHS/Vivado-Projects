`timescale 1ns/1ps

module test();
    localparam BIN_WIDTH = 13;  // Adjust based on your bin width
    localparam BCD_DIGITS = 4;  // Adjust based on your BCD digits

    reg clk;
    reg reset;
    reg enable;
    reg [BIN_WIDTH-1:0] bin;
    wire [(BCD_DIGITS * 8)-1:0] ascii;
    wire ready;
    reg ready2;
    reg start;
    

    // Instantiate the DUT (Design Under Test)
    binary_to_ascii uut (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .start(start),
        .bin(bin),
        .ascii_out(ascii),
        .ready(ready)
    );

    // Clock generation
    localparam CLK_PERIOD = 10;  // 10 ns clock period
    always #(CLK_PERIOD/2) clk = ~clk;

    // Test counter
    integer counter = 0;

    // Stimulus
    initial begin
        // Initialize signals
        clk = 0;
        reset = 0;
        enable = 1;
        bin = 0;
        start = 0;
        ready2 = 0;

        // Apply reset
        $display("Applying reset...");
        reset = 1;
        enable = 1;
        ready2 = 1;
        #10;
        ready2 = 0;
        reset = 0;
        #10;
    end

    // Always block to check the ready signal and increment the counter
    always @(posedge clk) begin
        if (ready || ready2) begin
            // Increment the counter on each `ready` signal
            case(counter)
                0: begin
                    // Test case 1: Test with bin = 153 (0x99)
                    bin = 13'b1001100;
                    start = 1;
                    $display("Test case 1: bin = %d", bin);
                    $display("Result: ASCII = %s", ascii);
                end
                1: begin
                    // Test case 2: Test with bin = 69 (0x45)
                    bin = 13'd69;
                    $display("Test case 2: bin = %d", bin);
                    $display("Result: ASCII = %s", ascii);
                end
                2: begin
                    // Test case 3: Test with bin = 255 (0xFF)
                    bin = 13'd255;
                    $display("Test case 3: bin = %d", bin);
                    $display("Result: ASCII = %s", ascii);
                end
                3: begin
                    // Test case 4: Test with bin = 0 (0x00)
                    bin = 13'd0;
                    $display("Test case 4: bin = %d", bin);
                    $display("Result: ASCII = %s", ascii);
                end
                4: begin
                    // Test case 5: Test with bin = 171 (0xAB)
                    bin = 13'd171;
                    $display("Test case 5: bin = %d", bin);
                    $display("Result: ASCII = %s", ascii);
                end
                5: begin
                    // Test case 6: Test with bin = 0x4008 (0x4008 in binary)
                    bin = 13'd4008;
                    $display("Test case 6: bin = %b", bin);
                    $display("Result: ASCII = %s", ascii);
                end
                6: begin
                    // Test case 7: Test with bin = 112604 (0x1B8C4)
                    bin = 13'd112604;
                    $display("Test case 7: bin = %d", bin);
                    $display("Result: ASCII = %s", ascii);
                end
                7: begin
                    // Test case 8: End of tests (No bin value)
                    $display("End of tests.");
                end
                default: ;
            endcase
            counter = counter + 1;  // Move to the next test case
        end
    end

endmodule

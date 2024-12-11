
`timescale 1ns/1ps

module tb_bin2bdcN();

    // Parameters for the DUT (Design Under Test)
    parameter BIN_WIDTH = 13;
    parameter BCD_DIGITS = 4;

    // Testbench signals
    reg clk;
    reg reset;
    reg enable;
    reg [BIN_WIDTH-1:0] bin;
    wire [(BCD_DIGITS * 4)-1:0] bcd_out;
    reg [(BCD_DIGITS * 4)-1:0] res;
    wire ready;
    integer counter = -1;

    localparam CLK_PERIOD = 10;

    // Instantiate the DUT (Design Under Test)
    bin2bdcN #(
        .BIN_WIDTH(13),
        .BCD_DIGITS(4)
    ) uut (
        .clk(clk),
        .reset(reset),
        .enable(enable),
        .bin(bin),
        .bcd(bcd_out),
        .ready(ready)
    );

    always #(CLK_PERIOD/2) clk=~clk;

    // Task to check if the result is correct
    task check_result;
        input [BIN_WIDTH-1:0] input_bin;       
        input [(BCD_DIGITS * 4)-1:0] expected_bcd; 
        input result_ready;                     
        begin
            if (result_ready) begin
                if (expected_bcd == bcd_out) begin
                    $display("Test Passed! Input: %d -> Expected BCD: %b -> Actual BCD: %b", input_bin, expected_bcd, bcd_out);
                end else begin
                    $display("Test Failed! Input: %d -> Expected BCD: %b -> Actual BCD: %b", input_bin, expected_bcd, bcd_out);
                end
            end
        end
    endtask


    task decimal_to_bcd;
        // Parameters
        input [BIN_WIDTH-1:0] decimal_num; // Input decimal number
        output reg [BCD_DIGITS*4-1:0] res1; // Output BCD (4 bits per digit)

        integer i, digit;
        reg [3:0] bcd_digit;  // 4-bit BCD digit
        reg [BIN_WIDTH-1:0] temp_decimal_num;  // Temporary variable to process decimal number
        begin
            // Initialize the output BCD value to 0
            res1 = 0;
            temp_decimal_num = decimal_num;

            // Process each decimal digit from right to left
            for (i = 0; i < BCD_DIGITS; i = i + 1) begin
                // Get the least significant decimal digit
                digit = temp_decimal_num % 10;
                bcd_digit = digit;  // Convert the decimal digit to 4-bit BCD

                // Shift the BCD digits to the left to make room for the new digit
                res1 = {bcd_digit, bcd_out[BCD_DIGITS*4-1:4]};  // Insert the new 4-bit BCD digit
                
                // Update the decimal number by removing the least significant digit
                temp_decimal_num = temp_decimal_num / 10;
            end
        end
    endtask



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
        enable = 1;

        #10;
        reset = 0;
        #10;

    end

    // Always block to check the ready signal and increment the counter
    always @(posedge clk) begin
        if (ready) begin
            // Increment the counter on each `ready` signal
            case(counter)
                -1: begin
                    bin = 0;  // Set bin value for test case 4
                end
                0: begin
                    res = 0;
                    decimal_to_bcd(0, res);
                    check_result(bin, res, ready);
                    bin = 13'd153;  // Set bin value for test case 1
                end
                1: begin
                    res = 0;
                    decimal_to_bcd(153, res);
                    check_result(bin, res, ready);  // Check if BCD output is correct for input 8'h99
                    bin = 13'd69;  // Set bin value for test case 2
                end
                2: begin
                    res = 0;
                    decimal_to_bcd(69, res);
                    $display("res: %b", res);
                    check_result(bin, res, ready);  // Check if BCD output is correct for input 8'h45
                    bin = 13'd255;  // Set bin value for test case 3
                end
                3: begin
                    res = 0;
                    decimal_to_bcd(bin, res);
                    check_result(bin, res, ready);  // Check if BCD output is correct for input 8'hFF
                    bin = 0;  // Set bin value for test case 4
                end
                4: begin
                    res = 0;
                    decimal_to_bcd(bin, res);
                    check_result(bin, res, ready);           // Check if BCD output is correct for input 8'h00
                    bin = 13'd171;  // Set bin value for test case 5
                end
                5: begin
                    res = 0;
                    decimal_to_bcd(bin, res);
                    check_result(bin, res, ready);  // Check if BCD output is correct for input 8'hAB
                    bin = 0100_0000_0000_1000;  // Set bin value for test case 6
                end
                6: begin
                    res = 0;
                    decimal_to_bcd(bin, res);
                    check_result(bin, res, ready);  // Check if BCD output is correct for input 8'hAB
                    bin = 13'd112604;
                end
                7: begin
                    res = 0;
                    decimal_to_bcd(bin, res);
                    check_result(bin, res, ready);  // Check if BCD output is correct for input 8'hAB
                end
                default: ;
            endcase
            counter = counter + 1;  // Move to the next test case
        end
    end
endmodule

module decimal_to_bcd_tb;

    // Parameters
    parameter BIN_WIDTH = 8;           // Width of the input decimal number (in bits)
    parameter BCD_DIGITS = 3;          // Number of decimal digits (BCD digits) in the output

    // Inputs and outputs
    reg [BIN_WIDTH-1:0] decimal_num;  // Input decimal number
    reg [BCD_DIGITS*4-1:0] bcd_out;   // Output BCD result

    // Task to convert decimal number to BCD
    task decimal_to_bcd;
        // Parameters
        parameter BIN_WIDTH = 8;           // Width of the input decimal number (in bits)
        parameter BCD_DIGITS = 3;          // Number of decimal digits (BCD digits) in the output
        input [BIN_WIDTH-1:0] decimal_num; // Input decimal number
        output reg [BCD_DIGITS*4-1:0] bcd_out; // Output BCD (4 bits per digit)

        integer i, digit;
        reg [3:0] bcd_digit;  // 4-bit BCD digit
        reg [BIN_WIDTH-1:0] temp_decimal_num;  // Temporary variable to process decimal number
        begin
            // Initialize the output BCD value to 0
            bcd_out = 0;
            temp_decimal_num = decimal_num;

            // Process each decimal digit from right to left
            for (i = 0; i < BCD_DIGITS; i = i + 1) begin
                // Get the least significant decimal digit
                digit = temp_decimal_num % 10;
                bcd_digit = digit;  // Convert the decimal digit to 4-bit BCD

                // Shift the BCD digits to the left to make room for the new digit
                bcd_out = {bcd_digit, bcd_out[BCD_DIGITS*4-1:4]};  // Insert the new 4-bit BCD digit
                
                // Update the decimal number by removing the least significant digit
                temp_decimal_num = temp_decimal_num / 10;
            end
        end
    endtask

    // Testbench
    initial begin
        // Test with decimal number 153
        decimal_num = 153;
        #10;  // Wait for the conversion
        decimal_to_bcd(decimal_num, bcd_out);  // Call the task
        $display("BCD Output for %d: %b", decimal_num, bcd_out);  // Expected: 0001_0101_0011

        // Test with decimal number 255
        decimal_num = 255;
        #10;
        decimal_to_bcd(decimal_num, bcd_out);  // Call the task
        $display("BCD Output for %d: %b", decimal_num, bcd_out);  // Expected: 0010_0101_0101

        // Test with decimal number 9
        decimal_num = 9;
        #10;
        decimal_to_bcd(decimal_num, bcd_out);  // Call the task
        $display("BCD Output for %d: %b", decimal_num, bcd_out);  // Expected: 0000_1001

        // Test with decimal number 123
        decimal_num = 123;
        #10;
        decimal_to_bcd(decimal_num, bcd_out);  // Call the task
        $display("BCD Output for %d: %b", decimal_num, bcd_out);  // Expected: 0001_0010_0011

        // Test with decimal number 7
        decimal_num = 7;
        #10;
        decimal_to_bcd(decimal_num, bcd_out);  // Call the task
        $display("BCD Output for %d: %b", decimal_num, bcd_out);  // Expected: 0000_0111

        // Test with decimal number 0
        decimal_num = 0;
        #10;
        decimal_to_bcd(decimal_num, bcd_out);  // Call the task
        $display("BCD Output for %d: %b", decimal_num, bcd_out);  // Expected: 0000_0000
    end
endmodule
//tshjis
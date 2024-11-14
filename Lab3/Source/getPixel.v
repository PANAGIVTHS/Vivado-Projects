module getPixel(
    input clk,                   // Clock signal
    input reset,                 // Reset signal
    input [6:0] line,            // Line number (0 to 95 for screen, 7 bits)
    input [6:0] offset,          // Pixel offset (0 to 127 for screen, 7 bits)
    output [2:0] pixel_data,     // 3-bit combined pixel data (RGB)
    output valid_pixel           // Signal to indicate pixel data validity
);

    // Adjusted address and validity logic to handle 256-bit BRAM rows
    wire [5:0] bram_row;         // 13-bit BRAM row for addressing (half as many rows needed)
    wire [7:0] bram_offset;       // Adjusted offset within the BRAM row (0 to 255)
    wire green_val, red_val, blue_val; // Color channel outputs

    // Calculate the BRAM row and offset within that row
    assign bram_row = line[6:1];  // Divide line by 2 for BRAM addressing
    assign bram_offset = {line[0], offset};          // Concatenate line LSB with offset

    // Instantiate the BRAM modules for red, green, and blue channels
    G_BRAM G_BRAM_inst (.clk(clk), .reset(reset), .read_enable(1'b1), .write_enable(2'b00), 
                        .reg_enable(1'b1), .address({bram_row, bram_offset}), .green_val(green_val));

    R_BRAM R_BRAM_inst (.clk(clk), .reset(reset), .read_enable(1'b1), .write_enable(2'b00), 
                        .reg_enable(1'b1), .address({bram_row, bram_offset}), .red_val(red_val));

    B_BRAM B_BRAM_inst (.clk(clk), .reset(reset), .read_enable(1'b1), .write_enable(2'b00), 
                        .reg_enable(1'b1), .address({bram_row, bram_offset}), .blue_val(blue_val));

    // Combine RGB values into a single 3-bit pixel data output
    assign pixel_data = {red_val, green_val, blue_val};

    // Set valid_pixel high only if within screen dimensions (96x128)
    assign valid_pixel = (line < 96 && offset < 128);

endmodule

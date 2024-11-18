/*
    Pixel Aquisition Processing Unit (PAPUnit) module for the VGA controller.
    This module is responsible for fetching pixel data from the BRAM modules and
    caching the data for faster access. The module also outputs the pixel data
    and a signal to indicate the validity of the pixel data.

    Inputs:
    - clk: Clock signal
    - reset: Reset signal
    - line: Line number (0 to 95 for screen, 7 bits)
    - offset: Pixel offset (0 to 127 for screen, 7 bits)
    Outputs:
    - pixel_data: 3-bit combined pixel data (RGB)
    - valid_pixel: Signal to indicate pixel data validity
*/

module PAPUnit(
    input clk,                   // Clock signal
    input reset,                 // Reset signal
    input enable,                // Enable signal
    input [6:0] line,            // Line number (0 to 95 for screen, 7 bits)
    input [6:0] offset,          // Pixel offset (0 to 127 for screen, 7 bits)
    output [2:0] pixel_data,     // 3-bit combined pixel data (RGB)
    output valid_pixel           // Signal to indicate pixel data validity
);

    // Chache for storing recently accessed pixel addresses and data (18-bit total)
    reg [9:0] cache_address; // Cached address (14 bits for {line, offset})
    reg [2:0] cache_pixel_data [15:0]; // Pixel data in cache (3-bit RGB data)
    integer i;
    wire cache_hit;
    // BRAM signals
    wire [5:0] bram_row;
    wire [7:0] bram_offset;
    wire [15:0] green_val, red_val, blue_val;

    // Cache hit detection (only 1-entry, so we can use a single bit)
    // Calculate BRAM row and offset
    assign bram_row = line[6:1];  // Divide line by 2 for BRAM addressing
    assign bram_offset = {line[0], offset}; // Concatenate line LSB with offset

    assign cache_hit = (cache_address == {bram_row, bram_offset[7:4]});

    // Fetch pixel data from Cache if there is a hit
    assign pixel_data = cache_hit ? cache_pixel_data[bram_offset[3:0]] : {red_val[bram_offset[3:0]], green_val[bram_offset[3:0]], blue_val[bram_offset[3:0]]};

    // Instantiate the BRAM modules for red, green, and blue channels
    G_BRAM G_BRAM_inst (.clk(clk), .reset(reset), .read_enable(!cache_hit && enable),
                        .write_enable(2'b00), .reg_enable(1'b1), 
                        .address({bram_row, bram_offset}), .green_val(green_val));

    R_BRAM R_BRAM_inst (.clk(clk), .reset(reset), .read_enable(!cache_hit && enable),
                        .write_enable(2'b00), .reg_enable(1'b1), 
                        .address({bram_row, bram_offset}), .red_val(red_val));

    B_BRAM B_BRAM_inst (.clk(clk), .reset(reset), .read_enable(!cache_hit && enable),
                        .write_enable(2'b00), .reg_enable(1'b1), 
                        .address({bram_row, bram_offset}), .blue_val(blue_val));

    // Cache the data into the Cache if there's a cache miss
    always @ (posedge clk or posedge reset) begin
        if (reset) begin
            cache_address <= 16'hffff; // Set the address to an invalid value
        end else if (!cache_hit && enable) begin
            // Store the new address in the Cache
            cache_address <= {bram_row, bram_offset[7:4]}; 

            // Store the pixel data in the Cache            
            for (i = 0; i < 16; i = i + 1) begin
                cache_pixel_data[i] <= {red_val[i], green_val[i], blue_val[i]};
            end
        end
    end

    // Set valid_pixel to high only if within screen dimensions
    assign valid_pixel = (line < 96 && offset < 128);

endmodule



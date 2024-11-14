
module getPixelTLB(
    input clk,                   // Clock signal
    input reset,                 // Reset signal
    input [6:0] line,            // Line number (0 to 95 for screen, 7 bits)
    input [6:0] offset,          // Pixel offset (0 to 127 for screen, 7 bits)
    output [2:0] pixel_data,     // 3-bit combined pixel data (RGB)
    output valid_pixel           // Signal to indicate pixel data validity
);

    // TLB for storing recently accessed pixel addresses and data (18-bit total)
    reg [9:0] tlb_address; // TLB address cache (14 bits for {line, offset})
    reg [2:0] tlb_pixel_data [15:0]; // TLB pixel data cache (3-bit RGB data)
    reg cache_hit;
    integer i;


    // BRAM signals
    wire [5:0] bram_row;
    wire [7:0] bram_offset;
    wire [15:0] green_val, red_val, blue_val;

    // TLB hit detection (only 1-entry, so we can use a single bit)
    // Calculate BRAM row and offset
    assign bram_row = line[6:1];  // Divide line by 2 for BRAM addressing
    assign bram_offset = {line[0], offset}; // Concatenate line LSB with offset

    // Check if address is in the TLB (hit or miss)
    // on miss give 1 cycle time to fetch data from BRAM
    always @ (posedge clk or posedge reset) begin 
        if (reset) begin
            cache_hit <= 0;
        end else begin
            cache_hit <= (tlb_address == {bram_row, bram_offset[7:4]});
        end
    end

    // Fetch pixel data from TLB if there is a hit
    assign pixel_data = cache_hit ? tlb_pixel_data[bram_offset[3:0]] : {red_val[bram_offset[3:0]], green_val[bram_offset[3:0]], blue_val[bram_offset[3:0]]};

// unchanged
    // Instantiate the BRAM modules for red, green, and blue channels
    G_BRAM G_BRAM_inst (.clk(clk), .reset(reset), .read_enable(!cache_hit),
                        .write_enable(2'b00), .reg_enable(1'b1), 
                        .address({bram_row, bram_offset}), .green_val(green_val));

    R_BRAM R_BRAM_inst (.clk(clk), .reset(reset), .read_enable(!cache_hit),
                        .write_enable(2'b00), .reg_enable(1'b1), 
                        .address({bram_row, bram_offset}), .red_val(red_val));

    B_BRAM B_BRAM_inst (.clk(clk), .reset(reset), .read_enable(!cache_hit),
                        .write_enable(2'b00), .reg_enable(1'b1), 
                        .address({bram_row, bram_offset}), .blue_val(blue_val));
// unchanged

    // Cache the data into the TLB if there's a cache miss
    always @ (posedge clk or posedge reset) begin
        if (reset) begin
            tlb_address <= 16'hffff; // Set the address to an invalid value
        end else if (!cache_hit) begin
            // Store the new address in the TLB
            tlb_address <= {bram_row, bram_offset[7:4]}; 

            // Store the pixel data in the TLB            
            for (i = 0; i < 16; i = i + 1) begin
                tlb_pixel_data[i] <= {red_val[i], green_val[i], blue_val[i]};
            end
        end
    end

    // Set valid_pixel to high only if within screen dimensions
    assign valid_pixel = (line < 96 && offset < 128);

endmodule

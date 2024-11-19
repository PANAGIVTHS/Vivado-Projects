/*
    The Pixel Aquisition Processing Unit (PAPUnit) is responsible for reading pixel data from the VRAM
    and combining the RGB values into a single 3-bit pixel data output. The PAPUnit module interfaces 
    with the VRAM modules for the red, green, and blue color channels to read the pixel data based on 
    the line and offset inputs. The PAPUnit also checks if the pixel address is within the screen 
    image (in BRAM) dimensions (96x128) and sets the valid_pixel signal accordingly.

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
    input [6:0] line,            // Line number (0 to 95 for screen, 7 bits)
    input [6:0] offset,          // Pixel offset (0 to 127 for screen, 7 bits)
    output [2:0] pixel_data,     // 3-bit combined pixel data (RGB)
    output valid_pixel           // Signal to indicate pixel data validity
);

    // Adjusted address to handle 256-bit BRAM rows
    wire [5:0] bram_row;      
    wire [7:0] bram_offset;
    wire green_val, red_val, blue_val;
    reg row, off;
    
    // Calculate the BRAM row and offset within that row
    assign bram_row = line[6:1];              // Divide line by 2 for BRAM addressing
    assign bram_offset = {line[0], offset};   // Concatenate line LSB with offset
    
    always @(posedge clk) begin
        row <= bram_row;
        off <= bram_offset;
    end
    
    // Instantiate the BRAM modules for red, green, and blue channels
    G_BRAM G_BRAM_inst (.clk(clk), .reset(reset), .read_enable(1'b1), .write_enable(2'b00), 
                        .reg_enable(1'b1), .address({row, off}), .green_val(green_val));

    R_BRAM R_BRAM_inst (.clk(clk), .reset(reset), .read_enable(1'b1), .write_enable(2'b00), 
                        .reg_enable(1'b1), .address({row, off}), .red_val(red_val));

    B_BRAM B_BRAM_inst (.clk(clk), .reset(reset), .read_enable(1'b1), .write_enable(2'b00), 
                        .reg_enable(1'b1), .address({row, off}), .blue_val(blue_val));

    assign pixel_data = {red_val, green_val, blue_val};

    // Set valid_pixel when reading valid pixel from BRAM
    assign valid_pixel = (line < 96 && offset < 128);

endmodule

module PAPUnit(
    input clk,                   // Clock signal
    input reset,                 // Reset signal
    input [6:0] line,            // Line number (0 to 95 for screen, 7 bits)
    input [6:0] offset,          // Pixel offset (0 to 127 for screen, 7 bits)
    output [2:0] pixel_data,     // 3-bit combined pixel data (RGB)
    output valid_pixel           // Signal to indicate pixel data validity
);

    // Registers for stable BRAM address generation
    reg [5:0] bram_row;      
    reg [7:0] bram_offset;
    wire green_val, red_val, blue_val;

    // Synchronous generation of BRAM row and offset. Why is it needed tho?
    always @(posedge clk) begin
        if (reset) begin
            bram_row <= 0;
            bram_offset <= 0;
        end else begin
            bram_row <= line[6:1];               // Divide line by 2 for BRAM addressing
            bram_offset <= {line[0], offset};    // Concatenate line LSB with offset
        end
    end

    // Instantiate the BRAM modules for red, green, and blue channels
    G_BRAM G_BRAM_inst (
        .clk(clk),
        .reset(reset),
        .read_enable(1'b1),
        .write_enable(2'b00),
        .reg_enable(1'b0),
        .address({bram_row, bram_offset}), // Stable address generation
        .green_val(green_val)
    );

    R_BRAM R_BRAM_inst (
        .clk(clk),
        .reset(reset),
        .read_enable(1'b1),
        .write_enable(2'b00),
        .reg_enable(1'b0),
        .address({bram_row, bram_offset}), // Stable address generation
        .red_val(red_val)
    );

    B_BRAM B_BRAM_inst (
        .clk(clk),
        .reset(reset),
        .read_enable(1'b1),
        .write_enable(2'b00),
        .reg_enable(1'b0),
        .address({bram_row, bram_offset}), // Stable address generation
        .blue_val(blue_val)
    );

    assign pixel_data = {red_val, green_val, blue_val};

    // Set valid_pixel when reading valid pixel from BRAM
    assign valid_pixel = (line < 96 && offset < 128);

endmodule


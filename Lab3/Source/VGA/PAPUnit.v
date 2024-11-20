/*
    The Pixel Acquisition Processing Unit (PAPUnit) module is responsible for processing the pixel data from the VRAMs and outputting the RGB values.
    It uses the line and offset signals to generate the BRAM address for the red, green, and blue channels. The module uses the G_BRAM, R_BRAM, and
    B_BRAM modules to read the pixel data from the BRAMs. The PAPUnit will output the combined pixel data (RGB) and a signal to indicate the pixel data
    validity. The module will only output valid pixel data when the line and offset signals are within the BRAM (file) boundaries.

    *Notice: The BRAM modules are instantiated in the PAPUnit module, which has to be enabled for them to also be enabled.
    !Danger: Do not concatenate the pixel data outside the always block. This will cause Timing Violaions.
    
    Inputs:
    - clk: Clock signal.
    - reset: Reset signal.
    - enable: Enable signal to start the PAPUnit.
    - line: Line number (0 to 95 for BRAM, 7 bits).
    - offset: Pixel offset (0 to 127 for BRAM, 7 bits).

    Outputs:
    - pixel_data: 3-bit combined pixel data (RGB).
    - valid_pixel: Signal to indicate pixel data validity.
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

    reg [13:0] address;
    wire green_val, red_val, blue_val;

    // Synchronous generation of BRAM row and offset. Why is it needed tho?
    always @(posedge clk) begin
        if (reset) begin
            address <= 0;
        end else if (enable) begin
            address <= {line, offset};
        end
    end

    // Instantiate the BRAM modules for red, green, and blue channels
    G_BRAM G_BRAM_inst (
        .clk(clk),
        .reset(reset),
        .read_enable(enable),
        .write_enable(2'b00),
        .reg_enable(1'b1),
        .address(address), 
        .green_val(green_val)
    );

    R_BRAM R_BRAM_inst (
        .clk(clk),
        .reset(reset),
        .read_enable(enable),
        .write_enable(2'b00),
        .reg_enable(1'b1),
        .address(address), 
        .red_val(red_val)
    );

    B_BRAM B_BRAM_inst (
        .clk(clk),
        .reset(reset),
        .read_enable(enable),
        .write_enable(2'b00),
        .reg_enable(1'b1),
        .address(address),
        .blue_val(blue_val)
    );

    assign pixel_data = {red_val, green_val, blue_val};

    // Set valid_pixel when reading valid pixel from BRAM
    assign valid_pixel = (line < 96 && offset < 128);

endmodule


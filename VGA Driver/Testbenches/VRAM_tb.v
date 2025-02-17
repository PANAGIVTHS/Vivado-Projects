`timescale 1ns/10ps

module VRAM_tb;
    reg clk;
    reg reset;

    localparam CLK_PERIOD = 10;
    always #(CLK_PERIOD/2) clk=~clk;
    wire [2:0] pixel_val;
    reg enable, data_src;
    wire valid_pixel;
    reg [6:0] line, offset;

    PAPUnit #(.HOLD_FRAME(15), .BITS(4))
        PAPUnit_inst (.clk(clk), .reset(reset), .enable(enable), .data_src(data_src), .line(line), .offset(offset), .pixel_data(pixel_val), .valid_pixel(valid_pixel));

    // Task to check if a pixel is valid and print the pixel value and address accordingly
    task check_pixel;
        begin
            if (valid_pixel) begin
                // Print pixel address and its RGB value
                $display("Pixel address: [%d,%d] -> RGB value: %b", line, offset, pixel_val);
            end
            else begin
                // Inform that the pixel is out of bounds
                $display("Pixel address: [%d,%d] is out of bounds", line, offset);
            end
        end
    endtask

    initial begin
        #100
        clk = 0;
        reset = 0;
        enable = 1;
        data_src = 0;
        #(CLK_PERIOD*10) reset = 1;
        #(CLK_PERIOD*10) reset = 0;

        // Test PAPU module

        // Test case 1: valid pixel
        line = 7'b0000000;
        offset = 7'b0000000;
        #(CLK_PERIOD*10) check_pixel;
        
        line = 7'b0000000;
        offset = 7'b0000001;
        #(CLK_PERIOD*10) check_pixel;
        
        line = 7'b0000000;
        offset = 7'b0000010;
        #(CLK_PERIOD*10) check_pixel;
        
        // Test case 4: Last bit
        line = 7'b1011111;    // Last line (95 in decimal)
        offset = 7'b1111111;  // Last offset (127 in decimal)
        #(CLK_PERIOD*10) check_pixel;

        // Test case 3: out of bounds pixel        
        line = 7'b1100000;    // Last line (96 in decimal)
        offset = 7'b0000000;  // Last offset (127 in decimal)
        #(CLK_PERIOD*10) check_pixel;

        line = 7'b1100000;
        offset = 7'b1000000;
        #(CLK_PERIOD*10) check_pixel;
    end
endmodule
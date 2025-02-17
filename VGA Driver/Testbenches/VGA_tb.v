`timescale 1ns/10ps

module VGA_tb();
    reg clk;
    reg reset;
    wire [2:0] pixel_data;
    wire VGA_RED, VGA_GREEN, VGA_BLUE, VGA_HSYNC, VGA_VSYNC;
    reg enable;
    
    localparam CLK_PERIOD = 10;
    always #(CLK_PERIOD/2) clk=~clk;

    // Instantiate the VGA controller with active sig set to 0
    VGAController VGA_inst(reset, clk, enable, 1'b1, 1'b1, 1'b0, VGA_RED, VGA_GREEN, VGA_BLUE, VGA_HSYNC, VGA_VSYNC);

    assign pixel_data = {VGA_RED, VGA_GREEN, VGA_BLUE};

    initial begin
        #100
        clk = 0;
        reset = 0;
        enable = 1;
        #1000
        #(CLK_PERIOD*1000) reset = 1;
        #(CLK_PERIOD*30000) reset = 0;

    end
endmodule
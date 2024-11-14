module VRAM (
    input clk,
    input reset,
    output wire [2:0] pixel_val
);
    wire [13:0] cur_pixel;
    wire green_val; 
    wire red_val; 
    wire blue_val; 

    pixel_counter pixel_counter_inst (.clk(clk), .reset(reset), .enable(1'b1), .cur_pixel(cur_pixel));
    
    G_BRAM G_BRAM_inst (.clk(clk), .reset(reset), .read_enable(1'b1), .write_enable(2'b0), .reg_enable(1'b1), .address(cur_pixel),.green_val(green_val));
    R_BRAM R_BRAM_inst (.clk(clk), .reset(reset), .read_enable(1'b1), .write_enable(2'b0), .reg_enable(1'b1), .address(cur_pixel),.red_val(red_val));
    B_BRAM B_BRAM_inst (.clk(clk), .reset(reset), .read_enable(1'b1), .write_enable(2'b0), .reg_enable(1'b1), .address(cur_pixel),.blue_val(blue_val));

    assign pixel_val[2] = red_val;
    assign pixel_val[1] = green_val;
    assign pixel_val[0] = blue_val;
endmodule
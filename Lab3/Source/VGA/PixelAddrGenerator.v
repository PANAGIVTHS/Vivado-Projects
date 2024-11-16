

module PixelAddrGenerator (input clk, input reset, input [9:0] HPIXEL, input [18:0] VPIXEL, output reg [6:0] xPixelAddr, output reg [6:0] yPixelAddr);
    localparam H_DISP_START = 144;
    localparam V_DISP_START = 1600 + 23200;
    localparam OUT_OF_BOUNDS_ADDR = 7'b1111111;
    localparam VGA_WIDTH = 640;
    localparam VGA_HEIGHT = 480;

   // Temporary wires to hold intermediate subtraction results
    wire [9:0] tempHPIXELResult;  // Adjust width as needed for subtraction
    wire [18:0] tempVPIXELResult;  // Adjust width as needed for subtraction

    // Perform subtraction and store the result in temporary variables
    assign tempHPIXELResult = HPIXEL - H_DISP_START;
    assign tempVPIXELResult = VPIXEL - V_DISP_START;

    // Assign the lower 7 bits to the xPixelAddr and yPixelAddr
    assign xPixelAddr = tempHPIXELResult[6:0];
    assign yPixelAddr = tempVPIXELResult[6:0];
endmodule
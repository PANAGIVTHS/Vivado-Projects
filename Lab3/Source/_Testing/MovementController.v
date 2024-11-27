module MovementController #(
    parameter INIT_X = 7'b0,        // Initial X position
    parameter INIT_Y = 7'b0,        // Initial Y position
    parameter INIT_X_VEL = 7'b0,    // Initial X velocity
    parameter INIT_Y_VEL = 7'b0,    // Initial Y velocity
    parameter WIDTH = 7'b0,        // Width of the object
    parameter HEIGHT = 7'b0,        // Height of the object
    parameter FRAMES_TO_UPDATE = 60  // lower = faster velocity UP TO 2,576
)(
    input clk,                      // Clock input
    input reset,                    // Reset signal
    input enable,                   // Enable signal
    input isCollidable,             // Prevents movement if high
    output reg [6:0] xPos,          // Current X position
    output reg [6:0] yPos           // Current Y position
);

    // Internal velocity registers
    reg signed [7:0] xVel;
    reg signed [7:0] yVel;
    
    // Screen dimensions
    localparam SCREEN_WIDTH = 128;
    localparam SCREEN_HEIGHT = 96;
    localparam TICKS_TO_UPDATE = FRAMES_TO_UPDATE * 416750;

    GUCounter #(.BITS(30)) GameTickCounter (.clk(clk), .reset_in({reset, gameTicks == TICKS_TO_UPDATE - 1}), .enable(enable), .count(gameTicks), .overflow());
    assign update = gameTicks == TICKS_TO_UPDATE - 10;

    always @(posedge clk) begin
        if (reset) begin
            // Reset positions and velocities to their initial values
            xPos <= INIT_X;
            yPos <= INIT_Y;
            xVel <= INIT_X_VEL;
            yVel <= INIT_Y_VEL;
        end else if (isCollidable && update) begin
            // Check for boundary collisions and invert velocity if out of bounds
            if (xPos + WIDTH >= SCREEN_WIDTH && xVel > 0) begin
                xVel <= -xVel; // Bounce back when hitting the right boundary
            end else if (xPos <= 0 && xVel < 0) begin
                xVel <= -xVel; // Bounce back when hitting the left boundary
            end

            if (yPos + HEIGHT >= SCREEN_HEIGHT && yVel > 0) begin
                yVel <= -yVel; // Bounce back when hitting the bottom boundary
            end else if (yPos <= 0 && yVel < 0) begin
                yVel <= -yVel; // Bounce back when hitting the top boundary
            end

            // Update positions based on velocity
            xPos <= xPos + xVel;
            yPos <= yPos + yVel;
        end
    end
endmodule

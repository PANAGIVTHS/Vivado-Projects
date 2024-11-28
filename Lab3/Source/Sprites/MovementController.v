/*
    This module is responsible for controlling the movement of a singular sprite on the screen.
    It takes in some initial values for the sprite's position and velocity, as well as the width
    and height of the sprite. IsCollidable is a signal that can be used to prevent the sprite from
    moving. The module will update the sprite's position every FRAMES_TO_UPDATE frames, and will
    invert the sprite's velocity if it hits the boundaries of the screen. The sprite's position
    is output as xPos and yPos.

    Inputs:
        - clk: Clock input
        - reset: Reset signal
        - enable: Enable signal
        - isCollidable: Prevents movement if high

    Outputs:
        - xPos: Current X position
        - yPos: Current Y position
*/

module MovementController #(
    parameter INIT_X = 7'b0,        // Initial X position
    parameter INIT_Y = 7'b0,        // Initial Y position
    parameter INIT_X_VEL = 7'b0,    // Initial X velocity
    parameter INIT_Y_VEL = 7'b0,    // Initial Y velocity
    parameter WIDTH = 7'b0,        // Width of the object
    parameter HEIGHT = 7'b0,        // Height of the object
    parameter FRAMES_TO_UPDATE = 60  // lower = faster velocity UP TO 2,576 minimum value of 3
)(
    input clk,                      // Clock input
    input reset,                    // Reset signal
    input enable,                   // Enable signal
    input isCollidable,             // Prevents movement if high
    output reg [6:0] xPos,          // Current X position
    output reg [6:0] yPos           // Current Y position
);

    // Internal velocity registerss
    reg signed [7:0] xVel;
    reg signed [7:0] yVel;
    
    // Screen dimensions
    localparam SCREEN_WIDTH = 128;
    localparam SCREEN_HEIGHT = 96;
    localparam TICKS_TO_UPDATE = FRAMES_TO_UPDATE * 416750;
    wire [29:0] gameTicks;
    wire update;
    reg [29:0] ticks_passed;

    GUCounter #(.BITS(30)) GameTickCounter (.clk(clk), .reset_in({reset, ticks_passed == TICKS_TO_UPDATE - 1}), .enable(enable), .count(gameTicks), .overflow());
    assign update = ticks_passed == TICKS_TO_UPDATE - 2;
    
    // Prevent violations by large adder
    always @(posedge clk) begin
        if (reset) begin
            ticks_passed <= 0;
        end else begin 
            ticks_passed <= gameTicks;
        end
    end

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

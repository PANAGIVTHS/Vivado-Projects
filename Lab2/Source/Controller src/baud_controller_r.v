
/*
    This module is a baud rate controller that generates a sample enable signal for a UART module.
    It uses a counter to count the number of clock cycles and generates a sample enable signal when the counter reaches the baud rate limit.
    The baud rate limit is calculated based on the baud rate selection input and the clock frequency.

    *Notice* this module will keep counting even if the controller is disabled. If the Enable_controller signal isn't set up correctly.

    Inputs:
    - reset: Reset signal
    - clk: Clock signal
    - baud_select: Baud rate selection
    - Enable_controller: Enable signal for the controller (start counting from 0)

    Outputs:
    - sample_ENABLE: Sample enable signal
*/

module baud_controller_r (reset, clk, baud_select, sample_ENABLE, Enable_controller);
    input reset, clk;
    input [2:0] baud_select;
    output reg sample_ENABLE;
    input Enable_controller;

    reg [31:0] counter;
    reg [31:0] baud_limit;

    localparam BAUD3 = 3'b000, BAUD12 = 3'b001, BAUD48 = 3'b010, BAUD96 = 3'b011;
    localparam BAUD192 = 3'b100, BAUD384 = 3'b101, BAUD576 = 3'b110, BAUD1152 = 3'b111;

    // Values for baud rate limit calculated for 100MHz clock
    always @(*) begin
        case(baud_select)
            BAUD3: baud_limit = 32'd20833; //20833
            BAUD12: baud_limit = 32'd5208;
            BAUD48: baud_limit = 32'd1302;
            BAUD96: baud_limit =  32'd651;
            BAUD192: baud_limit = 32'd325;
            BAUD384: baud_limit = 32'd163;
            BAUD576: baud_limit = 32'd109;
            BAUD1152: baud_limit = 32'd54;
            default: baud_limit = 32'd0;
        endcase
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            counter <= 0;
            sample_ENABLE <= 0;
        end else begin
            if (Enable_controller) begin
                counter <= 0;
                sample_ENABLE <= 0;
            end
            else begin
                // In C you would do >= here we do == to prevent extra logic
                if (counter == baud_limit) begin
                    counter <= 0;
                    sample_ENABLE <= 1;
                end else begin
                    counter <= counter + 1;
                    sample_ENABLE <= 0;
                end
            end
        end
    end

endmodule

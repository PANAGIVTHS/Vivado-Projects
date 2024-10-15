module FourDigitLEDdriver(reset, clk, an3, an2, an1, an0, a, b, c, d, e, f, g, dp, counter, char);
    input clk, reset, button;
    output an3, an2, an1, an0;
    output a, b, c, d, e, f, g, dp;
    output button_debounced;
    assign dp = 1'b0;
    reg an3, an2, an1, an0;
    output reg [3:0] counter;
    output reg [3:0] char;
    wire new_clk;
    
    reg reset_sync, reset_prime;
    parameter AN0_LOW = 4'b0010;
    parameter AN1_LOW = 4'b0110;
    parameter AN2_LOW = 4'b1010;
    parameter AN3_LOW = 4'b1110;
    parameter AN0_SETUP_BUS = 4'b0000;
    parameter AN1_SETUP_BUS = 4'b0011;
    parameter AN2_SETUP_BUS = 4'b0111;
    parameter AN3_SETUP_BUS = 4'b1011;

    MMCME2_BASE #(
       .CLKFBOUT_MULT_F(6.0),     // Multiply value for all CLKOUT (2.000-64.000).
       .CLKIN1_PERIOD(10.0),      // Input clock period for 100 MHz clock.
       .CLKOUT0_DIVIDE_F(120.0),  // Divide value for CLKOUT0 to achieve 5 MHz.
       .DIVCLK_DIVIDE(1)         // No division on the feedback path.
    )
    MMCME2_BASE_inst (
       .CLKOUT0(new_clk),     // 1-bit output: 5 MHz clock
       .CLKIN1(clk)       // 1-bit input: 100 MHz input clock
    );

    LEDdecoder LEDdecoder_inst (.char(char), .LED({a, b, c, d, e, f, g}));
    debounce debounce_inst (.clk(clk), .reset(reset_sync), .button(button), .button_debounced(button_debounced));

    always@(posedge clk) begin
        reset_prime <= reset;
    end

    always@(posedge clk) begin
        reset_sync <= reset_prime;
    end
    
    always @(posedge new_clk or posedge reset_sync) begin
        if (reset_sync == 1'b1) begin 
            counter = 4'b0000;
        end else begin
            counter = counter + 4'b0001;
        end
    end

    always @(counter) begin
        case (counter)
            AN0_SETUP_BUS: begin
                char = 4'b0000;
            end
            4'b0001: begin
                char = 4'b0000;
            end
            4'b0010: begin
                char = 4'b0000;
            end
            AN1_SETUP_BUS: begin
                char = 4'b0001;
            end
            4'b0100: begin
                char = 4'b0001;
            end
            4'b0101: begin
                char = 4'b0001;
            end
            AN2_SETUP_BUS: begin
                char = 4'b0010;
            end
            4'b1000: begin
                char = 4'b0010;
            end
            4'b1001: begin
                char = 4'b0010;
            end
            AN3_SETUP_BUS: begin
                char = 4'b0011;
            end
            4'b1110: begin
                char = 4'b0011;
            end
            4'b1111: begin
                char = 4'b0011;
            end
        endcase
    end

    always @(counter) begin
        case (counter)
            AN0_LOW: begin
                an0 = 1'b0;
                an1 = 1'b1;
                an2 = 1'b1;
                an3 = 1'b1;
            end
            AN1_LOW: begin
                an0 = 1'b1;
                an1 = 1'b0;
                an2 = 1'b1;
                an3 = 1'b1;
            end
            AN2_LOW: begin
                an0 = 1'b1;
                an1 = 1'b1;
                an2 = 1'b0;
                an3 = 1'b1;
            end
            AN3_LOW: begin
                an0 = 1'b1;
                an1 = 1'b1;
                an2 = 1'b1;
                an3 = 1'b0;
            end
            default: begin
                an0 = 1'b1;
                an1 = 1'b1;
                an2 = 1'b1;
                an3 = 1'b1;
            end
        endcase
    end
endmodule

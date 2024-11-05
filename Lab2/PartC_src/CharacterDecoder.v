
module CharacterDecoder (input clk, input [7:0] appended_byte, input append_sig, input [3:0] counter, output reg [7:0] char, input reset);
    reg [7:0] shift_reg [3:0];
    reg [1:0] shift_times;
    
    parameter AN0_SETUP_BUS = 4'b0010;
    parameter AN1_SETUP_BUS = 4'b0110;
    parameter AN2_SETUP_BUS = 4'b1010;
    parameter AN3_SETUP_BUS = 4'b1110;
    
    // Initialize memory
    always @(posedge clk or posedge reset) begin
        // Add 3 spaces to make the transition smoother 
        if (reset) begin
            shift_reg[0] <= 4'b1011; // -
            shift_reg[1] <= 4'b1011; // -
            shift_reg[2] <= 4'b1011; // -
            shift_reg[3] <= 4'b1011; // -
        end else begin
            shift_times <= append_sig ? 2'b10 : shift_times;            
            // Shift memory
            if (shift_times != 0) begin
                shift_reg[0] = (shift_times == 2'b10) ? appended_byte[7:3] : appended_byte[3:0];
                shift_reg[1] <= shift_reg[0];
                shift_reg[2] <= shift_reg[1];
                shift_reg[3] <= shift_reg[2];
            end
        end
    end

    always @(counter) begin
        case (counter)

            4'b0000: char = shift_reg[0];
            4'b0001: char = shift_reg[0];
            AN0_SETUP_BUS: char = shift_reg[0];
            4'b0011: char = shift_reg[0];
            
            4'b0100: char = shift_reg[1];
            4'b0101: char = shift_reg[1];
            AN1_SETUP_BUS: char = shift_reg[1];
            4'b0111: char = shift_reg[1];
            
            4'b1000: char = shift_reg[2];
            4'b1001: char = shift_reg[2];
            AN2_SETUP_BUS: char = shift_reg[2];
            4'b1011: char = shift_reg[2];
            
            4'b1100: char = shift_reg[3];
            4'b1101: char = shift_reg[3];
            AN3_SETUP_BUS: char = shift_reg[3];
            4'b1111: char = shift_reg[3];

        endcase
    end
endmodule
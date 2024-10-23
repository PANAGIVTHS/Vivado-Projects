
module CharacterDecoder (counter, char, reset);
    input [3:0] counter;
    input reset;
    output reg [3:0] char;
    reg [3:0] mem [22:0];
    
    parameter AN0_SETUP_BUS = 4'b0010;
    parameter AN1_SETUP_BUS = 4'b0110;
    parameter AN2_SETUP_BUS = 4'b1010;
    parameter AN3_SETUP_BUS = 4'b1110;
    


    // ----> + @button presses maybe NEDDED
    always @(counter) begin
        case (counter)
            
            4'b0000: char = 4'b1110;
            4'b0001: char = 4'b1110;
            AN0_SETUP_BUS: char = 4'b1110;
            4'b0011: char = 4'b1110;
            
            4'b0100: char = 4'b0001;
            4'b0101: char = 4'b0001;
            AN1_SETUP_BUS: char = 4'b0001;
            4'b0111: char = 4'b0001;
            
            4'b1000: char = 4'b0010;
            4'b1001: char = 4'b0010;
            AN2_SETUP_BUS: char = 4'b0010;
            4'b1011: char = 4'b0010;
            
            4'b1100: char = 4'b0011;
            4'b1101: char = 4'b0011;
            AN3_SETUP_BUS: char = 4'b0011;
            4'b1111: char = 4'b0011;
        endcase
    end
endmodule
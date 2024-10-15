
module LEDdecoder (input [3:0] char, output [6:0] LED);
    reg [6:0] LED;
    
    always @(char) begin
        case (char)
            4'b0000: LED = 7'b0000000; // 0:
            4'b0001: LED = 7'b0110000; // 1:
            4'b0010: LED = 7'b1101101; // 2:
            4'b0011: LED = 7'b1111001; // 3:
            4'b0100: LED = 7'b0110011; // 4:
            4'b0101: LED = 7'b1011011; // 5:
            4'b0110: LED = 7'b1011111; // 6:
            4'b0111: LED = 7'b1110000; // 7:
            4'b1000: LED = 7'b1111111; // 8:
            4'b1001: LED = 7'b1111011; // 9:
            4'b1010: LED = 7'b1110111; // A:
            4'b1011: LED = 7'b0011111; // b:
            4'b1100: LED = 7'b1001110; // C:
            4'b1101: LED = 7'b0111101; // d:
            4'b1110: LED = 7'b1001111; // E:
            4'b1111: LED = 7'b1000111; // F:
        endcase
    end
endmodule
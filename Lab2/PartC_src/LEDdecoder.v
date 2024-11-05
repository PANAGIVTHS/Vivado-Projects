
module LEDdecoder (input [3:0] char, output reg [6:0] LED);
    always @(char) begin
        case (char)
            4'b0000: LED = 7'b0000001; // 0: 0
            4'b0001: LED = 7'b1001111; // 1: 1
            4'b0010: LED = 7'b0010010; // 2: 2
            4'b0011: LED = 7'b0000110; // 3: 3
            4'b0100: LED = 7'b1001100; // 4: 4
            4'b0101: LED = 7'b0100100; // 5: 5
            4'b0110: LED = 7'b0100000; // 6: 6
            4'b0111: LED = 7'b0001111; // 7: 7
            4'b1000: LED = 7'b0000000; // 8: 8
            4'b1001: LED = 7'b0000100; // 9: 9
            4'b1010: LED = 7'b0001000; // A: A
            4'b1011: LED = 7'b1100000; // b: b
            4'b1100: LED = 7'b0110001; // C: C
            4'b1101: LED = 7'b1000010; // d: d
            4'b1110: LED = 7'b0110000; // E: E
            4'b1111: LED = 7'b0111000; // F: F
            default: LED = 7'b1111111; // All segments off for undefined inputs
        endcase
    end
endmodule

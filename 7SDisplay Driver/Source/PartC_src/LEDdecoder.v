
module LEDdecoder (input [3:0] char, output reg [6:0] LED);
    // segmentation fault
    always @(char) begin
        case (char)
            4'b0000: LED = 7'b0100100; // 0: S 
            4'b0001: LED = 7'b0100001; // 1: G
            4'b0010: LED = 7'b0101010; // 2: M
            4'b0011: LED = 7'b1101010; // 3: N
            4'b0100: LED = 7'b1110000; // 4: T
            4'b0101: LED = 7'b1001111; // 5: I
            4'b0110: LED = 7'b0000001; // 6: O
            4'b0111: LED = 7'b0111000; // 7: F
            4'b1000: LED = 7'b1000001; // 8: U
            4'b1001: LED = 7'b1110001; // 9: L
            4'b1010: LED = 7'b0001000; // A: A
            4'b1011: LED = 7'b1111111; // b: -
            4'b1100: LED = 7'b0110001; // C: [
            4'b1101: LED = 7'b0000111; // d: ]
            4'b1110: LED = 7'b0110000; // E: E
            4'b1111: LED = 7'b1111111; // F: -
        endcase
    end
endmodule
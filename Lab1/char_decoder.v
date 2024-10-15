

module char_decoder (counter, char, button_presses, reset);
    input [3:0] counter;
    output reg [3:0] char;
    input [4:0] button_presses;
    reg [4:0] mem [4:0];
    
    always @(posedge reset) begin
        mem[0] <= 4'b1100; // [
        mem[1] <= 4'b0000; // S
        mem[2] <= 4'b1110; // E
        mem[3] <= 4'b0001; // G
        mem[4] <= 4'b0010; // M
        mem[5] <= 4'b1110; // E
        mem[6] <= 4'b0011; // N
        mem[7] <= 4'b0100; // T
        mem[8] <= 4'b1010; // A
        mem[9] <= 4'b0100; // T
        mem[10] <= 4'b0101; // I
        mem[11] <= 4'b0110; // O
        mem[12] <= 4'b0011; // N
        mem[13] <= 4'b1011; // -
        mem[14] <= 4'b0111; // F
        mem[15] <= 4'b1010; // A
        mem[16] <= 4'b1000; // U
        mem[17] <= 4'b1001; // L
        mem[18] <= 4'b0100; // T
        mem[19] <= 4'b1101; // ]
    end

    always @(counter) begin
        case (counter)
            AN0_SETUP_BUS: char = mem[4'b0000 + button_presses];
            4'b0001: char = mem[4'b0000 + button_presses];
            4'b0010: char = mem[4'b0000 + button_presses];
            AN1_SETUP_BUS: char = mem[4'b0001 + button_presses];
            4'b0100: char = mem[4'b0001 + button_presses];
            4'b0101: char = mem[4'b0001 + button_presses];
            AN2_SETUP_BUS: char = mem[4'b0010 + button_presses];
            4'b1000: char = mem[4'b0010 + button_presses];
            4'b1001: char = mem[4'b0010 + button_presses];
            AN3_SETUP_BUS: char = mem[4'b0011 + button_presses];
            4'b1110: char = mem[4'b0011 + button_presses];
            4'b1111: char = mem[4'b0011 + button_presses];
        endcase
    end
endmodule
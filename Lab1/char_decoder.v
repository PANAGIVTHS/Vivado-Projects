

module char_decoder (counter, char, button_presses);
    input [3:0] counter;
    output reg [3:0] char;
    input [4:0] button_presses;
    reg [3:0] mem [4:0];
    
    always @(counter) begin
        case (counter)
            AN0_SETUP_BUS: begin
                char = mem[4'b0000 + button_presses];
            end
            4'b0001: begin
                char = mem[4'b0000 + button_presses];
            end
            4'b0010: begin
                char = mem[4'b0000 + button_presses];
            end
            AN1_SETUP_BUS: begin
                char = mem[4'b0001 + button_presses];
            end
            4'b0100: begin
                char = mem[4'b0001 + button_presses];
            end
            4'b0101: begin
                char = mem[4'b0001 + button_presses];
            end
            AN2_SETUP_BUS: begin
                char = mem[4'b0010 + button_presses];
            end
            4'b1000: begin
                char = mem[4'b0010 + button_presses];
            end
            4'b1001: begin
                char = mem[4'b0010 + button_presses];
            end
            AN3_SETUP_BUS: begin
                char = mem[4'b0011 + button_presses];
            end
            4'b1110: begin
                char = mem[4'b0011 + button_presses];
            end
            4'b1111: begin
                char = mem[4'b0011 + button_presses];
            end
        endcase
    end
endmodule
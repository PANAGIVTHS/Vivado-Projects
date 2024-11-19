
module CharacterDecoder (clk, counter, char, active_mem_offset, reset);
    input [3:0] counter;
    input [3:0] active_mem_offset;
    input clk;
    input reset;
    output reg [3:0] char;
    reg [3:0] mem [15:0];
    
    parameter AN0_SETUP_BUS = 4'b0010;
    parameter AN1_SETUP_BUS = 4'b0110;
    parameter AN2_SETUP_BUS = 4'b1010;
    parameter AN3_SETUP_BUS = 4'b1110;
    
    // Initialize memory
    always @(posedge clk or posedge reset) begin
        
        // Add 3 spaces to make the transition smoother 
        if (reset) begin
        mem[0] = 4'b1011; // -
        mem[1] = 4'b1011; // -
        mem[2] = 4'b1011; // -
        mem[3] = 4'b1100; // [
        mem[4] = 4'b0000; // S
        mem[5] = 4'b1110; // E
        mem[6] = 4'b0001; // G
        mem[7] = 4'b0010; // M
        mem[8] = 4'b1110; // E
        mem[9] = 4'b0011; // N
        mem[10] = 4'b0100; // T
        mem[11] = 4'b1010; // A
        mem[12] = 4'b0100; // T
        mem[13] = 4'b0101; // I
        mem[14] = 4'b0110; // O
        mem[15] = 4'b0011; // N
        end
    end

    // ----> + @button presses maybe NEDDED
    always @(counter) begin
        case (counter)

            4'b0000: char = mem[4'b0000 + active_mem_offset];
            4'b0001: char = mem[4'b0000 + active_mem_offset];
            AN0_SETUP_BUS: char = mem[4'b0000 + active_mem_offset];
            4'b0011: char = mem[4'b0000 + active_mem_offset];
            
            4'b0100: char = mem[4'b0001 + active_mem_offset];
            4'b0101: char = mem[4'b0001 + active_mem_offset];
            AN1_SETUP_BUS: char = mem[4'b0001 + active_mem_offset];
            4'b0111: char = mem[4'b0001 + active_mem_offset];
            
            4'b1000: char = mem[4'b0010 + active_mem_offset];
            4'b1001: char = mem[4'b0010 + active_mem_offset];
            AN2_SETUP_BUS: char = mem[4'b0010 + active_mem_offset];
            4'b1011: char = mem[4'b0010 + active_mem_offset];
            
            4'b1100: char = mem[4'b0011 + active_mem_offset];
            4'b1101: char = mem[4'b0011 + active_mem_offset];
            AN3_SETUP_BUS: char = mem[4'b0011 + active_mem_offset];
            4'b1111: char = mem[4'b0011 + active_mem_offset];

        endcase
    end
endmodule
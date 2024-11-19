`timescale 1ns/10ps

module tb_PART_A;
    reg [3:0] char;
    wire [6:0] LED;
    
    // Task to display the 7-segment representation visually
    task display_segment;
        input [3:0] char;
        input [6:0] LED;
        begin
            // Print the visual representation of the 7-segment display
            $display(" %s ", LED[6] ? "     " : "----");
            
            $display("%s   %s", LED[1] ? " " : "|", LED[5] ? " " : "   |");
            $display("%s   %s", LED[1] ? " " : "|", LED[5] ? " " : "   |");
            
            $display(" %s ", LED[0] ? "     " : "----");
            
            $display("%s   %s", LED[2] ? " " : "|", LED[4] ? " " : "   |");
            $display("%s   %s", LED[2] ? " " : "|", LED[4] ? " " : "   |");
            
            $display(" %s ", LED[3] ? "     " : "----");
            $display("\n");
        end
    endtask
    // Task to display the character that is being visually represented
    task print_char;
        input [3:0] counter;  // 4-bit counter input
        begin
            case (counter)
                4'b0000: $display("S");
                4'b0001: $display("G");
                4'b0010: $display("M");
                4'b0011: $display("N");
                4'b0100: $display("T");
                4'b0101: $display("I");
                4'b0110: $display("O");
                4'b0111: $display("F");
                4'b1000: $display("U");
                4'b1001: $display("L");
                4'b1010: $display("A");
                4'b1011: $display("-");
                4'b1100: $display("[");
                4'b1101: $display("]");
                4'b1110: $display("E");
                4'b1111: $display("-");
                default: $display("Invalid counter value");
            endcase
        end
    endtask

    LEDdecoder LEDdecoder_ (.char(char), .LED(LED));

    initial begin
        // Loop through all possible characters
        for (char = 4'b0000; char <= 4'b1111; char = char + 1) begin
            #10 display_segment(char, LED);
            print_char(char);
        end
        $finish; // Stop the simulation
    end
endmodule

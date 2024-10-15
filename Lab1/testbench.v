
module tb_;
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
    LEDdecoder LEDdecoder_ (.char(char), .LED(LED));

    initial begin
        // Loop through all possible characters
        for (char = 4'b0000; char <= 4'b1111; char = char + 1) begin
            #10 display_segment(char, LED);
        end
        $finish; // Stop the simulation
    end
endmodule

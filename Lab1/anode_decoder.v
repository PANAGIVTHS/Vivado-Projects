module anode_decoder(input [3:0] counter, output reg an0, output reg an1, output reg an2, output reg an3);
    parameter AN0_LOW = 4'b0010;
    parameter AN1_LOW = 4'b0110;
    parameter AN2_LOW = 4'b1010;
    parameter AN3_LOW = 4'b1110;
    
    always @(counter) begin
        case (counter)
            AN0_LOW: begin
                an0 = 1'b0;
                an1 = 1'b1;
                an2 = 1'b1;
                an3 = 1'b1;
            end
            AN1_LOW: begin
                an0 = 1'b1;
                an1 = 1'b0;
                an2 = 1'b1;
                an3 = 1'b1;
            end
            AN2_LOW: begin
                an0 = 1'b1;
                an1 = 1'b1;
                an2 = 1'b0;
                an3 = 1'b1;
            end
            AN3_LOW: begin
                an0 = 1'b1;
                an1 = 1'b1;
                an2 = 1'b1;
                an3 = 1'b0;
            end
            default: begin
                an0 = 1'b1;
                an1 = 1'b1;
                an2 = 1'b1;
                an3 = 1'b1;
            end
        endcase
    end
endmodule
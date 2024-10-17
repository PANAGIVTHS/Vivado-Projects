module AnodeDecoder (input [3:0] counter, output reg an0, output reg an1, output reg an2, output reg an3);
    parameter AN0_LOW = 4'b0010;
    parameter AN1_LOW = 4'b0110;
    parameter AN2_LOW = 4'b1010;
    parameter AN3_LOW = 4'b1110;
    
    always @(counter) begin
        case (counter)
            AN0_LOW:  an0 = 1'b0; an1 = 1'b1; an2 = 1'b1; an3 = 1'b1;
            AN1_LOW:  an0 = 1'b1; an1 = 1'b0; an2 = 1'b1; an3 = 1'b1;
            AN2_LOW:  an0 = 1'b1; an1 = 1'b1; an2 = 1'b0; an3 = 1'b1;
            AN3_LOW:  an0 = 1'b1; an1 = 1'b1; an2 = 1'b1; an3 = 1'b0;
            default:  an0 = 1'b1; an1 = 1'b1; an2 = 1'b1; an3 = 1'b1;
        endcase
    end
endmodule
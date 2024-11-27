module ROM256X5 #(
    parameter INIT_00 = 256'h0,
    parameter INIT_01 = 256'h0,
    parameter INIT_02 = 256'h0,
    parameter INIT_03 = 256'h0,
    parameter INIT_04 = 256'h0,
    parameter INIT_05 = 256'h0,
    parameter INIT_06 = 256'h0,
    parameter INIT_07 = 256'h0,
    parameter INIT_08 = 256'h0,
    parameter INIT_09 = 256'h0,
    parameter INIT_0A = 256'h0,
    parameter INIT_0B = 256'h0,
    parameter INIT_0C = 256'h0,
    parameter INIT_0D = 256'h0,
    parameter INIT_0E = 256'h0,
    parameter INIT_0F = 256'h0,
    parameter HEIGHT = 7'd0
)(
    input [6:0] line,
    input [6:0] offset,
    output reg out
);
    wire [255:0] mem [15:0];

    assign mem[0] = INIT_00; 
    assign mem[1] = INIT_01;
    assign mem[2] = INIT_02;
    assign mem[3] = INIT_03; 
    assign mem[4] = INIT_04;
    assign mem[5] = INIT_05;
    assign mem[6] = INIT_06;
    assign mem[7] = INIT_07;
    assign mem[8] = INIT_08;
    assign mem[9] = INIT_09;
    assign mem[10] = INIT_0A;
    assign mem[11] = INIT_0B;
    assign mem[12] = INIT_0C;
    assign mem[13] = INIT_0D;
    assign mem[14] = INIT_0E;
    assign mem[15] = INIT_0F;
    
    // Out corresponds to one bit indexed by addr:
    always @* begin
        if (line < HEIGHT && offset < 256) begin
            out = mem[line[6:1]][{line[0],offset}];
        end else begin
            out = 1'b0;
        end
    end
endmodule

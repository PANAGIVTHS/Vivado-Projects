module ROM256X5 #(
    parameter INIT_00 = 256'h0,
    parameter INIT_01 = 256'h0,
    parameter INIT_02 = 256'h0,
    parameter INIT_03 = 256'h0,
    parameter INIT_04 = 256'h0
)(
    input [10:0] addr,
    output out
);
    wire [255:0] mem [4:0];

    assign mem[0] = INIT_00; 
    assign mem[1] = INIT_01;
    assign mem[2] = INIT_02;
    assign mem[3] = INIT_03; 
    assign mem[4] = INIT_04;
    
    // Out corresponds to one bit indexed by addr:
    assign out = mem[addr[10:8]][addr[7:0]];
endmodule

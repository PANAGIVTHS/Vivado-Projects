module RippleCarryAdder #(parameter WIDTH = 4) (
    input [WIDTH-1:0] A,
    input [WIDTH-1:0] B,
    input Cin,
    output [WIDTH-1:0] Sum,
    output Cout
);
    assign {Cout, Sum} = A + B + Cin;
endmodule

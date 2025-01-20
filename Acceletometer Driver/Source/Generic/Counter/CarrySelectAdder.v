module CarrySelectAdder #(parameter BITS = 10) (
    input [BITS-1:0] A,   // Input operand A
    input [BITS-1:0] B,   // Input operand B
    input Cin,            // Carry-in
    output [BITS-1:0] Sum, // Sum output
    output Cout           // Carry-out
);
    // Calculate half the bit width
    localparam HALF = (BITS + 1) / 2; 

    // Lower half adder
    wire [HALF-1:0] sum_low;
    wire carry_low;
    RippleCarryAdder #(HALF) lower_adder (
        .A(A[HALF-1:0]),
        .B(B[HALF-1:0]),
        .Cin(Cin),
        .Sum(sum_low),
        .Cout(carry_low)
    );

    // Upper half adders (carry-in = 0 and carry-in = 1)
    wire [BITS-HALF-1:0] sum_high_c0, sum_high_c1;
    wire carry_high_c0, carry_high_c1;

    RippleCarryAdder #(BITS-HALF) upper_adder_c0 (
        .A(A[BITS-1:HALF]),
        .B(B[BITS-1:HALF]),
        .Cin(1'b0),
        .Sum(sum_high_c0),
        .Cout(carry_high_c0)
    );

    RippleCarryAdder #(BITS-HALF) upper_adder_c1 (
        .A(A[BITS-1:HALF]),
        .B(B[BITS-1:HALF]),
        .Cin(1'b1),
        .Sum(sum_high_c1),
        .Cout(carry_high_c1)
    );

    // Select the correct upper half result based on carry from the lower half
    assign Sum = {carry_low ? sum_high_c1 : sum_high_c0, sum_low};
    assign Cout = carry_low ? carry_high_c1 : carry_high_c0;
endmodule

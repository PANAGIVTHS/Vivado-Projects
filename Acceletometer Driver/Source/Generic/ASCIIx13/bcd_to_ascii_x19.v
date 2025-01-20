module bcd_to_ascii_x19 #(
    localparam BCD_DIGITS = 6
)(
    input [4*BCD_DIGITS-1:0] bcd_in,   // Input BCD digits
    output reg [8*BCD_DIGITS-1:0] ascii_out // Output ASCII characters
);
    integer i;

    // Local parameter for the ASCII offset for digits ('0' = 8'h30)
    localparam ASCII_OFFSET = 8'h30;  

    always @(*) begin
        // Initialize ascii_out to avoid uninitialized bits
        ascii_out = 0;
        for (i = 0; i < BCD_DIGITS; i = i + 1) begin
            // Extract each 4-bit BCD digit and convert to ASCII
            ascii_out[8*i +: 8] = ASCII_OFFSET + bcd_in[4*i +: 4];
        end
    end

endmodule

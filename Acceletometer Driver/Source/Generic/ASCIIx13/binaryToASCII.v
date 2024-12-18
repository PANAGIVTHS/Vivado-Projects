
module binary_to_ascii #(parameter BIN_WIDTH = 13, parameter BCD_DIGITS = 4) (
    input clk,          // Clock signal
    input reset,        // Reset signal
    input enable,       // Enable signal
    input start,        // Start signal
    input [BIN_WIDTH-1:0] bin,          // Binary input
    output reg [8*BCD_DIGITS-1:0] ascii_out, // ASCII output
    output reg ready,         // Ready signal
    output is_negative    // Negative flag
);
    wire [4*BCD_DIGITS-1:0] bcd;            // Intermediate BCD output
    wire [8*BCD_DIGITS-1:0] ascii_buff; // ASCII output
    wire bcd_ready;      // Signal indicating BCD conversion complete

    // Instantiate the binary to BCD converter
    binary_to_bcd bcd_converter (
        .clk(clk), 
        .reset(reset),
        .enable(enable),
        .start(start),
        .bin(bin),
        .bcd(bcd),
        .ready(bcd_ready),
        .is_negative(is_negative)
    );

    // Instantiate the BCD to ASCII converter
    bcd_to_ascii ascii_converter (
        .bcd_in(bcd),
        .ascii_out(ascii_buff)
    );

        // Ready signal is asserted when BCD conversion is complete
    always @(posedge clk or posedge reset) begin
        if (reset) begin 
            ready <= 0;
            ascii_out <= 0;
        end else begin
            ready <= bcd_ready;
            ascii_out <= ascii_buff;
        end
    end

endmodule

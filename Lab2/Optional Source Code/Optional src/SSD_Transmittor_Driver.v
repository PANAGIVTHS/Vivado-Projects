
module SSD_Transmittor_Driver (input clk, input reset, input [2:0] baud_select, input Tx_EN, input Rx_EN, input Tx_WR, output [3:0] anodes, output [6:0] LED, output dp);
    reg [7:0] mem [3:0];
    reg [1:0] counter;
    wire Tx_WR_debounced, Tx_WR_DS;
    wire TxD, Tx_BUSY;
    
    assign anodes = {an3, an2, an1, an0};
    assign LED = {a, b, c, d, e, f, g};
    
    Debouncer reset_debouncer (.clk(clk), .button(reset), .button_debounced(reset_debounced));
    Debouncer write_debouncer (.clk(clk), .button(Tx_WR), .button_debounced(Tx_WR_debounced));
    Hold_to_step Hold_to_step_inst (.clk(clk), .reset(reset_debounced), .button(Tx_WR_debounced), .spike(Tx_WR_DS));

    // Shift register so you fave to swap the msg hello -> encode olleh
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            mem[0] <= 8'b11111111; // FF
            mem[1] <= 8'b01010001; // 15
            mem[2] <= 8'b01010101; // 55
            mem[3] <= 8'b01010101; // 55
            counter <= -1;
        end else if (Tx_WR_DS) begin
            counter <= counter + 1;
        end
    end

    // Instantiate Listener module
    Listener Listener_inst (
        .clk(clk),               // Clock input to synchronize the listener
        .reset(reset),           // Reset input to initialize or reset the listener state
        .baud_select(baud_select), // Baud rate selection (input), typically controls the data rate
        .Rx_EN(Rx_EN),    // Receive enable input to activate the receiver
        .RxD(TxD),               // Serial data input, here connected to TxD (transmit data)
        .an3(an3),               // Anode control for the 3rd 7-segment digit
        .an2(an2),               // Anode control for the 2nd 7-segment digit
        .an1(an1),               // Anode control for the 1st 7-segment digit
        .an0(an0),               // Anode control for the 0th 7-segment digit
        .a(a),                   // Segment a output
        .b(b),                   // Segment b output
        .c(c),                   // Segment c output
        .d(d),                   // Segment d output
        .e(e),                   // Segment e output
        .f(f),                   // Segment f output
        .g(g),                   // Segment g output
        .dp(dp)                  // Decimal point output
    );

    // Instantiate Sender module
    Sender sender_inst (
        .clk(clk),           // Clock input
        .reset(reset),       // Reset input
        .Tx_EN(Tx_EN),       // Transmit enable input
        .Tx_WR(Tx_WR),       // Transmit write input
        .BAUD_RATE(baud_select), // 3-bit baud rate input
        .TxD(TxD),           // Transmit data output
        .Tx_DATA(mem[counter]),
        .Tx_BUSY(Tx_BUSY)    // Transmit busy output
    );

endmodule
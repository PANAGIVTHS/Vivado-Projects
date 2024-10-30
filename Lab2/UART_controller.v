module UART_controller (reset, clk, baud_select, Tx_DATA, Tx_WR, Tx_EN, TxD, Tx_BUSY, Tx_DATA_copy);
    input reset, clk;
    input [7:0] Tx_DATA;
    output reg [0:10] Tx_DATA_copy;
    input wire [2:0] baud_select;
    input Tx_WR, Tx_EN;
    output wire TxD;
    output wire Tx_BUSY;
    wire sample_ENABLE;
    reg [3:0] counter;

    // Instantiate baud rate controller for transmitter to enable sampling at the required frequency
    baud_controller_t baud_controller_t_inst (.reset(reset), .clk(clk), .baud_select(baud_select), .sample_ENABLE(sample_ENABLE));
    uart_transmitter uart_transmitter_inst (.reset(reset), .clk(clk), .Tx_DATA(Tx_DATA), .baud_select(baud_select), .Tx_WR(Tx_WR), .Tx_EN(Tx_EN), .TxD(TxD), .Tx_BUSY(Tx_BUSY));

    localparam FRAME_END = 4'b1010;

    // Counter for buffer
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            counter <= 0;
        end
    end

    // Fill buffer with data from transmission
    always @(sample_ENABLE) begin
        if (Tx_EN && Tx_BUSY && sample_ENABLE) begin
            Tx_DATA_copy[counter] <= TxD;
            if (counter == FRAME_END) begin
                counter <= 0;
            end else begin
                counter <= counter + 1;
            end
        end
    end
endmodule
module UART_controller (reset, clk, baud_select, Tx_DATA, Tx_WR, Tx_EN, TxD, Tx_BUSY, Tx_DATA_copy);
    input reset, clk;
    input [7:0] Tx_DATA;
    output reg [0:9] Tx_DATA_copy;
    input wire [2:0] baud_select;
    input Tx_WR, Tx_EN;
    output wire TxD;
    output wire Tx_BUSY;
    wire sample_ENABLE;
    reg [3:0] counter;

    baud_controller_t baud_controller_t_inst (.reset(reset), .clk(clk), .baud_select(baud_select), .sample_ENABLE(sample_ENABLE));
    uart_transmitter uart_transmitter_inst (.reset(reset), .clk(clk), .Tx_DATA(Tx_DATA), .baud_select(baud_select), .Tx_WR(Tx_WR), .Tx_EN(Tx_EN), .TxD(TxD), .Tx_BUSY(Tx_BUSY));

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            // This is not a bug with the modules just need to wait 1 cycle for the value to change after the enable
            // We do this cancerous thing because it's 4am and my C brain go brrrr
            counter <= 0;
        end
    end

    always @(sample_ENABLE) begin
        if (Tx_EN && Tx_BUSY && sample_ENABLE) begin
            if (counter != -1) begin
            Tx_DATA_copy[counter] <= TxD;
                    // Possible bug:
                    end 
            if (counter == 4'b1001) begin
                counter <= 0;
            end else begin
                counter <= counter + 1;
            end
        end

    end
endmodule
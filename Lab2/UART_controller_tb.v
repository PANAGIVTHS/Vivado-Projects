`timescale 1ns/10ps

module tb_UART_controller;
    reg reset, clk;

    localparam CLK_PERIOD = 10;
    always #(CLK_PERIOD/2) clk=~clk;

    reg [2:0] baud_select;
    reg Tx_WR, Tx_EN;
    wire TxD, Tx_BUSY;
    wire [7:0] Tx_DATA_copy;
    wire Sx_TERROR;

    UART_controller UART_controller_inst (.reset(reset), .clk(clk), .baud_select(baud_select), .Tx_DATA(8'b11001100), .Tx_WR(Tx_WR), .Tx_EN(Tx_EN), .TxD(TxD), .Tx_BUSY(Tx_BUSY), .Tx_DATA_copy(Tx_DATA_copy));
            
    initial begin
        #100
        reset<=1'bx;
        clk<=1'b0;
        
        Tx_WR<=0;
        Tx_EN<=0;
        // Reset
        #(CLK_PERIOD*2) reset<=1;
        #(CLK_PERIOD*5) reset<=0;

        // Write data
        Tx_EN<=1;

    
        #(CLK_PERIOD) baud_select = 3'b000;
            
        
        #(CLK_PERIOD) Tx_WR<=0;
        #(CLK_PERIOD) Tx_WR<=1;
        #(CLK_PERIOD) Tx_WR<=0;

        #(CLK_PERIOD*20) $finish;
    end
endmodule

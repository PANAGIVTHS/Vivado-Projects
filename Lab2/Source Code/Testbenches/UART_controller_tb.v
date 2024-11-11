/* 
    In timing simulations the while() wont work so instead we wee that the top lvl
    module will ignore the new try to transmitt and will instead transmit the first
    msg
*/


`timescale 1ns/10ps

module tb_UART_controller;
    reg reset, clk;
    
    reg [7:0] Tx_DATA;

    localparam CLK_PERIOD = 10;
    always #(CLK_PERIOD/2) clk=~clk;

    reg [2:0] baud_select;
    reg Tx_WR, Tx_EN, Rx_EN;
    wire TxD, Tx_BUSY;
    wire [7:0] Tx_DATA_copy;
    
    initial Tx_DATA = 8'b10011101;    
    
    UART_controller UART_controller_inst (.reset(reset), .clk(clk), .baud_select(baud_select), .Tx_DATA(Tx_DATA), .Tx_WR(Tx_WR), .Tx_EN(Tx_EN), .Rx_EN(Rx_EN), .TxD(TxD), .Tx_BUSY(Tx_BUSY), .Tx_DATA_copy(Tx_DATA_copy));
            
    initial begin
        #100
        reset<=1'bx;
        clk<=1'b0;
        
        Tx_WR<=0;
        Tx_EN<=0;
        // Reset
        #(CLK_PERIOD*2) reset<=1;
        #(CLK_PERIOD*500) reset<=0;

        // Write data
        Tx_EN <= 1;
        Rx_EN <= 1;


        #(CLK_PERIOD) baud_select = 3'b111;
             
        #(CLK_PERIOD) Tx_WR<=0;
        #(CLK_PERIOD) Tx_WR<=1;
        #(CLK_PERIOD*500) Tx_WR<=0;
        
        while (Tx_BUSY) begin
            #(CLK_PERIOD*2000);
        end
        Tx_DATA = 8'b10110001;
        #(CLK_PERIOD) Tx_WR<=0;
        #(CLK_PERIOD) Tx_WR<=1;
        #(CLK_PERIOD) Tx_WR<=0;

        #(CLK_PERIOD*2000);
        $finish;
    end
endmodule

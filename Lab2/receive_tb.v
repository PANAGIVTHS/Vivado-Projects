`timescale 1ns/10ps

module tb_receiver;
    reg reset, clk;

    localparam CLK_PERIOD = 10;
    always #(CLK_PERIOD/2) clk=~clk;

    reg [2:0] baud_select;
    reg Tx_WR, Tx_EN;
    reg Tx_BUSY;
    wire TxD;
    wire [7:0] Tx_DATA_copy;
    wire Rx_FERROR, Rx_PERROR, Rx_VALID;
    wire sample_ENABLE1;
    reg [3:0] counter;
    reg [0:10] Tx_DATA;
    wire parity;
    
    uart_receiver uart_receiver_inst (.reset(reset), .clk(clk), .baud_select(baud_select), .Rx_EN(Tx_EN & Tx_WR), .RxD(TxD), .Rx_DATA(Tx_DATA_copy), .Rx_FERROR(Rx_FERROR), .Rx_PERROR(Rx_PERROR), .Rx_VALID(Rx_VALID), .parity(parity));
    baud_controller_t baud_controller_t_inst(.reset(reset), .clk(clk), .baud_select(baud_select), .sample_ENABLE(sample_ENABLE1), .Enable_controller(Tx_EN & Tx_WR));
    
    initial begin
        Tx_DATA = 11'b01100110001;
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

    always @(posedge clk or posedge reset) begin
        $display(parity);
        if (reset) begin
            counter <= 0;
        end else if (sample_ENABLE1) begin
            if (counter != 10)
                counter <= counter + 1;
            else begin
                counter <= 0;
            end
        end
    end

    assign TxD = Tx_DATA[counter];    
endmodule

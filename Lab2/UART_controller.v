module UART_controller (reset, clk, baud_select, Tx_DATA, Tx_WR, Tx_EN, TxD, Tx_BUSY, Tx_DATA_copy);
    input reset, clk;
    input [7:0] Tx_DATA;
    output wire [7:0] Tx_DATA_copy;
    input wire [2:0] baud_select;
    input Tx_WR, Tx_EN;
    output wire TxD;
    output wire Tx_BUSY;

    reg Tx_EN_UART, Tx_WR_UART, Reset_UART;
    reg [7:0] buffer;
    reg [1:0] cur_state;
    reg [1:0] next_state;
    wire Rx_FERROR, Rx_PERROR, Rx_VALID;
    wire parity;

    localparam DISABLED = 2'b00, ENABLED = 2'b01, PERROR = 2'b10, FERROR = 2'b11; 

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            buffer <= 0;
        end else begin
            if ((Tx_WR_UART && Tx_EN_UART && !Tx_BUSY && !Rx_FERROR && !Rx_PERROR) || Rx_VALID) buffer <= Tx_DATA;
        end
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            cur_state <= ENABLED;
        end else begin
            cur_state <= next_state;
        end
    end

    always @(*) begin
        Tx_EN_UART = Tx_EN;
        Tx_WR_UART = Tx_WR;
        Reset_UART = reset;
        case (cur_state)
            ENABLED: begin
                if (Rx_FERROR) begin
                    next_state = FERROR;
                end else if (Rx_PERROR) begin
                    next_state = PERROR;    
                end else begin
                    next_state = ENABLED;
                end
            end
            PERROR: begin
                Tx_WR_UART = 0;
                Tx_EN_UART = 0;
                Reset_UART = 0;
                next_state = PERROR;
            end
            FERROR: begin
                Tx_EN_UART = 0;                
                Tx_WR_UART = 0;
                Reset_UART = 0;
                next_state = FERROR;
            end
            default: begin
                next_state = ENABLED;
            end
        endcase
    end

    // Instantiate baud rate controller for transmitter to enable sampling at the required frequency
    uart_transmitter uart_transmitter_inst (.reset(Reset_UART), .clk(clk), .Tx_DATA(buffer), .baud_select(baud_select), .Tx_WR(Tx_WR_UART), .Tx_EN(Tx_EN_UART), .TxD(TxD), .Tx_BUSY(Tx_BUSY));
    uart_receiver uart_receiver_inst (.reset(Reset_UART), .clk(clk), .baud_select(baud_select), .Rx_EN(Tx_WR_UART & Tx_EN_UART), .RxD(TxD), .Rx_DATA(Tx_DATA_copy), .Rx_FERROR(Rx_FERROR), .Rx_PERROR(Rx_PERROR), .Rx_VALID(Rx_VALID), .parity(parity));

endmodule
/*
    This module is a UART controller that interfaces with the transmitter and receiver modules. It uses a state machine to control the
    transmission and reception of data. The module provides a byte of RAM to store the data to be transmitted. In the case of new data
    being written to the transmitter while it is transmitting, the new data will be stored in the RAM and transmitted when a new write
    signal is received. The module also provides a debouncer to prevent noise in the reset and write signals.

    *Notice* The controller will not transmit new data if the receiver has detected a framing error or a parity error.
    *The module will provide a copy of the transmitted data but if not read, the data will be overwritten by the latest data written 
    *to the transmitter.
    
    *Danger* The controller will keep the latest data written to the transmitter in the buffer. This means that if the transmitter is
    *busy only the latest value of Tx_DATA will be transmitted. 

    Inputs:
    - baud_select: Baud Rate Selection
    - Tx_DATA: Data to be transmitted
    - Tx_WR: Signal to write data
    - Tx_EN: Enable transmission
    - Rx_EN: Enable reception

    Outputs:
    - TxD: Output serial data
    - Tx_BUSY: Transmission status
    - Tx_DATA_copy: Copy of the transmitted data 
*/

module UART_controller (reset, clk, baud_select, Tx_DATA, Tx_WR, Tx_EN, Rx_EN, TxD, Tx_BUSY, Tx_DATA_copy);
    input reset, clk;
    input [7:0] Tx_DATA;
    output wire [7:0] Tx_DATA_copy;
    input wire [2:0] baud_select;
    input Tx_WR, Tx_EN, Rx_EN;
    output wire TxD;
    output wire Tx_BUSY;

    reg Tx_EN_UART, Rx_EN_UART, Tx_WR_UART, Reset_UART;
    reg [7:0] buffer;
    reg [1:0] cur_state;
    reg [1:0] next_state;
    wire Rx_FERROR, Rx_PERROR, Rx_VALID;
    wire parity, reset_debounced, Tx_WR_debounced, Tx_WR_DS;

    localparam /*DISABLED = 2'b00,*/ ENABLED = 2'b01, PERROR = 2'b10, FERROR = 2'b11; 

    // This is a Simple Debouncer to prevent any noise in the reset, write buttons
    Debouncer reset_debouncer (.clk(clk), .button(reset), .button_debounced(reset_debounced));
    Debouncer write_debouncer (.clk(clk), .button(Tx_WR), .button_debounced(Tx_WR_debounced));
    Hold_to_step Hold_to_step_inst (.clk(clk), .reset(reset_debounced), .button(Tx_WR_debounced), .spike(Tx_WR_DS));

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

    always @(cur_state, Rx_FERROR, Rx_PERROR, Tx_EN, Tx_WR_DS, reset_debounced, Rx_EN) begin
        Tx_EN_UART = Tx_EN;
        Tx_WR_UART = Tx_WR_DS;
        Reset_UART = reset_debounced;
        Rx_EN_UART = Rx_EN;
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
                Rx_EN_UART = 0;
                next_state = PERROR;
            end
            FERROR: begin
                Tx_EN_UART = 0;                
                Tx_WR_UART = 0;
                Reset_UART = 0;
                Rx_EN_UART = 0;
                next_state = FERROR;
            end
            default: begin
                next_state = ENABLED;
            end
        endcase
    end


    // Instantiate baud rate controller for transmitter to enable sampling at the required frequency
    uart_transmitter uart_transmitter_inst (.reset(Reset_UART), .clk(clk), .Tx_DATA(buffer), .baud_select(baud_select), .Tx_WR(Tx_WR_UART), .Tx_EN(Tx_EN_UART), .TxD(TxD), .Tx_BUSY(Tx_BUSY));
    uart_receiver uart_receiver_inst (.reset(Reset_UART), .clk(clk), .baud_select(baud_select), .Rx_EN(Rx_EN_UART), .RxD(TxD), .Rx_DATA(Tx_DATA_copy), .Rx_FERROR(Rx_FERROR), .Rx_PERROR(Rx_PERROR), .Rx_VALID(Rx_VALID), .parity(parity));

endmodule
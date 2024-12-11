// Module: uart_transmitter                                                                 //
//                                                                                          //
// Description:                                                                             //
// This module implements a UART (Universal Asynchronous Receiver/Transmitter) transmitter. //
// It is responsible for serially transmitting data over a communication channel.           //
// The module takes parallel data as input, converts it into a serial bitstream,            //
// and transmits it at a specified baud rate. The transmitter typically includes            //
// features such as start and stop bit generation, parity bit generation, and               //
// handling of data framing errors.                                                         //

module uart_transmitter(reset, clk, TxD, Tx_DATA, Tx_BUSY, Tx_EN);

parameter off = 4'b0000, 
        idle = 4'b0001,
        transfer = 4'b0010,
        start_bit = 4'b0011,
        data0 = 4'b0100,
        data1 = 4'b0101,
        data2 = 4'b0110,
        data3 = 4'b0111,
        data4 = 4'b1000,
        data5 = 4'b1001,
        data6 = 4'b1010,
        data7 = 4'b1011,
        parity_bit = 4'b1100,
        stop_bit = 4'b1101;


input reset, clk;
input [7:0] Tx_DATA;
input Tx_EN;
reg Tx_WR = 1;
output reg Tx_BUSY;

output reg TxD;

// 57600 baud rate //
// DO NOT CHANGE!! //
reg [2:0] baud_select = 3'b110;

wire sample_ENABLE;
reg [3:0]counter;

reg send;  // transmission signal enable //

reg [3:0] current_state, next_state;

reg load; 
wire so;    // serial output //

reg Q1, Q2;
wire Q2_bar;
wire send_out;

reg counter_bytes_enable;


always @(posedge clk or posedge reset)
begin
    if(reset)
        counter <= 0;
    else
    begin
        if(sample_ENABLE == 1)
            counter <= counter + 4'b1;
    end
end

// send signal send, after 16*baud_rate //
always @(counter)
begin
    if(counter == 4'b1111)
        send = 1;
    else
        send = 0;
end

// filter send signal to one clk cycle //
always @(posedge clk)
begin
    Q1 <= send;
    Q2 <= Q1;
end

assign Q2_bar = ~Q2;
assign send_out = (Q2_bar & Q1);

// FSM sequential state assignment //
always @(posedge clk or posedge reset)
begin
    if(reset)
        current_state <= off;
    else
        current_state <= next_state;
end

// FSM combinational block // 
always @(Tx_WR or send_out or current_state or Tx_DATA or Tx_EN)
begin
    next_state = current_state;
    TxD = 1'b1;
    Tx_BUSY = 0;
    counter_bytes_enable = 0;

    case (current_state)
        off:
        begin
            TxD = 1;
            if(Tx_EN == 1)
                next_state = idle;
            else
                next_state = off;
        end

        idle: 
        begin
            TxD = 1'b1;
            Tx_BUSY = 0;

            if(Tx_EN == 0)
                next_state = off;
            else if(Tx_WR == 1)
                next_state = transfer;
            else
                next_state = idle;
        end

        transfer:
        begin
            TxD = 1'b1;
            Tx_BUSY = 1;
            
            if(send_out == 1)
            begin
                next_state = start_bit;
            end
            else
                next_state = transfer;
        end

        start_bit: 
        begin
            TxD = 0;
            Tx_BUSY = 1;
            if(send_out == 1)
            begin
                next_state = data0;
            end
            else
                next_state = start_bit;
        end

        data0:
        begin
            TxD = Tx_DATA[0];
            Tx_BUSY = 1;
            if (send_out == 1)
                next_state = data1;
            else
                next_state = data0;
        end

        data1:
        begin
            TxD = Tx_DATA[1];
            Tx_BUSY = 1;
            if (send_out == 1)
                next_state = data2;
            else
                next_state = data1;
        end

        data2:
        begin
            TxD = Tx_DATA[2];
            Tx_BUSY = 1;
            if (send_out == 1)
                next_state = data3;
            else
                next_state = data2;
        end

        data3:
        begin
            TxD = Tx_DATA[3];
            Tx_BUSY = 1;
            if (send_out == 1)
                next_state = data4;
            else
                next_state = data3;
        end

        data4:
        begin
            TxD = Tx_DATA[4];
            Tx_BUSY = 1;
            if (send_out == 1)
                next_state = data5;
            else
                next_state = data4;
        end

        data5:
        begin
            TxD = Tx_DATA[5];
            Tx_BUSY = 1;
            if (send_out == 1)
                next_state = data6;
            else
                next_state = data5;
        end

        data6:
        begin
            TxD = Tx_DATA[6];
            Tx_BUSY = 1;
            if (send_out == 1)
                next_state = data7;
            else
                next_state = data6;
        end

        data7:
        begin
            TxD = Tx_DATA[7];
            Tx_BUSY = 1;
            if (send_out == 1)
                next_state = parity_bit;
            else
                next_state = data7;
        end

        parity_bit:
        begin
            TxD = ^Tx_DATA;
            Tx_BUSY = 1;
            if(send_out == 1)
                next_state = stop_bit;
            else
                next_state = parity_bit;
        end

        stop_bit:
        begin
            TxD = 1;
            Tx_BUSY = 1;
            counter_bytes_enable = 1;
            if(send_out == 1)
                next_state = idle; 
            else
                next_state = stop_bit;
        end
        default:
        begin
            next_state = off;
        end
    endcase
end

// Baud controller instantiation //
Baud_controller Baud_controller_tx_inst(.reset(reset), .clk(clk), .baud_select(baud_select), .sample_ENABLE(sample_ENABLE));

endmodule
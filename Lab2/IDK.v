```Verilog
module uart_transmitter(reset, clk, Tx_DATA, baud_select, Tx_WR, Tx_EN, TxD, Tx_BUSY);

input reset, clk;
input [7:0] Tx_DATA; 
input [2:0] baud_select;
input Tx_EN; 
input Tx_WR;
reg [3:0] CurrentState;
reg [3:0] NextState;

wire parity_bit;
wire Tx_sample_ENABLE;

output reg TxD;
output reg Tx_BUSY;

parameter IDLE_STATE = 4'b0000;
parameter START_BIT = 4'b0001;
parameter BIT_0 = 4'b0010;
parameter BIT_1 = 4'b0011;
parameter BIT_2 = 4'b0100;
parameter BIT_3 = 4'b0101;
parameter BIT_4 = 4'b0110;
parameter BIT_5 = 4'b0111;
parameter BIT_6 = 4'b1000;
parameter BIT_7 = 4'b1001;
parameter PARITY_BIT = 4'b1010;
parameter STOP_BIT = 4'b1011;



baud_controller_transmitter baud_controller_transmitter_inst(
    .reset(reset),
    .clk(clk),
    .enable(Tx_EN),
    .baud_select(baud_select),
    .sample_ENABLE(Tx_sample_ENABLE)
);

assign parity_bit = ^Tx_DATA;

// the sequential part of the FSM
always @(posedge clk or posedge reset) begin
    if (reset) begin
        CurrentState <= IDLE_STATE; 
    end
    else begin
        CurrentState <= NextState;
    end
end
// the combinational part of the FSM
always @(CurrentState or Tx_EN or Tx_WR or Tx_sample_ENABLE) begin
        case (CurrentState)
        IDLE_STATE: begin
            NextState = (Tx_EN && Tx_WR) ? START_BIT : IDLE_STATE;
            TxD = Tx_EN;
            Tx_BUSY = (Tx_EN && Tx_WR);
        end
        START_BIT: begin
            NextState = (Tx_sample_ENABLE) ? BIT_0 : START_BIT;
            TxD = 1'b0;
            Tx_BUSY = 1'b1;
        end
        BIT_0: begin
            NextState = (Tx_sample_ENABLE) ? BIT_1 : BIT_0;
            TxD = Tx_DATA[0];
            Tx_BUSY = 1'b1;
        end
        BIT_1: begin
            NextState = (Tx_sample_ENABLE) ? BIT_2 : BIT_1;
            TxD = Tx_DATA[1];
            Tx_BUSY = 1'b1;
        end
        BIT_2: begin
            NextState = (Tx_sample_ENABLE) ? BIT_3 : BIT_2;
            TxD = Tx_DATA[2];
            Tx_BUSY = 1'b1;
        end
        BIT_3: begin
            NextState = (Tx_sample_ENABLE) ? BIT_4 : BIT_3;
            TxD = Tx_DATA[3];
            Tx_BUSY = 1'b1;
        end
        BIT_4: begin
            NextState = (Tx_sample_ENABLE) ? BIT_5 : BIT_4;
            TxD = Tx_DATA[4];
            Tx_BUSY = 1'b1;
        end
        BIT_5: begin
            NextState = (Tx_sample_ENABLE) ? BIT_6 : BIT_5;
            TxD = Tx_DATA[5];
            Tx_BUSY = 1'b1;
        end
        BIT_6: begin
            NextState = (Tx_sample_ENABLE) ? BIT_7 : BIT_6;
            TxD = Tx_DATA[6];
            Tx_BUSY = 1'b1;
        end
        BIT_7: begin
            NextState = (Tx_sample_ENABLE) ? PARITY_BIT : BIT_7;
            TxD = Tx_DATA[7];
            Tx_BUSY = 1'b1;
        end
        PARITY_BIT: begin
            NextState = (Tx_sample_ENABLE) ? STOP_BIT : PARITY_BIT;
            TxD = parity_bit;
            Tx_BUSY = 1'b1;
        end
        STOP_BIT: begin
            NextState = (Tx_sample_ENABLE) ? IDLE_STATE : STOP_BIT;
            TxD = 1'b1;
            Tx_BUSY = ~Tx_sample_ENABLE;
        end
        default: begin
            NextState = IDLE_STATE;
            TxD = 1'b1;
            Tx_BUSY = 1'b0;    
        end
    endcase
end
endmodule
```
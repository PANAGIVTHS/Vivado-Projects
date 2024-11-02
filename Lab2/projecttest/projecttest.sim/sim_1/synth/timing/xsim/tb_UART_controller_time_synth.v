// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Nov  2 19:41:15 2024
// Host        : DESKTOP-922FQ13 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/panag/Desktop/GitHub/Repositories/Vivado-Code/Lab2/projecttest/projecttest.sim/sim_1/synth/timing/xsim/tb_UART_controller_time_synth.v
// Design      : UART_controller
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module UART_controller
   (reset,
    clk,
    baud_select,
    Tx_DATA,
    Tx_WR,
    Tx_EN,
    TxD,
    Tx_BUSY,
    Tx_DATA_copy);
  input reset;
  input clk;
  input [2:0]baud_select;
  input [7:0]Tx_DATA;
  input Tx_WR;
  input Tx_EN;
  output TxD;
  output Tx_BUSY;
  output [7:0]Tx_DATA_copy;

  wire TxD;
  wire TxD_OBUF;
  wire Tx_BUSY;
  wire Tx_BUSY_OBUF;
  wire [7:0]Tx_DATA;
  wire [7:0]Tx_DATA_IBUF;
  wire [7:0]Tx_DATA_copy;
  wire [7:0]Tx_DATA_copy_OBUF;
  wire Tx_EN;
  wire Tx_EN_IBUF;
  wire Tx_WR;
  wire Tx_WR_IBUF;
  wire [2:0]baud_select;
  wire [2:0]baud_select_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire reset;
  wire reset_IBUF;
  wire uart_receiver_inst_n_0;
  wire uart_receiver_inst_n_1;
  wire uart_receiver_inst_n_2;
  wire uart_transmitter_inst_n_0;
  wire uart_transmitter_inst_n_1;
  wire uart_transmitter_inst_n_3;
  wire uart_transmitter_inst_n_4;
  wire uart_transmitter_inst_n_5;

initial begin
 $sdf_annotate("tb_UART_controller_time_synth.sdf",,,,"tool_control");
end
  OBUF TxD_OBUF_inst
       (.I(TxD_OBUF),
        .O(TxD));
  OBUF Tx_BUSY_OBUF_inst
       (.I(Tx_BUSY_OBUF),
        .O(Tx_BUSY));
  IBUF \Tx_DATA_IBUF[0]_inst 
       (.I(Tx_DATA[0]),
        .O(Tx_DATA_IBUF[0]));
  IBUF \Tx_DATA_IBUF[1]_inst 
       (.I(Tx_DATA[1]),
        .O(Tx_DATA_IBUF[1]));
  IBUF \Tx_DATA_IBUF[2]_inst 
       (.I(Tx_DATA[2]),
        .O(Tx_DATA_IBUF[2]));
  IBUF \Tx_DATA_IBUF[3]_inst 
       (.I(Tx_DATA[3]),
        .O(Tx_DATA_IBUF[3]));
  IBUF \Tx_DATA_IBUF[4]_inst 
       (.I(Tx_DATA[4]),
        .O(Tx_DATA_IBUF[4]));
  IBUF \Tx_DATA_IBUF[5]_inst 
       (.I(Tx_DATA[5]),
        .O(Tx_DATA_IBUF[5]));
  IBUF \Tx_DATA_IBUF[6]_inst 
       (.I(Tx_DATA[6]),
        .O(Tx_DATA_IBUF[6]));
  IBUF \Tx_DATA_IBUF[7]_inst 
       (.I(Tx_DATA[7]),
        .O(Tx_DATA_IBUF[7]));
  OBUF \Tx_DATA_copy_OBUF[0]_inst 
       (.I(Tx_DATA_copy_OBUF[0]),
        .O(Tx_DATA_copy[0]));
  OBUF \Tx_DATA_copy_OBUF[1]_inst 
       (.I(Tx_DATA_copy_OBUF[1]),
        .O(Tx_DATA_copy[1]));
  OBUF \Tx_DATA_copy_OBUF[2]_inst 
       (.I(Tx_DATA_copy_OBUF[2]),
        .O(Tx_DATA_copy[2]));
  OBUF \Tx_DATA_copy_OBUF[3]_inst 
       (.I(Tx_DATA_copy_OBUF[3]),
        .O(Tx_DATA_copy[3]));
  OBUF \Tx_DATA_copy_OBUF[4]_inst 
       (.I(Tx_DATA_copy_OBUF[4]),
        .O(Tx_DATA_copy[4]));
  OBUF \Tx_DATA_copy_OBUF[5]_inst 
       (.I(Tx_DATA_copy_OBUF[5]),
        .O(Tx_DATA_copy[5]));
  OBUF \Tx_DATA_copy_OBUF[6]_inst 
       (.I(Tx_DATA_copy_OBUF[6]),
        .O(Tx_DATA_copy[6]));
  OBUF \Tx_DATA_copy_OBUF[7]_inst 
       (.I(Tx_DATA_copy_OBUF[7]),
        .O(Tx_DATA_copy[7]));
  IBUF Tx_EN_IBUF_inst
       (.I(Tx_EN),
        .O(Tx_EN_IBUF));
  IBUF Tx_WR_IBUF_inst
       (.I(Tx_WR),
        .O(Tx_WR_IBUF));
  IBUF \baud_select_IBUF[0]_inst 
       (.I(baud_select[0]),
        .O(baud_select_IBUF[0]));
  IBUF \baud_select_IBUF[1]_inst 
       (.I(baud_select[1]),
        .O(baud_select_IBUF[1]));
  IBUF \baud_select_IBUF[2]_inst 
       (.I(baud_select[2]),
        .O(baud_select_IBUF[2]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  uart_receiver uart_receiver_inst
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .\FSM_onehot_cur_state_reg[2]_0 (uart_transmitter_inst_n_0),
        .\FSM_onehot_cur_state_reg[2]_1 (uart_transmitter_inst_n_1),
        .\FSM_onehot_cur_state_reg[2]_2 (uart_transmitter_inst_n_4),
        .\FSM_onehot_cur_state_reg[2]_3 (uart_transmitter_inst_n_5),
        .\FSM_onehot_cur_state_reg[8]_0 (uart_transmitter_inst_n_3),
        .\Rx_DATA_reg[2]_0 (uart_receiver_inst_n_0),
        .\Tx_DATA[1] (uart_receiver_inst_n_1),
        .\Tx_DATA[5] (uart_receiver_inst_n_2),
        .Tx_DATA_IBUF(Tx_DATA_IBUF),
        .Tx_DATA_copy_OBUF(Tx_DATA_copy_OBUF),
        .Tx_EN_IBUF(Tx_EN_IBUF),
        .Tx_WR_IBUF(Tx_WR_IBUF),
        .baud_select_IBUF(baud_select_IBUF));
  uart_transmitter uart_transmitter_inst
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .\FSM_onehot_cur_state_reg[2] (uart_receiver_inst_n_0),
        .\FSM_onehot_cur_state_reg[8] (uart_receiver_inst_n_1),
        .\FSM_onehot_cur_state_reg[8]_0 (uart_receiver_inst_n_2),
        .\FSM_sequential_cur_state_reg[0]_0 (uart_transmitter_inst_n_0),
        .\FSM_sequential_cur_state_reg[1]_0 (uart_transmitter_inst_n_1),
        .\FSM_sequential_cur_state_reg[1]_1 (uart_transmitter_inst_n_5),
        .\FSM_sequential_cur_state_reg[2]_0 (uart_transmitter_inst_n_3),
        .\FSM_sequential_cur_state_reg[2]_1 (uart_transmitter_inst_n_4),
        .TxD_OBUF(TxD_OBUF),
        .Tx_BUSY_OBUF(Tx_BUSY_OBUF),
        .Tx_DATA_IBUF(Tx_DATA_IBUF),
        .Tx_EN_IBUF(Tx_EN_IBUF),
        .Tx_WR_IBUF(Tx_WR_IBUF),
        .baud_select_IBUF(baud_select_IBUF));
endmodule

module baud_controller_r
   (D,
    sample_ENABLE_reg_0,
    E,
    CLK,
    AR,
    Q,
    cur_state,
    \FSM_onehot_cur_state_reg[2] ,
    \FSM_onehot_cur_state_reg[2]_0 ,
    \FSM_onehot_cur_state_reg[2]_1 ,
    \FSM_onehot_cur_state_reg[2]_2 ,
    \FSM_onehot_cur_state[2]_i_3_0 ,
    \FSM_onehot_cur_state[2]_i_3_1 ,
    \FSM_onehot_cur_state[2]_i_3_2 ,
    \FSM_onehot_cur_state[2]_i_3_3 ,
    Tx_EN_IBUF,
    Tx_WR_IBUF,
    SURE,
    \FSM_onehot_cur_state_reg[7] ,
    \FSM_onehot_cur_state_reg[7]_0 ,
    baud_select_IBUF,
    \FSM_onehot_cur_state_reg[2]_3 );
  output [2:0]D;
  output sample_ENABLE_reg_0;
  output [0:0]E;
  input CLK;
  input [0:0]AR;
  input [4:0]Q;
  input [0:0]cur_state;
  input \FSM_onehot_cur_state_reg[2] ;
  input \FSM_onehot_cur_state_reg[2]_0 ;
  input \FSM_onehot_cur_state_reg[2]_1 ;
  input \FSM_onehot_cur_state_reg[2]_2 ;
  input \FSM_onehot_cur_state[2]_i_3_0 ;
  input \FSM_onehot_cur_state[2]_i_3_1 ;
  input \FSM_onehot_cur_state[2]_i_3_2 ;
  input \FSM_onehot_cur_state[2]_i_3_3 ;
  input Tx_EN_IBUF;
  input Tx_WR_IBUF;
  input SURE;
  input \FSM_onehot_cur_state_reg[7] ;
  input \FSM_onehot_cur_state_reg[7]_0 ;
  input [2:0]baud_select_IBUF;
  input [3:0]\FSM_onehot_cur_state_reg[2]_3 ;

  wire [0:0]AR;
  wire CLK;
  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_onehot_cur_state[2]_i_3_0 ;
  wire \FSM_onehot_cur_state[2]_i_3_1 ;
  wire \FSM_onehot_cur_state[2]_i_3_2 ;
  wire \FSM_onehot_cur_state[2]_i_3_3 ;
  wire \FSM_onehot_cur_state[2]_i_3_n_0 ;
  wire \FSM_onehot_cur_state[2]_i_5_n_0 ;
  wire \FSM_onehot_cur_state[2]_i_8_n_0 ;
  wire \FSM_onehot_cur_state_reg[2] ;
  wire \FSM_onehot_cur_state_reg[2]_0 ;
  wire \FSM_onehot_cur_state_reg[2]_1 ;
  wire \FSM_onehot_cur_state_reg[2]_2 ;
  wire [3:0]\FSM_onehot_cur_state_reg[2]_3 ;
  wire \FSM_onehot_cur_state_reg[7] ;
  wire \FSM_onehot_cur_state_reg[7]_0 ;
  wire [4:0]Q;
  wire SURE;
  wire Tx_EN_IBUF;
  wire Tx_WR_IBUF;
  wire [2:0]baud_select_IBUF;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__0_n_4;
  wire counter0_carry__0_n_5;
  wire counter0_carry__0_n_6;
  wire counter0_carry__0_n_7;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__1_n_4;
  wire counter0_carry__1_n_5;
  wire counter0_carry__1_n_6;
  wire counter0_carry__1_n_7;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry__2_n_4;
  wire counter0_carry__2_n_5;
  wire counter0_carry__2_n_6;
  wire counter0_carry__2_n_7;
  wire counter0_carry__3_n_0;
  wire counter0_carry__3_n_1;
  wire counter0_carry__3_n_2;
  wire counter0_carry__3_n_3;
  wire counter0_carry__3_n_4;
  wire counter0_carry__3_n_5;
  wire counter0_carry__3_n_6;
  wire counter0_carry__3_n_7;
  wire counter0_carry__4_n_0;
  wire counter0_carry__4_n_1;
  wire counter0_carry__4_n_2;
  wire counter0_carry__4_n_3;
  wire counter0_carry__4_n_4;
  wire counter0_carry__4_n_5;
  wire counter0_carry__4_n_6;
  wire counter0_carry__4_n_7;
  wire counter0_carry__5_n_0;
  wire counter0_carry__5_n_1;
  wire counter0_carry__5_n_2;
  wire counter0_carry__5_n_3;
  wire counter0_carry__5_n_4;
  wire counter0_carry__5_n_5;
  wire counter0_carry__5_n_6;
  wire counter0_carry__5_n_7;
  wire counter0_carry__6_n_2;
  wire counter0_carry__6_n_3;
  wire counter0_carry__6_n_5;
  wire counter0_carry__6_n_6;
  wire counter0_carry__6_n_7;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire counter0_carry_n_4;
  wire counter0_carry_n_5;
  wire counter0_carry_n_6;
  wire counter0_carry_n_7;
  wire counter1_carry__0_i_1__0_n_0;
  wire counter1_carry__0_i_2__0_n_0;
  wire counter1_carry__0_i_3__0_n_0;
  wire counter1_carry__0_i_4_n_0;
  wire counter1_carry__0_n_0;
  wire counter1_carry__0_n_1;
  wire counter1_carry__0_n_2;
  wire counter1_carry__0_n_3;
  wire counter1_carry__1_i_1__0_n_0;
  wire counter1_carry__1_i_2__0_n_0;
  wire counter1_carry__1_i_3__0_n_0;
  wire counter1_carry__1_n_1;
  wire counter1_carry__1_n_2;
  wire counter1_carry__1_n_3;
  wire counter1_carry_i_1_n_0;
  wire counter1_carry_i_2__0_n_0;
  wire counter1_carry_i_3__0_n_0;
  wire counter1_carry_i_4__0_n_0;
  wire counter1_carry_n_0;
  wire counter1_carry_n_1;
  wire counter1_carry_n_2;
  wire counter1_carry_n_3;
  wire \counter[0]_i_1__1_n_0 ;
  wire \counter[10]_i_1_n_0 ;
  wire \counter[11]_i_1_n_0 ;
  wire \counter[12]_i_1_n_0 ;
  wire \counter[13]_i_1_n_0 ;
  wire \counter[14]_i_1_n_0 ;
  wire \counter[15]_i_1_n_0 ;
  wire \counter[16]_i_1_n_0 ;
  wire \counter[17]_i_1_n_0 ;
  wire \counter[18]_i_1_n_0 ;
  wire \counter[19]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[20]_i_1_n_0 ;
  wire \counter[21]_i_1_n_0 ;
  wire \counter[22]_i_1_n_0 ;
  wire \counter[23]_i_1_n_0 ;
  wire \counter[24]_i_1_n_0 ;
  wire \counter[25]_i_1_n_0 ;
  wire \counter[26]_i_1_n_0 ;
  wire \counter[27]_i_1_n_0 ;
  wire \counter[28]_i_1_n_0 ;
  wire \counter[29]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[30]_i_1_n_0 ;
  wire \counter[31]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[4]_i_1_n_0 ;
  wire \counter[5]_i_1_n_0 ;
  wire \counter[6]_i_1_n_0 ;
  wire \counter[7]_i_1_n_0 ;
  wire \counter[8]_i_1_n_0 ;
  wire \counter[9]_i_1_n_0 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[15] ;
  wire \counter_reg_n_0_[16] ;
  wire \counter_reg_n_0_[17] ;
  wire \counter_reg_n_0_[18] ;
  wire \counter_reg_n_0_[19] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[20] ;
  wire \counter_reg_n_0_[21] ;
  wire \counter_reg_n_0_[22] ;
  wire \counter_reg_n_0_[23] ;
  wire \counter_reg_n_0_[24] ;
  wire \counter_reg_n_0_[25] ;
  wire \counter_reg_n_0_[26] ;
  wire \counter_reg_n_0_[27] ;
  wire \counter_reg_n_0_[28] ;
  wire \counter_reg_n_0_[29] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[30] ;
  wire \counter_reg_n_0_[31] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire [0:0]cur_state;
  wire sample_ENABLE;
  wire sample_ENABLE_i_1_n_0;
  wire sample_ENABLE_reg_0;
  wire [3:2]NLW_counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_counter0_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_counter1_carry_O_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_counter1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__1_O_UNCONNECTED;

  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_onehot_cur_state[12]_i_2 
       (.I0(sample_ENABLE),
        .I1(\FSM_onehot_cur_state_reg[2]_3 [2]),
        .I2(\FSM_onehot_cur_state_reg[2]_3 [1]),
        .I3(\FSM_onehot_cur_state_reg[2]_3 [0]),
        .I4(\FSM_onehot_cur_state_reg[2]_3 [3]),
        .O(sample_ENABLE_reg_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFA20000)) 
    \FSM_onehot_cur_state[2]_i_1 
       (.I0(Q[4]),
        .I1(cur_state),
        .I2(\FSM_onehot_cur_state_reg[2] ),
        .I3(Q[3]),
        .I4(sample_ENABLE_reg_0),
        .I5(\FSM_onehot_cur_state[2]_i_3_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF11155515)) 
    \FSM_onehot_cur_state[2]_i_3 
       (.I0(\FSM_onehot_cur_state[2]_i_5_n_0 ),
        .I1(cur_state),
        .I2(\FSM_onehot_cur_state_reg[2]_0 ),
        .I3(\FSM_onehot_cur_state_reg[2]_1 ),
        .I4(\FSM_onehot_cur_state_reg[2]_2 ),
        .I5(\FSM_onehot_cur_state[2]_i_8_n_0 ),
        .O(\FSM_onehot_cur_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \FSM_onehot_cur_state[2]_i_5 
       (.I0(Q[2]),
        .I1(\FSM_onehot_cur_state_reg[2]_3 [3]),
        .I2(\FSM_onehot_cur_state_reg[2]_3 [0]),
        .I3(\FSM_onehot_cur_state_reg[2]_3 [1]),
        .I4(\FSM_onehot_cur_state_reg[2]_3 [2]),
        .I5(sample_ENABLE),
        .O(\FSM_onehot_cur_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h44444444FF4F4444)) 
    \FSM_onehot_cur_state[2]_i_8 
       (.I0(\FSM_onehot_cur_state[2]_i_3_0 ),
        .I1(\FSM_onehot_cur_state[2]_i_3_1 ),
        .I2(\FSM_onehot_cur_state[2]_i_3_2 ),
        .I3(\FSM_onehot_cur_state[2]_i_3_3 ),
        .I4(sample_ENABLE_reg_0),
        .I5(cur_state),
        .O(\FSM_onehot_cur_state[2]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFF44444)) 
    \FSM_onehot_cur_state[6]_i_1 
       (.I0(sample_ENABLE_reg_0),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(SURE),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hC300AAAA0000AAAA)) 
    \FSM_onehot_cur_state[7]_i_1 
       (.I0(Q[3]),
        .I1(\FSM_onehot_cur_state_reg[7] ),
        .I2(\FSM_onehot_cur_state_reg[7]_0 ),
        .I3(Q[4]),
        .I4(sample_ENABLE_reg_0),
        .I5(cur_state),
        .O(D[2]));
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry_n_4,counter0_carry_n_5,counter0_carry_n_6,counter0_carry_n_7}),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__0_n_4,counter0_carry__0_n_5,counter0_carry__0_n_6,counter0_carry__0_n_7}),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__1_n_4,counter0_carry__1_n_5,counter0_carry__1_n_6,counter0_carry__1_n_7}),
        .S({\counter_reg_n_0_[12] ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__2_n_4,counter0_carry__2_n_5,counter0_carry__2_n_6,counter0_carry__2_n_7}),
        .S({\counter_reg_n_0_[16] ,\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] }));
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({counter0_carry__3_n_0,counter0_carry__3_n_1,counter0_carry__3_n_2,counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__3_n_4,counter0_carry__3_n_5,counter0_carry__3_n_6,counter0_carry__3_n_7}),
        .S({\counter_reg_n_0_[20] ,\counter_reg_n_0_[19] ,\counter_reg_n_0_[18] ,\counter_reg_n_0_[17] }));
  CARRY4 counter0_carry__4
       (.CI(counter0_carry__3_n_0),
        .CO({counter0_carry__4_n_0,counter0_carry__4_n_1,counter0_carry__4_n_2,counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__4_n_4,counter0_carry__4_n_5,counter0_carry__4_n_6,counter0_carry__4_n_7}),
        .S({\counter_reg_n_0_[24] ,\counter_reg_n_0_[23] ,\counter_reg_n_0_[22] ,\counter_reg_n_0_[21] }));
  CARRY4 counter0_carry__5
       (.CI(counter0_carry__4_n_0),
        .CO({counter0_carry__5_n_0,counter0_carry__5_n_1,counter0_carry__5_n_2,counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__5_n_4,counter0_carry__5_n_5,counter0_carry__5_n_6,counter0_carry__5_n_7}),
        .S({\counter_reg_n_0_[28] ,\counter_reg_n_0_[27] ,\counter_reg_n_0_[26] ,\counter_reg_n_0_[25] }));
  CARRY4 counter0_carry__6
       (.CI(counter0_carry__5_n_0),
        .CO({NLW_counter0_carry__6_CO_UNCONNECTED[3:2],counter0_carry__6_n_2,counter0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__6_O_UNCONNECTED[3],counter0_carry__6_n_5,counter0_carry__6_n_6,counter0_carry__6_n_7}),
        .S({1'b0,\counter_reg_n_0_[31] ,\counter_reg_n_0_[30] ,\counter_reg_n_0_[29] }));
  CARRY4 counter1_carry
       (.CI(1'b0),
        .CO({counter1_carry_n_0,counter1_carry_n_1,counter1_carry_n_2,counter1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter1_carry_O_UNCONNECTED[3:0]),
        .S({counter1_carry_i_1_n_0,counter1_carry_i_2__0_n_0,counter1_carry_i_3__0_n_0,counter1_carry_i_4__0_n_0}));
  CARRY4 counter1_carry__0
       (.CI(counter1_carry_n_0),
        .CO({counter1_carry__0_n_0,counter1_carry__0_n_1,counter1_carry__0_n_2,counter1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter1_carry__0_O_UNCONNECTED[3:0]),
        .S({counter1_carry__0_i_1__0_n_0,counter1_carry__0_i_2__0_n_0,counter1_carry__0_i_3__0_n_0,counter1_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    counter1_carry__0_i_1__0
       (.I0(\counter_reg_n_0_[22] ),
        .I1(\counter_reg_n_0_[23] ),
        .I2(\counter_reg_n_0_[21] ),
        .O(counter1_carry__0_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    counter1_carry__0_i_2__0
       (.I0(\counter_reg_n_0_[19] ),
        .I1(\counter_reg_n_0_[20] ),
        .I2(\counter_reg_n_0_[18] ),
        .O(counter1_carry__0_i_2__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    counter1_carry__0_i_3__0
       (.I0(\counter_reg_n_0_[16] ),
        .I1(\counter_reg_n_0_[17] ),
        .I2(\counter_reg_n_0_[15] ),
        .O(counter1_carry__0_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0000010011111011)) 
    counter1_carry__0_i_4
       (.I0(\counter_reg_n_0_[13] ),
        .I1(\counter_reg_n_0_[14] ),
        .I2(baud_select_IBUF[1]),
        .I3(baud_select_IBUF[0]),
        .I4(baud_select_IBUF[2]),
        .I5(\counter_reg_n_0_[12] ),
        .O(counter1_carry__0_i_4_n_0));
  CARRY4 counter1_carry__1
       (.CI(counter1_carry__0_n_0),
        .CO({NLW_counter1_carry__1_CO_UNCONNECTED[3],counter1_carry__1_n_1,counter1_carry__1_n_2,counter1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,counter1_carry__1_i_1__0_n_0,counter1_carry__1_i_2__0_n_0,counter1_carry__1_i_3__0_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry__1_i_1__0
       (.I0(\counter_reg_n_0_[31] ),
        .I1(\counter_reg_n_0_[30] ),
        .O(counter1_carry__1_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    counter1_carry__1_i_2__0
       (.I0(\counter_reg_n_0_[28] ),
        .I1(\counter_reg_n_0_[29] ),
        .I2(\counter_reg_n_0_[27] ),
        .O(counter1_carry__1_i_2__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    counter1_carry__1_i_3__0
       (.I0(\counter_reg_n_0_[25] ),
        .I1(\counter_reg_n_0_[26] ),
        .I2(\counter_reg_n_0_[24] ),
        .O(counter1_carry__1_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0000100011110441)) 
    counter1_carry_i_1
       (.I0(\counter_reg_n_0_[11] ),
        .I1(\counter_reg_n_0_[10] ),
        .I2(baud_select_IBUF[1]),
        .I3(baud_select_IBUF[0]),
        .I4(baud_select_IBUF[2]),
        .I5(\counter_reg_n_0_[9] ),
        .O(counter1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000021014422001)) 
    counter1_carry_i_2__0
       (.I0(\counter_reg_n_0_[6] ),
        .I1(\counter_reg_n_0_[7] ),
        .I2(baud_select_IBUF[1]),
        .I3(baud_select_IBUF[2]),
        .I4(baud_select_IBUF[0]),
        .I5(\counter_reg_n_0_[8] ),
        .O(counter1_carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h2010400004080211)) 
    counter1_carry_i_3__0
       (.I0(\counter_reg_n_0_[4] ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(baud_select_IBUF[2]),
        .I3(baud_select_IBUF[1]),
        .I4(baud_select_IBUF[0]),
        .I5(\counter_reg_n_0_[5] ),
        .O(counter1_carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h4024200208000810)) 
    counter1_carry_i_4__0
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(baud_select_IBUF[0]),
        .I3(baud_select_IBUF[2]),
        .I4(baud_select_IBUF[1]),
        .I5(\counter_reg_n_0_[1] ),
        .O(counter1_carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h0015)) 
    \counter[0]_i_1__1 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[10]_i_1 
       (.I0(counter0_carry__1_n_6),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[11]_i_1 
       (.I0(counter0_carry__1_n_5),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[12]_i_1 
       (.I0(counter0_carry__1_n_4),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[13]_i_1 
       (.I0(counter0_carry__2_n_7),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[14]_i_1 
       (.I0(counter0_carry__2_n_6),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[15]_i_1 
       (.I0(counter0_carry__2_n_5),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[16]_i_1 
       (.I0(counter0_carry__2_n_4),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[17]_i_1 
       (.I0(counter0_carry__3_n_7),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[18]_i_1 
       (.I0(counter0_carry__3_n_6),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[19]_i_1 
       (.I0(counter0_carry__3_n_5),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[1]_i_1 
       (.I0(counter0_carry_n_7),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[20]_i_1 
       (.I0(counter0_carry__3_n_4),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[21]_i_1 
       (.I0(counter0_carry__4_n_7),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[22]_i_1 
       (.I0(counter0_carry__4_n_6),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[23]_i_1 
       (.I0(counter0_carry__4_n_5),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[24]_i_1 
       (.I0(counter0_carry__4_n_4),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[25]_i_1 
       (.I0(counter0_carry__5_n_7),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[26]_i_1 
       (.I0(counter0_carry__5_n_6),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[27]_i_1 
       (.I0(counter0_carry__5_n_5),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[28]_i_1 
       (.I0(counter0_carry__5_n_4),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[29]_i_1 
       (.I0(counter0_carry__6_n_7),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[2]_i_1 
       (.I0(counter0_carry_n_6),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[30]_i_1 
       (.I0(counter0_carry__6_n_6),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[31]_i_1 
       (.I0(counter0_carry__6_n_5),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[3]_i_1 
       (.I0(counter0_carry_n_5),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[4]_i_1 
       (.I0(counter0_carry_n_4),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[5]_i_1 
       (.I0(counter0_carry__0_n_7),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[6]_i_1 
       (.I0(counter0_carry__0_n_6),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[7]_i_1 
       (.I0(counter0_carry__0_n_5),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[8]_i_1 
       (.I0(counter0_carry__0_n_4),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[9]_i_1 
       (.I0(counter0_carry__1_n_7),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(\counter[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[0]_i_1__1_n_0 ),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[10]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[11]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[12]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[13]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[14]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[15]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[16]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[17]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[18]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[19]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[1]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[20]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[21]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[22]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[23]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[24]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[25]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[26]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[27]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[28]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[29]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[2]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[30]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[31]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[3]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[4]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[5]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[6]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[7]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[8]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[9]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h2A)) 
    sample_ENABLE_i_1
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .O(sample_ENABLE_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    sample_ENABLE_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(sample_ENABLE_i_1_n_0),
        .Q(sample_ENABLE));
  LUT2 #(
    .INIT(4'h2)) 
    \sample_counter[3]_i_1 
       (.I0(sample_ENABLE),
        .I1(AR),
        .O(E));
endmodule

module baud_controller_t
   (E,
    \FSM_sequential_cur_state_reg[1] ,
    \FSM_sequential_cur_state_reg[0] ,
    \FSM_sequential_cur_state_reg[2] ,
    CLK,
    AR,
    Tx_EN_IBUF,
    Tx_WR_IBUF,
    Q,
    cur_state,
    baud_select_IBUF);
  output [0:0]E;
  output \FSM_sequential_cur_state_reg[1] ;
  output \FSM_sequential_cur_state_reg[0] ;
  output \FSM_sequential_cur_state_reg[2] ;
  input CLK;
  input [0:0]AR;
  input Tx_EN_IBUF;
  input Tx_WR_IBUF;
  input [3:0]Q;
  input [2:0]cur_state;
  input [2:0]baud_select_IBUF;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]E;
  wire \FSM_sequential_cur_state[2]_i_2_n_0 ;
  wire \FSM_sequential_cur_state[2]_i_3_n_0 ;
  wire \FSM_sequential_cur_state_reg[0] ;
  wire \FSM_sequential_cur_state_reg[1] ;
  wire \FSM_sequential_cur_state_reg[2] ;
  wire [3:0]Q;
  wire Tx_EN_IBUF;
  wire Tx_WR_IBUF;
  wire [2:0]baud_select_IBUF;
  wire [31:0]counter;
  wire [31:1]counter0;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry__3_n_0;
  wire counter0_carry__3_n_1;
  wire counter0_carry__3_n_2;
  wire counter0_carry__3_n_3;
  wire counter0_carry__4_n_0;
  wire counter0_carry__4_n_1;
  wire counter0_carry__4_n_2;
  wire counter0_carry__4_n_3;
  wire counter0_carry__5_n_0;
  wire counter0_carry__5_n_1;
  wire counter0_carry__5_n_2;
  wire counter0_carry__5_n_3;
  wire counter0_carry__6_n_2;
  wire counter0_carry__6_n_3;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire counter1_carry__0_i_1_n_0;
  wire counter1_carry__0_i_2_n_0;
  wire counter1_carry__0_i_3_n_0;
  wire counter1_carry__0_i_4__0_n_0;
  wire counter1_carry__0_n_0;
  wire counter1_carry__0_n_1;
  wire counter1_carry__0_n_2;
  wire counter1_carry__0_n_3;
  wire counter1_carry__1_i_1_n_0;
  wire counter1_carry__1_i_2_n_0;
  wire counter1_carry__1_i_3_n_0;
  wire counter1_carry__1_n_1;
  wire counter1_carry__1_n_2;
  wire counter1_carry__1_n_3;
  wire counter1_carry_i_1__0_n_0;
  wire counter1_carry_i_2_n_0;
  wire counter1_carry_i_3_n_0;
  wire counter1_carry_i_4_n_0;
  wire counter1_carry_n_0;
  wire counter1_carry_n_1;
  wire counter1_carry_n_2;
  wire counter1_carry_n_3;
  wire [2:0]cur_state;
  wire [31:0]p_0_in;
  wire sample_ENABLE;
  wire sample_ENABLE_i_1__0_n_0;
  wire [3:2]NLW_counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_counter0_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_counter1_carry_O_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_counter1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0F70)) 
    \FSM_sequential_cur_state[0]_i_1 
       (.I0(cur_state[2]),
        .I1(cur_state[1]),
        .I2(\FSM_sequential_cur_state[2]_i_2_n_0 ),
        .I3(cur_state[0]),
        .O(\FSM_sequential_cur_state_reg[2] ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h1F20)) 
    \FSM_sequential_cur_state[1]_i_1 
       (.I0(cur_state[0]),
        .I1(cur_state[2]),
        .I2(\FSM_sequential_cur_state[2]_i_2_n_0 ),
        .I3(cur_state[1]),
        .O(\FSM_sequential_cur_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h1F80)) 
    \FSM_sequential_cur_state[2]_i_1 
       (.I0(cur_state[1]),
        .I1(cur_state[0]),
        .I2(\FSM_sequential_cur_state[2]_i_2_n_0 ),
        .I3(cur_state[2]),
        .O(\FSM_sequential_cur_state_reg[1] ));
  LUT6 #(
    .INIT(64'hFFFFFFFF40000000)) 
    \FSM_sequential_cur_state[2]_i_2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(E),
        .I5(\FSM_sequential_cur_state[2]_i_3_n_0 ),
        .O(\FSM_sequential_cur_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3322AA300022AA30)) 
    \FSM_sequential_cur_state[2]_i_3 
       (.I0(sample_ENABLE),
        .I1(cur_state[1]),
        .I2(Tx_WR_IBUF),
        .I3(cur_state[0]),
        .I4(cur_state[2]),
        .I5(Tx_EN_IBUF),
        .O(\FSM_sequential_cur_state[2]_i_3_n_0 ));
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[4:1]),
        .S(counter[4:1]));
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[8:5]),
        .S(counter[8:5]));
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[12:9]),
        .S(counter[12:9]));
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[16:13]),
        .S(counter[16:13]));
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({counter0_carry__3_n_0,counter0_carry__3_n_1,counter0_carry__3_n_2,counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[20:17]),
        .S(counter[20:17]));
  CARRY4 counter0_carry__4
       (.CI(counter0_carry__3_n_0),
        .CO({counter0_carry__4_n_0,counter0_carry__4_n_1,counter0_carry__4_n_2,counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[24:21]),
        .S(counter[24:21]));
  CARRY4 counter0_carry__5
       (.CI(counter0_carry__4_n_0),
        .CO({counter0_carry__5_n_0,counter0_carry__5_n_1,counter0_carry__5_n_2,counter0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[28:25]),
        .S(counter[28:25]));
  CARRY4 counter0_carry__6
       (.CI(counter0_carry__5_n_0),
        .CO({NLW_counter0_carry__6_CO_UNCONNECTED[3:2],counter0_carry__6_n_2,counter0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__6_O_UNCONNECTED[3],counter0[31:29]}),
        .S({1'b0,counter[31:29]}));
  CARRY4 counter1_carry
       (.CI(1'b0),
        .CO({counter1_carry_n_0,counter1_carry_n_1,counter1_carry_n_2,counter1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter1_carry_O_UNCONNECTED[3:0]),
        .S({counter1_carry_i_1__0_n_0,counter1_carry_i_2_n_0,counter1_carry_i_3_n_0,counter1_carry_i_4_n_0}));
  CARRY4 counter1_carry__0
       (.CI(counter1_carry_n_0),
        .CO({counter1_carry__0_n_0,counter1_carry__0_n_1,counter1_carry__0_n_2,counter1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter1_carry__0_O_UNCONNECTED[3:0]),
        .S({counter1_carry__0_i_1_n_0,counter1_carry__0_i_2_n_0,counter1_carry__0_i_3_n_0,counter1_carry__0_i_4__0_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    counter1_carry__0_i_1
       (.I0(counter[22]),
        .I1(counter[23]),
        .I2(counter[21]),
        .O(counter1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    counter1_carry__0_i_2
       (.I0(counter[19]),
        .I1(counter[20]),
        .I2(counter[18]),
        .O(counter1_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    counter1_carry__0_i_3
       (.I0(counter[16]),
        .I1(counter[17]),
        .I2(counter[15]),
        .O(counter1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000014111121)) 
    counter1_carry__0_i_4__0
       (.I0(counter[12]),
        .I1(counter[13]),
        .I2(baud_select_IBUF[2]),
        .I3(baud_select_IBUF[0]),
        .I4(baud_select_IBUF[1]),
        .I5(counter[14]),
        .O(counter1_carry__0_i_4__0_n_0));
  CARRY4 counter1_carry__1
       (.CI(counter1_carry__0_n_0),
        .CO({NLW_counter1_carry__1_CO_UNCONNECTED[3],counter1_carry__1_n_1,counter1_carry__1_n_2,counter1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,counter1_carry__1_i_1_n_0,counter1_carry__1_i_2_n_0,counter1_carry__1_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry__1_i_1
       (.I0(counter[31]),
        .I1(counter[30]),
        .O(counter1_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    counter1_carry__1_i_2
       (.I0(counter[28]),
        .I1(counter[29]),
        .I2(counter[27]),
        .O(counter1_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    counter1_carry__1_i_3
       (.I0(counter[25]),
        .I1(counter[26]),
        .I2(counter[24]),
        .O(counter1_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h0010200028010411)) 
    counter1_carry_i_1__0
       (.I0(counter[9]),
        .I1(counter[10]),
        .I2(baud_select_IBUF[0]),
        .I3(baud_select_IBUF[2]),
        .I4(baud_select_IBUF[1]),
        .I5(counter[11]),
        .O(counter1_carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h4000210001210011)) 
    counter1_carry_i_2
       (.I0(counter[7]),
        .I1(counter[8]),
        .I2(baud_select_IBUF[1]),
        .I3(baud_select_IBUF[2]),
        .I4(baud_select_IBUF[0]),
        .I5(counter[6]),
        .O(counter1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0040020848022010)) 
    counter1_carry_i_3
       (.I0(counter[3]),
        .I1(counter[5]),
        .I2(baud_select_IBUF[1]),
        .I3(baud_select_IBUF[2]),
        .I4(baud_select_IBUF[0]),
        .I5(counter[4]),
        .O(counter1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000211400082110)) 
    counter1_carry_i_4
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(baud_select_IBUF[2]),
        .I3(baud_select_IBUF[0]),
        .I4(counter[0]),
        .I5(baud_select_IBUF[1]),
        .O(counter1_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0015)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[10]_i_1__0 
       (.I0(counter0[10]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[11]_i_1__0 
       (.I0(counter0[11]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[12]_i_1__0 
       (.I0(counter0[12]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[13]_i_1__0 
       (.I0(counter0[13]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[14]_i_1__0 
       (.I0(counter0[14]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[15]_i_1__0 
       (.I0(counter0[15]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[16]_i_1__0 
       (.I0(counter0[16]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[17]_i_1__0 
       (.I0(counter0[17]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[18]_i_1__0 
       (.I0(counter0[18]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[19]_i_1__0 
       (.I0(counter0[19]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[1]_i_1__0 
       (.I0(counter0[1]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[20]_i_1__0 
       (.I0(counter0[20]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[21]_i_1__0 
       (.I0(counter0[21]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[22]_i_1__0 
       (.I0(counter0[22]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[23]_i_1__0 
       (.I0(counter0[23]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[24]_i_1__0 
       (.I0(counter0[24]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[25]_i_1__0 
       (.I0(counter0[25]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[26]_i_1__0 
       (.I0(counter0[26]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[27]_i_1__0 
       (.I0(counter0[27]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[28]_i_1__0 
       (.I0(counter0[28]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[29]_i_1__0 
       (.I0(counter0[29]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[2]_i_1__0 
       (.I0(counter0[2]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[30]_i_1__0 
       (.I0(counter0[30]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[30]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[31]_i_1__0 
       (.I0(counter0[31]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[3]_i_1__0 
       (.I0(counter0[3]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \counter[3]_i_1__1 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(sample_ENABLE),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[4]_i_1__0 
       (.I0(counter0[4]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[5]_i_1__0 
       (.I0(counter0[5]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[6]_i_1__0 
       (.I0(counter0[6]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[7]_i_1__0 
       (.I0(counter0[7]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[8]_i_1__0 
       (.I0(counter0[8]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h002A)) 
    \counter[9]_i_1__0 
       (.I0(counter0[9]),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[0]),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[10]),
        .Q(counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[11]),
        .Q(counter[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[12]),
        .Q(counter[12]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[13]),
        .Q(counter[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[14]),
        .Q(counter[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[15]),
        .Q(counter[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[16]),
        .Q(counter[16]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[17]),
        .Q(counter[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[18]),
        .Q(counter[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[19]),
        .Q(counter[19]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[20]),
        .Q(counter[20]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[21]),
        .Q(counter[21]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[22]),
        .Q(counter[22]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[23]),
        .Q(counter[23]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[24]),
        .Q(counter[24]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[25]),
        .Q(counter[25]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[26]),
        .Q(counter[26]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[27]),
        .Q(counter[27]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[28]),
        .Q(counter[28]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[29]),
        .Q(counter[29]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[30]),
        .Q(counter[30]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[31]),
        .Q(counter[31]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[4]),
        .Q(counter[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[5]),
        .Q(counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[6]),
        .Q(counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[7]),
        .Q(counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[8]),
        .Q(counter[8]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[9]),
        .Q(counter[9]));
  LUT3 #(
    .INIT(8'h2A)) 
    sample_ENABLE_i_1__0
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .O(sample_ENABLE_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    sample_ENABLE_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(sample_ENABLE_i_1__0_n_0),
        .Q(sample_ENABLE));
endmodule

module receiver_sampler
   (cur_state,
    D,
    CLK,
    AR,
    Tx_WR_IBUF,
    Tx_EN_IBUF,
    Q,
    \FSM_onehot_cur_state_reg[8] ,
    \FSM_onehot_cur_state_reg[8]_0 );
  output [0:0]cur_state;
  output [8:0]D;
  input CLK;
  input [0:0]AR;
  input Tx_WR_IBUF;
  input Tx_EN_IBUF;
  input [9:0]Q;
  input \FSM_onehot_cur_state_reg[8] ;
  input \FSM_onehot_cur_state_reg[8]_0 ;

  wire [0:0]AR;
  wire CLK;
  wire [8:0]D;
  wire \FSM_onehot_cur_state_reg[8] ;
  wire \FSM_onehot_cur_state_reg[8]_0 ;
  wire [9:0]Q;
  wire Tx_EN_IBUF;
  wire Tx_WR_IBUF;
  wire [0:0]cur_state;
  wire [0:0]next_state;

  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_onehot_cur_state[0]_i_1 
       (.I0(cur_state),
        .I1(Q[3]),
        .I2(\FSM_onehot_cur_state_reg[8]_0 ),
        .I3(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_onehot_cur_state[10]_i_1 
       (.I0(cur_state),
        .I1(Q[9]),
        .I2(\FSM_onehot_cur_state_reg[8]_0 ),
        .I3(Q[7]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_onehot_cur_state[11]_i_1 
       (.I0(cur_state),
        .I1(Q[7]),
        .I2(\FSM_onehot_cur_state_reg[8]_0 ),
        .I3(Q[8]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_onehot_cur_state[12]_i_1 
       (.I0(cur_state),
        .I1(Q[2]),
        .I2(\FSM_onehot_cur_state_reg[8]_0 ),
        .I3(Q[9]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \FSM_onehot_cur_state[1]_i_1 
       (.I0(Q[1]),
        .I1(cur_state),
        .I2(\FSM_onehot_cur_state_reg[8]_0 ),
        .I3(Q[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_onehot_cur_state[3]_i_1 
       (.I0(cur_state),
        .I1(Q[1]),
        .I2(\FSM_onehot_cur_state_reg[8]_0 ),
        .I3(Q[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_onehot_cur_state[4]_i_1 
       (.I0(cur_state),
        .I1(Q[5]),
        .I2(\FSM_onehot_cur_state_reg[8]_0 ),
        .I3(Q[3]),
        .O(D[3]));
  LUT5 #(
    .INIT(32'h80FF8000)) 
    \FSM_onehot_cur_state[8]_i_1 
       (.I0(Q[4]),
        .I1(cur_state),
        .I2(\FSM_onehot_cur_state_reg[8] ),
        .I3(\FSM_onehot_cur_state_reg[8]_0 ),
        .I4(Q[5]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_onehot_cur_state[9]_i_1 
       (.I0(cur_state),
        .I1(Q[8]),
        .I2(\FSM_onehot_cur_state_reg[8]_0 ),
        .I3(Q[6]),
        .O(D[5]));
  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_sequential_cur_state[0]_i_1__0 
       (.I0(cur_state),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .O(next_state));
  (* FSM_ENCODED_STATES = "LOCK:000,SAMPLE_1:010,SAMPLE_2:011,SAMPLE_3:100,SAMPLE_4:101,SAMPLE_5:110,SAMPLE_END:111,SAMPLE_START:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(next_state),
        .Q(cur_state));
endmodule

module uart_receiver
   (\Rx_DATA_reg[2]_0 ,
    \Tx_DATA[1] ,
    \Tx_DATA[5] ,
    Tx_DATA_copy_OBUF,
    CLK,
    AR,
    \FSM_onehot_cur_state_reg[2]_0 ,
    \FSM_onehot_cur_state_reg[2]_1 ,
    \FSM_onehot_cur_state_reg[2]_2 ,
    \FSM_onehot_cur_state_reg[2]_3 ,
    Tx_WR_IBUF,
    Tx_EN_IBUF,
    \FSM_onehot_cur_state_reg[8]_0 ,
    Tx_DATA_IBUF,
    baud_select_IBUF);
  output \Rx_DATA_reg[2]_0 ;
  output \Tx_DATA[1] ;
  output \Tx_DATA[5] ;
  output [7:0]Tx_DATA_copy_OBUF;
  input CLK;
  input [0:0]AR;
  input \FSM_onehot_cur_state_reg[2]_0 ;
  input \FSM_onehot_cur_state_reg[2]_1 ;
  input \FSM_onehot_cur_state_reg[2]_2 ;
  input \FSM_onehot_cur_state_reg[2]_3 ;
  input Tx_WR_IBUF;
  input Tx_EN_IBUF;
  input \FSM_onehot_cur_state_reg[8]_0 ;
  input [7:0]Tx_DATA_IBUF;
  input [2:0]baud_select_IBUF;

  wire [0:0]AR;
  wire CLK;
  wire \FSM_onehot_cur_state[2]_i_10_n_0 ;
  wire \FSM_onehot_cur_state[2]_i_11_n_0 ;
  wire \FSM_onehot_cur_state[2]_i_9_n_0 ;
  wire \FSM_onehot_cur_state[5]_i_1_n_0 ;
  wire \FSM_onehot_cur_state[7]_i_3_n_0 ;
  wire \FSM_onehot_cur_state_reg[2]_0 ;
  wire \FSM_onehot_cur_state_reg[2]_1 ;
  wire \FSM_onehot_cur_state_reg[2]_2 ;
  wire \FSM_onehot_cur_state_reg[2]_3 ;
  wire \FSM_onehot_cur_state_reg[8]_0 ;
  wire \FSM_onehot_cur_state_reg_n_0_[0] ;
  wire \FSM_onehot_cur_state_reg_n_0_[10] ;
  wire \FSM_onehot_cur_state_reg_n_0_[11] ;
  wire \FSM_onehot_cur_state_reg_n_0_[12] ;
  wire \FSM_onehot_cur_state_reg_n_0_[1] ;
  wire \FSM_onehot_cur_state_reg_n_0_[2] ;
  wire \FSM_onehot_cur_state_reg_n_0_[3] ;
  wire \FSM_onehot_cur_state_reg_n_0_[4] ;
  wire \FSM_onehot_cur_state_reg_n_0_[5] ;
  wire \FSM_onehot_cur_state_reg_n_0_[8] ;
  wire \Rx_DATA[0]_i_1_n_0 ;
  wire \Rx_DATA[1]_i_1_n_0 ;
  wire \Rx_DATA[2]_i_1_n_0 ;
  wire \Rx_DATA[3]_i_1_n_0 ;
  wire \Rx_DATA[4]_i_1_n_0 ;
  wire \Rx_DATA[4]_i_2_n_0 ;
  wire \Rx_DATA[4]_i_3_n_0 ;
  wire \Rx_DATA[5]_i_1_n_0 ;
  wire \Rx_DATA[6]_i_1_n_0 ;
  wire \Rx_DATA[6]_i_2_n_0 ;
  wire \Rx_DATA[6]_i_3_n_0 ;
  wire \Rx_DATA[7]_i_1_n_0 ;
  wire \Rx_DATA[7]_i_2_n_0 ;
  wire \Rx_DATA[7]_i_3_n_0 ;
  wire \Rx_DATA[7]_i_4_n_0 ;
  wire \Rx_DATA_reg[2]_0 ;
  wire SURE;
  wire SURE_0;
  wire SURE_i_1_n_0;
  wire SURE_i_2_n_0;
  wire \Tx_DATA[1] ;
  wire \Tx_DATA[5] ;
  wire [7:0]Tx_DATA_IBUF;
  wire [7:0]Tx_DATA_copy_OBUF;
  wire Tx_EN_IBUF;
  wire Tx_WR_IBUF;
  wire baud_controller_r_inst_n_0;
  wire baud_controller_r_inst_n_1;
  wire baud_controller_r_inst_n_2;
  wire baud_controller_r_inst_n_3;
  wire [2:0]baud_select_IBUF;
  wire [0:0]cur_state;
  wire p_0_in;
  wire p_0_in1_in;
  wire receiver_sampler_inst_n_1;
  wire receiver_sampler_inst_n_2;
  wire receiver_sampler_inst_n_3;
  wire receiver_sampler_inst_n_4;
  wire receiver_sampler_inst_n_5;
  wire receiver_sampler_inst_n_6;
  wire receiver_sampler_inst_n_7;
  wire receiver_sampler_inst_n_8;
  wire receiver_sampler_inst_n_9;
  wire sample_counter;
  wire \sample_counter[0]_i_1_n_0 ;
  wire \sample_counter[1]_i_1_n_0 ;
  wire \sample_counter[2]_i_1_n_0 ;
  wire \sample_counter[3]_i_2_n_0 ;
  wire \sample_counter_reg_n_0_[0] ;
  wire \sample_counter_reg_n_0_[1] ;
  wire \sample_counter_reg_n_0_[2] ;
  wire \sample_counter_reg_n_0_[3] ;

  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_onehot_cur_state[2]_i_10 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[10] ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[8] ),
        .I2(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .O(\FSM_onehot_cur_state[2]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_onehot_cur_state[2]_i_11 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_cur_state_reg_n_0_[0] ),
        .I3(\FSM_onehot_cur_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[12] ),
        .O(\FSM_onehot_cur_state[2]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \FSM_onehot_cur_state[2]_i_9 
       (.I0(SURE),
        .I1(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .O(\FSM_onehot_cur_state[2]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT5 #(
    .INIT(32'h00007770)) 
    \FSM_onehot_cur_state[5]_i_1 
       (.I0(Tx_WR_IBUF),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I4(SURE),
        .O(\FSM_onehot_cur_state[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h69969669)) 
    \FSM_onehot_cur_state[7]_i_2 
       (.I0(Tx_DATA_copy_OBUF[2]),
        .I1(Tx_DATA_copy_OBUF[3]),
        .I2(Tx_DATA_copy_OBUF[4]),
        .I3(Tx_DATA_copy_OBUF[5]),
        .I4(\FSM_onehot_cur_state[7]_i_3_n_0 ),
        .O(\Rx_DATA_reg[2]_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \FSM_onehot_cur_state[7]_i_3 
       (.I0(Tx_DATA_copy_OBUF[1]),
        .I1(Tx_DATA_copy_OBUF[0]),
        .I2(Tx_DATA_copy_OBUF[7]),
        .I3(Tx_DATA_copy_OBUF[6]),
        .O(\FSM_onehot_cur_state[7]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000000001,BIT_3:0000000000010,BIT_1:0000000010000,IDLE:0000000000100,DISABLED:0000000100000,END_BIT:0000010000000,BIT_0:0000100000000,START_BIT:0000001000000,BIT_6:0010000000000,PARITY:0001000000000,BIT_5:1000000000000,BIT_7:0100000000000,BIT_4:0000000001000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(receiver_sampler_inst_n_9),
        .Q(\FSM_onehot_cur_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000000001,BIT_3:0000000000010,BIT_1:0000000010000,IDLE:0000000000100,DISABLED:0000000100000,END_BIT:0000010000000,BIT_0:0000100000000,START_BIT:0000001000000,BIT_6:0010000000000,PARITY:0001000000000,BIT_5:1000000000000,BIT_7:0100000000000,BIT_4:0000000001000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(receiver_sampler_inst_n_3),
        .Q(\FSM_onehot_cur_state_reg_n_0_[10] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000000001,BIT_3:0000000000010,BIT_1:0000000010000,IDLE:0000000000100,DISABLED:0000000100000,END_BIT:0000010000000,BIT_0:0000100000000,START_BIT:0000001000000,BIT_6:0010000000000,PARITY:0001000000000,BIT_5:1000000000000,BIT_7:0100000000000,BIT_4:0000000001000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(receiver_sampler_inst_n_2),
        .Q(\FSM_onehot_cur_state_reg_n_0_[11] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000000001,BIT_3:0000000000010,BIT_1:0000000010000,IDLE:0000000000100,DISABLED:0000000100000,END_BIT:0000010000000,BIT_0:0000100000000,START_BIT:0000001000000,BIT_6:0010000000000,PARITY:0001000000000,BIT_5:1000000000000,BIT_7:0100000000000,BIT_4:0000000001000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(receiver_sampler_inst_n_1),
        .Q(\FSM_onehot_cur_state_reg_n_0_[12] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000000001,BIT_3:0000000000010,BIT_1:0000000010000,IDLE:0000000000100,DISABLED:0000000100000,END_BIT:0000010000000,BIT_0:0000100000000,START_BIT:0000001000000,BIT_6:0010000000000,PARITY:0001000000000,BIT_5:1000000000000,BIT_7:0100000000000,BIT_4:0000000001000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(receiver_sampler_inst_n_8),
        .Q(\FSM_onehot_cur_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000000001,BIT_3:0000000000010,BIT_1:0000000010000,IDLE:0000000000100,DISABLED:0000000100000,END_BIT:0000010000000,BIT_0:0000100000000,START_BIT:0000001000000,BIT_6:0010000000000,PARITY:0001000000000,BIT_5:1000000000000,BIT_7:0100000000000,BIT_4:0000000001000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_cur_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(baud_controller_r_inst_n_2),
        .PRE(AR),
        .Q(\FSM_onehot_cur_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000000001,BIT_3:0000000000010,BIT_1:0000000010000,IDLE:0000000000100,DISABLED:0000000100000,END_BIT:0000010000000,BIT_0:0000100000000,START_BIT:0000001000000,BIT_6:0010000000000,PARITY:0001000000000,BIT_5:1000000000000,BIT_7:0100000000000,BIT_4:0000000001000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(receiver_sampler_inst_n_7),
        .Q(\FSM_onehot_cur_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000000001,BIT_3:0000000000010,BIT_1:0000000010000,IDLE:0000000000100,DISABLED:0000000100000,END_BIT:0000010000000,BIT_0:0000100000000,START_BIT:0000001000000,BIT_6:0010000000000,PARITY:0001000000000,BIT_5:1000000000000,BIT_7:0100000000000,BIT_4:0000000001000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(receiver_sampler_inst_n_6),
        .Q(\FSM_onehot_cur_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000000001,BIT_3:0000000000010,BIT_1:0000000010000,IDLE:0000000000100,DISABLED:0000000100000,END_BIT:0000010000000,BIT_0:0000100000000,START_BIT:0000001000000,BIT_6:0010000000000,PARITY:0001000000000,BIT_5:1000000000000,BIT_7:0100000000000,BIT_4:0000000001000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_cur_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000000001,BIT_3:0000000000010,BIT_1:0000000010000,IDLE:0000000000100,DISABLED:0000000100000,END_BIT:0000010000000,BIT_0:0000100000000,START_BIT:0000001000000,BIT_6:0010000000000,PARITY:0001000000000,BIT_5:1000000000000,BIT_7:0100000000000,BIT_4:0000000001000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_1),
        .Q(SURE_0));
  (* FSM_ENCODED_STATES = "BIT_2:0000000000001,BIT_3:0000000000010,BIT_1:0000000010000,IDLE:0000000000100,DISABLED:0000000100000,END_BIT:0000010000000,BIT_0:0000100000000,START_BIT:0000001000000,BIT_6:0010000000000,PARITY:0001000000000,BIT_5:1000000000000,BIT_7:0100000000000,BIT_4:0000000001000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_0),
        .Q(p_0_in));
  (* FSM_ENCODED_STATES = "BIT_2:0000000000001,BIT_3:0000000000010,BIT_1:0000000010000,IDLE:0000000000100,DISABLED:0000000100000,END_BIT:0000010000000,BIT_0:0000100000000,START_BIT:0000001000000,BIT_6:0010000000000,PARITY:0001000000000,BIT_5:1000000000000,BIT_7:0100000000000,BIT_4:0000000001000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(receiver_sampler_inst_n_5),
        .Q(\FSM_onehot_cur_state_reg_n_0_[8] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000000001,BIT_3:0000000000010,BIT_1:0000000010000,IDLE:0000000000100,DISABLED:0000000100000,END_BIT:0000010000000,BIT_0:0000100000000,START_BIT:0000001000000,BIT_6:0010000000000,PARITY:0001000000000,BIT_5:1000000000000,BIT_7:0100000000000,BIT_4:0000000001000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(receiver_sampler_inst_n_4),
        .Q(p_0_in1_in));
  LUT6 #(
    .INIT(64'h9FFFFFFF00600000)) 
    \Rx_DATA[0]_i_1 
       (.I0(\Rx_DATA[7]_i_3_n_0 ),
        .I1(\Rx_DATA[7]_i_2_n_0 ),
        .I2(\Rx_DATA[7]_i_4_n_0 ),
        .I3(\FSM_onehot_cur_state_reg[8]_0 ),
        .I4(\Rx_DATA[4]_i_2_n_0 ),
        .I5(Tx_DATA_copy_OBUF[0]),
        .O(\Rx_DATA[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF40000000)) 
    \Rx_DATA[1]_i_1 
       (.I0(\FSM_onehot_cur_state_reg[8]_0 ),
        .I1(\Rx_DATA[7]_i_4_n_0 ),
        .I2(\Rx_DATA[6]_i_3_n_0 ),
        .I3(\Rx_DATA[6]_i_2_n_0 ),
        .I4(\Rx_DATA[7]_i_3_n_0 ),
        .I5(Tx_DATA_copy_OBUF[1]),
        .O(\Rx_DATA[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFF00400000)) 
    \Rx_DATA[2]_i_1 
       (.I0(\FSM_onehot_cur_state_reg[8]_0 ),
        .I1(\Rx_DATA[7]_i_4_n_0 ),
        .I2(\Rx_DATA[6]_i_3_n_0 ),
        .I3(\Rx_DATA[6]_i_2_n_0 ),
        .I4(\Rx_DATA[7]_i_3_n_0 ),
        .I5(Tx_DATA_copy_OBUF[2]),
        .O(\Rx_DATA[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0040)) 
    \Rx_DATA[3]_i_1 
       (.I0(\FSM_onehot_cur_state_reg[8]_0 ),
        .I1(\Rx_DATA[7]_i_2_n_0 ),
        .I2(\Rx_DATA[7]_i_4_n_0 ),
        .I3(\Rx_DATA[7]_i_3_n_0 ),
        .I4(Tx_DATA_copy_OBUF[3]),
        .O(\Rx_DATA[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE7FFFFFF00180000)) 
    \Rx_DATA[4]_i_1 
       (.I0(\Rx_DATA[7]_i_2_n_0 ),
        .I1(\Rx_DATA[7]_i_3_n_0 ),
        .I2(\Rx_DATA[7]_i_4_n_0 ),
        .I3(\FSM_onehot_cur_state_reg[8]_0 ),
        .I4(\Rx_DATA[4]_i_2_n_0 ),
        .I5(Tx_DATA_copy_OBUF[4]),
        .O(\Rx_DATA[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h3020)) 
    \Rx_DATA[4]_i_2 
       (.I0(\Rx_DATA[7]_i_3_n_0 ),
        .I1(\Rx_DATA[6]_i_3_n_0 ),
        .I2(\Rx_DATA[4]_i_3_n_0 ),
        .I3(\Rx_DATA[7]_i_4_n_0 ),
        .O(\Rx_DATA[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \Rx_DATA[4]_i_3 
       (.I0(p_0_in1_in),
        .I1(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_cur_state_reg_n_0_[8] ),
        .I3(\FSM_onehot_cur_state_reg_n_0_[10] ),
        .O(\Rx_DATA[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF7FFFFFF04000000)) 
    \Rx_DATA[5]_i_1 
       (.I0(\FSM_onehot_cur_state_reg[8]_0 ),
        .I1(\Rx_DATA[7]_i_4_n_0 ),
        .I2(\Rx_DATA[7]_i_3_n_0 ),
        .I3(\Rx_DATA[6]_i_2_n_0 ),
        .I4(\Rx_DATA[6]_i_3_n_0 ),
        .I5(Tx_DATA_copy_OBUF[5]),
        .O(\Rx_DATA[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFF00040000)) 
    \Rx_DATA[6]_i_1 
       (.I0(\FSM_onehot_cur_state_reg[8]_0 ),
        .I1(\Rx_DATA[7]_i_4_n_0 ),
        .I2(\Rx_DATA[7]_i_3_n_0 ),
        .I3(\Rx_DATA[6]_i_2_n_0 ),
        .I4(\Rx_DATA[6]_i_3_n_0 ),
        .I5(Tx_DATA_copy_OBUF[6]),
        .O(\Rx_DATA[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \Rx_DATA[6]_i_2 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_cur_state_reg_n_0_[10] ),
        .I3(\FSM_onehot_cur_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I5(p_0_in1_in),
        .O(\Rx_DATA[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \Rx_DATA[6]_i_3 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_cur_state_reg_n_0_[4] ),
        .I3(p_0_in),
        .I4(\FSM_onehot_cur_state_reg_n_0_[10] ),
        .I5(\FSM_onehot_cur_state_reg_n_0_[12] ),
        .O(\Rx_DATA[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFF7F0040)) 
    \Rx_DATA[7]_i_1 
       (.I0(\FSM_onehot_cur_state_reg[8]_0 ),
        .I1(\Rx_DATA[7]_i_2_n_0 ),
        .I2(\Rx_DATA[7]_i_3_n_0 ),
        .I3(\Rx_DATA[7]_i_4_n_0 ),
        .I4(Tx_DATA_copy_OBUF[7]),
        .O(\Rx_DATA[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \Rx_DATA[7]_i_2 
       (.I0(\Rx_DATA[6]_i_2_n_0 ),
        .I1(\Rx_DATA[6]_i_3_n_0 ),
        .O(\Rx_DATA[7]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \Rx_DATA[7]_i_3 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[12] ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[10] ),
        .I2(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .O(\Rx_DATA[7]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \Rx_DATA[7]_i_4 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I2(p_0_in1_in),
        .I3(\FSM_onehot_cur_state_reg_n_0_[11] ),
        .I4(p_0_in),
        .O(\Rx_DATA[7]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Rx_DATA[0]_i_1_n_0 ),
        .Q(Tx_DATA_copy_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Rx_DATA[1]_i_1_n_0 ),
        .Q(Tx_DATA_copy_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Rx_DATA[2]_i_1_n_0 ),
        .Q(Tx_DATA_copy_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Rx_DATA[3]_i_1_n_0 ),
        .Q(Tx_DATA_copy_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Rx_DATA[4]_i_1_n_0 ),
        .Q(Tx_DATA_copy_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Rx_DATA[5]_i_1_n_0 ),
        .Q(Tx_DATA_copy_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Rx_DATA[6]_i_1_n_0 ),
        .Q(Tx_DATA_copy_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\Rx_DATA[7]_i_1_n_0 ),
        .Q(Tx_DATA_copy_OBUF[7]));
  LUT6 #(
    .INIT(64'hFD555555FC000000)) 
    SURE_i_1
       (.I0(SURE_0),
        .I1(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I3(SURE_i_2_n_0),
        .I4(\FSM_onehot_cur_state_reg[8]_0 ),
        .I5(SURE),
        .O(SURE_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    SURE_i_2
       (.I0(Tx_EN_IBUF),
        .I1(Tx_WR_IBUF),
        .O(SURE_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    SURE_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(SURE_i_1_n_0),
        .Q(SURE));
  LUT4 #(
    .INIT(16'h6996)) 
    TxD_OBUF_inst_i_4
       (.I0(Tx_DATA_IBUF[1]),
        .I1(Tx_DATA_IBUF[0]),
        .I2(Tx_DATA_IBUF[7]),
        .I3(Tx_DATA_IBUF[6]),
        .O(\Tx_DATA[1] ));
  LUT4 #(
    .INIT(16'h6996)) 
    TxD_OBUF_inst_i_5
       (.I0(Tx_DATA_IBUF[5]),
        .I1(Tx_DATA_IBUF[4]),
        .I2(Tx_DATA_IBUF[3]),
        .I3(Tx_DATA_IBUF[2]),
        .O(\Tx_DATA[5] ));
  baud_controller_r baud_controller_r_inst
       (.AR(AR),
        .CLK(CLK),
        .D({baud_controller_r_inst_n_0,baud_controller_r_inst_n_1,baud_controller_r_inst_n_2}),
        .E(sample_counter),
        .\FSM_onehot_cur_state[2]_i_3_0 (\FSM_onehot_cur_state[2]_i_9_n_0 ),
        .\FSM_onehot_cur_state[2]_i_3_1 (SURE_i_2_n_0),
        .\FSM_onehot_cur_state[2]_i_3_2 (\FSM_onehot_cur_state[2]_i_10_n_0 ),
        .\FSM_onehot_cur_state[2]_i_3_3 (\FSM_onehot_cur_state[2]_i_11_n_0 ),
        .\FSM_onehot_cur_state_reg[2] (\FSM_onehot_cur_state_reg[2]_0 ),
        .\FSM_onehot_cur_state_reg[2]_0 (\FSM_onehot_cur_state_reg[2]_1 ),
        .\FSM_onehot_cur_state_reg[2]_1 (\FSM_onehot_cur_state_reg[2]_2 ),
        .\FSM_onehot_cur_state_reg[2]_2 (\FSM_onehot_cur_state_reg[2]_3 ),
        .\FSM_onehot_cur_state_reg[2]_3 ({\sample_counter_reg_n_0_[3] ,\sample_counter_reg_n_0_[2] ,\sample_counter_reg_n_0_[1] ,\sample_counter_reg_n_0_[0] }),
        .\FSM_onehot_cur_state_reg[7] (\FSM_onehot_cur_state_reg[8]_0 ),
        .\FSM_onehot_cur_state_reg[7]_0 (\Rx_DATA_reg[2]_0 ),
        .Q({p_0_in1_in,p_0_in,SURE_0,\FSM_onehot_cur_state_reg_n_0_[5] ,\FSM_onehot_cur_state_reg_n_0_[2] }),
        .SURE(SURE),
        .Tx_EN_IBUF(Tx_EN_IBUF),
        .Tx_WR_IBUF(Tx_WR_IBUF),
        .baud_select_IBUF(baud_select_IBUF),
        .cur_state(cur_state),
        .sample_ENABLE_reg_0(baud_controller_r_inst_n_3));
  receiver_sampler receiver_sampler_inst
       (.AR(AR),
        .CLK(CLK),
        .D({receiver_sampler_inst_n_1,receiver_sampler_inst_n_2,receiver_sampler_inst_n_3,receiver_sampler_inst_n_4,receiver_sampler_inst_n_5,receiver_sampler_inst_n_6,receiver_sampler_inst_n_7,receiver_sampler_inst_n_8,receiver_sampler_inst_n_9}),
        .\FSM_onehot_cur_state_reg[8] (\FSM_onehot_cur_state_reg[8]_0 ),
        .\FSM_onehot_cur_state_reg[8]_0 (baud_controller_r_inst_n_3),
        .Q({\FSM_onehot_cur_state_reg_n_0_[12] ,\FSM_onehot_cur_state_reg_n_0_[11] ,\FSM_onehot_cur_state_reg_n_0_[10] ,p_0_in1_in,\FSM_onehot_cur_state_reg_n_0_[8] ,SURE_0,\FSM_onehot_cur_state_reg_n_0_[4] ,\FSM_onehot_cur_state_reg_n_0_[3] ,\FSM_onehot_cur_state_reg_n_0_[1] ,\FSM_onehot_cur_state_reg_n_0_[0] }),
        .Tx_EN_IBUF(Tx_EN_IBUF),
        .Tx_WR_IBUF(Tx_WR_IBUF),
        .cur_state(cur_state));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sample_counter[0]_i_1 
       (.I0(\sample_counter_reg_n_0_[0] ),
        .O(\sample_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sample_counter[1]_i_1 
       (.I0(\sample_counter_reg_n_0_[0] ),
        .I1(\sample_counter_reg_n_0_[1] ),
        .O(\sample_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \sample_counter[2]_i_1 
       (.I0(\sample_counter_reg_n_0_[2] ),
        .I1(\sample_counter_reg_n_0_[1] ),
        .I2(\sample_counter_reg_n_0_[0] ),
        .O(\sample_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \sample_counter[3]_i_2 
       (.I0(\sample_counter_reg_n_0_[3] ),
        .I1(\sample_counter_reg_n_0_[0] ),
        .I2(\sample_counter_reg_n_0_[1] ),
        .I3(\sample_counter_reg_n_0_[2] ),
        .O(\sample_counter[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[0] 
       (.C(CLK),
        .CE(sample_counter),
        .CLR(AR),
        .D(\sample_counter[0]_i_1_n_0 ),
        .Q(\sample_counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[1] 
       (.C(CLK),
        .CE(sample_counter),
        .CLR(AR),
        .D(\sample_counter[1]_i_1_n_0 ),
        .Q(\sample_counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[2] 
       (.C(CLK),
        .CE(sample_counter),
        .CLR(AR),
        .D(\sample_counter[2]_i_1_n_0 ),
        .Q(\sample_counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[3] 
       (.C(CLK),
        .CE(sample_counter),
        .CLR(AR),
        .D(\sample_counter[3]_i_2_n_0 ),
        .Q(\sample_counter_reg_n_0_[3] ));
endmodule

module uart_transmitter
   (\FSM_sequential_cur_state_reg[0]_0 ,
    \FSM_sequential_cur_state_reg[1]_0 ,
    TxD_OBUF,
    \FSM_sequential_cur_state_reg[2]_0 ,
    \FSM_sequential_cur_state_reg[2]_1 ,
    \FSM_sequential_cur_state_reg[1]_1 ,
    Tx_BUSY_OBUF,
    CLK,
    AR,
    Tx_EN_IBUF,
    Tx_WR_IBUF,
    \FSM_onehot_cur_state_reg[2] ,
    \FSM_onehot_cur_state_reg[8] ,
    \FSM_onehot_cur_state_reg[8]_0 ,
    Tx_DATA_IBUF,
    baud_select_IBUF);
  output \FSM_sequential_cur_state_reg[0]_0 ;
  output \FSM_sequential_cur_state_reg[1]_0 ;
  output TxD_OBUF;
  output \FSM_sequential_cur_state_reg[2]_0 ;
  output \FSM_sequential_cur_state_reg[2]_1 ;
  output \FSM_sequential_cur_state_reg[1]_1 ;
  output Tx_BUSY_OBUF;
  input CLK;
  input [0:0]AR;
  input Tx_EN_IBUF;
  input Tx_WR_IBUF;
  input \FSM_onehot_cur_state_reg[2] ;
  input \FSM_onehot_cur_state_reg[8] ;
  input \FSM_onehot_cur_state_reg[8]_0 ;
  input [7:0]Tx_DATA_IBUF;
  input [2:0]baud_select_IBUF;

  wire [0:0]AR;
  wire CLK;
  wire \FSM_onehot_cur_state_reg[2] ;
  wire \FSM_onehot_cur_state_reg[8] ;
  wire \FSM_onehot_cur_state_reg[8]_0 ;
  wire \FSM_sequential_cur_state_reg[0]_0 ;
  wire \FSM_sequential_cur_state_reg[1]_0 ;
  wire \FSM_sequential_cur_state_reg[1]_1 ;
  wire \FSM_sequential_cur_state_reg[2]_0 ;
  wire \FSM_sequential_cur_state_reg[2]_1 ;
  wire TxD_OBUF;
  wire TxD_OBUF_inst_i_3_n_0;
  wire TxD_OBUF_inst_i_6_n_0;
  wire TxD_OBUF_inst_i_7_n_0;
  wire Tx_BUSY_OBUF;
  wire [7:0]Tx_DATA_IBUF;
  wire Tx_EN_IBUF;
  wire Tx_WR_IBUF;
  wire baud_controller_t_inst_n_1;
  wire baud_controller_t_inst_n_2;
  wire baud_controller_t_inst_n_3;
  wire [2:0]baud_select_IBUF;
  wire counter0_0;
  wire \counter[0]_i_1__0_n_0 ;
  wire [3:0]counter_reg__0;
  wire [2:0]cur_state;
  wire [3:1]p_0_in__0;

  LUT6 #(
    .INIT(64'h0704F7F7F8FB0808)) 
    \FSM_onehot_cur_state[2]_i_2 
       (.I0(\FSM_sequential_cur_state_reg[1]_0 ),
        .I1(cur_state[0]),
        .I2(cur_state[2]),
        .I3(TxD_OBUF_inst_i_3_n_0),
        .I4(cur_state[1]),
        .I5(\FSM_onehot_cur_state_reg[2] ),
        .O(\FSM_sequential_cur_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h7DD7D77DD77D7DD7)) 
    \FSM_onehot_cur_state[2]_i_4 
       (.I0(cur_state[1]),
        .I1(\FSM_onehot_cur_state_reg[8] ),
        .I2(Tx_DATA_IBUF[5]),
        .I3(Tx_DATA_IBUF[4]),
        .I4(Tx_DATA_IBUF[3]),
        .I5(Tx_DATA_IBUF[2]),
        .O(\FSM_sequential_cur_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_onehot_cur_state[2]_i_6 
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .O(\FSM_sequential_cur_state_reg[2]_1 ));
  LUT5 #(
    .INIT(32'h8A888AAA)) 
    \FSM_onehot_cur_state[2]_i_7 
       (.I0(cur_state[1]),
        .I1(cur_state[2]),
        .I2(TxD_OBUF_inst_i_7_n_0),
        .I3(counter_reg__0[2]),
        .I4(TxD_OBUF_inst_i_6_n_0),
        .O(\FSM_sequential_cur_state_reg[1]_1 ));
  (* FSM_ENCODED_STATES = "DISABLED:101,IDLE:000,START_BIT:001,TRANSMIT:010,PARITY:011,END_BIT:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_t_inst_n_3),
        .Q(cur_state[0]));
  (* FSM_ENCODED_STATES = "DISABLED:101,IDLE:000,START_BIT:001,TRANSMIT:010,PARITY:011,END_BIT:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_t_inst_n_2),
        .Q(cur_state[1]));
  (* FSM_ENCODED_STATES = "DISABLED:101,IDLE:000,START_BIT:001,TRANSMIT:010,PARITY:011,END_BIT:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_t_inst_n_1),
        .Q(cur_state[2]));
  LUT1 #(
    .INIT(2'h1)) 
    TxD_OBUF_inst_i_1
       (.I0(\FSM_sequential_cur_state_reg[2]_0 ),
        .O(TxD_OBUF));
  LUT6 #(
    .INIT(64'hFD30CD30CD30FD30)) 
    TxD_OBUF_inst_i_2
       (.I0(TxD_OBUF_inst_i_3_n_0),
        .I1(cur_state[2]),
        .I2(cur_state[0]),
        .I3(cur_state[1]),
        .I4(\FSM_onehot_cur_state_reg[8] ),
        .I5(\FSM_onehot_cur_state_reg[8]_0 ),
        .O(\FSM_sequential_cur_state_reg[2]_0 ));
  MUXF7 TxD_OBUF_inst_i_3
       (.I0(TxD_OBUF_inst_i_6_n_0),
        .I1(TxD_OBUF_inst_i_7_n_0),
        .O(TxD_OBUF_inst_i_3_n_0),
        .S(counter_reg__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    TxD_OBUF_inst_i_6
       (.I0(Tx_DATA_IBUF[4]),
        .I1(Tx_DATA_IBUF[5]),
        .I2(counter_reg__0[1]),
        .I3(Tx_DATA_IBUF[6]),
        .I4(counter_reg__0[0]),
        .I5(Tx_DATA_IBUF[7]),
        .O(TxD_OBUF_inst_i_6_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    TxD_OBUF_inst_i_7
       (.I0(Tx_DATA_IBUF[0]),
        .I1(Tx_DATA_IBUF[1]),
        .I2(counter_reg__0[1]),
        .I3(Tx_DATA_IBUF[2]),
        .I4(counter_reg__0[0]),
        .I5(Tx_DATA_IBUF[3]),
        .O(TxD_OBUF_inst_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h54)) 
    Tx_BUSY_OBUF_inst_i_1
       (.I0(cur_state[2]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .O(Tx_BUSY_OBUF));
  baud_controller_t baud_controller_t_inst
       (.AR(AR),
        .CLK(CLK),
        .E(counter0_0),
        .\FSM_sequential_cur_state_reg[0] (baud_controller_t_inst_n_2),
        .\FSM_sequential_cur_state_reg[1] (baud_controller_t_inst_n_1),
        .\FSM_sequential_cur_state_reg[2] (baud_controller_t_inst_n_3),
        .Q(counter_reg__0),
        .Tx_EN_IBUF(Tx_EN_IBUF),
        .Tx_WR_IBUF(Tx_WR_IBUF),
        .baud_select_IBUF(baud_select_IBUF),
        .cur_state(cur_state));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__0 
       (.I0(counter_reg__0[0]),
        .O(\counter[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1__1 
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1__1 
       (.I0(counter_reg__0[2]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[3]_i_2 
       (.I0(counter_reg__0[3]),
        .I1(counter_reg__0[2]),
        .I2(counter_reg__0[1]),
        .I3(counter_reg__0[0]),
        .O(p_0_in__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(counter0_0),
        .CLR(AR),
        .D(\counter[0]_i_1__0_n_0 ),
        .Q(counter_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(counter0_0),
        .CLR(AR),
        .D(p_0_in__0[1]),
        .Q(counter_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(counter0_0),
        .CLR(AR),
        .D(p_0_in__0[2]),
        .Q(counter_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(counter0_0),
        .CLR(AR),
        .D(p_0_in__0[3]),
        .Q(counter_reg__0[3]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif

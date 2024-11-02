// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Nov  2 19:00:20 2024
// Host        : DESKTOP-922FQ13 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/panag/Desktop/GitHub/Repositories/Vivado-Code/Lab2/projecttest/projecttest.sim/sim_1/synth/func/xsim/tb_receiver_func_synth.v
// Design      : UART_controller
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

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
  wire in7;
  wire parity;
  wire reset;
  wire reset_IBUF;
  wire uart_receiver_inst_n_1;
  wire uart_receiver_inst_n_2;
  wire uart_receiver_inst_n_3;
  wire uart_transmitter_inst_n_0;
  wire uart_transmitter_inst_n_1;
  wire uart_transmitter_inst_n_2;

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
       (.TxD_OBUF(TxD_OBUF),
        .\Tx_DATA[2] (uart_receiver_inst_n_1),
        .Tx_DATA_IBUF(Tx_DATA_IBUF),
        .Tx_DATA_copy_OBUF(Tx_DATA_copy_OBUF),
        .Tx_EN_IBUF(Tx_EN_IBUF),
        .Tx_WR_IBUF(Tx_WR_IBUF),
        .baud_select_IBUF(baud_select_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cur_state_reg[0]_0 (uart_receiver_inst_n_2),
        .\cur_state_reg[0]_1 (uart_transmitter_inst_n_2),
        .\cur_state_reg[1]_0 (uart_receiver_inst_n_3),
        .\cur_state_reg[1]_1 (uart_transmitter_inst_n_0),
        .\cur_state_reg[2]_0 (uart_transmitter_inst_n_1),
        .in7(in7),
        .parity(parity),
        .reset_IBUF(reset_IBUF));
  uart_transmitter uart_transmitter_inst
       (.\FSM_sequential_cur_state_reg[1]_0 (uart_transmitter_inst_n_1),
        .\FSM_sequential_cur_state_reg[2]_0 (uart_transmitter_inst_n_0),
        .\FSM_sequential_cur_state_reg[2]_1 (uart_transmitter_inst_n_2),
        .TxD_OBUF(TxD_OBUF),
        .Tx_BUSY_OBUF(Tx_BUSY_OBUF),
        .Tx_DATA_IBUF(Tx_DATA_IBUF),
        .Tx_EN_IBUF(Tx_EN_IBUF),
        .Tx_WR_IBUF(Tx_WR_IBUF),
        .baud_select_IBUF(baud_select_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\cur_state[2]_i_3_0 (uart_receiver_inst_n_1),
        .\cur_state_reg[2] (uart_receiver_inst_n_2),
        .\cur_state_reg[2]_0 (uart_receiver_inst_n_3),
        .in7(in7),
        .parity(parity),
        .reset_IBUF(reset_IBUF));
endmodule

module baud_controller_r
   (sample_ENABLE,
    D,
    sample_ENABLE_reg_0,
    \cur_state_reg[3] ,
    \cur_state_reg[0] ,
    \cur_state_reg[1] ,
    E,
    clk_IBUF_BUFG,
    reset_IBUF,
    \cur_state_reg[0]_0 ,
    \cur_state_reg[0]_1 ,
    \cur_state_reg[0]_2 ,
    Q,
    \cur_state_reg[0]_3 ,
    \cur_state_reg[0]_4 ,
    \cur_state_reg[2] ,
    \cur_state_reg[2]_0 ,
    \cur_state_reg[2]_1 ,
    TxD_OBUF,
    \cur_state_reg[2]_2 ,
    Tx_WR_IBUF,
    Tx_EN_IBUF,
    baud_select_IBUF,
    \cur_state_reg[3]_0 ,
    \cur_state[2]_i_3 ,
    \cur_state[2]_i_3_0 ,
    \cur_state[2]_i_3_1 ,
    parity,
    \cur_state_reg[3]_1 ,
    cur_state,
    \cur_state_reg[3]_2 );
  output sample_ENABLE;
  output [2:0]D;
  output sample_ENABLE_reg_0;
  output \cur_state_reg[3] ;
  output \cur_state_reg[0] ;
  output \cur_state_reg[1] ;
  output [0:0]E;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input \cur_state_reg[0]_0 ;
  input \cur_state_reg[0]_1 ;
  input \cur_state_reg[0]_2 ;
  input [3:0]Q;
  input \cur_state_reg[0]_3 ;
  input \cur_state_reg[0]_4 ;
  input \cur_state_reg[2] ;
  input \cur_state_reg[2]_0 ;
  input \cur_state_reg[2]_1 ;
  input TxD_OBUF;
  input \cur_state_reg[2]_2 ;
  input Tx_WR_IBUF;
  input Tx_EN_IBUF;
  input [2:0]baud_select_IBUF;
  input \cur_state_reg[3]_0 ;
  input \cur_state[2]_i_3 ;
  input \cur_state[2]_i_3_0 ;
  input \cur_state[2]_i_3_1 ;
  input parity;
  input \cur_state_reg[3]_1 ;
  input [0:0]cur_state;
  input [3:0]\cur_state_reg[3]_2 ;

  wire [2:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire TxD_OBUF;
  wire Tx_EN_IBUF;
  wire Tx_WR_IBUF;
  wire [2:0]baud_select_IBUF;
  wire clk_IBUF_BUFG;
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
  wire counter1_carry_i_2_n_0;
  wire counter1_carry_i_3_n_0;
  wire counter1_carry_i_4__0_n_0;
  wire counter1_carry_n_0;
  wire counter1_carry_n_1;
  wire counter1_carry_n_2;
  wire counter1_carry_n_3;
  wire \counter[0]_i_1_n_0 ;
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
  wire \cur_state[0]_i_2_n_0 ;
  wire \cur_state[2]_i_3 ;
  wire \cur_state[2]_i_3_0 ;
  wire \cur_state[2]_i_3_1 ;
  wire \cur_state[2]_i_5_n_0 ;
  wire \cur_state[2]_i_6_n_0 ;
  wire \cur_state[3]_i_2_n_0 ;
  wire \cur_state[3]_i_5_n_0 ;
  wire \cur_state_reg[0] ;
  wire \cur_state_reg[0]_0 ;
  wire \cur_state_reg[0]_1 ;
  wire \cur_state_reg[0]_2 ;
  wire \cur_state_reg[0]_3 ;
  wire \cur_state_reg[0]_4 ;
  wire \cur_state_reg[1] ;
  wire \cur_state_reg[2] ;
  wire \cur_state_reg[2]_0 ;
  wire \cur_state_reg[2]_1 ;
  wire \cur_state_reg[2]_2 ;
  wire \cur_state_reg[3] ;
  wire \cur_state_reg[3]_0 ;
  wire \cur_state_reg[3]_1 ;
  wire [3:0]\cur_state_reg[3]_2 ;
  wire parity;
  wire reset_IBUF;
  wire sample_ENABLE;
  wire sample_ENABLE_i_1_n_0;
  wire sample_ENABLE_reg_0;
  wire [3:2]NLW_counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_counter0_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_counter1_carry_O_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_counter1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__1_O_UNCONNECTED;

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
        .S({counter1_carry_i_1_n_0,counter1_carry_i_2_n_0,counter1_carry_i_3_n_0,counter1_carry_i_4__0_n_0}));
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
       (.I0(\counter_reg_n_0_[23] ),
        .I1(\counter_reg_n_0_[22] ),
        .I2(\counter_reg_n_0_[21] ),
        .O(counter1_carry__0_i_1__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    counter1_carry__0_i_2__0
       (.I0(\counter_reg_n_0_[20] ),
        .I1(\counter_reg_n_0_[19] ),
        .I2(\counter_reg_n_0_[18] ),
        .O(counter1_carry__0_i_2__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    counter1_carry__0_i_3__0
       (.I0(\counter_reg_n_0_[17] ),
        .I1(\counter_reg_n_0_[16] ),
        .I2(\counter_reg_n_0_[15] ),
        .O(counter1_carry__0_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0101010101011001)) 
    counter1_carry__0_i_4
       (.I0(\counter_reg_n_0_[14] ),
        .I1(\counter_reg_n_0_[13] ),
        .I2(\counter_reg_n_0_[12] ),
        .I3(baud_select_IBUF[0]),
        .I4(baud_select_IBUF[2]),
        .I5(baud_select_IBUF[1]),
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
       (.I0(\counter_reg_n_0_[29] ),
        .I1(\counter_reg_n_0_[28] ),
        .I2(\counter_reg_n_0_[27] ),
        .O(counter1_carry__1_i_2__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    counter1_carry__1_i_3__0
       (.I0(\counter_reg_n_0_[26] ),
        .I1(\counter_reg_n_0_[25] ),
        .I2(\counter_reg_n_0_[24] ),
        .O(counter1_carry__1_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0101100401010401)) 
    counter1_carry_i_1
       (.I0(\counter_reg_n_0_[11] ),
        .I1(\counter_reg_n_0_[10] ),
        .I2(\counter_reg_n_0_[9] ),
        .I3(baud_select_IBUF[0]),
        .I4(baud_select_IBUF[2]),
        .I5(baud_select_IBUF[1]),
        .O(counter1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h0110040204201001)) 
    counter1_carry_i_2
       (.I0(\counter_reg_n_0_[8] ),
        .I1(\counter_reg_n_0_[7] ),
        .I2(\counter_reg_n_0_[6] ),
        .I3(baud_select_IBUF[0]),
        .I4(baud_select_IBUF[2]),
        .I5(baud_select_IBUF[1]),
        .O(counter1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0820020110044001)) 
    counter1_carry_i_3
       (.I0(\counter_reg_n_0_[5] ),
        .I1(\counter_reg_n_0_[4] ),
        .I2(\counter_reg_n_0_[3] ),
        .I3(baud_select_IBUF[0]),
        .I4(baud_select_IBUF[1]),
        .I5(baud_select_IBUF[2]),
        .O(counter1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0820400840200140)) 
    counter1_carry_i_4__0
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(baud_select_IBUF[0]),
        .I4(baud_select_IBUF[2]),
        .I5(baud_select_IBUF[1]),
        .O(counter1_carry_i_4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0015)) 
    \counter[0]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[10]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry__1_n_6),
        .O(\counter[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[11]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry__1_n_5),
        .O(\counter[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[12]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry__1_n_4),
        .O(\counter[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[13]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry__2_n_7),
        .O(\counter[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[14]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry__2_n_6),
        .O(\counter[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[15]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry__2_n_5),
        .O(\counter[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[16]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry__2_n_4),
        .O(\counter[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[17]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry__3_n_7),
        .O(\counter[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[18]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry__3_n_6),
        .O(\counter[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[19]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry__3_n_5),
        .O(\counter[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[1]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry_n_7),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[20]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry__3_n_4),
        .O(\counter[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[21]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry__4_n_7),
        .O(\counter[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[22]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry__4_n_6),
        .O(\counter[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[23]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry__4_n_5),
        .O(\counter[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[24]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry__4_n_4),
        .O(\counter[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[25]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry__5_n_7),
        .O(\counter[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[26]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry__5_n_6),
        .O(\counter[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[27]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry__5_n_5),
        .O(\counter[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[28]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry__5_n_4),
        .O(\counter[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[29]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry__6_n_7),
        .O(\counter[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[2]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry_n_6),
        .O(\counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[30]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry__6_n_6),
        .O(\counter[30]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[31]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry__6_n_5),
        .O(\counter[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[3]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry_n_5),
        .O(\counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[4]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry_n_4),
        .O(\counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[5]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry__0_n_7),
        .O(\counter[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[6]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry__0_n_6),
        .O(\counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[7]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry__0_n_5),
        .O(\counter[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[8]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry__0_n_4),
        .O(\counter[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[9]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0_carry__1_n_7),
        .O(\counter[9]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[0]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[10]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[11]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[12]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[13]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[14]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[15]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[16]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[17]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[18]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[19]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[1]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[20]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[21]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[22]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[23]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[24]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[25]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[26]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[27]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[28]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[29]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[2]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[30]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[31]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[3]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[4]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[5]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[6]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[7]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[8]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[9]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'hEFEFEFEEAAAAAAAA)) 
    \cur_state[0]_i_1 
       (.I0(\cur_state[0]_i_2_n_0 ),
        .I1(\cur_state_reg[0]_0 ),
        .I2(\cur_state_reg[0]_1 ),
        .I3(\cur_state_reg[0]_2 ),
        .I4(Q[3]),
        .I5(\cur_state_reg[0]_3 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF2A00)) 
    \cur_state[0]_i_2 
       (.I0(sample_ENABLE_reg_0),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\cur_state_reg[0]_4 ),
        .O(\cur_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFF2A00)) 
    \cur_state[1]_i_2 
       (.I0(sample_ENABLE_reg_0),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\cur_state_reg[0]_4 ),
        .O(\cur_state_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \cur_state[2]_i_1 
       (.I0(\cur_state_reg[2] ),
        .I1(\cur_state_reg[2]_0 ),
        .I2(\cur_state_reg[2]_1 ),
        .I3(TxD_OBUF),
        .I4(\cur_state[2]_i_5_n_0 ),
        .I5(\cur_state[2]_i_6_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h0000000000000110)) 
    \cur_state[2]_i_10 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\cur_state[2]_i_3 ),
        .I3(\cur_state[2]_i_3_0 ),
        .I4(\cur_state[2]_i_3_1 ),
        .I5(sample_ENABLE_reg_0),
        .O(\cur_state_reg[1] ));
  LUT6 #(
    .INIT(64'h0000000001000055)) 
    \cur_state[2]_i_5 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(parity),
        .I3(Q[3]),
        .I4(Q[0]),
        .I5(sample_ENABLE_reg_0),
        .O(\cur_state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h000FD00000001000)) 
    \cur_state[2]_i_6 
       (.I0(sample_ENABLE_reg_0),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\cur_state_reg[2]_2 ),
        .O(\cur_state[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h01B000B0)) 
    \cur_state[2]_i_7 
       (.I0(sample_ENABLE_reg_0),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[1]),
        .O(\cur_state_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFAAAE)) 
    \cur_state[3]_i_1 
       (.I0(\cur_state[3]_i_2_n_0 ),
        .I1(TxD_OBUF),
        .I2(sample_ENABLE_reg_0),
        .I3(\cur_state_reg[0]_1 ),
        .I4(\cur_state[3]_i_5_n_0 ),
        .I5(\cur_state_reg[3]_0 ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h5053)) 
    \cur_state[3]_i_2 
       (.I0(\cur_state_reg[3]_1 ),
        .I1(sample_ENABLE_reg_0),
        .I2(Q[3]),
        .I3(cur_state),
        .O(\cur_state[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \cur_state[3]_i_3 
       (.I0(sample_ENABLE),
        .I1(\cur_state_reg[3]_2 [3]),
        .I2(\cur_state_reg[3]_2 [2]),
        .I3(\cur_state_reg[3]_2 [0]),
        .I4(\cur_state_reg[3]_2 [1]),
        .O(sample_ENABLE_reg_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2F052000)) 
    \cur_state[3]_i_5 
       (.I0(Q[2]),
        .I1(sample_ENABLE_reg_0),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\cur_state[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h70)) 
    sample_ENABLE_i_1
       (.I0(Tx_EN_IBUF),
        .I1(Tx_WR_IBUF),
        .I2(counter1_carry__1_n_1),
        .O(sample_ENABLE_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    sample_ENABLE_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(sample_ENABLE_i_1_n_0),
        .Q(sample_ENABLE));
  LUT2 #(
    .INIT(4'h2)) 
    \sample_counter[3]_i_1 
       (.I0(sample_ENABLE),
        .I1(reset_IBUF),
        .O(E));
endmodule

module baud_controller_t
   (E,
    \FSM_sequential_cur_state_reg[0] ,
    \FSM_sequential_cur_state_reg[0]_0 ,
    \FSM_sequential_cur_state_reg[0]_1 ,
    clk_IBUF_BUFG,
    reset_IBUF,
    Tx_WR_IBUF,
    Tx_EN_IBUF,
    cur_state,
    baud_select_IBUF,
    Q);
  output [0:0]E;
  output \FSM_sequential_cur_state_reg[0] ;
  output \FSM_sequential_cur_state_reg[0]_0 ;
  output \FSM_sequential_cur_state_reg[0]_1 ;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input Tx_WR_IBUF;
  input Tx_EN_IBUF;
  input [2:0]cur_state;
  input [2:0]baud_select_IBUF;
  input [3:0]Q;

  wire [0:0]E;
  wire \FSM_sequential_cur_state[2]_i_2_n_0 ;
  wire \FSM_sequential_cur_state[2]_i_3_n_0 ;
  wire \FSM_sequential_cur_state_reg[0] ;
  wire \FSM_sequential_cur_state_reg[0]_0 ;
  wire \FSM_sequential_cur_state_reg[0]_1 ;
  wire [3:0]Q;
  wire Tx_EN_IBUF;
  wire Tx_WR_IBUF;
  wire [2:0]baud_select_IBUF;
  wire clk_IBUF_BUFG;
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
  wire counter1_carry_i_2__0_n_0;
  wire counter1_carry_i_3__0_n_0;
  wire counter1_carry_i_4_n_0;
  wire counter1_carry_n_0;
  wire counter1_carry_n_1;
  wire counter1_carry_n_2;
  wire counter1_carry_n_3;
  wire \counter[0]_i_1__0_n_0 ;
  wire \counter[10]_i_1__0_n_0 ;
  wire \counter[11]_i_1__0_n_0 ;
  wire \counter[12]_i_1__0_n_0 ;
  wire \counter[13]_i_1__0_n_0 ;
  wire \counter[14]_i_1__0_n_0 ;
  wire \counter[15]_i_1__0_n_0 ;
  wire \counter[16]_i_1__0_n_0 ;
  wire \counter[17]_i_1__0_n_0 ;
  wire \counter[18]_i_1__0_n_0 ;
  wire \counter[19]_i_1__0_n_0 ;
  wire \counter[1]_i_1__0_n_0 ;
  wire \counter[20]_i_1__0_n_0 ;
  wire \counter[21]_i_1__0_n_0 ;
  wire \counter[22]_i_1__0_n_0 ;
  wire \counter[23]_i_1__0_n_0 ;
  wire \counter[24]_i_1__0_n_0 ;
  wire \counter[25]_i_1__0_n_0 ;
  wire \counter[26]_i_1__0_n_0 ;
  wire \counter[27]_i_1__0_n_0 ;
  wire \counter[28]_i_1__0_n_0 ;
  wire \counter[29]_i_1__0_n_0 ;
  wire \counter[2]_i_1__0_n_0 ;
  wire \counter[30]_i_1__0_n_0 ;
  wire \counter[31]_i_1__0_n_0 ;
  wire \counter[3]_i_1__0_n_0 ;
  wire \counter[4]_i_1__0_n_0 ;
  wire \counter[5]_i_1__0_n_0 ;
  wire \counter[6]_i_1__0_n_0 ;
  wire \counter[7]_i_1__0_n_0 ;
  wire \counter[8]_i_1__0_n_0 ;
  wire \counter[9]_i_1__0_n_0 ;
  wire [2:0]cur_state;
  wire reset_IBUF;
  wire sample_ENABLE;
  wire sample_ENABLE_i_1__0_n_0;
  wire [3:2]NLW_counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_counter0_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_counter1_carry_O_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_counter1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__1_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h4636467646264666)) 
    \FSM_sequential_cur_state[0]_i_1__0 
       (.I0(\FSM_sequential_cur_state[2]_i_2_n_0 ),
        .I1(cur_state[0]),
        .I2(cur_state[2]),
        .I3(cur_state[1]),
        .I4(Tx_EN_IBUF),
        .I5(sample_ENABLE),
        .O(\FSM_sequential_cur_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h5708)) 
    \FSM_sequential_cur_state[1]_i_1 
       (.I0(\FSM_sequential_cur_state[2]_i_2_n_0 ),
        .I1(cur_state[0]),
        .I2(cur_state[2]),
        .I3(cur_state[1]),
        .O(\FSM_sequential_cur_state_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h58305870)) 
    \FSM_sequential_cur_state[2]_i_1 
       (.I0(\FSM_sequential_cur_state[2]_i_2_n_0 ),
        .I1(cur_state[0]),
        .I2(cur_state[2]),
        .I3(cur_state[1]),
        .I4(Tx_EN_IBUF),
        .O(\FSM_sequential_cur_state_reg[0]_1 ));
  LUT6 #(
    .INIT(64'h0000FFFF0000F202)) 
    \FSM_sequential_cur_state[2]_i_2 
       (.I0(Tx_WR_IBUF),
        .I1(cur_state[1]),
        .I2(cur_state[0]),
        .I3(sample_ENABLE),
        .I4(cur_state[2]),
        .I5(\FSM_sequential_cur_state[2]_i_3_n_0 ),
        .O(\FSM_sequential_cur_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000800000000000)) 
    \FSM_sequential_cur_state[2]_i_3 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(cur_state[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(sample_ENABLE),
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
        .S({counter1_carry_i_1__0_n_0,counter1_carry_i_2__0_n_0,counter1_carry_i_3__0_n_0,counter1_carry_i_4_n_0}));
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
       (.I0(counter[23]),
        .I1(counter[22]),
        .I2(counter[21]),
        .O(counter1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    counter1_carry__0_i_2
       (.I0(counter[20]),
        .I1(counter[19]),
        .I2(counter[18]),
        .O(counter1_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    counter1_carry__0_i_3
       (.I0(counter[17]),
        .I1(counter[16]),
        .I2(counter[15]),
        .O(counter1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0104010101011001)) 
    counter1_carry__0_i_4__0
       (.I0(counter[14]),
        .I1(counter[13]),
        .I2(counter[12]),
        .I3(baud_select_IBUF[2]),
        .I4(baud_select_IBUF[0]),
        .I5(baud_select_IBUF[1]),
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
       (.I0(counter[29]),
        .I1(counter[28]),
        .I2(counter[27]),
        .O(counter1_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    counter1_carry__1_i_3
       (.I0(counter[26]),
        .I1(counter[25]),
        .I2(counter[24]),
        .O(counter1_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h1040200402010101)) 
    counter1_carry_i_1__0
       (.I0(counter[11]),
        .I1(counter[10]),
        .I2(counter[9]),
        .I3(baud_select_IBUF[0]),
        .I4(baud_select_IBUF[1]),
        .I5(baud_select_IBUF[2]),
        .O(counter1_carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h2001401004010101)) 
    counter1_carry_i_2__0
       (.I0(counter[8]),
        .I1(counter[7]),
        .I2(counter[6]),
        .I3(baud_select_IBUF[1]),
        .I4(baud_select_IBUF[0]),
        .I5(baud_select_IBUF[2]),
        .O(counter1_carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0208100120104080)) 
    counter1_carry_i_3__0
       (.I0(counter[5]),
        .I1(counter[4]),
        .I2(counter[3]),
        .I3(baud_select_IBUF[2]),
        .I4(baud_select_IBUF[0]),
        .I5(baud_select_IBUF[1]),
        .O(counter1_carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0201010402010180)) 
    counter1_carry_i_4
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(counter[0]),
        .I3(baud_select_IBUF[2]),
        .I4(baud_select_IBUF[0]),
        .I5(baud_select_IBUF[1]),
        .O(counter1_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0015)) 
    \counter[0]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter[0]),
        .O(\counter[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[10]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[10]),
        .O(\counter[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[11]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[11]),
        .O(\counter[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[12]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[12]),
        .O(\counter[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[13]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[13]),
        .O(\counter[13]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[14]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[14]),
        .O(\counter[14]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[15]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[15]),
        .O(\counter[15]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[16]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[16]),
        .O(\counter[16]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[17]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[17]),
        .O(\counter[17]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[18]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[18]),
        .O(\counter[18]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[19]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[19]),
        .O(\counter[19]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[1]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[1]),
        .O(\counter[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[20]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[20]),
        .O(\counter[20]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[21]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[21]),
        .O(\counter[21]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[22]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[22]),
        .O(\counter[22]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[23]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[23]),
        .O(\counter[23]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[24]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[24]),
        .O(\counter[24]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[25]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[25]),
        .O(\counter[25]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[26]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[26]),
        .O(\counter[26]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[27]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[27]),
        .O(\counter[27]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[28]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[28]),
        .O(\counter[28]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[29]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[29]),
        .O(\counter[29]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[2]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[2]),
        .O(\counter[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[30]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[30]),
        .O(\counter[30]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[31]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[31]),
        .O(\counter[31]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[3]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[3]),
        .O(\counter[3]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \counter[3]_i_1__1 
       (.I0(cur_state[0]),
        .I1(cur_state[1]),
        .I2(cur_state[2]),
        .I3(sample_ENABLE),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[4]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[4]),
        .O(\counter[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[5]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[5]),
        .O(\counter[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[6]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[6]),
        .O(\counter[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[7]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[7]),
        .O(\counter[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[8]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[8]),
        .O(\counter[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h1500)) 
    \counter[9]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(Tx_EN_IBUF),
        .I3(counter0[9]),
        .O(\counter[9]_i_1__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[0]_i_1__0_n_0 ),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[10]_i_1__0_n_0 ),
        .Q(counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[11]_i_1__0_n_0 ),
        .Q(counter[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[12]_i_1__0_n_0 ),
        .Q(counter[12]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[13]_i_1__0_n_0 ),
        .Q(counter[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[14]_i_1__0_n_0 ),
        .Q(counter[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[15]_i_1__0_n_0 ),
        .Q(counter[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[16]_i_1__0_n_0 ),
        .Q(counter[16]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[17]_i_1__0_n_0 ),
        .Q(counter[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[18]_i_1__0_n_0 ),
        .Q(counter[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[19]_i_1__0_n_0 ),
        .Q(counter[19]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[1]_i_1__0_n_0 ),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[20]_i_1__0_n_0 ),
        .Q(counter[20]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[21]_i_1__0_n_0 ),
        .Q(counter[21]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[22]_i_1__0_n_0 ),
        .Q(counter[22]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[23]_i_1__0_n_0 ),
        .Q(counter[23]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[24]_i_1__0_n_0 ),
        .Q(counter[24]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[25]_i_1__0_n_0 ),
        .Q(counter[25]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[26]_i_1__0_n_0 ),
        .Q(counter[26]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[27]_i_1__0_n_0 ),
        .Q(counter[27]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[28]_i_1__0_n_0 ),
        .Q(counter[28]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[29]_i_1__0_n_0 ),
        .Q(counter[29]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[2]_i_1__0_n_0 ),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[30]_i_1__0_n_0 ),
        .Q(counter[30]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[31]_i_1__0_n_0 ),
        .Q(counter[31]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[3]_i_1__0_n_0 ),
        .Q(counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[4]_i_1__0_n_0 ),
        .Q(counter[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[5]_i_1__0_n_0 ),
        .Q(counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[6]_i_1__0_n_0 ),
        .Q(counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[7]_i_1__0_n_0 ),
        .Q(counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[8]_i_1__0_n_0 ),
        .Q(counter[8]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\counter[9]_i_1__0_n_0 ),
        .Q(counter[9]));
  LUT3 #(
    .INIT(8'h70)) 
    sample_ENABLE_i_1__0
       (.I0(Tx_EN_IBUF),
        .I1(Tx_WR_IBUF),
        .I2(counter1_carry__1_n_1),
        .O(sample_ENABLE_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    sample_ENABLE_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(sample_ENABLE_i_1__0_n_0),
        .Q(sample_ENABLE));
endmodule

module receiver_sampler
   (cur_state,
    D,
    \FSM_sequential_cur_state_reg[0]_0 ,
    \FSM_sequential_cur_state_reg[0]_1 ,
    clk_IBUF_BUFG,
    reset_IBUF,
    \cur_state_reg[1] ,
    Q,
    \cur_state_reg[1]_0 ,
    Tx_EN_IBUF,
    Tx_WR_IBUF,
    \cur_state_reg[0] ,
    sample_ENABLE,
    \cur_state_reg[2] );
  output [0:0]cur_state;
  output [0:0]D;
  output \FSM_sequential_cur_state_reg[0]_0 ;
  output \FSM_sequential_cur_state_reg[0]_1 ;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input \cur_state_reg[1] ;
  input [3:0]Q;
  input \cur_state_reg[1]_0 ;
  input Tx_EN_IBUF;
  input Tx_WR_IBUF;
  input [3:0]\cur_state_reg[0] ;
  input sample_ENABLE;
  input \cur_state_reg[2] ;

  wire [0:0]D;
  wire \FSM_sequential_cur_state_reg[0]_0 ;
  wire \FSM_sequential_cur_state_reg[0]_1 ;
  wire [3:0]Q;
  wire Tx_EN_IBUF;
  wire Tx_WR_IBUF;
  wire clk_IBUF_BUFG;
  wire [0:0]cur_state;
  wire \cur_state[1]_i_3_n_0 ;
  wire \cur_state[1]_i_4_n_0 ;
  wire [3:0]\cur_state_reg[0] ;
  wire \cur_state_reg[1] ;
  wire \cur_state_reg[1]_0 ;
  wire \cur_state_reg[2] ;
  wire [0:0]next_state;
  wire reset_IBUF;
  wire sample_ENABLE;

  LUT3 #(
    .INIT(8'hEA)) 
    \FSM_sequential_cur_state[0]_i_1 
       (.I0(cur_state),
        .I1(Tx_EN_IBUF),
        .I2(Tx_WR_IBUF),
        .O(next_state));
  (* FSM_ENCODED_STATES = "LOCK:000,SAMPLE_1:010,SAMPLE_2:011,SAMPLE_3:100,SAMPLE_4:101,SAMPLE_5:110,SAMPLE_END:111,SAMPLE_START:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(next_state),
        .Q(cur_state));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cur_state[0]_i_5 
       (.I0(cur_state),
        .I1(\cur_state_reg[0] [1]),
        .I2(\cur_state_reg[0] [0]),
        .I3(\cur_state_reg[0] [2]),
        .I4(\cur_state_reg[0] [3]),
        .I5(sample_ENABLE),
        .O(\FSM_sequential_cur_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hEEFEEEFEEEEEEEFE)) 
    \cur_state[1]_i_1 
       (.I0(\cur_state_reg[1] ),
        .I1(\cur_state[1]_i_3_n_0 ),
        .I2(\cur_state[1]_i_4_n_0 ),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(\cur_state_reg[1]_0 ),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \cur_state[1]_i_3 
       (.I0(Q[0]),
        .I1(cur_state),
        .I2(Q[3]),
        .I3(Q[1]),
        .O(\cur_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cur_state[1]_i_4 
       (.I0(cur_state),
        .I1(Q[0]),
        .I2(\cur_state_reg[2] ),
        .O(\cur_state[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000155)) 
    \cur_state[2]_i_4 
       (.I0(cur_state),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(\cur_state_reg[2] ),
        .O(\FSM_sequential_cur_state_reg[0]_1 ));
endmodule

module uart_receiver
   (in7,
    \Tx_DATA[2] ,
    \cur_state_reg[0]_0 ,
    \cur_state_reg[1]_0 ,
    parity,
    Tx_DATA_copy_OBUF,
    clk_IBUF_BUFG,
    reset_IBUF,
    \cur_state_reg[0]_1 ,
    \cur_state_reg[1]_1 ,
    \cur_state_reg[2]_0 ,
    TxD_OBUF,
    Tx_EN_IBUF,
    Tx_WR_IBUF,
    baud_select_IBUF,
    Tx_DATA_IBUF);
  output in7;
  output \Tx_DATA[2] ;
  output \cur_state_reg[0]_0 ;
  output \cur_state_reg[1]_0 ;
  output parity;
  output [7:0]Tx_DATA_copy_OBUF;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input \cur_state_reg[0]_1 ;
  input \cur_state_reg[1]_1 ;
  input \cur_state_reg[2]_0 ;
  input TxD_OBUF;
  input Tx_EN_IBUF;
  input Tx_WR_IBUF;
  input [2:0]baud_select_IBUF;
  input [7:0]Tx_DATA_IBUF;

  wire \Rx_DATA[0]_i_1_n_0 ;
  wire \Rx_DATA[1]_i_1_n_0 ;
  wire \Rx_DATA[2]_i_1_n_0 ;
  wire \Rx_DATA[3]_i_1_n_0 ;
  wire \Rx_DATA[4]_i_1_n_0 ;
  wire \Rx_DATA[5]_i_1_n_0 ;
  wire \Rx_DATA[6]_i_1_n_0 ;
  wire \Rx_DATA[7]_i_1_n_0 ;
  wire SURE_i_1_n_0;
  wire SURE_i_2_n_0;
  wire SURE_i_3_n_0;
  wire SURE_reg_n_0;
  wire TxD_OBUF;
  wire \Tx_DATA[2] ;
  wire [7:0]Tx_DATA_IBUF;
  wire [7:0]Tx_DATA_copy_OBUF;
  wire Tx_EN_IBUF;
  wire Tx_WR_IBUF;
  wire baud_controller_r_inst_n_4;
  wire baud_controller_r_inst_n_5;
  wire baud_controller_r_inst_n_8;
  wire [2:0]baud_select_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]cur_state;
  wire \cur_state[0]_i_3_n_0 ;
  wire \cur_state[1]_i_6_n_0 ;
  wire \cur_state[1]_i_7_n_0 ;
  wire \cur_state[2]_i_12_n_0 ;
  wire \cur_state[2]_i_13_n_0 ;
  wire \cur_state[2]_i_14_n_0 ;
  wire \cur_state[2]_i_15_n_0 ;
  wire \cur_state[2]_i_2_n_0 ;
  wire \cur_state[3]_i_4_n_0 ;
  wire \cur_state[3]_i_6_n_0 ;
  wire [0:0]cur_state_0;
  wire \cur_state_reg[0]_0 ;
  wire \cur_state_reg[0]_1 ;
  wire \cur_state_reg[1]_0 ;
  wire \cur_state_reg[1]_1 ;
  wire \cur_state_reg[2]_0 ;
  wire in7;
  wire [3:0]next_state;
  wire parity;
  wire receiver_sampler_inst_n_2;
  wire receiver_sampler_inst_n_3;
  wire reset_IBUF;
  wire sample_ENABLE;
  wire \sample_counter[0]_i_1_n_0 ;
  wire \sample_counter[1]_i_1_n_0 ;
  wire \sample_counter[2]_i_1_n_0 ;
  wire \sample_counter[3]_i_2_n_0 ;
  wire \sample_counter_reg_n_0_[0] ;
  wire \sample_counter_reg_n_0_[1] ;
  wire \sample_counter_reg_n_0_[2] ;
  wire \sample_counter_reg_n_0_[3] ;

  LUT6 #(
    .INIT(64'hFFFFFFFB00000008)) 
    \Rx_DATA[0]_i_1 
       (.I0(TxD_OBUF),
        .I1(cur_state[0]),
        .I2(cur_state[2]),
        .I3(cur_state[1]),
        .I4(cur_state[3]),
        .I5(Tx_DATA_copy_OBUF[0]),
        .O(\Rx_DATA[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000200)) 
    \Rx_DATA[1]_i_1 
       (.I0(TxD_OBUF),
        .I1(cur_state[0]),
        .I2(cur_state[2]),
        .I3(cur_state[1]),
        .I4(cur_state[3]),
        .I5(Tx_DATA_copy_OBUF[1]),
        .O(\Rx_DATA[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFBFF00000800)) 
    \Rx_DATA[2]_i_1 
       (.I0(TxD_OBUF),
        .I1(cur_state[0]),
        .I2(cur_state[2]),
        .I3(cur_state[1]),
        .I4(cur_state[3]),
        .I5(Tx_DATA_copy_OBUF[2]),
        .O(\Rx_DATA[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000020)) 
    \Rx_DATA[3]_i_1 
       (.I0(TxD_OBUF),
        .I1(cur_state[0]),
        .I2(cur_state[2]),
        .I3(cur_state[1]),
        .I4(cur_state[3]),
        .I5(Tx_DATA_copy_OBUF[3]),
        .O(\Rx_DATA[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFBF00000080)) 
    \Rx_DATA[4]_i_1 
       (.I0(TxD_OBUF),
        .I1(cur_state[0]),
        .I2(cur_state[2]),
        .I3(cur_state[1]),
        .I4(cur_state[3]),
        .I5(Tx_DATA_copy_OBUF[4]),
        .O(\Rx_DATA[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFF00002000)) 
    \Rx_DATA[5]_i_1 
       (.I0(TxD_OBUF),
        .I1(cur_state[0]),
        .I2(cur_state[2]),
        .I3(cur_state[1]),
        .I4(cur_state[3]),
        .I5(Tx_DATA_copy_OBUF[5]),
        .O(\Rx_DATA[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00008000)) 
    \Rx_DATA[6]_i_1 
       (.I0(TxD_OBUF),
        .I1(cur_state[0]),
        .I2(cur_state[2]),
        .I3(cur_state[1]),
        .I4(cur_state[3]),
        .I5(Tx_DATA_copy_OBUF[6]),
        .O(\Rx_DATA[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFFFF00020000)) 
    \Rx_DATA[7]_i_1 
       (.I0(TxD_OBUF),
        .I1(cur_state[0]),
        .I2(cur_state[2]),
        .I3(cur_state[1]),
        .I4(cur_state[3]),
        .I5(Tx_DATA_copy_OBUF[7]),
        .O(\Rx_DATA[7]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\Rx_DATA[0]_i_1_n_0 ),
        .Q(Tx_DATA_copy_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\Rx_DATA[1]_i_1_n_0 ),
        .Q(Tx_DATA_copy_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\Rx_DATA[2]_i_1_n_0 ),
        .Q(Tx_DATA_copy_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\Rx_DATA[3]_i_1_n_0 ),
        .Q(Tx_DATA_copy_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\Rx_DATA[4]_i_1_n_0 ),
        .Q(Tx_DATA_copy_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\Rx_DATA[5]_i_1_n_0 ),
        .Q(Tx_DATA_copy_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\Rx_DATA[6]_i_1_n_0 ),
        .Q(Tx_DATA_copy_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(\Rx_DATA[7]_i_1_n_0 ),
        .Q(Tx_DATA_copy_OBUF[7]));
  LUT6 #(
    .INIT(64'hFFFEFEFEFF000000)) 
    SURE_i_1
       (.I0(SURE_i_2_n_0),
        .I1(cur_state[0]),
        .I2(cur_state[2]),
        .I3(\cur_state_reg[0]_1 ),
        .I4(SURE_i_3_n_0),
        .I5(SURE_reg_n_0),
        .O(SURE_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hE)) 
    SURE_i_2
       (.I0(cur_state[1]),
        .I1(cur_state[3]),
        .O(SURE_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000008080000000)) 
    SURE_i_3
       (.I0(Tx_WR_IBUF),
        .I1(Tx_EN_IBUF),
        .I2(cur_state[3]),
        .I3(cur_state[0]),
        .I4(cur_state[1]),
        .I5(cur_state[2]),
        .O(SURE_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    SURE_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(SURE_i_1_n_0),
        .Q(SURE_reg_n_0));
  LUT5 #(
    .INIT(32'h96696996)) 
    TxD_OBUF_inst_i_2
       (.I0(Tx_DATA_IBUF[5]),
        .I1(Tx_DATA_IBUF[4]),
        .I2(Tx_DATA_IBUF[7]),
        .I3(Tx_DATA_IBUF[6]),
        .I4(\Tx_DATA[2] ),
        .O(in7));
  LUT4 #(
    .INIT(16'h6996)) 
    TxD_OBUF_inst_i_4
       (.I0(Tx_DATA_IBUF[2]),
        .I1(Tx_DATA_IBUF[3]),
        .I2(Tx_DATA_IBUF[0]),
        .I3(Tx_DATA_IBUF[1]),
        .O(\Tx_DATA[2] ));
  baud_controller_r baud_controller_r_inst
       (.D({next_state[3:2],next_state[0]}),
        .E(baud_controller_r_inst_n_8),
        .Q(cur_state),
        .TxD_OBUF(TxD_OBUF),
        .Tx_EN_IBUF(Tx_EN_IBUF),
        .Tx_WR_IBUF(Tx_WR_IBUF),
        .baud_select_IBUF(baud_select_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .cur_state(cur_state_0),
        .\cur_state[2]_i_3 (\cur_state[2]_i_13_n_0 ),
        .\cur_state[2]_i_3_0 (\cur_state[2]_i_14_n_0 ),
        .\cur_state[2]_i_3_1 (\cur_state[2]_i_15_n_0 ),
        .\cur_state_reg[0] (\cur_state_reg[0]_0 ),
        .\cur_state_reg[0]_0 (\cur_state[0]_i_3_n_0 ),
        .\cur_state_reg[0]_1 (\cur_state[3]_i_4_n_0 ),
        .\cur_state_reg[0]_2 (\cur_state_reg[0]_1 ),
        .\cur_state_reg[0]_3 (receiver_sampler_inst_n_2),
        .\cur_state_reg[0]_4 (\cur_state[1]_i_6_n_0 ),
        .\cur_state_reg[1] (\cur_state_reg[1]_0 ),
        .\cur_state_reg[2] (\cur_state[2]_i_2_n_0 ),
        .\cur_state_reg[2]_0 (\cur_state_reg[2]_0 ),
        .\cur_state_reg[2]_1 (receiver_sampler_inst_n_3),
        .\cur_state_reg[2]_2 (\cur_state[2]_i_12_n_0 ),
        .\cur_state_reg[3] (baud_controller_r_inst_n_5),
        .\cur_state_reg[3]_0 (\cur_state[3]_i_6_n_0 ),
        .\cur_state_reg[3]_1 (SURE_reg_n_0),
        .\cur_state_reg[3]_2 ({\sample_counter_reg_n_0_[3] ,\sample_counter_reg_n_0_[2] ,\sample_counter_reg_n_0_[1] ,\sample_counter_reg_n_0_[0] }),
        .parity(parity),
        .reset_IBUF(reset_IBUF),
        .sample_ENABLE(sample_ENABLE),
        .sample_ENABLE_reg_0(baud_controller_r_inst_n_4));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h1110)) 
    \cur_state[0]_i_3 
       (.I0(cur_state[3]),
        .I1(cur_state[0]),
        .I2(cur_state[2]),
        .I3(cur_state[1]),
        .O(\cur_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFF2200000000000)) 
    \cur_state[1]_i_6 
       (.I0(\cur_state[1]_i_7_n_0 ),
        .I1(SURE_reg_n_0),
        .I2(cur_state[0]),
        .I3(cur_state[1]),
        .I4(cur_state[2]),
        .I5(cur_state[3]),
        .O(\cur_state[1]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cur_state[1]_i_7 
       (.I0(Tx_WR_IBUF),
        .I1(Tx_EN_IBUF),
        .O(\cur_state[1]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT5 #(
    .INIT(32'h96696996)) 
    \cur_state[2]_i_11 
       (.I0(Tx_DATA_copy_OBUF[5]),
        .I1(Tx_DATA_copy_OBUF[4]),
        .I2(Tx_DATA_copy_OBUF[7]),
        .I3(Tx_DATA_copy_OBUF[6]),
        .I4(\cur_state[2]_i_13_n_0 ),
        .O(parity));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \cur_state[2]_i_12 
       (.I0(Tx_EN_IBUF),
        .I1(Tx_WR_IBUF),
        .I2(SURE_reg_n_0),
        .O(\cur_state[2]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \cur_state[2]_i_13 
       (.I0(Tx_DATA_copy_OBUF[2]),
        .I1(Tx_DATA_copy_OBUF[3]),
        .I2(Tx_DATA_copy_OBUF[0]),
        .I3(Tx_DATA_copy_OBUF[1]),
        .O(\cur_state[2]_i_13_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \cur_state[2]_i_14 
       (.I0(Tx_DATA_copy_OBUF[6]),
        .I1(Tx_DATA_copy_OBUF[7]),
        .I2(Tx_DATA_copy_OBUF[4]),
        .I3(Tx_DATA_copy_OBUF[5]),
        .O(\cur_state[2]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \cur_state[2]_i_15 
       (.I0(cur_state[0]),
        .I1(cur_state[3]),
        .O(\cur_state[2]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \cur_state[2]_i_2 
       (.I0(cur_state[2]),
        .I1(cur_state[3]),
        .I2(cur_state[1]),
        .O(\cur_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \cur_state[3]_i_4 
       (.I0(cur_state[1]),
        .I1(cur_state[0]),
        .I2(cur_state[2]),
        .O(\cur_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hD000)) 
    \cur_state[3]_i_6 
       (.I0(cur_state[1]),
        .I1(cur_state[2]),
        .I2(cur_state[3]),
        .I3(cur_state[0]),
        .O(\cur_state[3]_i_6_n_0 ));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(next_state[0]),
        .Q(cur_state[0]));
  (* FSM_ENCODING = "none" *) 
  FDCE #(
    .INIT(1'b0)) 
    \cur_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(next_state[1]),
        .Q(cur_state[1]));
  (* FSM_ENCODING = "none" *) 
  FDPE #(
    .INIT(1'b1)) 
    \cur_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state[2]),
        .PRE(reset_IBUF),
        .Q(cur_state[2]));
  (* FSM_ENCODING = "none" *) 
  FDPE #(
    .INIT(1'b1)) 
    \cur_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(next_state[3]),
        .PRE(reset_IBUF),
        .Q(cur_state[3]));
  receiver_sampler receiver_sampler_inst
       (.D(next_state[1]),
        .\FSM_sequential_cur_state_reg[0]_0 (receiver_sampler_inst_n_2),
        .\FSM_sequential_cur_state_reg[0]_1 (receiver_sampler_inst_n_3),
        .Q(cur_state),
        .Tx_EN_IBUF(Tx_EN_IBUF),
        .Tx_WR_IBUF(Tx_WR_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .cur_state(cur_state_0),
        .\cur_state_reg[0] ({\sample_counter_reg_n_0_[3] ,\sample_counter_reg_n_0_[2] ,\sample_counter_reg_n_0_[1] ,\sample_counter_reg_n_0_[0] }),
        .\cur_state_reg[1] (baud_controller_r_inst_n_5),
        .\cur_state_reg[1]_0 (\cur_state_reg[1]_1 ),
        .\cur_state_reg[2] (baud_controller_r_inst_n_4),
        .reset_IBUF(reset_IBUF),
        .sample_ENABLE(sample_ENABLE));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sample_counter[0]_i_1 
       (.I0(\sample_counter_reg_n_0_[0] ),
        .O(\sample_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sample_counter[1]_i_1 
       (.I0(\sample_counter_reg_n_0_[0] ),
        .I1(\sample_counter_reg_n_0_[1] ),
        .O(\sample_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sample_counter[2]_i_1 
       (.I0(\sample_counter_reg_n_0_[1] ),
        .I1(\sample_counter_reg_n_0_[0] ),
        .I2(\sample_counter_reg_n_0_[2] ),
        .O(\sample_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sample_counter[3]_i_2 
       (.I0(\sample_counter_reg_n_0_[2] ),
        .I1(\sample_counter_reg_n_0_[0] ),
        .I2(\sample_counter_reg_n_0_[1] ),
        .I3(\sample_counter_reg_n_0_[3] ),
        .O(\sample_counter[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(baud_controller_r_inst_n_8),
        .CLR(reset_IBUF),
        .D(\sample_counter[0]_i_1_n_0 ),
        .Q(\sample_counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(baud_controller_r_inst_n_8),
        .CLR(reset_IBUF),
        .D(\sample_counter[1]_i_1_n_0 ),
        .Q(\sample_counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(baud_controller_r_inst_n_8),
        .CLR(reset_IBUF),
        .D(\sample_counter[2]_i_1_n_0 ),
        .Q(\sample_counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(baud_controller_r_inst_n_8),
        .CLR(reset_IBUF),
        .D(\sample_counter[3]_i_2_n_0 ),
        .Q(\sample_counter_reg_n_0_[3] ));
endmodule

module uart_transmitter
   (\FSM_sequential_cur_state_reg[2]_0 ,
    \FSM_sequential_cur_state_reg[1]_0 ,
    \FSM_sequential_cur_state_reg[2]_1 ,
    TxD_OBUF,
    Tx_BUSY_OBUF,
    clk_IBUF_BUFG,
    reset_IBUF,
    Tx_WR_IBUF,
    Tx_EN_IBUF,
    parity,
    in7,
    \cur_state_reg[2] ,
    \cur_state_reg[2]_0 ,
    baud_select_IBUF,
    Tx_DATA_IBUF,
    \cur_state[2]_i_3_0 );
  output \FSM_sequential_cur_state_reg[2]_0 ;
  output \FSM_sequential_cur_state_reg[1]_0 ;
  output \FSM_sequential_cur_state_reg[2]_1 ;
  output TxD_OBUF;
  output Tx_BUSY_OBUF;
  input clk_IBUF_BUFG;
  input reset_IBUF;
  input Tx_WR_IBUF;
  input Tx_EN_IBUF;
  input parity;
  input in7;
  input \cur_state_reg[2] ;
  input \cur_state_reg[2]_0 ;
  input [2:0]baud_select_IBUF;
  input [7:0]Tx_DATA_IBUF;
  input \cur_state[2]_i_3_0 ;

  wire \FSM_sequential_cur_state_reg[1]_0 ;
  wire \FSM_sequential_cur_state_reg[2]_0 ;
  wire \FSM_sequential_cur_state_reg[2]_1 ;
  wire TxD_OBUF;
  wire TxD_OBUF_inst_i_3_n_0;
  wire TxD_OBUF_inst_i_5_n_0;
  wire TxD_OBUF_inst_i_6_n_0;
  wire Tx_BUSY_OBUF;
  wire [7:0]Tx_DATA_IBUF;
  wire Tx_EN_IBUF;
  wire Tx_WR_IBUF;
  wire baud_controller_t_inst_n_1;
  wire baud_controller_t_inst_n_2;
  wire baud_controller_t_inst_n_3;
  wire [2:0]baud_select_IBUF;
  wire clk_IBUF_BUFG;
  wire counter0_0;
  wire \counter[0]_i_1__1_n_0 ;
  wire [3:0]counter_reg__0;
  wire [2:0]cur_state;
  wire \cur_state[2]_i_3_0 ;
  wire \cur_state[2]_i_8_n_0 ;
  wire \cur_state[2]_i_9_n_0 ;
  wire \cur_state_reg[2] ;
  wire \cur_state_reg[2]_0 ;
  wire in7;
  wire [3:1]p_0_in;
  wire parity;
  wire reset_IBUF;

  (* FSM_ENCODED_STATES = "DISABLED:101,IDLE:000,START_BIT:001,TRANSMIT:010,PARITY:011,END_BIT:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(baud_controller_t_inst_n_1),
        .Q(cur_state[0]));
  (* FSM_ENCODED_STATES = "DISABLED:101,IDLE:000,START_BIT:001,TRANSMIT:010,PARITY:011,END_BIT:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(baud_controller_t_inst_n_2),
        .Q(cur_state[1]));
  (* FSM_ENCODED_STATES = "DISABLED:101,IDLE:000,START_BIT:001,TRANSMIT:010,PARITY:011,END_BIT:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(baud_controller_t_inst_n_3),
        .Q(cur_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h4A5F4A0F)) 
    TxD_OBUF_inst_i_1
       (.I0(cur_state[2]),
        .I1(in7),
        .I2(cur_state[1]),
        .I3(cur_state[0]),
        .I4(TxD_OBUF_inst_i_3_n_0),
        .O(TxD_OBUF));
  MUXF7 TxD_OBUF_inst_i_3
       (.I0(TxD_OBUF_inst_i_5_n_0),
        .I1(TxD_OBUF_inst_i_6_n_0),
        .O(TxD_OBUF_inst_i_3_n_0),
        .S(counter_reg__0[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    TxD_OBUF_inst_i_5
       (.I0(Tx_DATA_IBUF[1]),
        .I1(Tx_DATA_IBUF[5]),
        .I2(counter_reg__0[1]),
        .I3(Tx_DATA_IBUF[3]),
        .I4(counter_reg__0[2]),
        .I5(Tx_DATA_IBUF[7]),
        .O(TxD_OBUF_inst_i_5_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    TxD_OBUF_inst_i_6
       (.I0(Tx_DATA_IBUF[0]),
        .I1(Tx_DATA_IBUF[4]),
        .I2(counter_reg__0[1]),
        .I3(Tx_DATA_IBUF[2]),
        .I4(counter_reg__0[2]),
        .I5(Tx_DATA_IBUF[6]),
        .O(TxD_OBUF_inst_i_6_n_0));
  LUT3 #(
    .INIT(8'h0E)) 
    Tx_BUSY_OBUF_inst_i_1
       (.I0(cur_state[1]),
        .I1(cur_state[0]),
        .I2(cur_state[2]),
        .O(Tx_BUSY_OBUF));
  baud_controller_t baud_controller_t_inst
       (.E(counter0_0),
        .\FSM_sequential_cur_state_reg[0] (baud_controller_t_inst_n_1),
        .\FSM_sequential_cur_state_reg[0]_0 (baud_controller_t_inst_n_2),
        .\FSM_sequential_cur_state_reg[0]_1 (baud_controller_t_inst_n_3),
        .Q(counter_reg__0),
        .Tx_EN_IBUF(Tx_EN_IBUF),
        .Tx_WR_IBUF(Tx_WR_IBUF),
        .baud_select_IBUF(baud_select_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .cur_state(cur_state),
        .reset_IBUF(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__1 
       (.I0(counter_reg__0[0]),
        .O(\counter[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1__1 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1__1 
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_2 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[2]),
        .I3(counter_reg__0[3]),
        .O(p_0_in[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(counter0_0),
        .CLR(reset_IBUF),
        .D(\counter[0]_i_1__1_n_0 ),
        .Q(counter_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(counter0_0),
        .CLR(reset_IBUF),
        .D(p_0_in[1]),
        .Q(counter_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(counter0_0),
        .CLR(reset_IBUF),
        .D(p_0_in[2]),
        .Q(counter_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(counter0_0),
        .CLR(reset_IBUF),
        .D(p_0_in[3]),
        .Q(counter_reg__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'hD3C0D3F0)) 
    \cur_state[0]_i_4 
       (.I0(in7),
        .I1(cur_state[2]),
        .I2(cur_state[1]),
        .I3(cur_state[0]),
        .I4(TxD_OBUF_inst_i_3_n_0),
        .O(\FSM_sequential_cur_state_reg[2]_1 ));
  LUT6 #(
    .INIT(64'h59A55AAA59A555AA)) 
    \cur_state[1]_i_5 
       (.I0(parity),
        .I1(in7),
        .I2(cur_state[2]),
        .I3(cur_state[1]),
        .I4(cur_state[0]),
        .I5(TxD_OBUF_inst_i_3_n_0),
        .O(\FSM_sequential_cur_state_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hFFFFEEEAAAAAAAAA)) 
    \cur_state[2]_i_3 
       (.I0(\cur_state_reg[2] ),
        .I1(cur_state[1]),
        .I2(\cur_state[2]_i_8_n_0 ),
        .I3(cur_state[2]),
        .I4(\cur_state[2]_i_9_n_0 ),
        .I5(\cur_state_reg[2]_0 ),
        .O(\FSM_sequential_cur_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h2882822882282882)) 
    \cur_state[2]_i_8 
       (.I0(cur_state[0]),
        .I1(\cur_state[2]_i_3_0 ),
        .I2(Tx_DATA_IBUF[6]),
        .I3(Tx_DATA_IBUF[7]),
        .I4(Tx_DATA_IBUF[4]),
        .I5(Tx_DATA_IBUF[5]),
        .O(\cur_state[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h004700000047FF00)) 
    \cur_state[2]_i_9 
       (.I0(TxD_OBUF_inst_i_6_n_0),
        .I1(counter_reg__0[0]),
        .I2(TxD_OBUF_inst_i_5_n_0),
        .I3(cur_state[0]),
        .I4(cur_state[1]),
        .I5(cur_state[2]),
        .O(\cur_state[2]_i_9_n_0 ));
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

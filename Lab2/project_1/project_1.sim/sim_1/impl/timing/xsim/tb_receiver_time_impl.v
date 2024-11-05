// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Nov  5 04:17:40 2024
// Host        : DESKTOP-922FQ13 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/panag/Desktop/GitHub/Repositories/Vivado-Code/Lab2/project_1/project_1.sim/sim_1/impl/timing/xsim/tb_receiver_time_impl.v
// Design      : UART_controller
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* DISABLED = "2'b00" *) (* ECO_CHECKSUM = "4790f910" *) (* ENABLED = "2'b01" *) 
(* FERROR = "2'b11" *) (* PERROR = "2'b10" *) 
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

  wire Reset_UART;
  wire TxD;
  wire TxD_OBUF;
  wire Tx_BUSY;
  wire Tx_BUSY_OBUF;
  wire [7:0]Tx_DATA;
  wire [7:0]Tx_DATA_IBUF;
  wire [7:0]Tx_DATA_copy;
  wire Tx_EN;
  wire Tx_EN_IBUF;
  wire Tx_WR;
  wire Tx_WR_IBUF;
  wire [2:0]baud_select;
  wire [2:0]baud_select_IBUF;
  wire \buffer_reg_n_0_[0] ;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [1:0]cur_state;
  wire in10;
  wire in11;
  wire in5;
  wire in6;
  wire in7;
  wire in8;
  wire in9;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire [1:0]next_state;
  wire reset;
  wire reset_IBUF;
  wire uart_receiver_inst_n_1;
  wire uart_receiver_inst_n_2;
  wire uart_receiver_inst_n_3;
  wire [7:0]\NLW_uart_receiver_inst_Rx_DATA_reg[7]_0_UNCONNECTED ;

initial begin
 $sdf_annotate("tb_receiver_time_impl.sdf",,,,"tool_control");
end
  (* FSM_ENCODED_STATES = "FERROR:01,ENABLED:00,PERROR:10" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(next_state[0]),
        .Q(cur_state[0]));
  (* FSM_ENCODED_STATES = "FERROR:01,ENABLED:00,PERROR:10" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(next_state[1]),
        .Q(cur_state[1]));
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
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \Tx_DATA_copy_OBUF[0]_inst 
       (.I(lopt),
        .O(Tx_DATA_copy[0]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \Tx_DATA_copy_OBUF[1]_inst 
       (.I(lopt_1),
        .O(Tx_DATA_copy[1]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \Tx_DATA_copy_OBUF[2]_inst 
       (.I(lopt_2),
        .O(Tx_DATA_copy[2]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \Tx_DATA_copy_OBUF[3]_inst 
       (.I(lopt_3),
        .O(Tx_DATA_copy[3]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \Tx_DATA_copy_OBUF[4]_inst 
       (.I(lopt_4),
        .O(Tx_DATA_copy[4]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \Tx_DATA_copy_OBUF[5]_inst 
       (.I(lopt_5),
        .O(Tx_DATA_copy[5]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \Tx_DATA_copy_OBUF[6]_inst 
       (.I(lopt_6),
        .O(Tx_DATA_copy[6]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \Tx_DATA_copy_OBUF[7]_inst 
       (.I(lopt_7),
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
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(uart_receiver_inst_n_1),
        .CLR(reset_IBUF),
        .D(Tx_DATA_IBUF[0]),
        .Q(\buffer_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(uart_receiver_inst_n_1),
        .CLR(reset_IBUF),
        .D(Tx_DATA_IBUF[1]),
        .Q(in11));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(uart_receiver_inst_n_1),
        .CLR(reset_IBUF),
        .D(Tx_DATA_IBUF[2]),
        .Q(in10));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(uart_receiver_inst_n_1),
        .CLR(reset_IBUF),
        .D(Tx_DATA_IBUF[3]),
        .Q(in9));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(uart_receiver_inst_n_1),
        .CLR(reset_IBUF),
        .D(Tx_DATA_IBUF[4]),
        .Q(in8));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(uart_receiver_inst_n_1),
        .CLR(reset_IBUF),
        .D(Tx_DATA_IBUF[5]),
        .Q(in7));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(uart_receiver_inst_n_1),
        .CLR(reset_IBUF),
        .D(Tx_DATA_IBUF[6]),
        .Q(in6));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(uart_receiver_inst_n_1),
        .CLR(reset_IBUF),
        .D(Tx_DATA_IBUF[7]),
        .Q(in5));
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
        .D(next_state),
        .E(uart_receiver_inst_n_1),
        .Q(cur_state),
        .Reset_UART(Reset_UART),
        .\Rx_DATA_reg[0]_0 ({in5,in6,in7,in8,in9,in10,in11,\buffer_reg_n_0_[0] }),
        .\Rx_DATA_reg[7]_0 (\NLW_uart_receiver_inst_Rx_DATA_reg[7]_0_UNCONNECTED [7:0]),
        .TxD_OBUF(TxD_OBUF),
        .Tx_BUSY_OBUF(Tx_BUSY_OBUF),
        .Tx_EN_IBUF(Tx_EN_IBUF),
        .Tx_WR_IBUF(Tx_WR_IBUF),
        .baud_select_IBUF(baud_select_IBUF),
        .\buffer_reg[3] (uart_receiver_inst_n_3),
        .\buffer_reg[7] (uart_receiver_inst_n_2),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .lopt_6(lopt_6),
        .lopt_7(lopt_7));
  uart_transmitter uart_transmitter_inst
       (.AR(Reset_UART),
        .Q(cur_state),
        .\Rx_DATA_reg[0] (uart_receiver_inst_n_2),
        .\Rx_DATA_reg[0]_0 (uart_receiver_inst_n_3),
        .TxD_OBUF(TxD_OBUF),
        .TxD_OBUF_inst_i_2_0({in5,in6,in7,in8,in9,in10,in11,\buffer_reg_n_0_[0] }),
        .Tx_BUSY_OBUF(Tx_BUSY_OBUF),
        .Tx_EN_IBUF(Tx_EN_IBUF),
        .Tx_WR_IBUF(Tx_WR_IBUF),
        .baud_select_IBUF(baud_select_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
endmodule

module baud_controller_r
   (AR,
    E,
    D,
    \FSM_sequential_cur_state_reg[0] ,
    \sample_counter_reg[3] ,
    prev_bit_0,
    prev_bit_reg,
    clk_IBUF_BUFG,
    Q,
    sample_ENABLE_reg_0,
    SURE,
    \Rx_DATA_reg[0] ,
    Tx_EN_IBUF,
    Tx_WR_IBUF,
    \Rx_DATA_reg[0]_0 ,
    \Rx_DATA_reg[0]_1 ,
    \Rx_DATA_reg[0]_2 ,
    \Rx_DATA_reg[0]_3 ,
    \FSM_onehot_cur_state_reg[0] ,
    TxD_OBUF,
    \FSM_onehot_cur_state_reg[0]_0 ,
    bit_stable,
    prev_bit,
    baud_select_IBUF);
  output [0:0]AR;
  output [0:0]E;
  output [11:0]D;
  output \FSM_sequential_cur_state_reg[0] ;
  output [0:0]\sample_counter_reg[3] ;
  output prev_bit_0;
  output prev_bit_reg;
  input clk_IBUF_BUFG;
  input [1:0]Q;
  input [0:0]sample_ENABLE_reg_0;
  input SURE;
  input [12:0]\Rx_DATA_reg[0] ;
  input Tx_EN_IBUF;
  input Tx_WR_IBUF;
  input [3:0]\Rx_DATA_reg[0]_0 ;
  input \Rx_DATA_reg[0]_1 ;
  input \Rx_DATA_reg[0]_2 ;
  input \Rx_DATA_reg[0]_3 ;
  input \FSM_onehot_cur_state_reg[0] ;
  input TxD_OBUF;
  input \FSM_onehot_cur_state_reg[0]_0 ;
  input bit_stable;
  input prev_bit;
  input [2:0]baud_select_IBUF;

  wire [0:0]AR;
  wire [11:0]D;
  wire [0:0]E;
  wire \FSM_onehot_cur_state[12]_i_2_n_0 ;
  wire \FSM_onehot_cur_state_reg[0] ;
  wire \FSM_onehot_cur_state_reg[0]_0 ;
  wire \FSM_sequential_cur_state_reg[0] ;
  wire [1:0]Q;
  wire [12:0]\Rx_DATA_reg[0] ;
  wire [3:0]\Rx_DATA_reg[0]_0 ;
  wire \Rx_DATA_reg[0]_1 ;
  wire \Rx_DATA_reg[0]_2 ;
  wire \Rx_DATA_reg[0]_3 ;
  wire SURE;
  wire TxD_OBUF;
  wire Tx_EN_IBUF;
  wire Tx_WR_IBUF;
  wire [2:0]baud_select_IBUF;
  wire bit_stable;
  wire bit_stable_i_2_n_0;
  wire bit_stable_i_3_n_0;
  wire clk_IBUF_BUFG;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_4;
  wire counter0_carry__0_n_5;
  wire counter0_carry__0_n_6;
  wire counter0_carry__0_n_7;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_4;
  wire counter0_carry__1_n_5;
  wire counter0_carry__1_n_6;
  wire counter0_carry__1_n_7;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_4;
  wire counter0_carry__2_n_5;
  wire counter0_carry__2_n_6;
  wire counter0_carry__2_n_7;
  wire counter0_carry__3_n_0;
  wire counter0_carry__3_n_4;
  wire counter0_carry__3_n_5;
  wire counter0_carry__3_n_6;
  wire counter0_carry__3_n_7;
  wire counter0_carry__4_n_0;
  wire counter0_carry__4_n_4;
  wire counter0_carry__4_n_5;
  wire counter0_carry__4_n_6;
  wire counter0_carry__4_n_7;
  wire counter0_carry__5_n_0;
  wire counter0_carry__5_n_4;
  wire counter0_carry__5_n_5;
  wire counter0_carry__5_n_6;
  wire counter0_carry__5_n_7;
  wire counter0_carry__6_n_5;
  wire counter0_carry__6_n_6;
  wire counter0_carry__6_n_7;
  wire counter0_carry_n_0;
  wire counter0_carry_n_4;
  wire counter0_carry_n_5;
  wire counter0_carry_n_6;
  wire counter0_carry_n_7;
  wire counter1_carry__0_i_1__0_n_0;
  wire counter1_carry__0_i_2__0_n_0;
  wire counter1_carry__0_i_3__0_n_0;
  wire counter1_carry__0_i_4__0_n_0;
  wire counter1_carry__0_n_0;
  wire counter1_carry__1_i_1__0_n_0;
  wire counter1_carry__1_i_2__0_n_0;
  wire counter1_carry__1_i_3__0_n_0;
  wire counter1_carry__1_n_1;
  wire counter1_carry_i_1__0_n_0;
  wire counter1_carry_i_2__0_n_0;
  wire counter1_carry_i_3_n_0;
  wire counter1_carry_i_4__0_n_0;
  wire counter1_carry_n_0;
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
  wire prev_bit;
  wire prev_bit_0;
  wire prev_bit_reg;
  wire sample_ENABLE;
  wire sample_ENABLE_i_1_n_0;
  wire [0:0]sample_ENABLE_reg_0;
  wire [0:0]\sample_counter_reg[3] ;
  wire [2:0]NLW_counter0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_counter0_carry__6_O_UNCONNECTED;
  wire [2:0]NLW_counter1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_counter1_carry_O_UNCONNECTED;
  wire [2:0]NLW_counter1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__1_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hAAAAAAAAAA800880)) 
    \FSM_onehot_cur_state[0]_i_1 
       (.I0(\FSM_onehot_cur_state[12]_i_2_n_0 ),
        .I1(\Rx_DATA_reg[0] [11]),
        .I2(\FSM_onehot_cur_state_reg[0] ),
        .I3(TxD_OBUF),
        .I4(\Rx_DATA_reg[0] [2]),
        .I5(\FSM_onehot_cur_state_reg[0]_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \FSM_onehot_cur_state[10]_i_1 
       (.I0(\Rx_DATA_reg[0] [10]),
        .I1(bit_stable),
        .I2(\FSM_onehot_cur_state[12]_i_2_n_0 ),
        .I3(\Rx_DATA_reg[0] [9]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \FSM_onehot_cur_state[11]_i_1 
       (.I0(\Rx_DATA_reg[0] [11]),
        .I1(bit_stable),
        .I2(\FSM_onehot_cur_state[12]_i_2_n_0 ),
        .I3(\Rx_DATA_reg[0] [10]),
        .O(D[10]));
  LUT6 #(
    .INIT(64'hE22222222222E222)) 
    \FSM_onehot_cur_state[12]_i_1 
       (.I0(\Rx_DATA_reg[0] [12]),
        .I1(\FSM_onehot_cur_state[12]_i_2_n_0 ),
        .I2(bit_stable),
        .I3(\Rx_DATA_reg[0] [11]),
        .I4(TxD_OBUF),
        .I5(\FSM_onehot_cur_state_reg[0] ),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_onehot_cur_state[12]_i_2 
       (.I0(\Rx_DATA_reg[0]_0 [0]),
        .I1(\Rx_DATA_reg[0]_0 [1]),
        .I2(\Rx_DATA_reg[0]_0 [2]),
        .I3(\Rx_DATA_reg[0]_0 [3]),
        .I4(sample_ENABLE),
        .O(\FSM_onehot_cur_state[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEE0FFFFEEE0EEE0)) 
    \FSM_onehot_cur_state[2]_i_1 
       (.I0(SURE),
        .I1(\FSM_sequential_cur_state_reg[0] ),
        .I2(\Rx_DATA_reg[0] [0]),
        .I3(\Rx_DATA_reg[0] [1]),
        .I4(\FSM_onehot_cur_state[12]_i_2_n_0 ),
        .I5(\Rx_DATA_reg[0] [2]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h0200)) 
    \FSM_onehot_cur_state[2]_i_2 
       (.I0(Tx_EN_IBUF),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_WR_IBUF),
        .O(\FSM_sequential_cur_state_reg[0] ));
  LUT5 #(
    .INIT(32'h2222E222)) 
    \FSM_onehot_cur_state[3]_i_1 
       (.I0(\Rx_DATA_reg[0] [3]),
        .I1(\FSM_onehot_cur_state[12]_i_2_n_0 ),
        .I2(bit_stable),
        .I3(\Rx_DATA_reg[0] [2]),
        .I4(TxD_OBUF),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \FSM_onehot_cur_state[4]_i_1 
       (.I0(\Rx_DATA_reg[0] [4]),
        .I1(bit_stable),
        .I2(\FSM_onehot_cur_state[12]_i_2_n_0 ),
        .I3(\Rx_DATA_reg[0] [3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \FSM_onehot_cur_state[5]_i_1 
       (.I0(\Rx_DATA_reg[0] [5]),
        .I1(bit_stable),
        .I2(\FSM_onehot_cur_state[12]_i_2_n_0 ),
        .I3(\Rx_DATA_reg[0] [4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \FSM_onehot_cur_state[6]_i_1 
       (.I0(\Rx_DATA_reg[0] [6]),
        .I1(bit_stable),
        .I2(\FSM_onehot_cur_state[12]_i_2_n_0 ),
        .I3(\Rx_DATA_reg[0] [5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \FSM_onehot_cur_state[7]_i_1 
       (.I0(\Rx_DATA_reg[0] [7]),
        .I1(bit_stable),
        .I2(\FSM_onehot_cur_state[12]_i_2_n_0 ),
        .I3(\Rx_DATA_reg[0] [6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \FSM_onehot_cur_state[8]_i_1 
       (.I0(\Rx_DATA_reg[0] [8]),
        .I1(bit_stable),
        .I2(\FSM_onehot_cur_state[12]_i_2_n_0 ),
        .I3(\Rx_DATA_reg[0] [7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \FSM_onehot_cur_state[9]_i_1 
       (.I0(\Rx_DATA_reg[0] [9]),
        .I1(bit_stable),
        .I2(\FSM_onehot_cur_state[12]_i_2_n_0 ),
        .I3(\Rx_DATA_reg[0] [8]),
        .O(D[8]));
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_sequential_cur_state[3]_i_2 
       (.I0(sample_ENABLE_reg_0),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(AR));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \Rx_DATA[7]_i_1 
       (.I0(\Rx_DATA_reg[0]_0 [3]),
        .I1(\Rx_DATA_reg[0]_1 ),
        .I2(\Rx_DATA_reg[0]_2 ),
        .I3(\Rx_DATA_reg[0]_3 ),
        .I4(sample_ENABLE),
        .I5(\Rx_DATA_reg[0] [12]),
        .O(\sample_counter_reg[3] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF9F0000)) 
    bit_stable_i_1
       (.I0(TxD_OBUF),
        .I1(prev_bit),
        .I2(bit_stable_i_2_n_0),
        .I3(\FSM_onehot_cur_state[12]_i_2_n_0 ),
        .I4(bit_stable),
        .I5(bit_stable_i_3_n_0),
        .O(prev_bit_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    bit_stable_i_2
       (.I0(sample_ENABLE),
        .I1(\Rx_DATA_reg[0]_0 [0]),
        .O(bit_stable_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    bit_stable_i_3
       (.I0(sample_ENABLE),
        .I1(\Rx_DATA_reg[0]_0 [3]),
        .I2(\Rx_DATA_reg[0]_0 [2]),
        .I3(\Rx_DATA_reg[0]_0 [1]),
        .I4(\Rx_DATA_reg[0]_0 [0]),
        .O(bit_stable_i_3_n_0));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,NLW_counter0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry_n_4,counter0_carry_n_5,counter0_carry_n_6,counter0_carry_n_7}),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,NLW_counter0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__0_n_4,counter0_carry__0_n_5,counter0_carry__0_n_6,counter0_carry__0_n_7}),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,NLW_counter0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__1_n_4,counter0_carry__1_n_5,counter0_carry__1_n_6,counter0_carry__1_n_7}),
        .S({\counter_reg_n_0_[12] ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,NLW_counter0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__2_n_4,counter0_carry__2_n_5,counter0_carry__2_n_6,counter0_carry__2_n_7}),
        .S({\counter_reg_n_0_[16] ,\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({counter0_carry__3_n_0,NLW_counter0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__3_n_4,counter0_carry__3_n_5,counter0_carry__3_n_6,counter0_carry__3_n_7}),
        .S({\counter_reg_n_0_[20] ,\counter_reg_n_0_[19] ,\counter_reg_n_0_[18] ,\counter_reg_n_0_[17] }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter0_carry__4
       (.CI(counter0_carry__3_n_0),
        .CO({counter0_carry__4_n_0,NLW_counter0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__4_n_4,counter0_carry__4_n_5,counter0_carry__4_n_6,counter0_carry__4_n_7}),
        .S({\counter_reg_n_0_[24] ,\counter_reg_n_0_[23] ,\counter_reg_n_0_[22] ,\counter_reg_n_0_[21] }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter0_carry__5
       (.CI(counter0_carry__4_n_0),
        .CO({counter0_carry__5_n_0,NLW_counter0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({counter0_carry__5_n_4,counter0_carry__5_n_5,counter0_carry__5_n_6,counter0_carry__5_n_7}),
        .S({\counter_reg_n_0_[28] ,\counter_reg_n_0_[27] ,\counter_reg_n_0_[26] ,\counter_reg_n_0_[25] }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter0_carry__6
       (.CI(counter0_carry__5_n_0),
        .CO(NLW_counter0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__6_O_UNCONNECTED[3],counter0_carry__6_n_5,counter0_carry__6_n_6,counter0_carry__6_n_7}),
        .S({1'b0,\counter_reg_n_0_[31] ,\counter_reg_n_0_[30] ,\counter_reg_n_0_[29] }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter1_carry
       (.CI(1'b0),
        .CO({counter1_carry_n_0,NLW_counter1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter1_carry_O_UNCONNECTED[3:0]),
        .S({counter1_carry_i_1__0_n_0,counter1_carry_i_2__0_n_0,counter1_carry_i_3_n_0,counter1_carry_i_4__0_n_0}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter1_carry__0
       (.CI(counter1_carry_n_0),
        .CO({counter1_carry__0_n_0,NLW_counter1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter1_carry__0_O_UNCONNECTED[3:0]),
        .S({counter1_carry__0_i_1__0_n_0,counter1_carry__0_i_2__0_n_0,counter1_carry__0_i_3__0_n_0,counter1_carry__0_i_4__0_n_0}));
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
    .INIT(64'h0000000211121110)) 
    counter1_carry__0_i_4__0
       (.I0(\counter_reg_n_0_[12] ),
        .I1(\counter_reg_n_0_[13] ),
        .I2(baud_select_IBUF[1]),
        .I3(baud_select_IBUF[2]),
        .I4(baud_select_IBUF[0]),
        .I5(\counter_reg_n_0_[14] ),
        .O(counter1_carry__0_i_4__0_n_0));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter1_carry__1
       (.CI(counter1_carry__0_n_0),
        .CO({NLW_counter1_carry__1_CO_UNCONNECTED[3],counter1_carry__1_n_1,NLW_counter1_carry__1_CO_UNCONNECTED[1:0]}),
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
    .INIT(64'h0000100011110221)) 
    counter1_carry_i_1__0
       (.I0(\counter_reg_n_0_[10] ),
        .I1(\counter_reg_n_0_[11] ),
        .I2(baud_select_IBUF[1]),
        .I3(baud_select_IBUF[0]),
        .I4(baud_select_IBUF[2]),
        .I5(\counter_reg_n_0_[9] ),
        .O(counter1_carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0110000010044828)) 
    counter1_carry_i_2__0
       (.I0(\counter_reg_n_0_[8] ),
        .I1(\counter_reg_n_0_[6] ),
        .I2(baud_select_IBUF[1]),
        .I3(baud_select_IBUF[2]),
        .I4(baud_select_IBUF[0]),
        .I5(\counter_reg_n_0_[7] ),
        .O(counter1_carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0102400080400214)) 
    counter1_carry_i_3
       (.I0(\counter_reg_n_0_[4] ),
        .I1(\counter_reg_n_0_[5] ),
        .I2(baud_select_IBUF[2]),
        .I3(baud_select_IBUF[1]),
        .I4(baud_select_IBUF[0]),
        .I5(\counter_reg_n_0_[3] ),
        .O(counter1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h0420240180080010)) 
    counter1_carry_i_4__0
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(baud_select_IBUF[0]),
        .I3(baud_select_IBUF[2]),
        .I4(baud_select_IBUF[1]),
        .I5(\counter_reg_n_0_[0] ),
        .O(counter1_carry_i_4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \counter[0]_i_1__0 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[10]_i_1__0 
       (.I0(counter0_carry__1_n_6),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[11]_i_1__0 
       (.I0(counter0_carry__1_n_5),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[12]_i_1__0 
       (.I0(counter0_carry__1_n_4),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[13]_i_1__0 
       (.I0(counter0_carry__2_n_7),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[13]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[14]_i_1__0 
       (.I0(counter0_carry__2_n_6),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[14]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[15]_i_1__0 
       (.I0(counter0_carry__2_n_5),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[15]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[16]_i_1__0 
       (.I0(counter0_carry__2_n_4),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[16]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[17]_i_1__0 
       (.I0(counter0_carry__3_n_7),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[17]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[18]_i_1__0 
       (.I0(counter0_carry__3_n_6),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[18]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[19]_i_1__0 
       (.I0(counter0_carry__3_n_5),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[19]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[1]_i_1__0 
       (.I0(counter0_carry_n_7),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[20]_i_1__0 
       (.I0(counter0_carry__3_n_4),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[20]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[21]_i_1__0 
       (.I0(counter0_carry__4_n_7),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[21]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[22]_i_1__0 
       (.I0(counter0_carry__4_n_6),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[22]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[23]_i_1__0 
       (.I0(counter0_carry__4_n_5),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[23]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[24]_i_1__0 
       (.I0(counter0_carry__4_n_4),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[24]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[25]_i_1__0 
       (.I0(counter0_carry__5_n_7),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[25]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[26]_i_1__0 
       (.I0(counter0_carry__5_n_6),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[26]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[27]_i_1__0 
       (.I0(counter0_carry__5_n_5),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[27]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[28]_i_1__0 
       (.I0(counter0_carry__5_n_4),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[28]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[29]_i_1__0 
       (.I0(counter0_carry__6_n_7),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[29]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[2]_i_1__0 
       (.I0(counter0_carry_n_6),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[30]_i_1__0 
       (.I0(counter0_carry__6_n_6),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[30]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[31]_i_1__0 
       (.I0(counter0_carry__6_n_5),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[31]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[3]_i_1__0 
       (.I0(counter0_carry_n_5),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[4]_i_1__0 
       (.I0(counter0_carry_n_4),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[5]_i_1__0 
       (.I0(counter0_carry__0_n_7),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[6]_i_1__0 
       (.I0(counter0_carry__0_n_6),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[7]_i_1__0 
       (.I0(counter0_carry__0_n_5),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[8]_i_1__0 
       (.I0(counter0_carry__0_n_4),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[9]_i_1__0 
       (.I0(counter0_carry__1_n_7),
        .I1(\Rx_DATA_reg[0] [1]),
        .I2(\FSM_sequential_cur_state_reg[0] ),
        .I3(counter1_carry__1_n_1),
        .O(\counter[9]_i_1__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[0]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[10]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[11]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[12]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[13]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[14]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[15]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[16]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[17]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[18]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[19]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[1]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[20]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[21]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[22]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[23]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[24]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[25]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[26]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[27]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[28]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[29]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[2]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[30]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[31]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[3]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[4]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[5]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[6]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[7]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[8]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[9]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAACACCCC)) 
    prev_bit_i_1
       (.I0(TxD_OBUF),
        .I1(prev_bit),
        .I2(bit_stable_i_2_n_0),
        .I3(\FSM_onehot_cur_state[12]_i_2_n_0 ),
        .I4(bit_stable),
        .I5(bit_stable_i_3_n_0),
        .O(prev_bit_reg));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    sample_ENABLE_i_1
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_EN_IBUF),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Tx_WR_IBUF),
        .I5(\Rx_DATA_reg[0] [1]),
        .O(sample_ENABLE_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    sample_ENABLE_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(sample_ENABLE_i_1_n_0),
        .Q(sample_ENABLE));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hA8AA)) 
    \sample_counter[3]_i_1 
       (.I0(sample_ENABLE),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(sample_ENABLE_reg_0),
        .O(E));
endmodule

module baud_controller_t
   (D,
    clk_IBUF_BUFG,
    AR,
    Q,
    Tx_EN_IBUF,
    sample_ENABLE_reg_0,
    \FSM_sequential_cur_state_reg[0] ,
    Tx_WR_IBUF,
    baud_select_IBUF);
  output [3:0]D;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input [3:0]Q;
  input Tx_EN_IBUF;
  input [1:0]sample_ENABLE_reg_0;
  input \FSM_sequential_cur_state_reg[0] ;
  input Tx_WR_IBUF;
  input [2:0]baud_select_IBUF;

  wire [0:0]AR;
  wire [3:0]D;
  wire \FSM_sequential_cur_state[3]_i_3_n_0 ;
  wire \FSM_sequential_cur_state_reg[0] ;
  wire [3:0]Q;
  wire Tx_EN_IBUF;
  wire Tx_WR_IBUF;
  wire [2:0]baud_select_IBUF;
  wire clk_IBUF_BUFG;
  wire [31:0]counter;
  wire [31:1]counter0;
  wire counter0_carry__0_n_0;
  wire counter0_carry__1_n_0;
  wire counter0_carry__2_n_0;
  wire counter0_carry__3_n_0;
  wire counter0_carry__4_n_0;
  wire counter0_carry__5_n_0;
  wire counter0_carry_n_0;
  wire counter1_carry__0_i_1_n_0;
  wire counter1_carry__0_i_2_n_0;
  wire counter1_carry__0_i_3_n_0;
  wire counter1_carry__0_i_4_n_0;
  wire counter1_carry__0_n_0;
  wire counter1_carry__1_i_1_n_0;
  wire counter1_carry__1_i_2_n_0;
  wire counter1_carry__1_i_3_n_0;
  wire counter1_carry__1_n_1;
  wire counter1_carry_i_1_n_0;
  wire counter1_carry_i_2_n_0;
  wire counter1_carry_i_3__0_n_0;
  wire counter1_carry_i_4_n_0;
  wire counter1_carry_n_0;
  wire [31:0]p_0_in;
  wire sample_ENABLE;
  wire sample_ENABLE_i_1__0_n_0;
  wire [1:0]sample_ENABLE_reg_0;
  wire [2:0]NLW_counter0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__2_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__3_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__4_CO_UNCONNECTED;
  wire [2:0]NLW_counter0_carry__5_CO_UNCONNECTED;
  wire [3:0]NLW_counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_counter0_carry__6_O_UNCONNECTED;
  wire [2:0]NLW_counter1_carry_CO_UNCONNECTED;
  wire [3:0]NLW_counter1_carry_O_UNCONNECTED;
  wire [2:0]NLW_counter1_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__1_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'h111144443333CDC8)) 
    \FSM_sequential_cur_state[0]_i_1 
       (.I0(Q[3]),
        .I1(sample_ENABLE),
        .I2(Q[1]),
        .I3(\FSM_sequential_cur_state_reg[0] ),
        .I4(Q[0]),
        .I5(Q[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'h07707070)) 
    \FSM_sequential_cur_state[1]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(sample_ENABLE),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hEEE4EEEE66666666)) 
    \FSM_sequential_cur_state[2]_i_1 
       (.I0(Q[2]),
        .I1(\FSM_sequential_cur_state[3]_i_3_n_0 ),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_EN_IBUF),
        .I5(Q[3]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'hECECECECECEC2CEC)) 
    \FSM_sequential_cur_state[3]_i_1 
       (.I0(\FSM_sequential_cur_state[3]_i_3_n_0 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Tx_EN_IBUF),
        .I4(sample_ENABLE_reg_0[1]),
        .I5(sample_ENABLE_reg_0[0]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \FSM_sequential_cur_state[3]_i_3 
       (.I0(sample_ENABLE),
        .I1(Q[0]),
        .I2(Q[1]),
        .O(\FSM_sequential_cur_state[3]_i_3_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,NLW_counter0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[4:1]),
        .S(counter[4:1]));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,NLW_counter0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[8:5]),
        .S(counter[8:5]));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,NLW_counter0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[12:9]),
        .S(counter[12:9]));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,NLW_counter0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[16:13]),
        .S(counter[16:13]));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({counter0_carry__3_n_0,NLW_counter0_carry__3_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[20:17]),
        .S(counter[20:17]));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter0_carry__4
       (.CI(counter0_carry__3_n_0),
        .CO({counter0_carry__4_n_0,NLW_counter0_carry__4_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[24:21]),
        .S(counter[24:21]));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter0_carry__5
       (.CI(counter0_carry__4_n_0),
        .CO({counter0_carry__5_n_0,NLW_counter0_carry__5_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(counter0[28:25]),
        .S(counter[28:25]));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter0_carry__6
       (.CI(counter0_carry__5_n_0),
        .CO(NLW_counter0_carry__6_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_counter0_carry__6_O_UNCONNECTED[3],counter0[31:29]}),
        .S({1'b0,counter[31:29]}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter1_carry
       (.CI(1'b0),
        .CO({counter1_carry_n_0,NLW_counter1_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter1_carry_O_UNCONNECTED[3:0]),
        .S({counter1_carry_i_1_n_0,counter1_carry_i_2_n_0,counter1_carry_i_3__0_n_0,counter1_carry_i_4_n_0}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter1_carry__0
       (.CI(counter1_carry_n_0),
        .CO({counter1_carry__0_n_0,NLW_counter1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter1_carry__0_O_UNCONNECTED[3:0]),
        .S({counter1_carry__0_i_1_n_0,counter1_carry__0_i_2_n_0,counter1_carry__0_i_3_n_0,counter1_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    counter1_carry__0_i_1
       (.I0(counter[22]),
        .I1(counter[23]),
        .I2(counter[21]),
        .O(counter1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000111111110)) 
    counter1_carry__0_i_2
       (.I0(counter[19]),
        .I1(counter[20]),
        .I2(baud_select_IBUF[1]),
        .I3(baud_select_IBUF[2]),
        .I4(baud_select_IBUF[0]),
        .I5(counter[18]),
        .O(counter1_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000056)) 
    counter1_carry__0_i_3
       (.I0(counter[16]),
        .I1(baud_select_IBUF[1]),
        .I2(baud_select_IBUF[2]),
        .I3(counter[17]),
        .I4(counter[15]),
        .O(counter1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000014011142004)) 
    counter1_carry__0_i_4
       (.I0(counter[13]),
        .I1(counter[12]),
        .I2(baud_select_IBUF[1]),
        .I3(baud_select_IBUF[0]),
        .I4(baud_select_IBUF[2]),
        .I5(counter[14]),
        .O(counter1_carry__0_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter1_carry__1
       (.CI(counter1_carry__0_n_0),
        .CO({NLW_counter1_carry__1_CO_UNCONNECTED[3],counter1_carry__1_n_1,NLW_counter1_carry__1_CO_UNCONNECTED[1:0]}),
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
    .INIT(64'h0100200020810448)) 
    counter1_carry_i_1
       (.I0(counter[9]),
        .I1(counter[10]),
        .I2(baud_select_IBUF[2]),
        .I3(baud_select_IBUF[0]),
        .I4(baud_select_IBUF[1]),
        .I5(counter[11]),
        .O(counter1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h0014200081000281)) 
    counter1_carry_i_2
       (.I0(counter[6]),
        .I1(counter[8]),
        .I2(baud_select_IBUF[1]),
        .I3(baud_select_IBUF[2]),
        .I4(baud_select_IBUF[0]),
        .I5(counter[7]),
        .O(counter1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h2880002000028808)) 
    counter1_carry_i_3__0
       (.I0(counter[3]),
        .I1(counter[4]),
        .I2(baud_select_IBUF[1]),
        .I3(baud_select_IBUF[2]),
        .I4(baud_select_IBUF[0]),
        .I5(counter[5]),
        .O(counter1_carry_i_3__0_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    counter1_carry_i_4
       (.I0(counter[1]),
        .I1(counter[2]),
        .I2(counter[0]),
        .O(counter1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000055515555)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[10]_i_1 
       (.I0(counter0[10]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[11]_i_1 
       (.I0(counter0[11]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[11]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[12]_i_1 
       (.I0(counter0[12]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[12]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[13]_i_1 
       (.I0(counter0[13]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[13]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[14]_i_1 
       (.I0(counter0[14]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[14]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[15]_i_1 
       (.I0(counter0[15]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[15]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[16]_i_1 
       (.I0(counter0[16]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[16]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[17]_i_1 
       (.I0(counter0[17]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[17]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[18]_i_1 
       (.I0(counter0[18]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[18]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[19]_i_1 
       (.I0(counter0[19]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[19]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[1]_i_1 
       (.I0(counter0[1]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[20]_i_1 
       (.I0(counter0[20]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[20]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[21]_i_1 
       (.I0(counter0[21]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[21]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[22]_i_1 
       (.I0(counter0[22]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[22]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[23]_i_1 
       (.I0(counter0[23]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[23]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[24]_i_1 
       (.I0(counter0[24]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[24]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[25]_i_1 
       (.I0(counter0[25]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[25]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[26]_i_1 
       (.I0(counter0[26]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[26]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[27]_i_1 
       (.I0(counter0[27]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[27]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[28]_i_1 
       (.I0(counter0[28]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[28]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[29]_i_1 
       (.I0(counter0[29]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[29]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[2]_i_1 
       (.I0(counter0[2]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[30]_i_1 
       (.I0(counter0[30]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[30]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[31]_i_1 
       (.I0(counter0[31]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[31]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[3]_i_1 
       (.I0(counter0[3]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[4]_i_1 
       (.I0(counter0[4]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[5]_i_1 
       (.I0(counter0[5]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[6]_i_1 
       (.I0(counter0[6]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[7]_i_1 
       (.I0(counter0[7]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[8]_i_1 
       (.I0(counter0[8]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h00000000AAA2AAAA)) 
    \counter[9]_i_1 
       (.I0(counter0[9]),
        .I1(Tx_EN_IBUF),
        .I2(sample_ENABLE_reg_0[0]),
        .I3(sample_ENABLE_reg_0[1]),
        .I4(Tx_WR_IBUF),
        .I5(counter1_carry__1_n_1),
        .O(p_0_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[0]),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[10]),
        .Q(counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[11]),
        .Q(counter[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[12]),
        .Q(counter[12]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[13]),
        .Q(counter[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[14]),
        .Q(counter[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[15]),
        .Q(counter[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[16]),
        .Q(counter[16]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[17]),
        .Q(counter[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[18]),
        .Q(counter[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[19]),
        .Q(counter[19]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[20]),
        .Q(counter[20]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[21]),
        .Q(counter[21]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[22]),
        .Q(counter[22]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[23]),
        .Q(counter[23]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[24]),
        .Q(counter[24]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[25]),
        .Q(counter[25]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[26]),
        .Q(counter[26]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[27]),
        .Q(counter[27]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[28]),
        .Q(counter[28]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[29]),
        .Q(counter[29]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[30]),
        .Q(counter[30]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[31]),
        .Q(counter[31]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[4]),
        .Q(counter[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[5]),
        .Q(counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[6]),
        .Q(counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[7]),
        .Q(counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[8]),
        .Q(counter[8]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[9]),
        .Q(counter[9]));
  LUT5 #(
    .INIT(32'hAAA2AAAA)) 
    sample_ENABLE_i_1__0
       (.I0(counter1_carry__1_n_1),
        .I1(Tx_WR_IBUF),
        .I2(sample_ENABLE_reg_0[1]),
        .I3(sample_ENABLE_reg_0[0]),
        .I4(Tx_EN_IBUF),
        .O(sample_ENABLE_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    sample_ENABLE_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(sample_ENABLE_i_1__0_n_0),
        .Q(sample_ENABLE));
endmodule

module uart_receiver
   (Reset_UART,
    E,
    \buffer_reg[7] ,
    \buffer_reg[3] ,
    \Rx_DATA_reg[7]_0 ,
    D,
    clk_IBUF_BUFG,
    Q,
    AR,
    Tx_BUSY_OBUF,
    Tx_EN_IBUF,
    Tx_WR_IBUF,
    TxD_OBUF,
    \Rx_DATA_reg[0]_0 ,
    baud_select_IBUF,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6,
    lopt_7);
  output Reset_UART;
  output [0:0]E;
  output \buffer_reg[7] ;
  output \buffer_reg[3] ;
  output [7:0]\Rx_DATA_reg[7]_0 ;
  output [1:0]D;
  input clk_IBUF_BUFG;
  input [1:0]Q;
  input [0:0]AR;
  input Tx_BUSY_OBUF;
  input Tx_EN_IBUF;
  input Tx_WR_IBUF;
  input TxD_OBUF;
  input [7:0]\Rx_DATA_reg[0]_0 ;
  input [2:0]baud_select_IBUF;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;
  output lopt_6;
  output lopt_7;

  wire [0:0]AR;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_cur_state[0]_i_2_n_0 ;
  wire \FSM_onehot_cur_state[0]_i_3_n_0 ;
  wire \FSM_onehot_cur_state[0]_i_4_n_0 ;
  wire \FSM_onehot_cur_state[12]_i_3_n_0 ;
  wire \FSM_onehot_cur_state[12]_i_4_n_0 ;
  wire \FSM_onehot_cur_state[1]_i_1_n_0 ;
  wire \FSM_onehot_cur_state_reg_n_0_[10] ;
  wire \FSM_onehot_cur_state_reg_n_0_[3] ;
  wire \FSM_onehot_cur_state_reg_n_0_[4] ;
  wire \FSM_onehot_cur_state_reg_n_0_[5] ;
  wire \FSM_onehot_cur_state_reg_n_0_[6] ;
  wire \FSM_onehot_cur_state_reg_n_0_[7] ;
  wire \FSM_onehot_cur_state_reg_n_0_[8] ;
  wire \FSM_onehot_cur_state_reg_n_0_[9] ;
  wire [1:0]Q;
  wire Reset_UART;
  wire Rx_DATA0;
  wire \Rx_DATA[7]_i_2_n_0 ;
  wire \Rx_DATA[7]_i_3_n_0 ;
  wire \Rx_DATA[7]_i_4_n_0 ;
  wire [7:0]\Rx_DATA_reg[0]_0 ;
  wire \Rx_DATA_reg[0]_lopt_replica_1 ;
  wire \Rx_DATA_reg[1]_lopt_replica_1 ;
  wire \Rx_DATA_reg[2]_lopt_replica_1 ;
  wire \Rx_DATA_reg[3]_lopt_replica_1 ;
  wire \Rx_DATA_reg[4]_lopt_replica_1 ;
  wire \Rx_DATA_reg[5]_lopt_replica_1 ;
  wire \Rx_DATA_reg[6]_lopt_replica_1 ;
  wire [7:0]\Rx_DATA_reg[7]_0 ;
  wire \Rx_DATA_reg[7]_lopt_replica_1 ;
  wire Rx_FERROR;
  wire Rx_FERROR_i_1_n_0;
  wire Rx_PERROR;
  wire Rx_PERROR_i_1_n_0;
  wire Rx_VALID;
  wire Rx_VALID_i_1_n_0;
  wire SURE;
  wire SURE_i_1_n_0;
  wire TxD_OBUF;
  wire Tx_BUSY_OBUF;
  wire Tx_EN_IBUF;
  wire Tx_WR_IBUF;
  wire baud_controller_r_inst_n_10;
  wire baud_controller_r_inst_n_11;
  wire baud_controller_r_inst_n_12;
  wire baud_controller_r_inst_n_13;
  wire baud_controller_r_inst_n_14;
  wire baud_controller_r_inst_n_17;
  wire baud_controller_r_inst_n_2;
  wire baud_controller_r_inst_n_3;
  wire baud_controller_r_inst_n_4;
  wire baud_controller_r_inst_n_5;
  wire baud_controller_r_inst_n_6;
  wire baud_controller_r_inst_n_7;
  wire baud_controller_r_inst_n_8;
  wire baud_controller_r_inst_n_9;
  wire [2:0]baud_select_IBUF;
  wire bit_stable;
  wire \buffer_reg[3] ;
  wire \buffer_reg[7] ;
  wire check_parity;
  wire clk_IBUF_BUFG;
  wire disabled;
  wire end_sequence;
  wire idle;
  wire prev_bit;
  wire prev_bit_0;
  wire sample_counter;
  wire \sample_counter[0]_i_1_n_0 ;
  wire \sample_counter[1]_i_1_n_0 ;
  wire \sample_counter[2]_i_1_n_0 ;
  wire \sample_counter[3]_i_2_n_0 ;
  wire \sample_counter_reg_n_0_[0] ;
  wire \sample_counter_reg_n_0_[1] ;
  wire \sample_counter_reg_n_0_[2] ;
  wire \sample_counter_reg_n_0_[3] ;
  wire start_sequence;

  assign lopt = \Rx_DATA_reg[0]_lopt_replica_1 ;
  assign lopt_1 = \Rx_DATA_reg[1]_lopt_replica_1 ;
  assign lopt_2 = \Rx_DATA_reg[2]_lopt_replica_1 ;
  assign lopt_3 = \Rx_DATA_reg[3]_lopt_replica_1 ;
  assign lopt_4 = \Rx_DATA_reg[4]_lopt_replica_1 ;
  assign lopt_5 = \Rx_DATA_reg[5]_lopt_replica_1 ;
  assign lopt_6 = \Rx_DATA_reg[6]_lopt_replica_1 ;
  assign lopt_7 = \Rx_DATA_reg[7]_lopt_replica_1 ;
  LUT4 #(
    .INIT(16'hBABB)) 
    \FSM_onehot_cur_state[0]_i_2 
       (.I0(end_sequence),
        .I1(bit_stable),
        .I2(\FSM_onehot_cur_state[0]_i_3_n_0 ),
        .I3(\FSM_onehot_cur_state[0]_i_4_n_0 ),
        .O(\FSM_onehot_cur_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_cur_state[0]_i_3 
       (.I0(check_parity),
        .I1(start_sequence),
        .I2(\FSM_onehot_cur_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[7] ),
        .I5(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .O(\FSM_onehot_cur_state[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_onehot_cur_state[0]_i_4 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[8] ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[9] ),
        .I2(\FSM_onehot_cur_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_cur_state_reg_n_0_[10] ),
        .O(\FSM_onehot_cur_state[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h96696996)) 
    \FSM_onehot_cur_state[12]_i_3 
       (.I0(\Rx_DATA_reg[7]_0 [2]),
        .I1(\Rx_DATA_reg[7]_0 [3]),
        .I2(\Rx_DATA_reg[7]_0 [4]),
        .I3(\Rx_DATA_reg[7]_0 [5]),
        .I4(\FSM_onehot_cur_state[12]_i_4_n_0 ),
        .O(\FSM_onehot_cur_state[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \FSM_onehot_cur_state[12]_i_4 
       (.I0(\Rx_DATA_reg[7]_0 [1]),
        .I1(\Rx_DATA_reg[7]_0 [0]),
        .I2(\Rx_DATA_reg[7]_0 [7]),
        .I3(\Rx_DATA_reg[7]_0 [6]),
        .O(\FSM_onehot_cur_state[12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h1110)) 
    \FSM_onehot_cur_state[1]_i_1 
       (.I0(baud_controller_r_inst_n_14),
        .I1(SURE),
        .I2(disabled),
        .I3(idle),
        .O(\FSM_onehot_cur_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000100000,BIT_3:0000001000000,BIT_1:0000000010000,IDLE:0000000000001,DISABLED:0000000000010,END_BIT:1000000000000,BIT_0:0000000001000,START_BIT:0000000000100,BIT_6:0001000000000,PARITY:0100000000000,BIT_5:0000100000000,BIT_7:0010000000000,BIT_4:0000010000000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_cur_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(baud_controller_r_inst_n_13),
        .PRE(Reset_UART),
        .Q(idle));
  (* FSM_ENCODED_STATES = "BIT_2:0000000100000,BIT_3:0000001000000,BIT_1:0000000010000,IDLE:0000000000001,DISABLED:0000000000010,END_BIT:1000000000000,BIT_0:0000000001000,START_BIT:0000000000100,BIT_6:0001000000000,PARITY:0100000000000,BIT_5:0000100000000,BIT_7:0010000000000,BIT_4:0000010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(baud_controller_r_inst_n_4),
        .Q(\FSM_onehot_cur_state_reg_n_0_[10] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000100000,BIT_3:0000001000000,BIT_1:0000000010000,IDLE:0000000000001,DISABLED:0000000000010,END_BIT:1000000000000,BIT_0:0000000001000,START_BIT:0000000000100,BIT_6:0001000000000,PARITY:0100000000000,BIT_5:0000100000000,BIT_7:0010000000000,BIT_4:0000010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(baud_controller_r_inst_n_3),
        .Q(check_parity));
  (* FSM_ENCODED_STATES = "BIT_2:0000000100000,BIT_3:0000001000000,BIT_1:0000000010000,IDLE:0000000000001,DISABLED:0000000000010,END_BIT:1000000000000,BIT_0:0000000001000,START_BIT:0000000000100,BIT_6:0001000000000,PARITY:0100000000000,BIT_5:0000100000000,BIT_7:0010000000000,BIT_4:0000010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(baud_controller_r_inst_n_2),
        .Q(end_sequence));
  (* FSM_ENCODED_STATES = "BIT_2:0000000100000,BIT_3:0000001000000,BIT_1:0000000010000,IDLE:0000000000001,DISABLED:0000000000010,END_BIT:1000000000000,BIT_0:0000000001000,START_BIT:0000000000100,BIT_6:0001000000000,PARITY:0100000000000,BIT_5:0000100000000,BIT_7:0010000000000,BIT_4:0000010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\FSM_onehot_cur_state[1]_i_1_n_0 ),
        .Q(disabled));
  (* FSM_ENCODED_STATES = "BIT_2:0000000100000,BIT_3:0000001000000,BIT_1:0000000010000,IDLE:0000000000001,DISABLED:0000000000010,END_BIT:1000000000000,BIT_0:0000000001000,START_BIT:0000000000100,BIT_6:0001000000000,PARITY:0100000000000,BIT_5:0000100000000,BIT_7:0010000000000,BIT_4:0000010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(baud_controller_r_inst_n_12),
        .Q(start_sequence));
  (* FSM_ENCODED_STATES = "BIT_2:0000000100000,BIT_3:0000001000000,BIT_1:0000000010000,IDLE:0000000000001,DISABLED:0000000000010,END_BIT:1000000000000,BIT_0:0000000001000,START_BIT:0000000000100,BIT_6:0001000000000,PARITY:0100000000000,BIT_5:0000100000000,BIT_7:0010000000000,BIT_4:0000010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(baud_controller_r_inst_n_11),
        .Q(\FSM_onehot_cur_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000100000,BIT_3:0000001000000,BIT_1:0000000010000,IDLE:0000000000001,DISABLED:0000000000010,END_BIT:1000000000000,BIT_0:0000000001000,START_BIT:0000000000100,BIT_6:0001000000000,PARITY:0100000000000,BIT_5:0000100000000,BIT_7:0010000000000,BIT_4:0000010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(baud_controller_r_inst_n_10),
        .Q(\FSM_onehot_cur_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000100000,BIT_3:0000001000000,BIT_1:0000000010000,IDLE:0000000000001,DISABLED:0000000000010,END_BIT:1000000000000,BIT_0:0000000001000,START_BIT:0000000000100,BIT_6:0001000000000,PARITY:0100000000000,BIT_5:0000100000000,BIT_7:0010000000000,BIT_4:0000010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(baud_controller_r_inst_n_9),
        .Q(\FSM_onehot_cur_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000100000,BIT_3:0000001000000,BIT_1:0000000010000,IDLE:0000000000001,DISABLED:0000000000010,END_BIT:1000000000000,BIT_0:0000000001000,START_BIT:0000000000100,BIT_6:0001000000000,PARITY:0100000000000,BIT_5:0000100000000,BIT_7:0010000000000,BIT_4:0000010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(baud_controller_r_inst_n_8),
        .Q(\FSM_onehot_cur_state_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000100000,BIT_3:0000001000000,BIT_1:0000000010000,IDLE:0000000000001,DISABLED:0000000000010,END_BIT:1000000000000,BIT_0:0000000001000,START_BIT:0000000000100,BIT_6:0001000000000,PARITY:0100000000000,BIT_5:0000100000000,BIT_7:0010000000000,BIT_4:0000010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(baud_controller_r_inst_n_7),
        .Q(\FSM_onehot_cur_state_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000100000,BIT_3:0000001000000,BIT_1:0000000010000,IDLE:0000000000001,DISABLED:0000000000010,END_BIT:1000000000000,BIT_0:0000000001000,START_BIT:0000000000100,BIT_6:0001000000000,PARITY:0100000000000,BIT_5:0000100000000,BIT_7:0010000000000,BIT_4:0000010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(baud_controller_r_inst_n_6),
        .Q(\FSM_onehot_cur_state_reg_n_0_[8] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000100000,BIT_3:0000001000000,BIT_1:0000000010000,IDLE:0000000000001,DISABLED:0000000000010,END_BIT:1000000000000,BIT_0:0000000001000,START_BIT:0000000000100,BIT_6:0001000000000,PARITY:0100000000000,BIT_5:0000100000000,BIT_7:0010000000000,BIT_4:0000010000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(baud_controller_r_inst_n_5),
        .Q(\FSM_onehot_cur_state_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h54)) 
    \FSM_sequential_cur_state[0]_i_1__0 
       (.I0(Q[1]),
        .I1(Rx_FERROR),
        .I2(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h2322)) 
    \FSM_sequential_cur_state[1]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Rx_FERROR),
        .I3(Rx_PERROR),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \Rx_DATA[7]_i_2 
       (.I0(\sample_counter_reg_n_0_[2] ),
        .I1(\sample_counter_reg_n_0_[1] ),
        .I2(\sample_counter_reg_n_0_[0] ),
        .O(\Rx_DATA[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \Rx_DATA[7]_i_3 
       (.I0(idle),
        .I1(disabled),
        .O(\Rx_DATA[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \Rx_DATA[7]_i_4 
       (.I0(start_sequence),
        .I1(check_parity),
        .O(\Rx_DATA[7]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(Rx_DATA0),
        .CLR(Reset_UART),
        .D(TxD_OBUF),
        .Q(\Rx_DATA_reg[7]_0 [0]));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[0]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(Rx_DATA0),
        .CLR(Reset_UART),
        .D(TxD_OBUF),
        .Q(\Rx_DATA_reg[0]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(Rx_DATA0),
        .CLR(Reset_UART),
        .D(\Rx_DATA_reg[7]_0 [0]),
        .Q(\Rx_DATA_reg[7]_0 [1]));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[1]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(Rx_DATA0),
        .CLR(Reset_UART),
        .D(\Rx_DATA_reg[7]_0 [0]),
        .Q(\Rx_DATA_reg[1]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(Rx_DATA0),
        .CLR(Reset_UART),
        .D(\Rx_DATA_reg[7]_0 [1]),
        .Q(\Rx_DATA_reg[7]_0 [2]));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[2]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(Rx_DATA0),
        .CLR(Reset_UART),
        .D(\Rx_DATA_reg[7]_0 [1]),
        .Q(\Rx_DATA_reg[2]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(Rx_DATA0),
        .CLR(Reset_UART),
        .D(\Rx_DATA_reg[7]_0 [2]),
        .Q(\Rx_DATA_reg[7]_0 [3]));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[3]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(Rx_DATA0),
        .CLR(Reset_UART),
        .D(\Rx_DATA_reg[7]_0 [2]),
        .Q(\Rx_DATA_reg[3]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(Rx_DATA0),
        .CLR(Reset_UART),
        .D(\Rx_DATA_reg[7]_0 [3]),
        .Q(\Rx_DATA_reg[7]_0 [4]));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[4]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(Rx_DATA0),
        .CLR(Reset_UART),
        .D(\Rx_DATA_reg[7]_0 [3]),
        .Q(\Rx_DATA_reg[4]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(Rx_DATA0),
        .CLR(Reset_UART),
        .D(\Rx_DATA_reg[7]_0 [4]),
        .Q(\Rx_DATA_reg[7]_0 [5]));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[5]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(Rx_DATA0),
        .CLR(Reset_UART),
        .D(\Rx_DATA_reg[7]_0 [4]),
        .Q(\Rx_DATA_reg[5]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(Rx_DATA0),
        .CLR(Reset_UART),
        .D(\Rx_DATA_reg[7]_0 [5]),
        .Q(\Rx_DATA_reg[7]_0 [6]));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[6]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(Rx_DATA0),
        .CLR(Reset_UART),
        .D(\Rx_DATA_reg[7]_0 [5]),
        .Q(\Rx_DATA_reg[6]_lopt_replica_1 ));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(Rx_DATA0),
        .CLR(Reset_UART),
        .D(\Rx_DATA_reg[7]_0 [6]),
        .Q(\Rx_DATA_reg[7]_0 [7]));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[7]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(Rx_DATA0),
        .CLR(Reset_UART),
        .D(\Rx_DATA_reg[7]_0 [6]),
        .Q(\Rx_DATA_reg[7]_lopt_replica_1 ));
  LUT6 #(
    .INIT(64'h5D5DFF5D0C0CFF0C)) 
    Rx_FERROR_i_1
       (.I0(start_sequence),
        .I1(end_sequence),
        .I2(TxD_OBUF),
        .I3(\Rx_DATA[7]_i_3_n_0 ),
        .I4(bit_stable),
        .I5(Rx_FERROR),
        .O(Rx_FERROR_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    Rx_FERROR_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(Rx_FERROR_i_1_n_0),
        .Q(Rx_FERROR));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h7D553C00)) 
    Rx_PERROR_i_1
       (.I0(start_sequence),
        .I1(TxD_OBUF),
        .I2(\FSM_onehot_cur_state[12]_i_3_n_0 ),
        .I3(check_parity),
        .I4(Rx_PERROR),
        .O(Rx_PERROR_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    Rx_PERROR_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(Rx_PERROR_i_1_n_0),
        .Q(Rx_PERROR));
  LUT5 #(
    .INIT(32'hD555C000)) 
    Rx_VALID_i_1
       (.I0(start_sequence),
        .I1(bit_stable),
        .I2(end_sequence),
        .I3(TxD_OBUF),
        .I4(Rx_VALID),
        .O(Rx_VALID_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    Rx_VALID_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(Rx_VALID_i_1_n_0),
        .Q(Rx_VALID));
  LUT6 #(
    .INIT(64'h5555FD550000FC00)) 
    SURE_i_1
       (.I0(start_sequence),
        .I1(disabled),
        .I2(idle),
        .I3(baud_controller_r_inst_n_14),
        .I4(TxD_OBUF),
        .I5(SURE),
        .O(SURE_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    SURE_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(SURE_i_1_n_0),
        .Q(SURE));
  LUT4 #(
    .INIT(16'h6996)) 
    TxD_OBUF_inst_i_3
       (.I0(\Rx_DATA_reg[0]_0 [7]),
        .I1(\Rx_DATA_reg[0]_0 [6]),
        .I2(\Rx_DATA_reg[0]_0 [5]),
        .I3(\Rx_DATA_reg[0]_0 [4]),
        .O(\buffer_reg[7] ));
  LUT4 #(
    .INIT(16'h6996)) 
    TxD_OBUF_inst_i_4
       (.I0(\Rx_DATA_reg[0]_0 [3]),
        .I1(\Rx_DATA_reg[0]_0 [2]),
        .I2(\Rx_DATA_reg[0]_0 [1]),
        .I3(\Rx_DATA_reg[0]_0 [0]),
        .O(\buffer_reg[3] ));
  baud_controller_r baud_controller_r_inst
       (.AR(Reset_UART),
        .D({baud_controller_r_inst_n_2,baud_controller_r_inst_n_3,baud_controller_r_inst_n_4,baud_controller_r_inst_n_5,baud_controller_r_inst_n_6,baud_controller_r_inst_n_7,baud_controller_r_inst_n_8,baud_controller_r_inst_n_9,baud_controller_r_inst_n_10,baud_controller_r_inst_n_11,baud_controller_r_inst_n_12,baud_controller_r_inst_n_13}),
        .E(sample_counter),
        .\FSM_onehot_cur_state_reg[0] (\FSM_onehot_cur_state[12]_i_3_n_0 ),
        .\FSM_onehot_cur_state_reg[0]_0 (\FSM_onehot_cur_state[0]_i_2_n_0 ),
        .\FSM_sequential_cur_state_reg[0] (baud_controller_r_inst_n_14),
        .Q(Q),
        .\Rx_DATA_reg[0] ({end_sequence,check_parity,\FSM_onehot_cur_state_reg_n_0_[10] ,\FSM_onehot_cur_state_reg_n_0_[9] ,\FSM_onehot_cur_state_reg_n_0_[8] ,\FSM_onehot_cur_state_reg_n_0_[7] ,\FSM_onehot_cur_state_reg_n_0_[6] ,\FSM_onehot_cur_state_reg_n_0_[5] ,\FSM_onehot_cur_state_reg_n_0_[4] ,\FSM_onehot_cur_state_reg_n_0_[3] ,start_sequence,disabled,idle}),
        .\Rx_DATA_reg[0]_0 ({\sample_counter_reg_n_0_[3] ,\sample_counter_reg_n_0_[2] ,\sample_counter_reg_n_0_[1] ,\sample_counter_reg_n_0_[0] }),
        .\Rx_DATA_reg[0]_1 (\Rx_DATA[7]_i_2_n_0 ),
        .\Rx_DATA_reg[0]_2 (\Rx_DATA[7]_i_3_n_0 ),
        .\Rx_DATA_reg[0]_3 (\Rx_DATA[7]_i_4_n_0 ),
        .SURE(SURE),
        .TxD_OBUF(TxD_OBUF),
        .Tx_EN_IBUF(Tx_EN_IBUF),
        .Tx_WR_IBUF(Tx_WR_IBUF),
        .baud_select_IBUF(baud_select_IBUF),
        .bit_stable(bit_stable),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .prev_bit(prev_bit),
        .prev_bit_0(prev_bit_0),
        .prev_bit_reg(baud_controller_r_inst_n_17),
        .sample_ENABLE_reg_0(AR),
        .\sample_counter_reg[3] (Rx_DATA0));
  FDPE #(
    .INIT(1'b1)) 
    bit_stable_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(prev_bit_0),
        .PRE(Reset_UART),
        .Q(bit_stable));
  LUT5 #(
    .INIT(32'hAAABAAAA)) 
    \buffer[7]_i_1 
       (.I0(Rx_VALID),
        .I1(Tx_BUSY_OBUF),
        .I2(Rx_PERROR),
        .I3(Rx_FERROR),
        .I4(baud_controller_r_inst_n_14),
        .O(E));
  FDCE #(
    .INIT(1'b0)) 
    prev_bit_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(baud_controller_r_inst_n_17),
        .Q(prev_bit));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_counter[0]_i_1 
       (.I0(\sample_counter_reg_n_0_[0] ),
        .O(\sample_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sample_counter[1]_i_1 
       (.I0(\sample_counter_reg_n_0_[0] ),
        .I1(\sample_counter_reg_n_0_[1] ),
        .O(\sample_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sample_counter[2]_i_1 
       (.I0(\sample_counter_reg_n_0_[0] ),
        .I1(\sample_counter_reg_n_0_[1] ),
        .I2(\sample_counter_reg_n_0_[2] ),
        .O(\sample_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
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
       (.C(clk_IBUF_BUFG),
        .CE(sample_counter),
        .CLR(Reset_UART),
        .D(\sample_counter[0]_i_1_n_0 ),
        .Q(\sample_counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_counter),
        .CLR(Reset_UART),
        .D(\sample_counter[1]_i_1_n_0 ),
        .Q(\sample_counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_counter),
        .CLR(Reset_UART),
        .D(\sample_counter[2]_i_1_n_0 ),
        .Q(\sample_counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_counter),
        .CLR(Reset_UART),
        .D(\sample_counter[3]_i_2_n_0 ),
        .Q(\sample_counter_reg_n_0_[3] ));
endmodule

module uart_transmitter
   (TxD_OBUF,
    Tx_BUSY_OBUF,
    clk_IBUF_BUFG,
    AR,
    Tx_EN_IBUF,
    Q,
    Tx_WR_IBUF,
    \Rx_DATA_reg[0] ,
    \Rx_DATA_reg[0]_0 ,
    TxD_OBUF_inst_i_2_0,
    baud_select_IBUF);
  output TxD_OBUF;
  output Tx_BUSY_OBUF;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input Tx_EN_IBUF;
  input [1:0]Q;
  input Tx_WR_IBUF;
  input \Rx_DATA_reg[0] ;
  input \Rx_DATA_reg[0]_0 ;
  input [7:0]TxD_OBUF_inst_i_2_0;
  input [2:0]baud_select_IBUF;

  wire [0:0]AR;
  wire \FSM_sequential_cur_state[0]_i_2_n_0 ;
  wire [1:0]Q;
  wire \Rx_DATA_reg[0] ;
  wire \Rx_DATA_reg[0]_0 ;
  wire TxD_OBUF;
  wire [7:0]TxD_OBUF_inst_i_2_0;
  wire TxD_OBUF_inst_i_2_n_0;
  wire TxD_OBUF_inst_i_5_n_0;
  wire TxD_OBUF_inst_i_6_n_0;
  wire TxD_OBUF_inst_i_7_n_0;
  wire TxD_OBUF_inst_i_8_n_0;
  wire Tx_BUSY_OBUF;
  wire Tx_EN_IBUF;
  wire Tx_WR_IBUF;
  wire [2:0]baud_select_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]cur_state;
  wire [3:0]next_state;

  LUT3 #(
    .INIT(8'h02)) 
    \FSM_sequential_cur_state[0]_i_2 
       (.I0(Tx_WR_IBUF),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(\FSM_sequential_cur_state[0]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "BIT_2:0100,BIT_3:0101,BIT_1:0011,IDLE:0000,DISABLED:1100,END_BIT:1011,BIT_0:0010,START_BIT:0001,BIT_6:1000,PARITY:1010,BIT_5:0111,BIT_7:1001,BIT_4:0110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(next_state[0]),
        .Q(cur_state[0]));
  (* FSM_ENCODED_STATES = "BIT_2:0100,BIT_3:0101,BIT_1:0011,IDLE:0000,DISABLED:1100,END_BIT:1011,BIT_0:0010,START_BIT:0001,BIT_6:1000,PARITY:1010,BIT_5:0111,BIT_7:1001,BIT_4:0110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(next_state[1]),
        .Q(cur_state[1]));
  (* FSM_ENCODED_STATES = "BIT_2:0100,BIT_3:0101,BIT_1:0011,IDLE:0000,DISABLED:1100,END_BIT:1011,BIT_0:0010,START_BIT:0001,BIT_6:1000,PARITY:1010,BIT_5:0111,BIT_7:1001,BIT_4:0110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(next_state[2]),
        .Q(cur_state[2]));
  (* FSM_ENCODED_STATES = "BIT_2:0100,BIT_3:0101,BIT_1:0011,IDLE:0000,DISABLED:1100,END_BIT:1011,BIT_0:0010,START_BIT:0001,BIT_6:1000,PARITY:1010,BIT_5:0111,BIT_7:1001,BIT_4:0110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(next_state[3]),
        .Q(cur_state[3]));
  LUT6 #(
    .INIT(64'h444444444FF4FFFF)) 
    TxD_OBUF_inst_i_1
       (.I0(cur_state[3]),
        .I1(TxD_OBUF_inst_i_2_n_0),
        .I2(\Rx_DATA_reg[0] ),
        .I3(\Rx_DATA_reg[0]_0 ),
        .I4(TxD_OBUF_inst_i_5_n_0),
        .I5(TxD_OBUF_inst_i_6_n_0),
        .O(TxD_OBUF));
  MUXF7 TxD_OBUF_inst_i_2
       (.I0(TxD_OBUF_inst_i_7_n_0),
        .I1(TxD_OBUF_inst_i_8_n_0),
        .O(TxD_OBUF_inst_i_2_n_0),
        .S(cur_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h04)) 
    TxD_OBUF_inst_i_5
       (.I0(cur_state[0]),
        .I1(cur_state[1]),
        .I2(cur_state[2]),
        .O(TxD_OBUF_inst_i_5_n_0));
  LUT6 #(
    .INIT(64'h00040007FFFFFFFF)) 
    TxD_OBUF_inst_i_6
       (.I0(TxD_OBUF_inst_i_2_0[0]),
        .I1(cur_state[0]),
        .I2(cur_state[1]),
        .I3(cur_state[2]),
        .I4(TxD_OBUF_inst_i_2_0[1]),
        .I5(cur_state[3]),
        .O(TxD_OBUF_inst_i_6_n_0));
  LUT4 #(
    .INIT(16'hA0CF)) 
    TxD_OBUF_inst_i_7
       (.I0(TxD_OBUF_inst_i_2_0[6]),
        .I1(TxD_OBUF_inst_i_2_0[7]),
        .I2(cur_state[1]),
        .I3(cur_state[0]),
        .O(TxD_OBUF_inst_i_7_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    TxD_OBUF_inst_i_8
       (.I0(TxD_OBUF_inst_i_2_0[2]),
        .I1(TxD_OBUF_inst_i_2_0[3]),
        .I2(cur_state[1]),
        .I3(TxD_OBUF_inst_i_2_0[4]),
        .I4(cur_state[0]),
        .I5(TxD_OBUF_inst_i_2_0[5]),
        .O(TxD_OBUF_inst_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h55FE)) 
    Tx_BUSY_OBUF_inst_i_1
       (.I0(cur_state[2]),
        .I1(cur_state[1]),
        .I2(cur_state[0]),
        .I3(cur_state[3]),
        .O(Tx_BUSY_OBUF));
  baud_controller_t baud_controller_t_inst
       (.AR(AR),
        .D(next_state),
        .\FSM_sequential_cur_state_reg[0] (\FSM_sequential_cur_state[0]_i_2_n_0 ),
        .Q(cur_state),
        .Tx_EN_IBUF(Tx_EN_IBUF),
        .Tx_WR_IBUF(Tx_WR_IBUF),
        .baud_select_IBUF(baud_select_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .sample_ENABLE_reg_0(Q));
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

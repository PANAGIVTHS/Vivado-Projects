// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Nov  2 13:00:23 2024
// Host        : DESKTOP-922FQ13 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/panag/Desktop/GitHub/Repositories/Vivado-Code/Lab2/projecttest/projecttest.sim/sim_1/synth/func/xsim/tb_UART_controller_func_synth.v
// Design      : uart_receiver
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module baud_controller_r
   (D,
    p_13_in,
    \FSM_sequential_cur_state_reg[0] ,
    E,
    buffer_index0,
    \sample_counter_reg[3] ,
    \buffer_index_reg[1] ,
    CLK,
    AR,
    Rx_EN_IBUF,
    Q,
    \FSM_sequential_cur_state_reg[1] ,
    cur_state,
    RxD_IBUF,
    \FSM_sequential_cur_state_reg[0]_0 ,
    \FSM_sequential_cur_state_reg[0]_1 ,
    baud_select_IBUF,
    \sample_counter_reg[3]_0 ,
    \Rx_DATA_reg[7] ,
    \FSM_sequential_cur_state_reg[1]_0 );
  output [1:0]D;
  output p_13_in;
  output \FSM_sequential_cur_state_reg[0] ;
  output [0:0]E;
  output buffer_index0;
  output [3:0]\sample_counter_reg[3] ;
  output [7:0]\buffer_index_reg[1] ;
  input CLK;
  input [0:0]AR;
  input Rx_EN_IBUF;
  input [2:0]Q;
  input \FSM_sequential_cur_state_reg[1] ;
  input [0:0]cur_state;
  input RxD_IBUF;
  input \FSM_sequential_cur_state_reg[0]_0 ;
  input \FSM_sequential_cur_state_reg[0]_1 ;
  input [2:0]baud_select_IBUF;
  input [3:0]\sample_counter_reg[3]_0 ;
  input [3:0]\Rx_DATA_reg[7] ;
  input \FSM_sequential_cur_state_reg[1]_0 ;

  wire [0:0]AR;
  wire CLK;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_sequential_cur_state[1]_i_2_n_0 ;
  wire \FSM_sequential_cur_state[1]_i_3_n_0 ;
  wire \FSM_sequential_cur_state[2]_i_2_n_0 ;
  wire \FSM_sequential_cur_state[2]_i_3_n_0 ;
  wire \FSM_sequential_cur_state_reg[0] ;
  wire \FSM_sequential_cur_state_reg[0]_0 ;
  wire \FSM_sequential_cur_state_reg[0]_1 ;
  wire \FSM_sequential_cur_state_reg[1] ;
  wire \FSM_sequential_cur_state_reg[1]_0 ;
  wire [2:0]Q;
  wire RxD_IBUF;
  wire [3:0]\Rx_DATA_reg[7] ;
  wire Rx_EN_IBUF;
  wire [2:0]baud_select_IBUF;
  wire buffer_index0;
  wire [7:0]\buffer_index_reg[1] ;
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
  wire counter1_carry__0_i_4_n_0;
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
  wire counter1_carry_i_1_n_0;
  wire counter1_carry_i_2_n_0;
  wire counter1_carry_i_3_n_0;
  wire counter1_carry_i_4_n_0;
  wire counter1_carry_n_0;
  wire counter1_carry_n_1;
  wire counter1_carry_n_2;
  wire counter1_carry_n_3;
  wire [0:0]cur_state;
  wire next_state26_out;
  wire [31:0]p_0_in;
  wire p_13_in;
  wire sample_ENABLE;
  wire sample_ENABLE_i_1_n_0;
  wire [3:0]\sample_counter_reg[3] ;
  wire [3:0]\sample_counter_reg[3]_0 ;
  wire [3:2]NLW_counter0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_counter0_carry__6_O_UNCONNECTED;
  wire [3:0]NLW_counter1_carry_O_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_counter1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_counter1_carry__1_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hEEAEAEEEAEEEEEAE)) 
    \FSM_sequential_cur_state[0]_i_3 
       (.I0(Q[0]),
        .I1(p_13_in),
        .I2(cur_state),
        .I3(RxD_IBUF),
        .I4(\FSM_sequential_cur_state_reg[0]_0 ),
        .I5(\FSM_sequential_cur_state_reg[0]_1 ),
        .O(\FSM_sequential_cur_state_reg[0] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \FSM_sequential_cur_state[1]_i_1 
       (.I0(\FSM_sequential_cur_state[2]_i_2_n_0 ),
        .I1(\FSM_sequential_cur_state[1]_i_2_n_0 ),
        .I2(Q[2]),
        .I3(\FSM_sequential_cur_state[1]_i_3_n_0 ),
        .I4(Q[1]),
        .I5(\FSM_sequential_cur_state_reg[1] ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h000000002882AAAA)) 
    \FSM_sequential_cur_state[1]_i_2 
       (.I0(p_13_in),
        .I1(\FSM_sequential_cur_state_reg[0]_1 ),
        .I2(\FSM_sequential_cur_state_reg[0]_0 ),
        .I3(RxD_IBUF),
        .I4(cur_state),
        .I5(Q[0]),
        .O(\FSM_sequential_cur_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEFFFFFFFFFFFFFFF)) 
    \FSM_sequential_cur_state[1]_i_3 
       (.I0(\FSM_sequential_cur_state_reg[1]_0 ),
        .I1(\Rx_DATA_reg[7] [3]),
        .I2(\Rx_DATA_reg[7] [2]),
        .I3(p_13_in),
        .I4(cur_state),
        .I5(Q[0]),
        .O(\FSM_sequential_cur_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBCBCBC8CBC8CBC8C)) 
    \FSM_sequential_cur_state[2]_i_1 
       (.I0(\FSM_sequential_cur_state[2]_i_2_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\FSM_sequential_cur_state[2]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(next_state26_out),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hFBFFFFFF)) 
    \FSM_sequential_cur_state[2]_i_2 
       (.I0(Q[0]),
        .I1(p_13_in),
        .I2(Rx_EN_IBUF),
        .I3(cur_state),
        .I4(RxD_IBUF),
        .O(\FSM_sequential_cur_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \FSM_sequential_cur_state[2]_i_3 
       (.I0(sample_ENABLE),
        .I1(\sample_counter_reg[3]_0 [3]),
        .I2(\sample_counter_reg[3]_0 [2]),
        .I3(\sample_counter_reg[3]_0 [0]),
        .I4(\sample_counter_reg[3]_0 [1]),
        .I5(cur_state),
        .O(\FSM_sequential_cur_state[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h08000000)) 
    \FSM_sequential_cur_state[2]_i_4 
       (.I0(\Rx_DATA_reg[7] [1]),
        .I1(\Rx_DATA_reg[7] [0]),
        .I2(\Rx_DATA_reg[7] [3]),
        .I3(\Rx_DATA_reg[7] [2]),
        .I4(p_13_in),
        .O(next_state26_out));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \Rx_DATA[0]_i_1 
       (.I0(buffer_index0),
        .I1(\Rx_DATA_reg[7] [1]),
        .I2(\Rx_DATA_reg[7] [0]),
        .I3(\Rx_DATA_reg[7] [2]),
        .I4(\Rx_DATA_reg[7] [3]),
        .O(\buffer_index_reg[1] [0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \Rx_DATA[1]_i_1 
       (.I0(buffer_index0),
        .I1(\Rx_DATA_reg[7] [1]),
        .I2(\Rx_DATA_reg[7] [0]),
        .I3(\Rx_DATA_reg[7] [2]),
        .I4(\Rx_DATA_reg[7] [3]),
        .O(\buffer_index_reg[1] [1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \Rx_DATA[2]_i_1 
       (.I0(buffer_index0),
        .I1(\Rx_DATA_reg[7] [0]),
        .I2(\Rx_DATA_reg[7] [1]),
        .I3(\Rx_DATA_reg[7] [2]),
        .I4(\Rx_DATA_reg[7] [3]),
        .O(\buffer_index_reg[1] [2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \Rx_DATA[3]_i_1 
       (.I0(buffer_index0),
        .I1(\Rx_DATA_reg[7] [1]),
        .I2(\Rx_DATA_reg[7] [0]),
        .I3(\Rx_DATA_reg[7] [2]),
        .I4(\Rx_DATA_reg[7] [3]),
        .O(\buffer_index_reg[1] [3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \Rx_DATA[4]_i_1 
       (.I0(buffer_index0),
        .I1(\Rx_DATA_reg[7] [1]),
        .I2(\Rx_DATA_reg[7] [0]),
        .I3(\Rx_DATA_reg[7] [3]),
        .I4(\Rx_DATA_reg[7] [2]),
        .O(\buffer_index_reg[1] [4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \Rx_DATA[5]_i_1 
       (.I0(buffer_index0),
        .I1(\Rx_DATA_reg[7] [1]),
        .I2(\Rx_DATA_reg[7] [0]),
        .I3(\Rx_DATA_reg[7] [3]),
        .I4(\Rx_DATA_reg[7] [2]),
        .O(\buffer_index_reg[1] [5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00200000)) 
    \Rx_DATA[6]_i_1 
       (.I0(buffer_index0),
        .I1(\Rx_DATA_reg[7] [0]),
        .I2(\Rx_DATA_reg[7] [1]),
        .I3(\Rx_DATA_reg[7] [3]),
        .I4(\Rx_DATA_reg[7] [2]),
        .O(\buffer_index_reg[1] [6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \Rx_DATA[7]_i_1 
       (.I0(buffer_index0),
        .I1(\Rx_DATA_reg[7] [1]),
        .I2(\Rx_DATA_reg[7] [0]),
        .I3(\Rx_DATA_reg[7] [3]),
        .I4(\Rx_DATA_reg[7] [2]),
        .O(\buffer_index_reg[1] [7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \buffer_index[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(p_13_in),
        .O(buffer_index0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \buffer_index[3]_i_3 
       (.I0(\sample_counter_reg[3]_0 [1]),
        .I1(\sample_counter_reg[3]_0 [0]),
        .I2(\sample_counter_reg[3]_0 [2]),
        .I3(\sample_counter_reg[3]_0 [3]),
        .I4(sample_ENABLE),
        .O(p_13_in));
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
        .S({counter1_carry_i_1_n_0,counter1_carry_i_2_n_0,counter1_carry_i_3_n_0,counter1_carry_i_4_n_0}));
  CARRY4 counter1_carry__0
       (.CI(counter1_carry_n_0),
        .CO({counter1_carry__0_n_0,counter1_carry__0_n_1,counter1_carry__0_n_2,counter1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter1_carry__0_O_UNCONNECTED[3:0]),
        .S({counter1_carry__0_i_1_n_0,counter1_carry__0_i_2_n_0,counter1_carry__0_i_3_n_0,counter1_carry__0_i_4_n_0}));
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
    .INIT(64'h0000000000005565)) 
    counter1_carry__0_i_4
       (.I0(counter[12]),
        .I1(baud_select_IBUF[2]),
        .I2(baud_select_IBUF[0]),
        .I3(baud_select_IBUF[1]),
        .I4(counter[14]),
        .I5(counter[13]),
        .O(counter1_carry__0_i_4_n_0));
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
       (.I0(counter[30]),
        .I1(counter[31]),
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
    .INIT(64'h0001010012101011)) 
    counter1_carry_i_1
       (.I0(counter[9]),
        .I1(counter[11]),
        .I2(baud_select_IBUF[2]),
        .I3(baud_select_IBUF[0]),
        .I4(baud_select_IBUF[1]),
        .I5(counter[10]),
        .O(counter1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000044002106009)) 
    counter1_carry_i_2
       (.I0(counter[6]),
        .I1(baud_select_IBUF[0]),
        .I2(baud_select_IBUF[1]),
        .I3(baud_select_IBUF[2]),
        .I4(counter[8]),
        .I5(counter[7]),
        .O(counter1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h4000002418000181)) 
    counter1_carry_i_3
       (.I0(counter[3]),
        .I1(baud_select_IBUF[1]),
        .I2(baud_select_IBUF[0]),
        .I3(baud_select_IBUF[2]),
        .I4(counter[5]),
        .I5(counter[4]),
        .O(counter1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h4010088222000004)) 
    counter1_carry_i_4
       (.I0(counter[0]),
        .I1(baud_select_IBUF[0]),
        .I2(baud_select_IBUF[1]),
        .I3(baud_select_IBUF[2]),
        .I4(counter[2]),
        .I5(counter[1]),
        .O(counter1_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    \counter[0]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter[0]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[10]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[10]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[11]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[11]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[12]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[12]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[13]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[13]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[14]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[14]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[15]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[15]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[16]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[16]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[17]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[17]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[18]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[18]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[19]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[19]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[1]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[1]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[20]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[20]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[21]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[21]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[22]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[22]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[23]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[23]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[24]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[24]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[25]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[25]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[26]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[26]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[27]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[27]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[28]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[28]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[29]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[29]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[2]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[2]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[30]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[30]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[30]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[31]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[31]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[3]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[3]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[4]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[4]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[5]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[5]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[6]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[6]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[7]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[7]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[8]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[8]),
        .I2(Rx_EN_IBUF),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \counter[9]_i_1 
       (.I0(counter1_carry__1_n_1),
        .I1(counter0[9]),
        .I2(Rx_EN_IBUF),
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
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h2)) 
    sample_ENABLE_i_1
       (.I0(counter1_carry__1_n_1),
        .I1(Rx_EN_IBUF),
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
    \sample_counter[0]_i_1 
       (.I0(sample_ENABLE),
        .I1(\sample_counter_reg[3]_0 [0]),
        .O(\sample_counter_reg[3] [0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h60)) 
    \sample_counter[1]_i_1 
       (.I0(\sample_counter_reg[3]_0 [1]),
        .I1(\sample_counter_reg[3]_0 [0]),
        .I2(sample_ENABLE),
        .O(\sample_counter_reg[3] [1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6A00)) 
    \sample_counter[2]_i_1 
       (.I0(\sample_counter_reg[3]_0 [2]),
        .I1(\sample_counter_reg[3]_0 [1]),
        .I2(\sample_counter_reg[3]_0 [0]),
        .I3(sample_ENABLE),
        .O(\sample_counter_reg[3] [2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hFF10)) 
    \sample_counter[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(sample_ENABLE),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h6AAA0000)) 
    \sample_counter[3]_i_2 
       (.I0(\sample_counter_reg[3]_0 [3]),
        .I1(\sample_counter_reg[3]_0 [2]),
        .I2(\sample_counter_reg[3]_0 [0]),
        .I3(\sample_counter_reg[3]_0 [1]),
        .I4(sample_ENABLE),
        .O(\sample_counter_reg[3] [3]));
endmodule

module receiver_sampler
   (cur_state,
    D,
    Rx_VALID_OBUF,
    Rx_FERROR_OBUF,
    CLK,
    AR,
    Rx_EN_IBUF,
    Q,
    \FSM_sequential_cur_state_reg[0]_0 ,
    RxD_IBUF,
    p_13_in,
    \FSM_sequential_cur_state_reg[0]_1 ,
    \FSM_sequential_cur_state_reg[0]_2 );
  output [0:0]cur_state;
  output [0:0]D;
  output Rx_VALID_OBUF;
  output Rx_FERROR_OBUF;
  input CLK;
  input [0:0]AR;
  input Rx_EN_IBUF;
  input [2:0]Q;
  input \FSM_sequential_cur_state_reg[0]_0 ;
  input RxD_IBUF;
  input p_13_in;
  input \FSM_sequential_cur_state_reg[0]_1 ;
  input \FSM_sequential_cur_state_reg[0]_2 ;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire \FSM_sequential_cur_state[0]_i_4_n_0 ;
  wire \FSM_sequential_cur_state_reg[0]_0 ;
  wire \FSM_sequential_cur_state_reg[0]_1 ;
  wire \FSM_sequential_cur_state_reg[0]_2 ;
  wire [2:0]Q;
  wire RxD_IBUF;
  wire Rx_EN_IBUF;
  wire Rx_FERROR_OBUF;
  wire Rx_VALID_OBUF;
  wire [0:0]cur_state;
  wire [0:0]next_state;
  wire next_state19_out;
  wire p_13_in;

  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_cur_state[0]_i_1 
       (.I0(cur_state),
        .I1(Rx_EN_IBUF),
        .O(next_state));
  LUT6 #(
    .INIT(64'hEFE0FFFFEFE00000)) 
    \FSM_sequential_cur_state[0]_i_1__0 
       (.I0(Q[0]),
        .I1(next_state19_out),
        .I2(Q[1]),
        .I3(\FSM_sequential_cur_state_reg[0]_0 ),
        .I4(Q[2]),
        .I5(\FSM_sequential_cur_state[0]_i_4_n_0 ),
        .O(D));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h70)) 
    \FSM_sequential_cur_state[0]_i_2 
       (.I0(cur_state),
        .I1(RxD_IBUF),
        .I2(p_13_in),
        .O(next_state19_out));
  LUT6 #(
    .INIT(64'h7FCCFFFF7FCC0000)) 
    \FSM_sequential_cur_state[0]_i_4 
       (.I0(\FSM_sequential_cur_state_reg[0]_1 ),
        .I1(Q[0]),
        .I2(cur_state),
        .I3(p_13_in),
        .I4(Q[1]),
        .I5(\FSM_sequential_cur_state_reg[0]_2 ),
        .O(\FSM_sequential_cur_state[0]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "LOCK:000,SAMPLE_1:010,SAMPLE_2:011,SAMPLE_3:100,SAMPLE_4:101,SAMPLE_5:110,SAMPLE_END:111,SAMPLE_START:001" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(next_state),
        .Q(cur_state));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'hD000FF30)) 
    Rx_FERROR_OBUF_inst_i_1
       (.I0(RxD_IBUF),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(cur_state),
        .O(Rx_FERROR_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    Rx_VALID_OBUF_inst_i_1
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(RxD_IBUF),
        .I4(cur_state),
        .O(Rx_VALID_OBUF));
endmodule

(* DISABLED = "4'b0100" *) (* END_BIT = "4'b0011" *) (* FERROR = "4'b0111" *) 
(* IDLE = "4'b0101" *) (* PARITY = "4'b0010" *) (* PERROR = "4'b0110" *) 
(* RECEIVING = "4'b0001" *) (* START_BIT = "4'b0000" *) 
(* NotValidForBitStream *)
module uart_receiver
   (reset,
    clk,
    baud_select,
    Rx_EN,
    RxD,
    Rx_DATA,
    Rx_FERROR,
    Rx_PERROR,
    Rx_VALID);
  input reset;
  input clk;
  input [2:0]baud_select;
  input Rx_EN;
  input RxD;
  output [7:0]Rx_DATA;
  output Rx_FERROR;
  output Rx_PERROR;
  output Rx_VALID;

  wire \FSM_sequential_cur_state[0]_i_5_n_0 ;
  wire \FSM_sequential_cur_state[0]_i_6_n_0 ;
  wire \FSM_sequential_cur_state[1]_i_4_n_0 ;
  wire \FSM_sequential_cur_state[1]_i_5_n_0 ;
  wire \FSM_sequential_cur_state[1]_i_6_n_0 ;
  wire RxD;
  wire RxD_IBUF;
  wire [7:0]Rx_DATA;
  wire [7:0]Rx_DATA_OBUF;
  wire Rx_EN;
  wire Rx_EN_IBUF;
  wire Rx_FERROR;
  wire Rx_FERROR_OBUF;
  wire Rx_PERROR;
  wire Rx_PERROR_OBUF;
  wire Rx_PERROR_OBUF_inst_i_3_n_0;
  wire Rx_VALID;
  wire Rx_VALID_OBUF;
  wire baud_controller_r_inst_n_0;
  wire baud_controller_r_inst_n_1;
  wire baud_controller_r_inst_n_10;
  wire baud_controller_r_inst_n_11;
  wire baud_controller_r_inst_n_12;
  wire baud_controller_r_inst_n_13;
  wire baud_controller_r_inst_n_14;
  wire baud_controller_r_inst_n_15;
  wire baud_controller_r_inst_n_16;
  wire baud_controller_r_inst_n_17;
  wire baud_controller_r_inst_n_3;
  wire baud_controller_r_inst_n_4;
  wire baud_controller_r_inst_n_9;
  wire [2:0]baud_select;
  wire [2:0]baud_select_IBUF;
  wire buffer_index0;
  wire \buffer_index[0]_i_1_n_0 ;
  wire \buffer_index[2]_i_1_n_0 ;
  wire [3:0]buffer_index_reg__0;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]cur_state;
  wire [0:0]cur_state_0;
  wire next_state23_in;
  wire [3:1]p_0_in__0;
  wire [3:1]p_0_in__0__0;
  wire p_13_in;
  wire receiver_sampler_inst_n_1;
  wire reset;
  wire reset_IBUF;
  wire [3:0]sample_counter_reg__0;

  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \FSM_sequential_cur_state[0]_i_5 
       (.I0(buffer_index_reg__0[2]),
        .I1(buffer_index_reg__0[3]),
        .I2(buffer_index_reg__0[0]),
        .I3(buffer_index_reg__0[1]),
        .O(\FSM_sequential_cur_state[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hC8)) 
    \FSM_sequential_cur_state[0]_i_6 
       (.I0(cur_state[0]),
        .I1(RxD_IBUF),
        .I2(Rx_EN_IBUF),
        .O(\FSM_sequential_cur_state[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \FSM_sequential_cur_state[1]_i_4 
       (.I0(cur_state[0]),
        .I1(Rx_EN_IBUF),
        .I2(RxD_IBUF),
        .O(\FSM_sequential_cur_state[1]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \FSM_sequential_cur_state[1]_i_5 
       (.I0(Rx_DATA_OBUF[6]),
        .I1(Rx_DATA_OBUF[7]),
        .I2(Rx_DATA_OBUF[4]),
        .I3(Rx_DATA_OBUF[5]),
        .O(\FSM_sequential_cur_state[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_cur_state[1]_i_6 
       (.I0(buffer_index_reg__0[1]),
        .I1(buffer_index_reg__0[0]),
        .O(\FSM_sequential_cur_state[1]_i_6_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:001,START_BIT:010,RECEIVING:011,PERROR:101,PARITY:100,FERROR:111,END_BIT:110,DISABLED:000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(receiver_sampler_inst_n_1),
        .Q(cur_state[0]));
  (* FSM_ENCODED_STATES = "IDLE:001,START_BIT:010,RECEIVING:011,PERROR:101,PARITY:100,FERROR:111,END_BIT:110,DISABLED:000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(baud_controller_r_inst_n_1),
        .Q(cur_state[1]));
  (* FSM_ENCODED_STATES = "IDLE:001,START_BIT:010,RECEIVING:011,PERROR:101,PARITY:100,FERROR:111,END_BIT:110,DISABLED:000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(baud_controller_r_inst_n_0),
        .Q(cur_state[2]));
  IBUF RxD_IBUF_inst
       (.I(RxD),
        .O(RxD_IBUF));
  OBUF \Rx_DATA_OBUF[0]_inst 
       (.I(Rx_DATA_OBUF[0]),
        .O(Rx_DATA[0]));
  OBUF \Rx_DATA_OBUF[1]_inst 
       (.I(Rx_DATA_OBUF[1]),
        .O(Rx_DATA[1]));
  OBUF \Rx_DATA_OBUF[2]_inst 
       (.I(Rx_DATA_OBUF[2]),
        .O(Rx_DATA[2]));
  OBUF \Rx_DATA_OBUF[3]_inst 
       (.I(Rx_DATA_OBUF[3]),
        .O(Rx_DATA[3]));
  OBUF \Rx_DATA_OBUF[4]_inst 
       (.I(Rx_DATA_OBUF[4]),
        .O(Rx_DATA[4]));
  OBUF \Rx_DATA_OBUF[5]_inst 
       (.I(Rx_DATA_OBUF[5]),
        .O(Rx_DATA[5]));
  OBUF \Rx_DATA_OBUF[6]_inst 
       (.I(Rx_DATA_OBUF[6]),
        .O(Rx_DATA[6]));
  OBUF \Rx_DATA_OBUF[7]_inst 
       (.I(Rx_DATA_OBUF[7]),
        .O(Rx_DATA[7]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(baud_controller_r_inst_n_17),
        .CLR(reset_IBUF),
        .D(RxD_IBUF),
        .Q(Rx_DATA_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(baud_controller_r_inst_n_16),
        .CLR(reset_IBUF),
        .D(RxD_IBUF),
        .Q(Rx_DATA_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(baud_controller_r_inst_n_15),
        .CLR(reset_IBUF),
        .D(RxD_IBUF),
        .Q(Rx_DATA_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(baud_controller_r_inst_n_14),
        .CLR(reset_IBUF),
        .D(RxD_IBUF),
        .Q(Rx_DATA_OBUF[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(baud_controller_r_inst_n_13),
        .CLR(reset_IBUF),
        .D(RxD_IBUF),
        .Q(Rx_DATA_OBUF[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(baud_controller_r_inst_n_12),
        .CLR(reset_IBUF),
        .D(RxD_IBUF),
        .Q(Rx_DATA_OBUF[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(baud_controller_r_inst_n_11),
        .CLR(reset_IBUF),
        .D(RxD_IBUF),
        .Q(Rx_DATA_OBUF[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(baud_controller_r_inst_n_10),
        .CLR(reset_IBUF),
        .D(RxD_IBUF),
        .Q(Rx_DATA_OBUF[7]));
  IBUF Rx_EN_IBUF_inst
       (.I(Rx_EN),
        .O(Rx_EN_IBUF));
  OBUF Rx_FERROR_OBUF_inst
       (.I(Rx_FERROR_OBUF),
        .O(Rx_FERROR));
  OBUF Rx_PERROR_OBUF_inst
       (.I(Rx_PERROR_OBUF),
        .O(Rx_PERROR));
  LUT4 #(
    .INIT(16'h5400)) 
    Rx_PERROR_OBUF_inst_i_1
       (.I0(cur_state[1]),
        .I1(cur_state[0]),
        .I2(next_state23_in),
        .I3(cur_state[2]),
        .O(Rx_PERROR_OBUF));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    Rx_PERROR_OBUF_inst_i_2
       (.I0(Rx_PERROR_OBUF_inst_i_3_n_0),
        .I1(Rx_DATA_OBUF[6]),
        .I2(Rx_DATA_OBUF[7]),
        .I3(Rx_DATA_OBUF[4]),
        .I4(Rx_DATA_OBUF[5]),
        .I5(RxD_IBUF),
        .O(next_state23_in));
  LUT4 #(
    .INIT(16'h6996)) 
    Rx_PERROR_OBUF_inst_i_3
       (.I0(Rx_DATA_OBUF[2]),
        .I1(Rx_DATA_OBUF[3]),
        .I2(Rx_DATA_OBUF[0]),
        .I3(Rx_DATA_OBUF[1]),
        .O(Rx_PERROR_OBUF_inst_i_3_n_0));
  OBUF Rx_VALID_OBUF_inst
       (.I(Rx_VALID_OBUF),
        .O(Rx_VALID));
  baud_controller_r baud_controller_r_inst
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D({baud_controller_r_inst_n_0,baud_controller_r_inst_n_1}),
        .E(baud_controller_r_inst_n_4),
        .\FSM_sequential_cur_state_reg[0] (baud_controller_r_inst_n_3),
        .\FSM_sequential_cur_state_reg[0]_0 (\FSM_sequential_cur_state[1]_i_5_n_0 ),
        .\FSM_sequential_cur_state_reg[0]_1 (Rx_PERROR_OBUF_inst_i_3_n_0),
        .\FSM_sequential_cur_state_reg[1] (\FSM_sequential_cur_state[1]_i_4_n_0 ),
        .\FSM_sequential_cur_state_reg[1]_0 (\FSM_sequential_cur_state[1]_i_6_n_0 ),
        .Q(cur_state),
        .RxD_IBUF(RxD_IBUF),
        .\Rx_DATA_reg[7] (buffer_index_reg__0),
        .Rx_EN_IBUF(Rx_EN_IBUF),
        .baud_select_IBUF(baud_select_IBUF),
        .buffer_index0(buffer_index0),
        .\buffer_index_reg[1] ({baud_controller_r_inst_n_10,baud_controller_r_inst_n_11,baud_controller_r_inst_n_12,baud_controller_r_inst_n_13,baud_controller_r_inst_n_14,baud_controller_r_inst_n_15,baud_controller_r_inst_n_16,baud_controller_r_inst_n_17}),
        .cur_state(cur_state_0),
        .p_13_in(p_13_in),
        .\sample_counter_reg[3] ({p_0_in__0__0,baud_controller_r_inst_n_9}),
        .\sample_counter_reg[3]_0 (sample_counter_reg__0));
  IBUF \baud_select_IBUF[0]_inst 
       (.I(baud_select[0]),
        .O(baud_select_IBUF[0]));
  IBUF \baud_select_IBUF[1]_inst 
       (.I(baud_select[1]),
        .O(baud_select_IBUF[1]));
  IBUF \baud_select_IBUF[2]_inst 
       (.I(baud_select[2]),
        .O(baud_select_IBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \buffer_index[0]_i_1 
       (.I0(buffer_index_reg__0[0]),
        .O(\buffer_index[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \buffer_index[1]_i_1 
       (.I0(buffer_index_reg__0[0]),
        .I1(buffer_index_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \buffer_index[2]_i_1 
       (.I0(buffer_index_reg__0[0]),
        .I1(buffer_index_reg__0[1]),
        .I2(buffer_index_reg__0[2]),
        .O(\buffer_index[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \buffer_index[3]_i_2 
       (.I0(buffer_index_reg__0[1]),
        .I1(buffer_index_reg__0[0]),
        .I2(buffer_index_reg__0[2]),
        .I3(buffer_index_reg__0[3]),
        .O(p_0_in__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_index_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(buffer_index0),
        .CLR(reset_IBUF),
        .D(\buffer_index[0]_i_1_n_0 ),
        .Q(buffer_index_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_index_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(buffer_index0),
        .CLR(reset_IBUF),
        .D(p_0_in__0[1]),
        .Q(buffer_index_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_index_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(buffer_index0),
        .CLR(reset_IBUF),
        .D(\buffer_index[2]_i_1_n_0 ),
        .Q(buffer_index_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_index_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(buffer_index0),
        .CLR(reset_IBUF),
        .D(p_0_in__0[3]),
        .Q(buffer_index_reg__0[3]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  receiver_sampler receiver_sampler_inst
       (.AR(reset_IBUF),
        .CLK(clk_IBUF_BUFG),
        .D(receiver_sampler_inst_n_1),
        .\FSM_sequential_cur_state_reg[0]_0 (baud_controller_r_inst_n_3),
        .\FSM_sequential_cur_state_reg[0]_1 (\FSM_sequential_cur_state[0]_i_5_n_0 ),
        .\FSM_sequential_cur_state_reg[0]_2 (\FSM_sequential_cur_state[0]_i_6_n_0 ),
        .Q(cur_state),
        .RxD_IBUF(RxD_IBUF),
        .Rx_EN_IBUF(Rx_EN_IBUF),
        .Rx_FERROR_OBUF(Rx_FERROR_OBUF),
        .Rx_VALID_OBUF(Rx_VALID_OBUF),
        .cur_state(cur_state_0),
        .p_13_in(p_13_in));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(baud_controller_r_inst_n_4),
        .CLR(reset_IBUF),
        .D(baud_controller_r_inst_n_9),
        .Q(sample_counter_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(baud_controller_r_inst_n_4),
        .CLR(reset_IBUF),
        .D(p_0_in__0__0[1]),
        .Q(sample_counter_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(baud_controller_r_inst_n_4),
        .CLR(reset_IBUF),
        .D(p_0_in__0__0[2]),
        .Q(sample_counter_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(baud_controller_r_inst_n_4),
        .CLR(reset_IBUF),
        .D(p_0_in__0__0[3]),
        .Q(sample_counter_reg__0[3]));
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

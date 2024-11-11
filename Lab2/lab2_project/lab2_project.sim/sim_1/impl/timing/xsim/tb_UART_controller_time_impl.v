// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Nov 11 18:03:40 2024
// Host        : DESKTOP-922FQ13 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/panag/Desktop/GitHub/Repositories/Vivado-Code/Lab2/lab2_project/lab2_project.sim/sim_1/impl/timing/xsim/tb_UART_controller_time_impl.v
// Design      : UART_controller
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Debouncer
   (reset_debounced,
    Reset_UART,
    E,
    clk_IBUF_BUFG,
    Q,
    sample_ENABLE,
    D);
  output reset_debounced;
  output Reset_UART;
  output [0:0]E;
  input clk_IBUF_BUFG;
  input [1:0]Q;
  input sample_ENABLE;
  input [0:0]D;

  wire [0:0]D;
  wire [0:0]E;
  wire \FF_wire_reg_n_0_[0] ;
  wire [1:0]Q;
  wire Reset_UART;
  wire button_debounced_i_1_n_0;
  wire button_debounced_n_0;
  wire clk_IBUF_BUFG;
  wire \counter[2]_i_1__1_n_0 ;
  wire \counter[4]_i_1_n_0 ;
  wire [4:0]counter_reg__0;
  wire p_0_in;
  wire [4:0]p_0_in__0;
  wire p_1_in;
  wire reset_debounced;
  wire sample_ENABLE;

  FDRE #(
    .INIT(1'b0)) 
    \FF_wire_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(D),
        .Q(\FF_wire_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FF_wire_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FF_wire_reg_n_0_[0] ),
        .Q(p_1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FF_wire_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in),
        .Q(p_0_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_onehot_cur_state[12]_i_2 
       (.I0(reset_debounced),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(Reset_UART));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h7)) 
    button_debounced
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .O(button_debounced_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    button_debounced_i_1
       (.I0(p_0_in),
        .I1(counter_reg__0[3]),
        .I2(button_debounced_n_0),
        .I3(counter_reg__0[4]),
        .I4(counter_reg__0[2]),
        .I5(reset_debounced),
        .O(button_debounced_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    button_debounced_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(button_debounced_i_1_n_0),
        .Q(reset_debounced),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1__1 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[2]),
        .O(\counter[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1 
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[2]),
        .I3(counter_reg__0[3]),
        .O(p_0_in__0[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[4]_i_1 
       (.I0(p_0_in),
        .I1(p_1_in),
        .O(\counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_2 
       (.I0(counter_reg__0[2]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[1]),
        .I3(counter_reg__0[3]),
        .I4(counter_reg__0[4]),
        .O(p_0_in__0[4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(counter_reg__0[0]),
        .R(\counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(counter_reg__0[1]),
        .R(\counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter[2]_i_1__1_n_0 ),
        .Q(counter_reg__0[2]),
        .R(\counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(counter_reg__0[3]),
        .R(\counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(counter_reg__0[4]),
        .R(\counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hFD00)) 
    \sample_counter[3]_i_1 
       (.I0(reset_debounced),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(sample_ENABLE),
        .O(E));
endmodule

(* ORIG_REF_NAME = "Debouncer" *) 
module Debouncer_0
   (D,
    clk_IBUF_BUFG,
    \FF_wire_reg[0]_0 );
  output [0:0]D;
  input clk_IBUF_BUFG;
  input [0:0]\FF_wire_reg[0]_0 ;

  wire [0:0]D;
  wire [0:0]\FF_wire_reg[0]_0 ;
  wire \FF_wire_reg_n_0_[0] ;
  wire button_debounced_i_1__0_n_0;
  wire button_debounced_n_0;
  wire clk_IBUF_BUFG;
  wire \counter[2]_i_1__2_n_0 ;
  wire \counter[4]_i_1__0_n_0 ;
  wire [4:0]counter_reg__0;
  wire p_0_in;
  wire [4:0]p_0_in__1;
  wire p_1_in;

  FDRE #(
    .INIT(1'b0)) 
    \FF_wire_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FF_wire_reg[0]_0 ),
        .Q(\FF_wire_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FF_wire_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\FF_wire_reg_n_0_[0] ),
        .Q(p_1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FF_wire_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in),
        .Q(p_0_in),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h7)) 
    button_debounced
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .O(button_debounced_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    button_debounced_i_1__0
       (.I0(p_0_in),
        .I1(counter_reg__0[3]),
        .I2(button_debounced_n_0),
        .I3(counter_reg__0[4]),
        .I4(counter_reg__0[2]),
        .I5(D),
        .O(button_debounced_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    button_debounced_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(button_debounced_i_1__0_n_0),
        .Q(D),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__0 
       (.I0(counter_reg__0[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1__0 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .O(p_0_in__1[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1__2 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[2]),
        .O(\counter[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1__0 
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[2]),
        .I3(counter_reg__0[3]),
        .O(p_0_in__1[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[4]_i_1__0 
       (.I0(p_0_in),
        .I1(p_1_in),
        .O(\counter[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_2__0 
       (.I0(counter_reg__0[2]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[1]),
        .I3(counter_reg__0[3]),
        .I4(counter_reg__0[4]),
        .O(p_0_in__1[4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[0]),
        .Q(counter_reg__0[0]),
        .R(\counter[4]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[1]),
        .Q(counter_reg__0[1]),
        .R(\counter[4]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter[2]_i_1__2_n_0 ),
        .Q(counter_reg__0[2]),
        .R(\counter[4]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[3]),
        .Q(counter_reg__0[3]),
        .R(\counter[4]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[4]),
        .Q(counter_reg__0[4]),
        .R(\counter[4]_i_1__0_n_0 ));
endmodule

module Hold_to_step
   (\FF_reg[1]_0 ,
    Q,
    \FSM_sequential_cur_state_reg[1] ,
    \FF_reg[1]_1 ,
    CO,
    sample_ENABLE_reg,
    Tx_EN_IBUF,
    clk_IBUF_BUFG,
    reset_debounced,
    D);
  output \FF_reg[1]_0 ;
  output [1:0]Q;
  output \FSM_sequential_cur_state_reg[1] ;
  output \FF_reg[1]_1 ;
  input [0:0]CO;
  input [1:0]sample_ENABLE_reg;
  input Tx_EN_IBUF;
  input clk_IBUF_BUFG;
  input reset_debounced;
  input [0:0]D;

  wire [0:0]CO;
  wire [0:0]D;
  wire \FF_reg[1]_0 ;
  wire \FF_reg[1]_1 ;
  wire \FSM_sequential_cur_state_reg[1] ;
  wire [1:0]Q;
  wire Tx_EN_IBUF;
  wire clk_IBUF_BUFG;
  wire reset_debounced;
  wire [1:0]sample_ENABLE_reg;

  FDCE #(
    .INIT(1'b0)) 
    \FF_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(D),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \FF_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(Q[0]),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \FSM_onehot_cur_state[0]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(sample_ENABLE_reg[0]),
        .I3(sample_ENABLE_reg[1]),
        .O(\FF_reg[1]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \buffer[7]_i_3 
       (.I0(Tx_EN_IBUF),
        .I1(sample_ENABLE_reg[1]),
        .I2(sample_ENABLE_reg[0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\FSM_sequential_cur_state_reg[1] ));
  LUT6 #(
    .INIT(64'hAAAAAAA2AAAAAAAA)) 
    sample_ENABLE_i_1
       (.I0(CO),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(sample_ENABLE_reg[0]),
        .I4(sample_ENABLE_reg[1]),
        .I5(Tx_EN_IBUF),
        .O(\FF_reg[1]_0 ));
endmodule

(* ECO_CHECKSUM = "b3f104f2" *) (* ENABLED = "2'b01" *) (* FERROR = "2'b11" *) 
(* PERROR = "2'b10" *) 
(* NotValidForBitStream *)
module UART_controller
   (reset,
    clk,
    baud_select,
    Tx_DATA,
    Tx_WR,
    Tx_EN,
    Rx_EN,
    TxD,
    Tx_BUSY,
    Tx_DATA_copy);
  input reset;
  input clk;
  input [2:0]baud_select;
  input [7:0]Tx_DATA;
  input Tx_WR;
  input Tx_EN;
  input Rx_EN;
  output TxD;
  output Tx_BUSY;
  output [7:0]Tx_DATA_copy;

  wire [1:0]FF;
  wire Hold_to_step_inst_n_0;
  wire Hold_to_step_inst_n_3;
  wire Hold_to_step_inst_n_4;
  wire Reset_UART;
  wire Rx_EN;
  wire Rx_EN_IBUF;
  wire Rx_VALID;
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
  wire [7:0]buffer;
  wire button_debounced;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [1:0]cur_state;
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
  wire reset_debounced;
  wire sample_ENABLE;
  wire sample_counter;
  wire uart_receiver_inst_n_10;
  wire uart_receiver_inst_n_13;
  wire uart_transmitter_inst_n_0;
  wire uart_transmitter_inst_n_1;
  wire uart_transmitter_inst_n_2;
  wire [7:0]\NLW_uart_receiver_inst_Rx_DATA_reg[7]_0_UNCONNECTED ;

initial begin
 $sdf_annotate("tb_UART_controller_time_impl.sdf",,,,"tool_control");
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
  Hold_to_step Hold_to_step_inst
       (.CO(uart_transmitter_inst_n_0),
        .D(button_debounced),
        .\FF_reg[1]_0 (Hold_to_step_inst_n_0),
        .\FF_reg[1]_1 (Hold_to_step_inst_n_4),
        .\FSM_sequential_cur_state_reg[1] (Hold_to_step_inst_n_3),
        .Q(FF),
        .Tx_EN_IBUF(Tx_EN_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .reset_debounced(reset_debounced),
        .sample_ENABLE_reg(cur_state));
  IBUF Rx_EN_IBUF_inst
       (.I(Rx_EN),
        .O(Rx_EN_IBUF));
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
        .CE(uart_transmitter_inst_n_2),
        .CLR(reset_IBUF),
        .D(Tx_DATA_IBUF[0]),
        .Q(buffer[0]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(uart_transmitter_inst_n_2),
        .CLR(reset_IBUF),
        .D(Tx_DATA_IBUF[1]),
        .Q(buffer[1]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(uart_transmitter_inst_n_2),
        .CLR(reset_IBUF),
        .D(Tx_DATA_IBUF[2]),
        .Q(buffer[2]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(uart_transmitter_inst_n_2),
        .CLR(reset_IBUF),
        .D(Tx_DATA_IBUF[3]),
        .Q(buffer[3]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(uart_transmitter_inst_n_2),
        .CLR(reset_IBUF),
        .D(Tx_DATA_IBUF[4]),
        .Q(buffer[4]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(uart_transmitter_inst_n_2),
        .CLR(reset_IBUF),
        .D(Tx_DATA_IBUF[5]),
        .Q(buffer[5]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(uart_transmitter_inst_n_2),
        .CLR(reset_IBUF),
        .D(Tx_DATA_IBUF[6]),
        .Q(buffer[6]));
  FDCE #(
    .INIT(1'b0)) 
    \buffer_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(uart_transmitter_inst_n_2),
        .CLR(reset_IBUF),
        .D(Tx_DATA_IBUF[7]),
        .Q(buffer[7]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  Debouncer reset_debouncer
       (.D(reset_IBUF),
        .E(sample_counter),
        .Q(cur_state),
        .Reset_UART(Reset_UART),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .reset_debounced(reset_debounced),
        .sample_ENABLE(sample_ENABLE));
  uart_receiver uart_receiver_inst
       (.D(next_state),
        .E(sample_counter),
        .\FSM_onehot_cur_state_reg[1]_0 (uart_receiver_inst_n_13),
        .Q(cur_state),
        .Reset_UART(Reset_UART),
        .\Rx_DATA_reg[7]_0 (\NLW_uart_receiver_inst_Rx_DATA_reg[7]_0_UNCONNECTED [7:0]),
        .Rx_EN_IBUF(Rx_EN_IBUF),
        .Rx_VALID(Rx_VALID),
        .TxD_OBUF(TxD_OBUF),
        .TxD_OBUF_inst_i_2(buffer[7:4]),
        .baud_select_IBUF(baud_select_IBUF),
        .\buffer_reg[0] (uart_transmitter_inst_n_1),
        .\buffer_reg[5] (uart_receiver_inst_n_10),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .lopt_6(lopt_6),
        .lopt_7(lopt_7),
        .sample_ENABLE(sample_ENABLE));
  uart_transmitter uart_transmitter_inst
       (.CO(uart_transmitter_inst_n_0),
        .E(uart_transmitter_inst_n_2),
        .\FSM_onehot_cur_state_reg[0]_0 (Hold_to_step_inst_n_4),
        .\FSM_onehot_cur_state_reg[12]_0 (cur_state),
        .\FSM_onehot_cur_state_reg[1]_0 (uart_transmitter_inst_n_1),
        .Q(FF),
        .Reset_UART(Reset_UART),
        .Rx_VALID(Rx_VALID),
        .TxD_OBUF(TxD_OBUF),
        .Tx_BUSY_OBUF(Tx_BUSY_OBUF),
        .Tx_EN_IBUF(Tx_EN_IBUF),
        .baud_select_IBUF(baud_select_IBUF),
        .\buffer_reg[0] (Hold_to_step_inst_n_3),
        .\buffer_reg[0]_0 (uart_receiver_inst_n_13),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .sample_ENABLE_reg(Hold_to_step_inst_n_0),
        .sync_stage1_reg(buffer),
        .sync_stage1_reg_0(uart_receiver_inst_n_10));
  Debouncer_0 write_debouncer
       (.D(button_debounced),
        .\FF_wire_reg[0]_0 (Tx_WR_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
endmodule

module baud_controller_r
   (sample_ENABLE_reg_0,
    E,
    D,
    Rx_sample_ENABLE__2,
    prev_bit_0,
    \sample_counter_reg[0] ,
    bit_stable_reg,
    \sample_counter_reg[3] ,
    bit_stable_reg_0,
    clk_IBUF_BUFG,
    Reset_UART,
    Q,
    Rx_PERROR_reg,
    bit_stable_reg_1,
    cur_bit,
    Rx_PERROR1__0,
    Rx_FERROR_reg,
    sync_signal,
    prev_bit,
    baud_select_IBUF,
    Rx_FERROR,
    Rx_PERROR,
    Rx_VALID);
  output sample_ENABLE_reg_0;
  output [0:0]E;
  output [9:0]D;
  output Rx_sample_ENABLE__2;
  output prev_bit_0;
  output \sample_counter_reg[0] ;
  output bit_stable_reg;
  output \sample_counter_reg[3] ;
  output bit_stable_reg_0;
  input clk_IBUF_BUFG;
  input Reset_UART;
  input [12:0]Q;
  input [3:0]Rx_PERROR_reg;
  input bit_stable_reg_1;
  input cur_bit;
  input Rx_PERROR1__0;
  input Rx_FERROR_reg;
  input sync_signal;
  input prev_bit;
  input [2:0]baud_select_IBUF;
  input Rx_FERROR;
  input Rx_PERROR;
  input Rx_VALID;

  wire [9:0]D;
  wire [0:0]E;
  wire [12:0]Q;
  wire Reset_UART;
  wire \Rx_DATA[7]_i_2_n_0 ;
  wire Rx_FERROR;
  wire Rx_FERROR0;
  wire Rx_FERROR_reg;
  wire Rx_PERROR;
  wire Rx_PERROR1__0;
  wire [3:0]Rx_PERROR_reg;
  wire Rx_VALID;
  wire Rx_sample_ENABLE__2;
  wire [2:0]baud_select_IBUF;
  wire bit_stable_reg;
  wire bit_stable_reg_0;
  wire bit_stable_reg_1;
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
  wire counter1_carry_i_1_n_0;
  wire counter1_carry_i_2__0_n_0;
  wire counter1_carry_i_3_n_0;
  wire counter1_carry_i_4__0_n_0;
  wire counter1_carry_n_0;
  wire \counter[0]_i_1__2_n_0 ;
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
  wire \counter[1]_i_1__2_n_0 ;
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
  wire \counter[3]_i_1__2_n_0 ;
  wire \counter[4]_i_1__2_n_0 ;
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
  wire cur_bit;
  wire p_15_in;
  wire prev_bit;
  wire prev_bit_0;
  wire prev_bit_i_3_n_0;
  wire sample_ENABLE_i_1__0_n_0;
  wire sample_ENABLE_reg_0;
  wire \sample_counter_reg[0] ;
  wire \sample_counter_reg[3] ;
  wire sync_signal;
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

  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_onehot_cur_state[10]_i_1 
       (.I0(Q[9]),
        .I1(bit_stable_reg_1),
        .I2(Rx_sample_ENABLE__2),
        .I3(Q[10]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'h40FF4000)) 
    \FSM_onehot_cur_state[11]_i_1 
       (.I0(Rx_PERROR1__0),
        .I1(bit_stable_reg_1),
        .I2(Q[10]),
        .I3(Rx_sample_ENABLE__2),
        .I4(Q[11]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_onehot_cur_state[11]_i_3 
       (.I0(sample_ENABLE_reg_0),
        .I1(Rx_PERROR_reg[3]),
        .I2(Rx_PERROR_reg[2]),
        .I3(Rx_PERROR_reg[1]),
        .I4(Rx_PERROR_reg[0]),
        .O(Rx_sample_ENABLE__2));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    \FSM_onehot_cur_state[2]_i_1 
       (.I0(bit_stable_reg_1),
        .I1(Q[1]),
        .I2(cur_bit),
        .I3(Rx_sample_ENABLE__2),
        .I4(Q[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_onehot_cur_state[3]_i_1 
       (.I0(Q[2]),
        .I1(bit_stable_reg_1),
        .I2(Rx_sample_ENABLE__2),
        .I3(Q[3]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_onehot_cur_state[4]_i_1 
       (.I0(Q[3]),
        .I1(bit_stable_reg_1),
        .I2(Rx_sample_ENABLE__2),
        .I3(Q[4]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_onehot_cur_state[5]_i_1 
       (.I0(Q[4]),
        .I1(bit_stable_reg_1),
        .I2(Rx_sample_ENABLE__2),
        .I3(Q[5]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_onehot_cur_state[6]_i_1 
       (.I0(Q[5]),
        .I1(bit_stable_reg_1),
        .I2(Rx_sample_ENABLE__2),
        .I3(Q[6]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_onehot_cur_state[7]_i_1 
       (.I0(Q[6]),
        .I1(bit_stable_reg_1),
        .I2(Rx_sample_ENABLE__2),
        .I3(Q[7]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_onehot_cur_state[8]_i_1 
       (.I0(Q[7]),
        .I1(bit_stable_reg_1),
        .I2(Rx_sample_ENABLE__2),
        .I3(Q[8]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_onehot_cur_state[9]_i_1 
       (.I0(Q[8]),
        .I1(bit_stable_reg_1),
        .I2(Rx_sample_ENABLE__2),
        .I3(Q[9]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \Rx_DATA[7]_i_1 
       (.I0(Q[0]),
        .I1(Q[12]),
        .I2(Rx_PERROR_reg[0]),
        .I3(Rx_PERROR_reg[1]),
        .I4(Rx_PERROR_reg[2]),
        .I5(\Rx_DATA[7]_i_2_n_0 ),
        .O(E));
  LUT5 #(
    .INIT(32'h00010000)) 
    \Rx_DATA[7]_i_2 
       (.I0(Rx_PERROR_reg[3]),
        .I1(Q[1]),
        .I2(Q[10]),
        .I3(Q[11]),
        .I4(sample_ENABLE_reg_0),
        .O(\Rx_DATA[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBFAA)) 
    Rx_FERROR_i_1
       (.I0(Rx_FERROR0),
        .I1(bit_stable_reg_1),
        .I2(Q[1]),
        .I3(Rx_FERROR),
        .O(bit_stable_reg));
  LUT6 #(
    .INIT(64'h0888000000000000)) 
    Rx_FERROR_i_2
       (.I0(Rx_PERROR_reg[3]),
        .I1(Rx_PERROR_reg[0]),
        .I2(Rx_PERROR_reg[1]),
        .I3(Rx_PERROR_reg[2]),
        .I4(sample_ENABLE_reg_0),
        .I5(Rx_FERROR_reg),
        .O(Rx_FERROR0));
  LUT6 #(
    .INIT(64'h8000FFFF80008000)) 
    Rx_PERROR_i_1
       (.I0(Rx_PERROR1__0),
        .I1(Rx_PERROR_reg[3]),
        .I2(p_15_in),
        .I3(Q[10]),
        .I4(Q[1]),
        .I5(Rx_PERROR),
        .O(\sample_counter_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h2AAA0000)) 
    Rx_PERROR_i_2
       (.I0(Rx_PERROR_reg[0]),
        .I1(Rx_PERROR_reg[1]),
        .I2(Rx_PERROR_reg[2]),
        .I3(Rx_PERROR_reg[3]),
        .I4(sample_ENABLE_reg_0),
        .O(p_15_in));
  LUT6 #(
    .INIT(64'h8000FFFF80008000)) 
    Rx_VALID_i_1
       (.I0(bit_stable_reg_1),
        .I1(Rx_sample_ENABLE__2),
        .I2(Q[11]),
        .I3(cur_bit),
        .I4(Q[1]),
        .I5(Rx_VALID),
        .O(bit_stable_reg_0));
  LUT5 #(
    .INIT(32'hEFFFAAAA)) 
    bit_stable_i_1
       (.I0(prev_bit_0),
        .I1(Rx_sample_ENABLE__2),
        .I2(Rx_PERROR_reg[0]),
        .I3(sample_ENABLE_reg_0),
        .I4(bit_stable_reg_1),
        .O(\sample_counter_reg[0] ));
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
        .S({counter1_carry_i_1_n_0,counter1_carry_i_2__0_n_0,counter1_carry_i_3_n_0,counter1_carry_i_4__0_n_0}));
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
    .INIT(64'h0000000411141110)) 
    counter1_carry__0_i_4__0
       (.I0(\counter_reg_n_0_[13] ),
        .I1(\counter_reg_n_0_[12] ),
        .I2(baud_select_IBUF[2]),
        .I3(baud_select_IBUF[1]),
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
    .INIT(64'h0010000011041141)) 
    counter1_carry_i_1
       (.I0(\counter_reg_n_0_[11] ),
        .I1(\counter_reg_n_0_[10] ),
        .I2(baud_select_IBUF[1]),
        .I3(baud_select_IBUF[2]),
        .I4(baud_select_IBUF[0]),
        .I5(\counter_reg_n_0_[9] ),
        .O(counter1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h0100021210424000)) 
    counter1_carry_i_2__0
       (.I0(\counter_reg_n_0_[8] ),
        .I1(\counter_reg_n_0_[7] ),
        .I2(baud_select_IBUF[0]),
        .I3(baud_select_IBUF[2]),
        .I4(baud_select_IBUF[1]),
        .I5(\counter_reg_n_0_[6] ),
        .O(counter1_carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h4210000100012480)) 
    counter1_carry_i_3
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[4] ),
        .I2(baud_select_IBUF[0]),
        .I3(baud_select_IBUF[1]),
        .I4(baud_select_IBUF[2]),
        .I5(\counter_reg_n_0_[5] ),
        .O(counter1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h2404020000808014)) 
    counter1_carry_i_4__0
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(baud_select_IBUF[0]),
        .I3(baud_select_IBUF[1]),
        .I4(baud_select_IBUF[2]),
        .I5(\counter_reg_n_0_[2] ),
        .O(counter1_carry_i_4__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \counter[0]_i_1__2 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[10]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry__1_n_6),
        .O(\counter[10]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[11]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry__1_n_5),
        .O(\counter[11]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[12]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry__1_n_4),
        .O(\counter[12]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[13]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry__2_n_7),
        .O(\counter[13]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[14]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry__2_n_6),
        .O(\counter[14]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[15]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry__2_n_5),
        .O(\counter[15]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[16]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry__2_n_4),
        .O(\counter[16]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[17]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry__3_n_7),
        .O(\counter[17]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[18]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry__3_n_6),
        .O(\counter[18]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[19]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry__3_n_5),
        .O(\counter[19]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[1]_i_1__2 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry_n_7),
        .O(\counter[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[20]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry__3_n_4),
        .O(\counter[20]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[21]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry__4_n_7),
        .O(\counter[21]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[22]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry__4_n_6),
        .O(\counter[22]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[23]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry__4_n_5),
        .O(\counter[23]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[24]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry__4_n_4),
        .O(\counter[24]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[25]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry__5_n_7),
        .O(\counter[25]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[26]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry__5_n_6),
        .O(\counter[26]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[27]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry__5_n_5),
        .O(\counter[27]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[28]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry__5_n_4),
        .O(\counter[28]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[29]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry__6_n_7),
        .O(\counter[29]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[2]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry_n_6),
        .O(\counter[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[30]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry__6_n_6),
        .O(\counter[30]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[31]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry__6_n_5),
        .O(\counter[31]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[3]_i_1__2 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry_n_5),
        .O(\counter[3]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[4]_i_1__2 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry_n_4),
        .O(\counter[4]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[5]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry__0_n_7),
        .O(\counter[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[6]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry__0_n_6),
        .O(\counter[6]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[7]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry__0_n_5),
        .O(\counter[7]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[8]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry__0_n_4),
        .O(\counter[8]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \counter[9]_i_1__0 
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .I3(counter0_carry__1_n_7),
        .O(\counter[9]_i_1__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[0]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[10]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[11]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[12]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[13]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[14]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[15]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[16]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[17]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[18]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[19]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[1]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[20]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[21]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[22]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[23]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[24]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[25]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[26]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[27]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[28]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[29]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[2]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[30]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[31]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[3]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[4]_i_1__2_n_0 ),
        .Q(\counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[5]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[6]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[7]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[8]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\counter[9]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'hEAAAAAEA)) 
    prev_bit_i_2
       (.I0(prev_bit_i_3_n_0),
        .I1(p_15_in),
        .I2(bit_stable_reg_1),
        .I3(sync_signal),
        .I4(prev_bit),
        .O(prev_bit_0));
  LUT5 #(
    .INIT(32'h00020000)) 
    prev_bit_i_3
       (.I0(sample_ENABLE_reg_0),
        .I1(Rx_PERROR_reg[3]),
        .I2(Rx_PERROR_reg[2]),
        .I3(Rx_PERROR_reg[1]),
        .I4(Rx_PERROR_reg[0]),
        .O(prev_bit_i_3_n_0));
  LUT3 #(
    .INIT(8'h02)) 
    sample_ENABLE_i_1__0
       (.I0(counter1_carry__1_n_1),
        .I1(Q[12]),
        .I2(Q[0]),
        .O(sample_ENABLE_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    sample_ENABLE_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(sample_ENABLE_i_1__0_n_0),
        .Q(sample_ENABLE_reg_0));
endmodule

module baud_controller_t
   (sample_ENABLE,
    CO,
    D,
    sample_ENABLE_reg_0,
    clk_IBUF_BUFG,
    Reset_UART,
    Q,
    \FSM_onehot_cur_state_reg[0] ,
    Tx_EN_UART,
    \FSM_onehot_cur_state_reg[0]_0 ,
    \counter_reg[31]_0 ,
    Tx_EN_IBUF,
    \FSM_onehot_cur_state_reg[12] ,
    baud_select_IBUF);
  output sample_ENABLE;
  output [0:0]CO;
  output [2:0]D;
  input sample_ENABLE_reg_0;
  input clk_IBUF_BUFG;
  input Reset_UART;
  input [2:0]Q;
  input \FSM_onehot_cur_state_reg[0] ;
  input Tx_EN_UART;
  input \FSM_onehot_cur_state_reg[0]_0 ;
  input [1:0]\counter_reg[31]_0 ;
  input Tx_EN_IBUF;
  input [1:0]\FSM_onehot_cur_state_reg[12] ;
  input [2:0]baud_select_IBUF;

  wire [0:0]CO;
  wire [2:0]D;
  wire \FSM_onehot_cur_state[1]_i_2__0_n_0 ;
  wire \FSM_onehot_cur_state_reg[0] ;
  wire \FSM_onehot_cur_state_reg[0]_0 ;
  wire [1:0]\FSM_onehot_cur_state_reg[12] ;
  wire [2:0]Q;
  wire Reset_UART;
  wire Tx_EN_IBUF;
  wire Tx_EN_UART;
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
  wire counter1_carry_i_1__0_n_0;
  wire counter1_carry_i_2_n_0;
  wire counter1_carry_i_3__0_n_0;
  wire counter1_carry_i_4_n_0;
  wire counter1_carry_n_0;
  wire [1:0]\counter_reg[31]_0 ;
  wire [31:0]p_0_in;
  wire sample_ENABLE;
  wire sample_ENABLE_reg_0;
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
    .INIT(64'hF8F8F8F8F8888888)) 
    \FSM_onehot_cur_state[0]_i_1__0 
       (.I0(Q[0]),
        .I1(\FSM_onehot_cur_state_reg[0] ),
        .I2(Tx_EN_UART),
        .I3(\FSM_onehot_cur_state_reg[0]_0 ),
        .I4(sample_ENABLE),
        .I5(Q[2]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hEAEAEA00EAEAEAEA)) 
    \FSM_onehot_cur_state[12]_i_1 
       (.I0(Q[2]),
        .I1(sample_ENABLE),
        .I2(\FSM_onehot_cur_state_reg[0]_0 ),
        .I3(\FSM_onehot_cur_state_reg[12] [1]),
        .I4(\FSM_onehot_cur_state_reg[12] [0]),
        .I5(Tx_EN_IBUF),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0200FFFF02000200)) 
    \FSM_onehot_cur_state[1]_i_1__0 
       (.I0(\counter_reg[31]_0 [1]),
        .I1(\counter_reg[31]_0 [0]),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(Q[0]),
        .I4(sample_ENABLE),
        .I5(Q[1]),
        .O(D[1]));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_onehot_cur_state[1]_i_2__0 
       (.I0(\FSM_onehot_cur_state_reg[12] [1]),
        .I1(\FSM_onehot_cur_state_reg[12] [0]),
        .O(\FSM_onehot_cur_state[1]_i_2__0_n_0 ));
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
        .S({counter1_carry_i_1__0_n_0,counter1_carry_i_2_n_0,counter1_carry_i_3__0_n_0,counter1_carry_i_4_n_0}));
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
       (.I0(counter[23]),
        .I1(counter[22]),
        .I2(counter[21]),
        .O(counter1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0101010101010110)) 
    counter1_carry__0_i_2
       (.I0(counter[20]),
        .I1(counter[19]),
        .I2(counter[18]),
        .I3(baud_select_IBUF[2]),
        .I4(baud_select_IBUF[1]),
        .I5(baud_select_IBUF[0]),
        .O(counter1_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h00011110)) 
    counter1_carry__0_i_3
       (.I0(counter[17]),
        .I1(counter[15]),
        .I2(baud_select_IBUF[1]),
        .I3(baud_select_IBUF[2]),
        .I4(counter[16]),
        .O(counter1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0101100201040804)) 
    counter1_carry__0_i_4
       (.I0(counter[14]),
        .I1(counter[12]),
        .I2(counter[13]),
        .I3(baud_select_IBUF[1]),
        .I4(baud_select_IBUF[2]),
        .I5(baud_select_IBUF[0]),
        .O(counter1_carry__0_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter1_carry__1
       (.CI(counter1_carry__0_n_0),
        .CO({NLW_counter1_carry__1_CO_UNCONNECTED[3],CO,NLW_counter1_carry__1_CO_UNCONNECTED[1:0]}),
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
    .INIT(64'h0410400208010208)) 
    counter1_carry_i_1__0
       (.I0(counter[10]),
        .I1(counter[9]),
        .I2(counter[11]),
        .I3(baud_select_IBUF[2]),
        .I4(baud_select_IBUF[1]),
        .I5(baud_select_IBUF[0]),
        .O(counter1_carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h4020011002400801)) 
    counter1_carry_i_2
       (.I0(counter[7]),
        .I1(counter[8]),
        .I2(counter[6]),
        .I3(baud_select_IBUF[0]),
        .I4(baud_select_IBUF[1]),
        .I5(baud_select_IBUF[2]),
        .O(counter1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h0820802080080220)) 
    counter1_carry_i_3__0
       (.I0(counter[3]),
        .I1(counter[5]),
        .I2(counter[4]),
        .I3(baud_select_IBUF[0]),
        .I4(baud_select_IBUF[1]),
        .I5(baud_select_IBUF[2]),
        .O(counter1_carry_i_3__0_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    counter1_carry_i_4
       (.I0(counter[2]),
        .I1(counter[1]),
        .I2(counter[0]),
        .O(counter1_carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000055515555)) 
    \counter[0]_i_1__1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter[0]),
        .O(p_0_in[0]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[10]_i_1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[10]),
        .O(p_0_in[10]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[11]_i_1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[11]),
        .O(p_0_in[11]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[12]_i_1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[12]),
        .O(p_0_in[12]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[13]_i_1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[13]),
        .O(p_0_in[13]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[14]_i_1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[14]),
        .O(p_0_in[14]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[15]_i_1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[15]),
        .O(p_0_in[15]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[16]_i_1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[16]),
        .O(p_0_in[16]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[17]_i_1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[17]),
        .O(p_0_in[17]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[18]_i_1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[18]),
        .O(p_0_in[18]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[19]_i_1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[19]),
        .O(p_0_in[19]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[1]_i_1__1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[1]),
        .O(p_0_in[1]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[20]_i_1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[20]),
        .O(p_0_in[20]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[21]_i_1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[21]),
        .O(p_0_in[21]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[22]_i_1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[22]),
        .O(p_0_in[22]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[23]_i_1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[23]),
        .O(p_0_in[23]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[24]_i_1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[24]),
        .O(p_0_in[24]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[25]_i_1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[25]),
        .O(p_0_in[25]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[26]_i_1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[26]),
        .O(p_0_in[26]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[27]_i_1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[27]),
        .O(p_0_in[27]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[28]_i_1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[28]),
        .O(p_0_in[28]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[29]_i_1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[29]),
        .O(p_0_in[29]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[2]_i_1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[30]_i_1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[30]),
        .O(p_0_in[30]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[31]_i_1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[31]),
        .O(p_0_in[31]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[3]_i_1__1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[4]_i_1__1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[4]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[5]_i_1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[5]),
        .O(p_0_in[5]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[6]_i_1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[6]),
        .O(p_0_in[6]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[7]_i_1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[7]),
        .O(p_0_in[7]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[8]_i_1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[8]),
        .O(p_0_in[8]));
  LUT6 #(
    .INIT(64'h5551555500000000)) 
    \counter[9]_i_1 
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(\FSM_onehot_cur_state[1]_i_2__0_n_0 ),
        .I3(\counter_reg[31]_0 [0]),
        .I4(\counter_reg[31]_0 [1]),
        .I5(counter0[9]),
        .O(p_0_in[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[0]),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[10]),
        .Q(counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[11]),
        .Q(counter[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[12]),
        .Q(counter[12]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[13]),
        .Q(counter[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[14]),
        .Q(counter[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[15]),
        .Q(counter[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[16]),
        .Q(counter[16]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[17]),
        .Q(counter[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[18]),
        .Q(counter[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[19]),
        .Q(counter[19]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[1]),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[20]),
        .Q(counter[20]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[21]),
        .Q(counter[21]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[22]),
        .Q(counter[22]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[23]),
        .Q(counter[23]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[24]),
        .Q(counter[24]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[25]),
        .Q(counter[25]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[26]),
        .Q(counter[26]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[27]),
        .Q(counter[27]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[28]),
        .Q(counter[28]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[29]),
        .Q(counter[29]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[2]),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[30]),
        .Q(counter[30]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[31]),
        .Q(counter[31]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[3]),
        .Q(counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[4]),
        .Q(counter[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[5]),
        .Q(counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[6]),
        .Q(counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[7]),
        .Q(counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[8]),
        .Q(counter[8]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(p_0_in[9]),
        .Q(counter[9]));
  FDCE #(
    .INIT(1'b0)) 
    sample_ENABLE_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(sample_ENABLE_reg_0),
        .Q(sample_ENABLE));
endmodule

module synchronizer
   (sync_signal,
    D,
    \buffer_reg[5] ,
    sync_signal_reg_0,
    sync_signal_reg_1,
    TxD_OBUF,
    clk_IBUF_BUFG,
    Rx_sample_ENABLE__2,
    Q,
    \FSM_onehot_cur_state_reg[0] ,
    cur_bit,
    \FSM_onehot_cur_state_reg[1] ,
    TxD_OBUF_inst_i_2,
    cur_bit_reg,
    sample_ENABLE,
    cur_bit_reg_0,
    prev_bit_0,
    prev_bit);
  output sync_signal;
  output [1:0]D;
  output \buffer_reg[5] ;
  output sync_signal_reg_0;
  output sync_signal_reg_1;
  input TxD_OBUF;
  input clk_IBUF_BUFG;
  input Rx_sample_ENABLE__2;
  input [3:0]Q;
  input \FSM_onehot_cur_state_reg[0] ;
  input cur_bit;
  input \FSM_onehot_cur_state_reg[1] ;
  input [3:0]TxD_OBUF_inst_i_2;
  input [0:0]cur_bit_reg;
  input sample_ENABLE;
  input cur_bit_reg_0;
  input prev_bit_0;
  input prev_bit;

  wire [1:0]D;
  wire \FSM_onehot_cur_state[0]_i_2__0_n_0 ;
  wire \FSM_onehot_cur_state[1]_i_3_n_0 ;
  wire \FSM_onehot_cur_state_reg[0] ;
  wire \FSM_onehot_cur_state_reg[1] ;
  wire [3:0]Q;
  wire Rx_sample_ENABLE__2;
  wire TxD_OBUF;
  wire [3:0]TxD_OBUF_inst_i_2;
  wire \buffer_reg[5] ;
  wire clk_IBUF_BUFG;
  wire cur_bit;
  wire [0:0]cur_bit_reg;
  wire cur_bit_reg_0;
  wire prev_bit;
  wire prev_bit_0;
  wire sample_ENABLE;
  wire sync_signal;
  wire sync_signal_reg_0;
  wire sync_signal_reg_1;
  wire sync_stage1;

  LUT6 #(
    .INIT(64'h88FF88F888F888F8)) 
    \FSM_onehot_cur_state[0]_i_1 
       (.I0(\FSM_onehot_cur_state[0]_i_2__0_n_0 ),
        .I1(Rx_sample_ENABLE__2),
        .I2(Q[3]),
        .I3(\FSM_onehot_cur_state_reg[0] ),
        .I4(sync_signal),
        .I5(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'hDF00)) 
    \FSM_onehot_cur_state[0]_i_2__0 
       (.I0(cur_bit),
        .I1(sync_signal),
        .I2(\FSM_onehot_cur_state_reg[1] ),
        .I3(Q[2]),
        .O(\FSM_onehot_cur_state[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF22222F22)) 
    \FSM_onehot_cur_state[1]_i_1 
       (.I0(Q[1]),
        .I1(Rx_sample_ENABLE__2),
        .I2(sync_signal),
        .I3(Q[0]),
        .I4(\FSM_onehot_cur_state_reg[0] ),
        .I5(\FSM_onehot_cur_state[1]_i_3_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \FSM_onehot_cur_state[1]_i_3 
       (.I0(sync_signal),
        .I1(Q[2]),
        .I2(cur_bit),
        .I3(Rx_sample_ENABLE__2),
        .I4(\FSM_onehot_cur_state_reg[1] ),
        .O(\FSM_onehot_cur_state[1]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    TxD_OBUF_inst_i_6
       (.I0(TxD_OBUF_inst_i_2[1]),
        .I1(TxD_OBUF_inst_i_2[0]),
        .I2(TxD_OBUF_inst_i_2[2]),
        .I3(TxD_OBUF_inst_i_2[3]),
        .O(\buffer_reg[5] ));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    cur_bit_i_1
       (.I0(sync_signal),
        .I1(cur_bit_reg),
        .I2(sample_ENABLE),
        .I3(cur_bit_reg_0),
        .I4(cur_bit),
        .O(sync_signal_reg_0));
  LUT3 #(
    .INIT(8'hB8)) 
    prev_bit_i_1
       (.I0(sync_signal),
        .I1(prev_bit_0),
        .I2(prev_bit),
        .O(sync_signal_reg_1));
  FDRE #(
    .INIT(1'b0)) 
    sync_signal_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sync_stage1),
        .Q(sync_signal),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sync_stage1_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(TxD_OBUF),
        .Q(sync_stage1),
        .R(1'b0));
endmodule

module uart_receiver
   (sample_ENABLE,
    Rx_VALID,
    \Rx_DATA_reg[7]_0 ,
    \buffer_reg[5] ,
    D,
    \FSM_onehot_cur_state_reg[1]_0 ,
    clk_IBUF_BUFG,
    Reset_UART,
    TxD_OBUF,
    Rx_EN_IBUF,
    Q,
    baud_select_IBUF,
    TxD_OBUF_inst_i_2,
    \buffer_reg[0] ,
    E,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6,
    lopt_7);
  output sample_ENABLE;
  output Rx_VALID;
  output [7:0]\Rx_DATA_reg[7]_0 ;
  output \buffer_reg[5] ;
  output [1:0]D;
  output \FSM_onehot_cur_state_reg[1]_0 ;
  input clk_IBUF_BUFG;
  input Reset_UART;
  input TxD_OBUF;
  input Rx_EN_IBUF;
  input [1:0]Q;
  input [2:0]baud_select_IBUF;
  input [3:0]TxD_OBUF_inst_i_2;
  input [0:0]\buffer_reg[0] ;
  input [0:0]E;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;
  output lopt_6;
  output lopt_7;

  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_onehot_cur_state[11]_i_4_n_0 ;
  wire \FSM_onehot_cur_state[13]_i_1_n_0 ;
  wire \FSM_onehot_cur_state[1]_i_2_n_0 ;
  wire \FSM_onehot_cur_state_reg[1]_0 ;
  wire \FSM_onehot_cur_state_reg_n_0_[2] ;
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
  wire \Rx_DATA_reg[0]_lopt_replica_1 ;
  wire \Rx_DATA_reg[1]_lopt_replica_1 ;
  wire \Rx_DATA_reg[2]_lopt_replica_1 ;
  wire \Rx_DATA_reg[3]_lopt_replica_1 ;
  wire \Rx_DATA_reg[4]_lopt_replica_1 ;
  wire \Rx_DATA_reg[5]_lopt_replica_1 ;
  wire \Rx_DATA_reg[6]_lopt_replica_1 ;
  wire [7:0]\Rx_DATA_reg[7]_0 ;
  wire \Rx_DATA_reg[7]_lopt_replica_1 ;
  wire Rx_EN_IBUF;
  wire Rx_FERROR;
  wire Rx_FERROR_i_3_n_0;
  wire Rx_PERROR;
  wire Rx_PERROR1__0;
  wire Rx_VALID;
  wire Rx_sample_ENABLE__2;
  wire TxD_OBUF;
  wire [3:0]TxD_OBUF_inst_i_2;
  wire baud_controller_r_inst_n_10;
  wire baud_controller_r_inst_n_11;
  wire baud_controller_r_inst_n_14;
  wire baud_controller_r_inst_n_15;
  wire baud_controller_r_inst_n_16;
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
  wire bit_stable_reg_n_0;
  wire [0:0]\buffer_reg[0] ;
  wire \buffer_reg[5] ;
  wire check_parity;
  wire clk_IBUF_BUFG;
  wire cur_bit;
  wire cur_bit_i_2_n_0;
  wire disabled;
  wire end_sequence;
  wire idle;
  wire p_0_in5_in;
  wire prev_bit;
  wire prev_bit_0;
  wire sample_ENABLE;
  wire \sample_counter[0]_i_1_n_0 ;
  wire \sample_counter[1]_i_1_n_0 ;
  wire \sample_counter[2]_i_1_n_0 ;
  wire \sample_counter[3]_i_2_n_0 ;
  wire \sample_counter_reg_n_0_[0] ;
  wire \sample_counter_reg_n_0_[1] ;
  wire \sample_counter_reg_n_0_[2] ;
  wire start_sequence;
  wire sync_signal;
  wire synchronizer_inst_n_1;
  wire synchronizer_inst_n_2;
  wire synchronizer_inst_n_4;
  wire synchronizer_inst_n_5;

  assign lopt = \Rx_DATA_reg[0]_lopt_replica_1 ;
  assign lopt_1 = \Rx_DATA_reg[1]_lopt_replica_1 ;
  assign lopt_2 = \Rx_DATA_reg[2]_lopt_replica_1 ;
  assign lopt_3 = \Rx_DATA_reg[3]_lopt_replica_1 ;
  assign lopt_4 = \Rx_DATA_reg[4]_lopt_replica_1 ;
  assign lopt_5 = \Rx_DATA_reg[5]_lopt_replica_1 ;
  assign lopt_6 = \Rx_DATA_reg[6]_lopt_replica_1 ;
  assign lopt_7 = \Rx_DATA_reg[7]_lopt_replica_1 ;
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \FSM_onehot_cur_state[11]_i_2 
       (.I0(\Rx_DATA_reg[7]_0 [1]),
        .I1(\Rx_DATA_reg[7]_0 [0]),
        .I2(\Rx_DATA_reg[7]_0 [2]),
        .I3(\Rx_DATA_reg[7]_0 [3]),
        .I4(cur_bit),
        .I5(\FSM_onehot_cur_state[11]_i_4_n_0 ),
        .O(Rx_PERROR1__0));
  LUT4 #(
    .INIT(16'h6996)) 
    \FSM_onehot_cur_state[11]_i_4 
       (.I0(\Rx_DATA_reg[7]_0 [5]),
        .I1(\Rx_DATA_reg[7]_0 [4]),
        .I2(\Rx_DATA_reg[7]_0 [6]),
        .I3(\Rx_DATA_reg[7]_0 [7]),
        .O(\FSM_onehot_cur_state[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hEEEEEE0E)) 
    \FSM_onehot_cur_state[13]_i_1 
       (.I0(disabled),
        .I1(idle),
        .I2(Rx_EN_IBUF),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(\FSM_onehot_cur_state[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \FSM_onehot_cur_state[1]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Rx_EN_IBUF),
        .O(\FSM_onehot_cur_state[1]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "BIT_3:00000000100000,BIT_2:00000000010000,LOCK:01000000000000,BIT_1:00000000001000,IDLE:00000000000001,DISABLED:10000000000000,END_BIT:00100000000000,BIT_0:00000000000100,START_BIT:00000000000010,BIT_6:00000100000000,PARITY:00010000000000,BIT_5:00000010000000,BIT_7:00001000000000,BIT_4:00000001000000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_cur_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(synchronizer_inst_n_2),
        .PRE(Reset_UART),
        .Q(idle));
  (* FSM_ENCODED_STATES = "BIT_3:00000000100000,BIT_2:00000000010000,LOCK:01000000000000,BIT_1:00000000001000,IDLE:00000000000001,DISABLED:10000000000000,END_BIT:00100000000000,BIT_0:00000000000100,START_BIT:00000000000010,BIT_6:00000100000000,PARITY:00010000000000,BIT_5:00000010000000,BIT_7:00001000000000,BIT_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(baud_controller_r_inst_n_3),
        .Q(check_parity));
  (* FSM_ENCODED_STATES = "BIT_3:00000000100000,BIT_2:00000000010000,LOCK:01000000000000,BIT_1:00000000001000,IDLE:00000000000001,DISABLED:10000000000000,END_BIT:00100000000000,BIT_0:00000000000100,START_BIT:00000000000010,BIT_6:00000100000000,PARITY:00010000000000,BIT_5:00000010000000,BIT_7:00001000000000,BIT_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(baud_controller_r_inst_n_2),
        .Q(end_sequence));
  (* FSM_ENCODED_STATES = "BIT_3:00000000100000,BIT_2:00000000010000,LOCK:01000000000000,BIT_1:00000000001000,IDLE:00000000000001,DISABLED:10000000000000,END_BIT:00100000000000,BIT_0:00000000000100,START_BIT:00000000000010,BIT_6:00000100000000,PARITY:00010000000000,BIT_5:00000010000000,BIT_7:00001000000000,BIT_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(\FSM_onehot_cur_state[13]_i_1_n_0 ),
        .Q(disabled));
  (* FSM_ENCODED_STATES = "BIT_3:00000000100000,BIT_2:00000000010000,LOCK:01000000000000,BIT_1:00000000001000,IDLE:00000000000001,DISABLED:10000000000000,END_BIT:00100000000000,BIT_0:00000000000100,START_BIT:00000000000010,BIT_6:00000100000000,PARITY:00010000000000,BIT_5:00000010000000,BIT_7:00001000000000,BIT_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(synchronizer_inst_n_1),
        .Q(start_sequence));
  (* FSM_ENCODED_STATES = "BIT_3:00000000100000,BIT_2:00000000010000,LOCK:01000000000000,BIT_1:00000000001000,IDLE:00000000000001,DISABLED:10000000000000,END_BIT:00100000000000,BIT_0:00000000000100,START_BIT:00000000000010,BIT_6:00000100000000,PARITY:00010000000000,BIT_5:00000010000000,BIT_7:00001000000000,BIT_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(baud_controller_r_inst_n_11),
        .Q(\FSM_onehot_cur_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "BIT_3:00000000100000,BIT_2:00000000010000,LOCK:01000000000000,BIT_1:00000000001000,IDLE:00000000000001,DISABLED:10000000000000,END_BIT:00100000000000,BIT_0:00000000000100,START_BIT:00000000000010,BIT_6:00000100000000,PARITY:00010000000000,BIT_5:00000010000000,BIT_7:00001000000000,BIT_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(baud_controller_r_inst_n_10),
        .Q(\FSM_onehot_cur_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "BIT_3:00000000100000,BIT_2:00000000010000,LOCK:01000000000000,BIT_1:00000000001000,IDLE:00000000000001,DISABLED:10000000000000,END_BIT:00100000000000,BIT_0:00000000000100,START_BIT:00000000000010,BIT_6:00000100000000,PARITY:00010000000000,BIT_5:00000010000000,BIT_7:00001000000000,BIT_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(baud_controller_r_inst_n_9),
        .Q(\FSM_onehot_cur_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "BIT_3:00000000100000,BIT_2:00000000010000,LOCK:01000000000000,BIT_1:00000000001000,IDLE:00000000000001,DISABLED:10000000000000,END_BIT:00100000000000,BIT_0:00000000000100,START_BIT:00000000000010,BIT_6:00000100000000,PARITY:00010000000000,BIT_5:00000010000000,BIT_7:00001000000000,BIT_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(baud_controller_r_inst_n_8),
        .Q(\FSM_onehot_cur_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "BIT_3:00000000100000,BIT_2:00000000010000,LOCK:01000000000000,BIT_1:00000000001000,IDLE:00000000000001,DISABLED:10000000000000,END_BIT:00100000000000,BIT_0:00000000000100,START_BIT:00000000000010,BIT_6:00000100000000,PARITY:00010000000000,BIT_5:00000010000000,BIT_7:00001000000000,BIT_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(baud_controller_r_inst_n_7),
        .Q(\FSM_onehot_cur_state_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "BIT_3:00000000100000,BIT_2:00000000010000,LOCK:01000000000000,BIT_1:00000000001000,IDLE:00000000000001,DISABLED:10000000000000,END_BIT:00100000000000,BIT_0:00000000000100,START_BIT:00000000000010,BIT_6:00000100000000,PARITY:00010000000000,BIT_5:00000010000000,BIT_7:00001000000000,BIT_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(baud_controller_r_inst_n_6),
        .Q(\FSM_onehot_cur_state_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "BIT_3:00000000100000,BIT_2:00000000010000,LOCK:01000000000000,BIT_1:00000000001000,IDLE:00000000000001,DISABLED:10000000000000,END_BIT:00100000000000,BIT_0:00000000000100,START_BIT:00000000000010,BIT_6:00000100000000,PARITY:00010000000000,BIT_5:00000010000000,BIT_7:00001000000000,BIT_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(baud_controller_r_inst_n_5),
        .Q(\FSM_onehot_cur_state_reg_n_0_[8] ));
  (* FSM_ENCODED_STATES = "BIT_3:00000000100000,BIT_2:00000000010000,LOCK:01000000000000,BIT_1:00000000001000,IDLE:00000000000001,DISABLED:10000000000000,END_BIT:00100000000000,BIT_0:00000000000100,START_BIT:00000000000010,BIT_6:00000100000000,PARITY:00010000000000,BIT_5:00000010000000,BIT_7:00001000000000,BIT_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(baud_controller_r_inst_n_4),
        .Q(\FSM_onehot_cur_state_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \FSM_sequential_cur_state[0]_i_1 
       (.I0(Q[0]),
        .I1(Rx_FERROR),
        .I2(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0F04)) 
    \FSM_sequential_cur_state[1]_i_1 
       (.I0(Rx_FERROR),
        .I1(Rx_PERROR),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(Rx_DATA0),
        .CLR(Reset_UART),
        .D(sync_signal),
        .Q(\Rx_DATA_reg[7]_0 [0]));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[0]_lopt_replica 
       (.C(clk_IBUF_BUFG),
        .CE(Rx_DATA0),
        .CLR(Reset_UART),
        .D(sync_signal),
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
    .INIT(64'hACACACACACACACFF)) 
    Rx_FERROR_i_3
       (.I0(start_sequence),
        .I1(end_sequence),
        .I2(cur_bit),
        .I3(bit_stable_reg_n_0),
        .I4(disabled),
        .I5(idle),
        .O(Rx_FERROR_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    Rx_FERROR_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(baud_controller_r_inst_n_15),
        .Q(Rx_FERROR));
  FDCE #(
    .INIT(1'b0)) 
    Rx_PERROR_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(baud_controller_r_inst_n_16),
        .Q(Rx_PERROR));
  FDCE #(
    .INIT(1'b0)) 
    Rx_VALID_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(baud_controller_r_inst_n_17),
        .Q(Rx_VALID));
  baud_controller_r baud_controller_r_inst
       (.D({baud_controller_r_inst_n_2,baud_controller_r_inst_n_3,baud_controller_r_inst_n_4,baud_controller_r_inst_n_5,baud_controller_r_inst_n_6,baud_controller_r_inst_n_7,baud_controller_r_inst_n_8,baud_controller_r_inst_n_9,baud_controller_r_inst_n_10,baud_controller_r_inst_n_11}),
        .E(Rx_DATA0),
        .Q({disabled,end_sequence,check_parity,\FSM_onehot_cur_state_reg_n_0_[9] ,\FSM_onehot_cur_state_reg_n_0_[8] ,\FSM_onehot_cur_state_reg_n_0_[7] ,\FSM_onehot_cur_state_reg_n_0_[6] ,\FSM_onehot_cur_state_reg_n_0_[5] ,\FSM_onehot_cur_state_reg_n_0_[4] ,\FSM_onehot_cur_state_reg_n_0_[3] ,\FSM_onehot_cur_state_reg_n_0_[2] ,start_sequence,idle}),
        .Reset_UART(Reset_UART),
        .Rx_FERROR(Rx_FERROR),
        .Rx_FERROR_reg(Rx_FERROR_i_3_n_0),
        .Rx_PERROR(Rx_PERROR),
        .Rx_PERROR1__0(Rx_PERROR1__0),
        .Rx_PERROR_reg({p_0_in5_in,\sample_counter_reg_n_0_[2] ,\sample_counter_reg_n_0_[1] ,\sample_counter_reg_n_0_[0] }),
        .Rx_VALID(Rx_VALID),
        .Rx_sample_ENABLE__2(Rx_sample_ENABLE__2),
        .baud_select_IBUF(baud_select_IBUF),
        .bit_stable_reg(baud_controller_r_inst_n_15),
        .bit_stable_reg_0(baud_controller_r_inst_n_17),
        .bit_stable_reg_1(bit_stable_reg_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .cur_bit(cur_bit),
        .prev_bit(prev_bit),
        .prev_bit_0(prev_bit_0),
        .sample_ENABLE_reg_0(sample_ENABLE),
        .\sample_counter_reg[0] (baud_controller_r_inst_n_14),
        .\sample_counter_reg[3] (baud_controller_r_inst_n_16),
        .sync_signal(sync_signal));
  FDPE #(
    .INIT(1'b1)) 
    bit_stable_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(baud_controller_r_inst_n_14),
        .PRE(Reset_UART),
        .Q(bit_stable_reg_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    \buffer[7]_i_5 
       (.I0(\buffer_reg[0] ),
        .I1(Rx_FERROR),
        .I2(Rx_PERROR),
        .O(\FSM_onehot_cur_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    cur_bit_i_2
       (.I0(\sample_counter_reg_n_0_[0] ),
        .I1(\sample_counter_reg_n_0_[1] ),
        .I2(\sample_counter_reg_n_0_[2] ),
        .O(cur_bit_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    cur_bit_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(synchronizer_inst_n_4),
        .Q(cur_bit));
  FDCE #(
    .INIT(1'b0)) 
    prev_bit_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(synchronizer_inst_n_5),
        .Q(prev_bit));
  LUT1 #(
    .INIT(2'h1)) 
    \sample_counter[0]_i_1 
       (.I0(\sample_counter_reg_n_0_[0] ),
        .O(\sample_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sample_counter[1]_i_1 
       (.I0(\sample_counter_reg_n_0_[0] ),
        .I1(\sample_counter_reg_n_0_[1] ),
        .O(\sample_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sample_counter[2]_i_1 
       (.I0(\sample_counter_reg_n_0_[0] ),
        .I1(\sample_counter_reg_n_0_[1] ),
        .I2(\sample_counter_reg_n_0_[2] ),
        .O(\sample_counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sample_counter[3]_i_2 
       (.I0(\sample_counter_reg_n_0_[2] ),
        .I1(\sample_counter_reg_n_0_[1] ),
        .I2(\sample_counter_reg_n_0_[0] ),
        .I3(p_0_in5_in),
        .O(\sample_counter[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(Reset_UART),
        .D(\sample_counter[0]_i_1_n_0 ),
        .Q(\sample_counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(Reset_UART),
        .D(\sample_counter[1]_i_1_n_0 ),
        .Q(\sample_counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(Reset_UART),
        .D(\sample_counter[2]_i_1_n_0 ),
        .Q(\sample_counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(Reset_UART),
        .D(\sample_counter[3]_i_2_n_0 ),
        .Q(p_0_in5_in));
  synchronizer synchronizer_inst
       (.D({synchronizer_inst_n_1,synchronizer_inst_n_2}),
        .\FSM_onehot_cur_state_reg[0] (\FSM_onehot_cur_state[1]_i_2_n_0 ),
        .\FSM_onehot_cur_state_reg[1] (bit_stable_reg_n_0),
        .Q({disabled,end_sequence,start_sequence,idle}),
        .Rx_sample_ENABLE__2(Rx_sample_ENABLE__2),
        .TxD_OBUF(TxD_OBUF),
        .TxD_OBUF_inst_i_2(TxD_OBUF_inst_i_2),
        .\buffer_reg[5] (\buffer_reg[5] ),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .cur_bit(cur_bit),
        .cur_bit_reg(p_0_in5_in),
        .cur_bit_reg_0(cur_bit_i_2_n_0),
        .prev_bit(prev_bit),
        .prev_bit_0(prev_bit_0),
        .sample_ENABLE(sample_ENABLE),
        .sync_signal(sync_signal),
        .sync_signal_reg_0(synchronizer_inst_n_4),
        .sync_signal_reg_1(synchronizer_inst_n_5));
endmodule

module uart_transmitter
   (CO,
    \FSM_onehot_cur_state_reg[1]_0 ,
    E,
    Tx_BUSY_OBUF,
    TxD_OBUF,
    sample_ENABLE_reg,
    clk_IBUF_BUFG,
    Reset_UART,
    \FSM_onehot_cur_state_reg[0]_0 ,
    Q,
    Tx_EN_IBUF,
    \buffer_reg[0] ,
    \buffer_reg[0]_0 ,
    Rx_VALID,
    \FSM_onehot_cur_state_reg[12]_0 ,
    baud_select_IBUF,
    sync_stage1_reg,
    sync_stage1_reg_0);
  output [0:0]CO;
  output [0:0]\FSM_onehot_cur_state_reg[1]_0 ;
  output [0:0]E;
  output Tx_BUSY_OBUF;
  output TxD_OBUF;
  input sample_ENABLE_reg;
  input clk_IBUF_BUFG;
  input Reset_UART;
  input \FSM_onehot_cur_state_reg[0]_0 ;
  input [1:0]Q;
  input Tx_EN_IBUF;
  input \buffer_reg[0] ;
  input \buffer_reg[0]_0 ;
  input Rx_VALID;
  input [1:0]\FSM_onehot_cur_state_reg[12]_0 ;
  input [2:0]baud_select_IBUF;
  input [7:0]sync_stage1_reg;
  input sync_stage1_reg_0;

  wire [0:0]CO;
  wire [0:0]E;
  wire \FSM_onehot_cur_state_reg[0]_0 ;
  wire [1:0]\FSM_onehot_cur_state_reg[12]_0 ;
  wire [0:0]\FSM_onehot_cur_state_reg[1]_0 ;
  wire \FSM_onehot_cur_state_reg_n_0_[0] ;
  wire \FSM_onehot_cur_state_reg_n_0_[10] ;
  wire \FSM_onehot_cur_state_reg_n_0_[11] ;
  wire \FSM_onehot_cur_state_reg_n_0_[12] ;
  wire \FSM_onehot_cur_state_reg_n_0_[2] ;
  wire \FSM_onehot_cur_state_reg_n_0_[3] ;
  wire \FSM_onehot_cur_state_reg_n_0_[4] ;
  wire \FSM_onehot_cur_state_reg_n_0_[5] ;
  wire \FSM_onehot_cur_state_reg_n_0_[6] ;
  wire \FSM_onehot_cur_state_reg_n_0_[7] ;
  wire \FSM_onehot_cur_state_reg_n_0_[8] ;
  wire \FSM_onehot_cur_state_reg_n_0_[9] ;
  wire [1:0]Q;
  wire Reset_UART;
  wire Rx_VALID;
  wire TxD_OBUF;
  wire TxD_OBUF_inst_i_2_n_0;
  wire TxD_OBUF_inst_i_3_n_0;
  wire TxD_OBUF_inst_i_4_n_0;
  wire TxD_OBUF_inst_i_5_n_0;
  wire TxD_OBUF_inst_i_7_n_0;
  wire Tx_BUSY_OBUF;
  wire Tx_BUSY_OBUF_inst_i_2_n_0;
  wire Tx_BUSY_OBUF_inst_i_3_n_0;
  wire Tx_EN_IBUF;
  wire Tx_EN_UART;
  wire baud_controller_t_inst_n_2;
  wire baud_controller_t_inst_n_3;
  wire baud_controller_t_inst_n_4;
  wire [2:0]baud_select_IBUF;
  wire \buffer[7]_i_2_n_0 ;
  wire \buffer[7]_i_4_n_0 ;
  wire \buffer_reg[0] ;
  wire \buffer_reg[0]_0 ;
  wire clk_IBUF_BUFG;
  wire sample_ENABLE;
  wire sample_ENABLE_reg;
  wire [7:0]sync_stage1_reg;
  wire sync_stage1_reg_0;

  LUT3 #(
    .INIT(8'h02)) 
    \FSM_onehot_cur_state[0]_i_3 
       (.I0(Tx_EN_IBUF),
        .I1(\FSM_onehot_cur_state_reg[12]_0 [0]),
        .I2(\FSM_onehot_cur_state_reg[12]_0 [1]),
        .O(Tx_EN_UART));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_cur_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(baud_controller_t_inst_n_4),
        .PRE(Reset_UART),
        .Q(\FSM_onehot_cur_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_ENABLE),
        .CLR(Reset_UART),
        .D(\FSM_onehot_cur_state_reg_n_0_[9] ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[10] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_ENABLE),
        .CLR(Reset_UART),
        .D(\FSM_onehot_cur_state_reg_n_0_[10] ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[11] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(baud_controller_t_inst_n_2),
        .Q(\FSM_onehot_cur_state_reg_n_0_[12] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(Reset_UART),
        .D(baud_controller_t_inst_n_3),
        .Q(\FSM_onehot_cur_state_reg[1]_0 ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_ENABLE),
        .CLR(Reset_UART),
        .D(\FSM_onehot_cur_state_reg[1]_0 ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_ENABLE),
        .CLR(Reset_UART),
        .D(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_ENABLE),
        .CLR(Reset_UART),
        .D(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_ENABLE),
        .CLR(Reset_UART),
        .D(\FSM_onehot_cur_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_ENABLE),
        .CLR(Reset_UART),
        .D(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_ENABLE),
        .CLR(Reset_UART),
        .D(\FSM_onehot_cur_state_reg_n_0_[6] ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_ENABLE),
        .CLR(Reset_UART),
        .D(\FSM_onehot_cur_state_reg_n_0_[7] ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[8] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_ENABLE),
        .CLR(Reset_UART),
        .D(\FSM_onehot_cur_state_reg_n_0_[8] ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    TxD_OBUF_inst_i_1
       (.I0(TxD_OBUF_inst_i_2_n_0),
        .I1(TxD_OBUF_inst_i_3_n_0),
        .I2(TxD_OBUF_inst_i_4_n_0),
        .I3(\FSM_onehot_cur_state_reg_n_0_[8] ),
        .I4(sync_stage1_reg[1]),
        .I5(TxD_OBUF_inst_i_5_n_0),
        .O(TxD_OBUF));
  LUT6 #(
    .INIT(64'h8448488448848448)) 
    TxD_OBUF_inst_i_2
       (.I0(sync_stage1_reg_0),
        .I1(\FSM_onehot_cur_state_reg_n_0_[10] ),
        .I2(sync_stage1_reg[3]),
        .I3(sync_stage1_reg[2]),
        .I4(sync_stage1_reg[0]),
        .I5(sync_stage1_reg[1]),
        .O(TxD_OBUF_inst_i_2_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    TxD_OBUF_inst_i_3
       (.I0(sync_stage1_reg[3]),
        .I1(\FSM_onehot_cur_state_reg_n_0_[6] ),
        .I2(sync_stage1_reg[2]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[7] ),
        .O(TxD_OBUF_inst_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFEA)) 
    TxD_OBUF_inst_i_4
       (.I0(\FSM_onehot_cur_state_reg_n_0_[12] ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I2(sync_stage1_reg[6]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[11] ),
        .O(TxD_OBUF_inst_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    TxD_OBUF_inst_i_5
       (.I0(\FSM_onehot_cur_state_reg_n_0_[9] ),
        .I1(sync_stage1_reg[0]),
        .I2(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I3(sync_stage1_reg[7]),
        .I4(TxD_OBUF_inst_i_7_n_0),
        .O(TxD_OBUF_inst_i_5_n_0));
  LUT4 #(
    .INIT(16'hF888)) 
    TxD_OBUF_inst_i_7
       (.I0(sync_stage1_reg[5]),
        .I1(\FSM_onehot_cur_state_reg_n_0_[4] ),
        .I2(sync_stage1_reg[4]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .O(TxD_OBUF_inst_i_7_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    Tx_BUSY_OBUF_inst_i_1
       (.I0(\FSM_onehot_cur_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[11] ),
        .I2(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I3(Tx_BUSY_OBUF_inst_i_2_n_0),
        .I4(Tx_BUSY_OBUF_inst_i_3_n_0),
        .O(Tx_BUSY_OBUF));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Tx_BUSY_OBUF_inst_i_2
       (.I0(\FSM_onehot_cur_state_reg_n_0_[8] ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_cur_state_reg_n_0_[10] ),
        .I3(\FSM_onehot_cur_state_reg_n_0_[7] ),
        .O(Tx_BUSY_OBUF_inst_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    Tx_BUSY_OBUF_inst_i_3
       (.I0(\FSM_onehot_cur_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_cur_state_reg[1]_0 ),
        .I2(\FSM_onehot_cur_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .O(Tx_BUSY_OBUF_inst_i_3_n_0));
  baud_controller_t baud_controller_t_inst
       (.CO(CO),
        .D({baud_controller_t_inst_n_2,baud_controller_t_inst_n_3,baud_controller_t_inst_n_4}),
        .\FSM_onehot_cur_state_reg[0] (\FSM_onehot_cur_state_reg[0]_0 ),
        .\FSM_onehot_cur_state_reg[0]_0 (\FSM_onehot_cur_state_reg_n_0_[11] ),
        .\FSM_onehot_cur_state_reg[12] (\FSM_onehot_cur_state_reg[12]_0 ),
        .Q({\FSM_onehot_cur_state_reg_n_0_[12] ,\FSM_onehot_cur_state_reg[1]_0 ,\FSM_onehot_cur_state_reg_n_0_[0] }),
        .Reset_UART(Reset_UART),
        .Tx_EN_IBUF(Tx_EN_IBUF),
        .Tx_EN_UART(Tx_EN_UART),
        .baud_select_IBUF(baud_select_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\counter_reg[31]_0 (Q),
        .sample_ENABLE(sample_ENABLE),
        .sample_ENABLE_reg_0(sample_ENABLE_reg));
  LUT5 #(
    .INIT(32'hFFFF8000)) 
    \buffer[7]_i_1 
       (.I0(\buffer[7]_i_2_n_0 ),
        .I1(\buffer_reg[0] ),
        .I2(\buffer[7]_i_4_n_0 ),
        .I3(\buffer_reg[0]_0 ),
        .I4(Rx_VALID),
        .O(E));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \buffer[7]_i_2 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_cur_state_reg_n_0_[8] ),
        .I3(\FSM_onehot_cur_state_reg_n_0_[9] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[11] ),
        .I5(\FSM_onehot_cur_state_reg_n_0_[10] ),
        .O(\buffer[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \buffer[7]_i_4 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[4] ),
        .I2(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I3(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .O(\buffer[7]_i_4_n_0 ));
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

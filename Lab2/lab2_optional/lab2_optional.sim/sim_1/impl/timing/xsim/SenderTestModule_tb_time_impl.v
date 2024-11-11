// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Nov 11 18:08:02 2024
// Host        : DESKTOP-922FQ13 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/panag/Desktop/GitHub/Repositories/Vivado-Code/Lab2/lab2_optional/lab2_optional.sim/sim_1/impl/timing/xsim/SenderTestModule_tb_time_impl.v
// Design      : SSD_Transmittor_Driver
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module CharacterDecoder
   (LED_OBUF,
    \shift_times_reg[1]_0 ,
    \shift_times_reg[0]_0 ,
    Q,
    \shift_times_reg[0]_1 ,
    clk_IBUF_BUFG,
    AR,
    E,
    D);
  output [6:0]LED_OBUF;
  output \shift_times_reg[1]_0 ;
  output \shift_times_reg[0]_0 ;
  input [1:0]Q;
  input [1:0]\shift_times_reg[0]_1 ;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input [0:0]E;
  input [3:0]D;

  wire [0:0]AR;
  wire [3:0]D;
  wire [0:0]E;
  wire [6:0]LED_OBUF;
  wire \LED_OBUF[6]_inst_i_2_n_0 ;
  wire \LED_OBUF[6]_inst_i_3_n_0 ;
  wire \LED_OBUF[6]_inst_i_4_n_0 ;
  wire \LED_OBUF[6]_inst_i_5_n_0 ;
  wire [1:0]Q;
  wire clk_IBUF_BUFG;
  wire [3:0]\shift_reg_reg[0] ;
  wire [3:0]\shift_reg_reg[1] ;
  wire [3:0]\shift_reg_reg[2] ;
  wire [3:0]\shift_reg_reg[3] ;
  wire \shift_times[0]_i_1_n_0 ;
  wire \shift_times[1]_i_1_n_0 ;
  wire \shift_times_reg[0]_0 ;
  wire [1:0]\shift_times_reg[0]_1 ;
  wire \shift_times_reg[1]_0 ;

  LUT4 #(
    .INIT(16'h2809)) 
    \LED_OBUF[0]_inst_i_1 
       (.I0(\LED_OBUF[6]_inst_i_5_n_0 ),
        .I1(\LED_OBUF[6]_inst_i_3_n_0 ),
        .I2(\LED_OBUF[6]_inst_i_2_n_0 ),
        .I3(\LED_OBUF[6]_inst_i_4_n_0 ),
        .O(LED_OBUF[0]));
  LUT4 #(
    .INIT(16'hE802)) 
    \LED_OBUF[1]_inst_i_1 
       (.I0(\LED_OBUF[6]_inst_i_4_n_0 ),
        .I1(\LED_OBUF[6]_inst_i_2_n_0 ),
        .I2(\LED_OBUF[6]_inst_i_3_n_0 ),
        .I3(\LED_OBUF[6]_inst_i_5_n_0 ),
        .O(LED_OBUF[1]));
  LUT4 #(
    .INIT(16'hB0A2)) 
    \LED_OBUF[2]_inst_i_1 
       (.I0(\LED_OBUF[6]_inst_i_5_n_0 ),
        .I1(\LED_OBUF[6]_inst_i_2_n_0 ),
        .I2(\LED_OBUF[6]_inst_i_4_n_0 ),
        .I3(\LED_OBUF[6]_inst_i_3_n_0 ),
        .O(LED_OBUF[2]));
  LUT4 #(
    .INIT(16'h2C42)) 
    \LED_OBUF[3]_inst_i_1 
       (.I0(\LED_OBUF[6]_inst_i_5_n_0 ),
        .I1(\LED_OBUF[6]_inst_i_2_n_0 ),
        .I2(\LED_OBUF[6]_inst_i_3_n_0 ),
        .I3(\LED_OBUF[6]_inst_i_4_n_0 ),
        .O(LED_OBUF[3]));
  LUT4 #(
    .INIT(16'h4031)) 
    \LED_OBUF[4]_inst_i_1 
       (.I0(\LED_OBUF[6]_inst_i_4_n_0 ),
        .I1(\LED_OBUF[6]_inst_i_3_n_0 ),
        .I2(\LED_OBUF[6]_inst_i_2_n_0 ),
        .I3(\LED_OBUF[6]_inst_i_5_n_0 ),
        .O(LED_OBUF[4]));
  LUT4 #(
    .INIT(16'h086D)) 
    \LED_OBUF[5]_inst_i_1 
       (.I0(\LED_OBUF[6]_inst_i_4_n_0 ),
        .I1(\LED_OBUF[6]_inst_i_2_n_0 ),
        .I2(\LED_OBUF[6]_inst_i_5_n_0 ),
        .I3(\LED_OBUF[6]_inst_i_3_n_0 ),
        .O(LED_OBUF[5]));
  LUT4 #(
    .INIT(16'h4190)) 
    \LED_OBUF[6]_inst_i_1 
       (.I0(\LED_OBUF[6]_inst_i_2_n_0 ),
        .I1(\LED_OBUF[6]_inst_i_3_n_0 ),
        .I2(\LED_OBUF[6]_inst_i_4_n_0 ),
        .I3(\LED_OBUF[6]_inst_i_5_n_0 ),
        .O(LED_OBUF[6]));
  LUT6 #(
    .INIT(64'hF0AACCFFF0AACC00)) 
    \LED_OBUF[6]_inst_i_2 
       (.I0(\shift_reg_reg[2] [1]),
        .I1(\shift_reg_reg[1] [1]),
        .I2(\shift_reg_reg[3] [1]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\shift_reg_reg[0] [1]),
        .O(\LED_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F5533000F5533FF)) 
    \LED_OBUF[6]_inst_i_3 
       (.I0(\shift_reg_reg[2] [2]),
        .I1(\shift_reg_reg[1] [2]),
        .I2(\shift_reg_reg[3] [2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\shift_reg_reg[0] [2]),
        .O(\LED_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF0FFAACCF000AACC)) 
    \LED_OBUF[6]_inst_i_4 
       (.I0(\shift_reg_reg[1] [0]),
        .I1(\shift_reg_reg[0] [0]),
        .I2(\shift_reg_reg[3] [0]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\shift_reg_reg[2] [0]),
        .O(\LED_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0F5533000F5533FF)) 
    \LED_OBUF[6]_inst_i_5 
       (.I0(\shift_reg_reg[2] [3]),
        .I1(\shift_reg_reg[1] [3]),
        .I2(\shift_reg_reg[3] [3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\shift_reg_reg[0] [3]),
        .O(\LED_OBUF[6]_inst_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[0]),
        .Q(\shift_reg_reg[0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[1]),
        .Q(\shift_reg_reg[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[0][2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[2]),
        .Q(\shift_reg_reg[0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[0][3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(D[3]),
        .Q(\shift_reg_reg[0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\shift_reg_reg[0] [0]),
        .Q(\shift_reg_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\shift_reg_reg[0] [1]),
        .Q(\shift_reg_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[1][2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\shift_reg_reg[0] [2]),
        .Q(\shift_reg_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[1][3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\shift_reg_reg[0] [3]),
        .Q(\shift_reg_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\shift_reg_reg[1] [0]),
        .Q(\shift_reg_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\shift_reg_reg[1] [1]),
        .Q(\shift_reg_reg[2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[2][2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\shift_reg_reg[1] [2]),
        .Q(\shift_reg_reg[2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[2][3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\shift_reg_reg[1] [3]),
        .Q(\shift_reg_reg[2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[3][0] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\shift_reg_reg[2] [0]),
        .Q(\shift_reg_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[3][1] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\shift_reg_reg[2] [1]),
        .Q(\shift_reg_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[3][2] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\shift_reg_reg[2] [2]),
        .Q(\shift_reg_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[3][3] 
       (.C(clk_IBUF_BUFG),
        .CE(E),
        .CLR(AR),
        .D(\shift_reg_reg[2] [3]),
        .Q(\shift_reg_reg[3] [3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    \shift_times[0]_i_1 
       (.I0(\shift_times_reg[0]_1 [0]),
        .I1(\shift_times_reg[0]_1 [1]),
        .I2(\shift_times_reg[1]_0 ),
        .I3(\shift_times_reg[0]_0 ),
        .O(\shift_times[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hF444)) 
    \shift_times[1]_i_1 
       (.I0(\shift_times_reg[0]_1 [0]),
        .I1(\shift_times_reg[0]_1 [1]),
        .I2(\shift_times_reg[1]_0 ),
        .I3(\shift_times_reg[0]_0 ),
        .O(\shift_times[1]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_times_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\shift_times[0]_i_1_n_0 ),
        .Q(\shift_times_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_times_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\shift_times[1]_i_1_n_0 ),
        .Q(\shift_times_reg[1]_0 ));
endmodule

module ConstCounter
   (Q,
    anodes_OBUF,
    CLK,
    AR);
  output [1:0]Q;
  output [3:0]anodes_OBUF;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [1:0]Q;
  wire [3:0]anodes_OBUF;
  wire [1:0]counter;
  wire \counter[0]_i_1__7_n_0 ;
  wire [3:1]p_0_in__5;

  LUT4 #(
    .INIT(16'hFF7F)) 
    \anodes_OBUF[0]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(counter[1]),
        .I3(counter[0]),
        .O(anodes_OBUF[0]));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \anodes_OBUF[1]_inst_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(counter[1]),
        .I3(counter[0]),
        .O(anodes_OBUF[1]));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \anodes_OBUF[2]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(counter[1]),
        .I3(counter[0]),
        .O(anodes_OBUF[2]));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \anodes_OBUF[3]_inst_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(counter[1]),
        .I3(counter[0]),
        .O(anodes_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__7 
       (.I0(counter[0]),
        .O(\counter[0]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1__7 
       (.I0(counter[1]),
        .I1(counter[0]),
        .O(p_0_in__5[1]));
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1__1 
       (.I0(Q[0]),
        .I1(counter[0]),
        .I2(counter[1]),
        .O(p_0_in__5[2]));
  LUT4 #(
    .INIT(16'h6CCC)) 
    \counter[3]_i_1__6 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(counter[0]),
        .I3(counter[1]),
        .O(p_0_in__5[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[0]_i_1__7_n_0 ),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__5[1]),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__5[2]),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__5[3]),
        .Q(Q[1]));
endmodule

module Debouncer
   (button_debounced_reg_0,
    clk_IBUF_BUFG,
    p_0_in,
    SR);
  output button_debounced_reg_0;
  input clk_IBUF_BUFG;
  input p_0_in;
  input [0:0]SR;

  wire [0:0]SR;
  wire button_debounced_i_1__1_n_0;
  wire button_debounced_n_0;
  wire button_debounced_reg_0;
  wire clk_IBUF_BUFG;
  wire \counter[2]_i_1__2_n_0 ;
  wire [4:0]counter_reg__0;
  wire p_0_in;
  wire [4:0]p_0_in__0;

  LUT2 #(
    .INIT(4'h7)) 
    button_debounced
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .O(button_debounced_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    button_debounced_i_1__1
       (.I0(p_0_in),
        .I1(counter_reg__0[3]),
        .I2(button_debounced_n_0),
        .I3(counter_reg__0[4]),
        .I4(counter_reg__0[2]),
        .I5(button_debounced_reg_0),
        .O(button_debounced_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    button_debounced_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(button_debounced_i_1__1_n_0),
        .Q(button_debounced_reg_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__0 
       (.I0(counter_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1__0 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .O(p_0_in__0[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1__2 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[2]),
        .O(\counter[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1 
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[2]),
        .I3(counter_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
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
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(counter_reg__0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter[2]_i_1__2_n_0 ),
        .Q(counter_reg__0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(counter_reg__0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(counter_reg__0[4]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "Debouncer" *) 
module Debouncer_0
   (p_0_in,
    D,
    SR,
    Tx_WR_IBUF,
    clk_IBUF_BUFG);
  output p_0_in;
  output [0:0]D;
  output [0:0]SR;
  input Tx_WR_IBUF;
  input clk_IBUF_BUFG;

  wire [0:0]D;
  wire \FF_wire_reg_n_0_[0] ;
  wire [0:0]SR;
  wire Tx_WR_IBUF;
  wire button_debounced_i_1__3_n_0;
  wire button_debounced_n_0;
  wire clk_IBUF_BUFG;
  wire \counter[2]_i_1__3_n_0 ;
  wire [4:0]counter_reg__0;
  wire p_0_in;
  wire [4:0]p_0_in__1;
  wire p_1_in;

  FDRE #(
    .INIT(1'b0)) 
    \FF_wire_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(Tx_WR_IBUF),
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
  LUT2 #(
    .INIT(4'h7)) 
    button_debounced
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .O(button_debounced_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    button_debounced_i_1__3
       (.I0(p_0_in),
        .I1(counter_reg__0[3]),
        .I2(button_debounced_n_0),
        .I3(counter_reg__0[4]),
        .I4(counter_reg__0[2]),
        .I5(D),
        .O(button_debounced_i_1__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    button_debounced_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(button_debounced_i_1__3_n_0),
        .Q(D),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__1 
       (.I0(counter_reg__0[0]),
        .O(p_0_in__1[0]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1__1 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .O(p_0_in__1[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1__3 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[2]),
        .O(\counter[2]_i_1__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
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
    \counter[4]_i_1 
       (.I0(p_0_in),
        .I1(p_1_in),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
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
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[1]),
        .Q(counter_reg__0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter[2]_i_1__3_n_0 ),
        .Q(counter_reg__0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[3]),
        .Q(counter_reg__0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__1[4]),
        .Q(counter_reg__0[4]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "Debouncer" *) 
module Debouncer_2
   (reset_debounced,
    clk_IBUF_BUFG,
    p_0_in,
    \counter_reg[4]_0 );
  output reset_debounced;
  input clk_IBUF_BUFG;
  input p_0_in;
  input [0:0]\counter_reg[4]_0 ;

  wire button_debounced_i_1__0_n_0;
  wire button_debounced_n_0;
  wire clk_IBUF_BUFG;
  wire \counter[2]_i_1__6_n_0 ;
  wire [0:0]\counter_reg[4]_0 ;
  wire [4:0]counter_reg__0;
  wire p_0_in;
  wire [4:0]p_0_in__4;
  wire reset_debounced;

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
        .I5(reset_debounced),
        .O(button_debounced_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    button_debounced_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(button_debounced_i_1__0_n_0),
        .Q(reset_debounced),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__4 
       (.I0(counter_reg__0[0]),
        .O(p_0_in__4[0]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1__4 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .O(p_0_in__4[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1__6 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[2]),
        .O(\counter[2]_i_1__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1__3 
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[2]),
        .I3(counter_reg__0[3]),
        .O(p_0_in__4[3]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_1__3 
       (.I0(counter_reg__0[2]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[1]),
        .I3(counter_reg__0[3]),
        .I4(counter_reg__0[4]),
        .O(p_0_in__4[4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__4[0]),
        .Q(counter_reg__0[0]),
        .R(\counter_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__4[1]),
        .Q(counter_reg__0[1]),
        .R(\counter_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter[2]_i_1__6_n_0 ),
        .Q(counter_reg__0[2]),
        .R(\counter_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__4[3]),
        .Q(counter_reg__0[3]),
        .R(\counter_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__4[4]),
        .Q(counter_reg__0[4]),
        .R(\counter_reg[4]_0 ));
endmodule

(* ORIG_REF_NAME = "Debouncer" *) 
module Debouncer_3
   (D,
    clk_IBUF_BUFG,
    p_0_in_0,
    SR);
  output [0:0]D;
  input clk_IBUF_BUFG;
  input p_0_in_0;
  input [0:0]SR;

  wire [0:0]D;
  wire [0:0]SR;
  wire button_debounced_i_1__2_n_0;
  wire button_debounced_n_0;
  wire clk_IBUF_BUFG;
  wire \counter[2]_i_1__5_n_0 ;
  wire [4:0]counter_reg__0;
  wire p_0_in_0;
  wire [4:0]p_0_in__3;

  LUT2 #(
    .INIT(4'h7)) 
    button_debounced
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .O(button_debounced_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    button_debounced_i_1__2
       (.I0(p_0_in_0),
        .I1(counter_reg__0[3]),
        .I2(button_debounced_n_0),
        .I3(counter_reg__0[4]),
        .I4(counter_reg__0[2]),
        .I5(D),
        .O(button_debounced_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    button_debounced_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(button_debounced_i_1__2_n_0),
        .Q(D),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__3 
       (.I0(counter_reg__0[0]),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1__3 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .O(p_0_in__3[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1__5 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[2]),
        .O(\counter[2]_i_1__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1__2 
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[2]),
        .I3(counter_reg__0[3]),
        .O(p_0_in__3[3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_1__2 
       (.I0(counter_reg__0[2]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[1]),
        .I3(counter_reg__0[3]),
        .I4(counter_reg__0[4]),
        .O(p_0_in__3[4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__3[0]),
        .Q(counter_reg__0[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__3[1]),
        .Q(counter_reg__0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter[2]_i_1__5_n_0 ),
        .Q(counter_reg__0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__3[3]),
        .Q(counter_reg__0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__3[4]),
        .Q(counter_reg__0[4]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "Debouncer" *) 
module Debouncer_5
   (p_0_in,
    AR,
    SR,
    reset_IBUF,
    clk_IBUF_BUFG);
  output p_0_in;
  output [0:0]AR;
  output [0:0]SR;
  input reset_IBUF;
  input clk_IBUF_BUFG;

  wire [0:0]AR;
  wire \FF_wire_reg_n_0_[0] ;
  wire [0:0]SR;
  wire button_debounced_i_1_n_0;
  wire button_debounced_n_0;
  wire clk_IBUF_BUFG;
  wire \counter[2]_i_1__4_n_0 ;
  wire [4:0]counter_reg__0;
  wire p_0_in;
  wire [4:0]p_0_in__2;
  wire p_1_in;
  wire reset_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    \FF_wire_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(reset_IBUF),
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
        .I5(AR),
        .O(button_debounced_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    button_debounced_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(button_debounced_i_1_n_0),
        .Q(AR),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__2 
       (.I0(counter_reg__0[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1__2 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .O(p_0_in__2[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1__4 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[2]),
        .O(\counter[2]_i_1__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1__1 
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[2]),
        .I3(counter_reg__0[3]),
        .O(p_0_in__2[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[4]_i_1__0 
       (.I0(p_0_in),
        .I1(p_1_in),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_1__1 
       (.I0(counter_reg__0[2]),
        .I1(counter_reg__0[0]),
        .I2(counter_reg__0[1]),
        .I3(counter_reg__0[3]),
        .I4(counter_reg__0[4]),
        .O(p_0_in__2[4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__2[0]),
        .Q(counter_reg__0[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__2[1]),
        .Q(counter_reg__0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter[2]_i_1__4_n_0 ),
        .Q(counter_reg__0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__2[3]),
        .Q(counter_reg__0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(p_0_in__2[4]),
        .Q(counter_reg__0[4]),
        .R(SR));
endmodule

module FourDigitLEDdriver
   (anodes_OBUF,
    LED_OBUF,
    \shift_times_reg[1] ,
    \shift_times_reg[0] ,
    clk_IBUF_BUFG,
    Q,
    AR,
    E,
    D);
  output [3:0]anodes_OBUF;
  output [6:0]LED_OBUF;
  output \shift_times_reg[1] ;
  output \shift_times_reg[0] ;
  input clk_IBUF_BUFG;
  input [1:0]Q;
  input [0:0]AR;
  input [0:0]E;
  input [3:0]D;

  wire [0:0]AR;
  wire [3:0]D;
  wire [0:0]E;
  wire [6:0]LED_OBUF;
  wire [1:0]Q;
  wire [3:0]anodes_OBUF;
  wire clk_IBUF_BUFG;
  wire [3:2]counter;
  wire feedback;
  wire new_clk;
  wire new_clk_BUFG;
  wire \shift_times_reg[0] ;
  wire \shift_times_reg[1] ;
  wire NLW_MMCME2_BASE_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT1_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT2_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT3_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT4_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT5_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT6_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_DRDY_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_LOCKED_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_MMCME2_BASE_inst_DO_UNCONNECTED;

  CharacterDecoder CharacterDecoder_inst
       (.AR(AR),
        .D(D),
        .E(E),
        .LED_OBUF(LED_OBUF),
        .Q(counter),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\shift_times_reg[0]_0 (\shift_times_reg[0] ),
        .\shift_times_reg[0]_1 (Q),
        .\shift_times_reg[1]_0 (\shift_times_reg[1] ));
  ConstCounter ConstCounter_inst
       (.AR(AR),
        .CLK(new_clk_BUFG),
        .Q(counter),
        .anodes_OBUF(anodes_OBUF));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "BUFG_OPT " *) 
  (* XILINX_LEGACY_PRIM = "MMCME2_BASE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(6.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(10.000000),
    .CLKIN2_PERIOD(10.000000),
    .CLKOUT0_DIVIDE_F(120.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(1),
    .REF_JITTER1(0.010000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    MMCME2_BASE_inst
       (.CLKFBIN(feedback),
        .CLKFBOUT(feedback),
        .CLKFBOUTB(NLW_MMCME2_BASE_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_MMCME2_BASE_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(clk_IBUF_BUFG),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_MMCME2_BASE_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(new_clk),
        .CLKOUT0B(NLW_MMCME2_BASE_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_MMCME2_BASE_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_MMCME2_BASE_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_MMCME2_BASE_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_MMCME2_BASE_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_MMCME2_BASE_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_MMCME2_BASE_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_MMCME2_BASE_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_MMCME2_BASE_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_MMCME2_BASE_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_MMCME2_BASE_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_MMCME2_BASE_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_MMCME2_BASE_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_MMCME2_BASE_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(1'b0));
  (* LOPT_BUFG_CLOCK *) 
  (* OPT_MODIFIED = "BUFG_OPT " *) 
  BUFG new_clk_BUFG_inst
       (.I(new_clk),
        .O(new_clk_BUFG));
endmodule

module Hold_to_step
   (Q,
    clk_IBUF_BUFG,
    \FF_reg[0]_0 ,
    D);
  output [1:0]Q;
  input clk_IBUF_BUFG;
  input \FF_reg[0]_0 ;
  input [0:0]D;

  wire [0:0]D;
  wire \FF_reg[0]_0 ;
  wire [1:0]Q;
  wire clk_IBUF_BUFG;

  FDCE #(
    .INIT(1'b0)) 
    \FF_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FF_reg[0]_0 ),
        .D(D),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \FF_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\FF_reg[0]_0 ),
        .D(Q[0]),
        .Q(Q[1]));
endmodule

(* ORIG_REF_NAME = "Hold_to_step" *) 
module Hold_to_step_1
   (\FF_reg[1]_0 ,
    Q,
    \FF_reg[1]_1 ,
    CO,
    Tx_EN_IBUF,
    clk_IBUF_BUFG,
    reset_debounced,
    D);
  output \FF_reg[1]_0 ;
  output [1:0]Q;
  output \FF_reg[1]_1 ;
  input [0:0]CO;
  input Tx_EN_IBUF;
  input clk_IBUF_BUFG;
  input reset_debounced;
  input [0:0]D;

  wire [0:0]CO;
  wire [0:0]D;
  wire \FF_reg[1]_0 ;
  wire \FF_reg[1]_1 ;
  wire [1:0]Q;
  wire Tx_EN_IBUF;
  wire clk_IBUF_BUFG;
  wire reset_debounced;

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
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_cur_state[0]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\FF_reg[1]_1 ));
  LUT4 #(
    .INIT(16'hAA2A)) 
    sample_ENABLE_i_1__0
       (.I0(CO),
        .I1(Tx_EN_IBUF),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\FF_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "Hold_to_step" *) 
module Hold_to_step_4
   (E,
    Q,
    \shift_reg_reg[3][0] ,
    \shift_reg_reg[3][0]_0 ,
    clk_IBUF_BUFG,
    AR,
    D);
  output [0:0]E;
  output [1:0]Q;
  input \shift_reg_reg[3][0] ;
  input \shift_reg_reg[3][0]_0 ;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input [0:0]D;

  wire [0:0]AR;
  wire [0:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire clk_IBUF_BUFG;
  wire \shift_reg_reg[3][0] ;
  wire \shift_reg_reg[3][0]_0 ;

  FDCE #(
    .INIT(1'b0)) 
    \FF_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(D),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \FF_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[0]),
        .Q(Q[1]));
  LUT4 #(
    .INIT(16'hBBB0)) 
    \shift_reg[0][3]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\shift_reg_reg[3][0] ),
        .I3(\shift_reg_reg[3][0]_0 ),
        .O(E));
endmodule

module Listener
   (p_0_in,
    SR,
    anodes_OBUF,
    LED_OBUF,
    dp_OBUF,
    clk_IBUF_BUFG,
    TxD,
    reset_IBUF,
    Rx_EN_IBUF,
    baud_select_IBUF);
  output p_0_in;
  output [0:0]SR;
  output [3:0]anodes_OBUF;
  output [6:0]LED_OBUF;
  output dp_OBUF;
  input clk_IBUF_BUFG;
  input TxD;
  input reset_IBUF;
  input Rx_EN_IBUF;
  input [2:0]baud_select_IBUF;

  wire \CharacterDecoder_inst/shift_reg ;
  wire FourDigitLEDdriver_inst_n_11;
  wire FourDigitLEDdriver_inst_n_12;
  wire Hold_to_step_inst_n_1;
  wire Hold_to_step_inst_n_2;
  wire [6:0]LED_OBUF;
  wire Rx_EN_IBUF;
  wire Rx_VALID;
  wire [0:0]SR;
  wire TxD;
  wire [3:0]anodes_OBUF;
  wire [2:0]baud_select_IBUF;
  wire clk_IBUF_BUFG;
  wire dp_OBUF;
  wire p_0_in;
  wire reset_IBUF;
  wire reset_debounced;
  wire uart_receiver_inst_n_1;
  wire uart_receiver_inst_n_2;
  wire uart_receiver_inst_n_3;
  wire uart_receiver_inst_n_4;

  FourDigitLEDdriver FourDigitLEDdriver_inst
       (.AR(reset_debounced),
        .D({uart_receiver_inst_n_1,uart_receiver_inst_n_2,uart_receiver_inst_n_3,uart_receiver_inst_n_4}),
        .E(\CharacterDecoder_inst/shift_reg ),
        .LED_OBUF(LED_OBUF),
        .Q({Hold_to_step_inst_n_1,Hold_to_step_inst_n_2}),
        .anodes_OBUF(anodes_OBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\shift_times_reg[0] (FourDigitLEDdriver_inst_n_12),
        .\shift_times_reg[1] (FourDigitLEDdriver_inst_n_11));
  Hold_to_step_4 Hold_to_step_inst
       (.AR(reset_debounced),
        .D(Rx_VALID),
        .E(\CharacterDecoder_inst/shift_reg ),
        .Q({Hold_to_step_inst_n_1,Hold_to_step_inst_n_2}),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\shift_reg_reg[3][0] (FourDigitLEDdriver_inst_n_11),
        .\shift_reg_reg[3][0]_0 (FourDigitLEDdriver_inst_n_12));
  Debouncer_5 reset_debouncer
       (.AR(reset_debounced),
        .SR(SR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .p_0_in(p_0_in),
        .reset_IBUF(reset_IBUF));
  uart_receiver uart_receiver_inst
       (.AR(reset_debounced),
        .D(Rx_VALID),
        .\Rx_DATA_reg[7]_0 ({uart_receiver_inst_n_1,uart_receiver_inst_n_2,uart_receiver_inst_n_3,uart_receiver_inst_n_4}),
        .Rx_EN_IBUF(Rx_EN_IBUF),
        .TxD(TxD),
        .baud_select_IBUF(baud_select_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .dp_OBUF(dp_OBUF),
        .\shift_reg_reg[0][0] (FourDigitLEDdriver_inst_n_12),
        .\shift_reg_reg[0][0]_0 (FourDigitLEDdriver_inst_n_11));
endmodule

(* ECO_CHECKSUM = "20b5810a" *) 
(* NotValidForBitStream *)
module SSD_Transmittor_Driver
   (clk,
    reset,
    baud_select,
    Tx_EN,
    Rx_EN,
    Tx_WR,
    anodes,
    LED,
    dp);
  input clk;
  input reset;
  input [2:0]baud_select;
  input Tx_EN;
  input Rx_EN;
  input Tx_WR;
  output [3:0]anodes;
  output [6:0]LED;
  output dp;

  wire [1:0]FF;
  wire [6:0]LED;
  wire [6:0]LED_OBUF;
  wire Listener_inst_n_1;
  wire Rx_EN;
  wire Rx_EN_IBUF;
  wire TxD;
  wire Tx_EN;
  wire Tx_EN_IBUF;
  wire Tx_WR;
  wire Tx_WR_IBUF;
  wire [3:0]anodes;
  wire [3:0]anodes_OBUF;
  wire [2:0]baud_select;
  wire [2:0]baud_select_IBUF;
  wire button_debounced;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[1] ;
  wire dp;
  wire dp_OBUF;
  wire p_0_in;
  wire p_0_in_0;
  wire reset;
  wire reset_IBUF;
  wire reset_debouncer_n_0;
  wire sender_inst_n_0;
  wire sender_inst_n_1;
  wire write_debouncer_n_2;

initial begin
 $sdf_annotate("SenderTestModule_tb_time_impl.sdf",,,,"tool_control");
end
  Hold_to_step Hold_to_step_inst
       (.D(button_debounced),
        .\FF_reg[0]_0 (reset_debouncer_n_0),
        .Q(FF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG));
  OBUF \LED_OBUF[0]_inst 
       (.I(LED_OBUF[0]),
        .O(LED[0]));
  OBUF \LED_OBUF[1]_inst 
       (.I(LED_OBUF[1]),
        .O(LED[1]));
  OBUF \LED_OBUF[2]_inst 
       (.I(LED_OBUF[2]),
        .O(LED[2]));
  OBUF \LED_OBUF[3]_inst 
       (.I(LED_OBUF[3]),
        .O(LED[3]));
  OBUF \LED_OBUF[4]_inst 
       (.I(LED_OBUF[4]),
        .O(LED[4]));
  OBUF \LED_OBUF[5]_inst 
       (.I(LED_OBUF[5]),
        .O(LED[5]));
  OBUF \LED_OBUF[6]_inst 
       (.I(LED_OBUF[6]),
        .O(LED[6]));
  Listener Listener_inst
       (.LED_OBUF(LED_OBUF),
        .Rx_EN_IBUF(Rx_EN_IBUF),
        .SR(Listener_inst_n_1),
        .TxD(TxD),
        .anodes_OBUF(anodes_OBUF),
        .baud_select_IBUF(baud_select_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .dp_OBUF(dp_OBUF),
        .p_0_in(p_0_in),
        .reset_IBUF(reset_IBUF));
  IBUF Rx_EN_IBUF_inst
       (.I(Rx_EN),
        .O(Rx_EN_IBUF));
  IBUF Tx_EN_IBUF_inst
       (.I(Tx_EN),
        .O(Tx_EN_IBUF));
  IBUF Tx_WR_IBUF_inst
       (.I(Tx_WR),
        .O(Tx_WR_IBUF));
  OBUF \anodes_OBUF[0]_inst 
       (.I(anodes_OBUF[0]),
        .O(anodes[0]));
  OBUF \anodes_OBUF[1]_inst 
       (.I(anodes_OBUF[1]),
        .O(anodes[1]));
  OBUF \anodes_OBUF[2]_inst 
       (.I(anodes_OBUF[2]),
        .O(anodes[2]));
  OBUF \anodes_OBUF[3]_inst 
       (.I(anodes_OBUF[3]),
        .O(anodes[3]));
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
  FDPE #(
    .INIT(1'b1)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sender_inst_n_1),
        .PRE(reset_debouncer_n_0),
        .Q(\counter_reg_n_0_[0] ));
  FDPE #(
    .INIT(1'b1)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sender_inst_n_0),
        .PRE(reset_debouncer_n_0),
        .Q(\counter_reg_n_0_[1] ));
  OBUF dp_OBUF_inst
       (.I(dp_OBUF),
        .O(dp));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  Debouncer reset_debouncer
       (.SR(Listener_inst_n_1),
        .button_debounced_reg_0(reset_debouncer_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .p_0_in(p_0_in));
  Sender sender_inst
       (.Q(FF),
        .SR(write_debouncer_n_2),
        .TxD(TxD),
        .Tx_EN_IBUF(Tx_EN_IBUF),
        .baud_select_IBUF(baud_select_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\counter_reg[0] (sender_inst_n_0),
        .\counter_reg[0]_0 (sender_inst_n_1),
        .\counter_reg[4] (Listener_inst_n_1),
        .p_0_in(p_0_in),
        .p_0_in_0(p_0_in_0),
        .sync_stage1_reg(\counter_reg_n_0_[0] ),
        .sync_stage1_reg_0(\counter_reg_n_0_[1] ));
  Debouncer_0 write_debouncer
       (.D(button_debounced),
        .SR(write_debouncer_n_2),
        .Tx_WR_IBUF(Tx_WR_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .p_0_in(p_0_in_0));
endmodule

module Sender
   (\counter_reg[0] ,
    \counter_reg[0]_0 ,
    TxD,
    clk_IBUF_BUFG,
    sync_stage1_reg,
    sync_stage1_reg_0,
    Tx_EN_IBUF,
    Q,
    baud_select_IBUF,
    p_0_in,
    p_0_in_0,
    SR,
    \counter_reg[4] );
  output \counter_reg[0] ;
  output \counter_reg[0]_0 ;
  output TxD;
  input clk_IBUF_BUFG;
  input sync_stage1_reg;
  input sync_stage1_reg_0;
  input Tx_EN_IBUF;
  input [1:0]Q;
  input [2:0]baud_select_IBUF;
  input p_0_in;
  input p_0_in_0;
  input [0:0]SR;
  input [0:0]\counter_reg[4] ;

  wire Hold_to_step_inst_n_0;
  wire Hold_to_step_inst_n_1;
  wire Hold_to_step_inst_n_2;
  wire Hold_to_step_inst_n_3;
  wire [1:0]Q;
  wire [0:0]SR;
  wire TxD;
  wire Tx_EN_IBUF;
  wire [2:0]baud_select_IBUF;
  wire clk_IBUF_BUFG;
  wire \counter_reg[0] ;
  wire \counter_reg[0]_0 ;
  wire [0:0]\counter_reg[4] ;
  wire p_0_in;
  wire p_0_in_0;
  wire reset_debounced;
  wire sync_stage1_reg;
  wire sync_stage1_reg_0;
  wire uart_transmitter_inst_n_0;
  wire write_debouncer_n_0;

  Hold_to_step_1 Hold_to_step_inst
       (.CO(uart_transmitter_inst_n_0),
        .D(write_debouncer_n_0),
        .\FF_reg[1]_0 (Hold_to_step_inst_n_0),
        .\FF_reg[1]_1 (Hold_to_step_inst_n_3),
        .Q({Hold_to_step_inst_n_1,Hold_to_step_inst_n_2}),
        .Tx_EN_IBUF(Tx_EN_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .reset_debounced(reset_debounced));
  Debouncer_2 reset_debouncer
       (.clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\counter_reg[4]_0 (\counter_reg[4] ),
        .p_0_in(p_0_in),
        .reset_debounced(reset_debounced));
  uart_transmitter uart_transmitter_inst
       (.CO(uart_transmitter_inst_n_0),
        .\FSM_onehot_cur_state_reg[0]_0 (Hold_to_step_inst_n_3),
        .Q({Hold_to_step_inst_n_1,Hold_to_step_inst_n_2}),
        .TxD(TxD),
        .Tx_EN_IBUF(Tx_EN_IBUF),
        .baud_select_IBUF(baud_select_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .\counter_reg[0] (\counter_reg[0] ),
        .\counter_reg[0]_0 (\counter_reg[0]_0 ),
        .\counter_reg[0]_1 (Q),
        .reset_debounced(reset_debounced),
        .sample_ENABLE_reg(Hold_to_step_inst_n_0),
        .sync_stage1_reg(sync_stage1_reg),
        .sync_stage1_reg_0(sync_stage1_reg_0));
  Debouncer_3 write_debouncer
       (.D(write_debouncer_n_0),
        .SR(SR),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .p_0_in_0(p_0_in_0));
endmodule

module baud_controller_r
   (sample_ENABLE,
    E,
    sample_ENABLE_reg_0,
    D,
    \sample_counter_reg[3] ,
    \sample_counter_reg[2] ,
    bit_stable_reg,
    \FSM_onehot_cur_state_reg[1] ,
    \FSM_onehot_cur_state_reg[1]_0 ,
    \FSM_onehot_cur_state_reg[1]_1 ,
    clk_IBUF_BUFG,
    AR,
    Q,
    bit_stable_reg_0,
    Rx_FERROR_reg,
    cur_bit,
    Rx_EN_IBUF,
    sync_signal,
    Rx_PERROR_reg,
    Rx_PERROR_reg_0,
    baud_select_IBUF,
    prev_bit_0,
    Rx_FERROR,
    Rx_PERROR,
    Rx_VALID_reg);
  output sample_ENABLE;
  output [0:0]E;
  output [0:0]sample_ENABLE_reg_0;
  output [10:0]D;
  output \sample_counter_reg[3] ;
  output \sample_counter_reg[2] ;
  output bit_stable_reg;
  output \FSM_onehot_cur_state_reg[1] ;
  output \FSM_onehot_cur_state_reg[1]_0 ;
  output \FSM_onehot_cur_state_reg[1]_1 ;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input [12:0]Q;
  input bit_stable_reg_0;
  input Rx_FERROR_reg;
  input cur_bit;
  input Rx_EN_IBUF;
  input sync_signal;
  input Rx_PERROR_reg;
  input [3:0]Rx_PERROR_reg_0;
  input [2:0]baud_select_IBUF;
  input prev_bit_0;
  input Rx_FERROR;
  input Rx_PERROR;
  input [0:0]Rx_VALID_reg;

  wire [0:0]AR;
  wire [10:0]D;
  wire [0:0]E;
  wire \FSM_onehot_cur_state_reg[1] ;
  wire \FSM_onehot_cur_state_reg[1]_0 ;
  wire \FSM_onehot_cur_state_reg[1]_1 ;
  wire [12:0]Q;
  wire \Rx_DATA[7]_i_2_n_0 ;
  wire Rx_EN_IBUF;
  wire Rx_FERROR;
  wire Rx_FERROR0;
  wire Rx_FERROR_i_4_n_0;
  wire Rx_FERROR_reg;
  wire Rx_PERROR;
  wire Rx_PERROR_reg;
  wire [3:0]Rx_PERROR_reg_0;
  wire Rx_VALID0;
  wire [0:0]Rx_VALID_reg;
  wire [2:0]baud_select_IBUF;
  wire bit_stable_reg;
  wire bit_stable_reg_0;
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
  wire counter1_carry__0_i_2__0_n_0;
  wire counter1_carry__0_i_3__0_n_0;
  wire counter1_carry__0_i_4__0_n_0;
  wire counter1_carry__0_n_0;
  wire counter1_carry__1_i_1_n_0;
  wire counter1_carry__1_i_2_n_0;
  wire counter1_carry__1_i_3_n_0;
  wire counter1_carry__1_n_1;
  wire counter1_carry_i_1__0_n_0;
  wire counter1_carry_i_2__0_n_0;
  wire counter1_carry_i_3__0_n_0;
  wire counter1_carry_i_4_n_0;
  wire counter1_carry_n_0;
  wire cur_bit;
  wire [31:0]p_0_in__0;
  wire prev_bit_0;
  wire sample_ENABLE;
  wire sample_ENABLE_i_1_n_0;
  wire [0:0]sample_ENABLE_reg_0;
  wire \sample_counter_reg[2] ;
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

  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \FSM_onehot_cur_state[10]_i_1 
       (.I0(Q[10]),
        .I1(bit_stable_reg_0),
        .I2(\sample_counter_reg[3] ),
        .I3(Q[9]),
        .O(D[9]));
  LUT5 #(
    .INIT(32'hE2222222)) 
    \FSM_onehot_cur_state[11]_i_1 
       (.I0(Q[11]),
        .I1(\sample_counter_reg[3] ),
        .I2(bit_stable_reg_0),
        .I3(Q[10]),
        .I4(Rx_PERROR_reg),
        .O(D[10]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_onehot_cur_state[11]_i_2 
       (.I0(Rx_PERROR_reg_0[3]),
        .I1(sample_ENABLE),
        .I2(Rx_PERROR_reg_0[1]),
        .I3(Rx_PERROR_reg_0[0]),
        .I4(Rx_PERROR_reg_0[2]),
        .O(\sample_counter_reg[3] ));
  LUT6 #(
    .INIT(64'h44444444FFFFF444)) 
    \FSM_onehot_cur_state[1]_i_1 
       (.I0(\sample_counter_reg[3] ),
        .I1(Q[1]),
        .I2(Rx_EN_IBUF),
        .I3(Q[0]),
        .I4(Rx_VALID0),
        .I5(sync_signal),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_cur_state[1]_i_2 
       (.I0(\sample_counter_reg[3] ),
        .I1(Q[11]),
        .I2(bit_stable_reg_0),
        .I3(cur_bit),
        .O(Rx_VALID0));
  LUT5 #(
    .INIT(32'h08FF0800)) 
    \FSM_onehot_cur_state[2]_i_1 
       (.I0(Q[1]),
        .I1(bit_stable_reg_0),
        .I2(cur_bit),
        .I3(\sample_counter_reg[3] ),
        .I4(Q[2]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \FSM_onehot_cur_state[3]_i_1 
       (.I0(Q[3]),
        .I1(bit_stable_reg_0),
        .I2(\sample_counter_reg[3] ),
        .I3(Q[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \FSM_onehot_cur_state[4]_i_1 
       (.I0(Q[4]),
        .I1(bit_stable_reg_0),
        .I2(\sample_counter_reg[3] ),
        .I3(Q[3]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \FSM_onehot_cur_state[5]_i_1 
       (.I0(Q[5]),
        .I1(bit_stable_reg_0),
        .I2(\sample_counter_reg[3] ),
        .I3(Q[4]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \FSM_onehot_cur_state[6]_i_1 
       (.I0(Q[6]),
        .I1(bit_stable_reg_0),
        .I2(\sample_counter_reg[3] ),
        .I3(Q[5]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \FSM_onehot_cur_state[7]_i_1 
       (.I0(Q[7]),
        .I1(bit_stable_reg_0),
        .I2(\sample_counter_reg[3] ),
        .I3(Q[6]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \FSM_onehot_cur_state[8]_i_1 
       (.I0(Q[8]),
        .I1(bit_stable_reg_0),
        .I2(\sample_counter_reg[3] ),
        .I3(Q[7]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'hCA0A)) 
    \FSM_onehot_cur_state[9]_i_1 
       (.I0(Q[9]),
        .I1(bit_stable_reg_0),
        .I2(\sample_counter_reg[3] ),
        .I3(Q[8]),
        .O(D[8]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \Rx_DATA[7]_i_1 
       (.I0(\Rx_DATA[7]_i_2_n_0 ),
        .I1(Q[11]),
        .I2(Q[10]),
        .I3(Q[1]),
        .I4(Q[12]),
        .I5(Q[0]),
        .O(E));
  LUT5 #(
    .INIT(32'h40000000)) 
    \Rx_DATA[7]_i_2 
       (.I0(Rx_PERROR_reg_0[3]),
        .I1(sample_ENABLE),
        .I2(Rx_PERROR_reg_0[1]),
        .I3(Rx_PERROR_reg_0[0]),
        .I4(Rx_PERROR_reg_0[2]),
        .O(\Rx_DATA[7]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBFAA)) 
    Rx_FERROR_i_1
       (.I0(Rx_FERROR0),
        .I1(Q[1]),
        .I2(bit_stable_reg_0),
        .I3(Rx_FERROR),
        .O(\FSM_onehot_cur_state_reg[1] ));
  LUT6 #(
    .INIT(64'h00000000F1FFF111)) 
    Rx_FERROR_i_2
       (.I0(bit_stable_reg_0),
        .I1(Rx_FERROR_reg),
        .I2(Q[1]),
        .I3(cur_bit),
        .I4(Q[11]),
        .I5(Rx_FERROR_i_4_n_0),
        .O(Rx_FERROR0));
  LUT5 #(
    .INIT(32'hDF5FFFFF)) 
    Rx_FERROR_i_4
       (.I0(sample_ENABLE),
        .I1(Rx_PERROR_reg_0[1]),
        .I2(Rx_PERROR_reg_0[0]),
        .I3(Rx_PERROR_reg_0[2]),
        .I4(Rx_PERROR_reg_0[3]),
        .O(Rx_FERROR_i_4_n_0));
  LUT6 #(
    .INIT(64'h5555755500003000)) 
    Rx_PERROR_i_1
       (.I0(Q[1]),
        .I1(Rx_PERROR_reg),
        .I2(Q[10]),
        .I3(Rx_PERROR_reg_0[3]),
        .I4(\sample_counter_reg[2] ),
        .I5(Rx_PERROR),
        .O(\FSM_onehot_cur_state_reg[1]_0 ));
  LUT5 #(
    .INIT(32'hB3FF33FF)) 
    Rx_PERROR_i_2
       (.I0(Rx_PERROR_reg_0[2]),
        .I1(Rx_PERROR_reg_0[0]),
        .I2(Rx_PERROR_reg_0[1]),
        .I3(sample_ENABLE),
        .I4(Rx_PERROR_reg_0[3]),
        .O(\sample_counter_reg[2] ));
  LUT6 #(
    .INIT(64'hD5555555C0000000)) 
    Rx_VALID_i_1
       (.I0(Q[1]),
        .I1(cur_bit),
        .I2(bit_stable_reg_0),
        .I3(Q[11]),
        .I4(\sample_counter_reg[3] ),
        .I5(Rx_VALID_reg),
        .O(\FSM_onehot_cur_state_reg[1]_1 ));
  LUT5 #(
    .INIT(32'hEAEEEEEE)) 
    bit_stable_i_1
       (.I0(prev_bit_0),
        .I1(bit_stable_reg_0),
        .I2(\sample_counter_reg[3] ),
        .I3(sample_ENABLE),
        .I4(Rx_PERROR_reg_0[0]),
        .O(bit_stable_reg));
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
        .S({counter1_carry_i_1__0_n_0,counter1_carry_i_2__0_n_0,counter1_carry_i_3__0_n_0,counter1_carry_i_4_n_0}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter1_carry__0
       (.CI(counter1_carry_n_0),
        .CO({counter1_carry__0_n_0,NLW_counter1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter1_carry__0_O_UNCONNECTED[3:0]),
        .S({counter1_carry__0_i_1_n_0,counter1_carry__0_i_2__0_n_0,counter1_carry__0_i_3__0_n_0,counter1_carry__0_i_4__0_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    counter1_carry__0_i_1
       (.I0(counter[22]),
        .I1(counter[23]),
        .I2(counter[21]),
        .O(counter1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    counter1_carry__0_i_2__0
       (.I0(counter[19]),
        .I1(counter[20]),
        .I2(counter[18]),
        .O(counter1_carry__0_i_2__0_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    counter1_carry__0_i_3__0
       (.I0(counter[16]),
        .I1(counter[17]),
        .I2(counter[15]),
        .O(counter1_carry__0_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0000000411111140)) 
    counter1_carry__0_i_4__0
       (.I0(counter[13]),
        .I1(counter[12]),
        .I2(baud_select_IBUF[0]),
        .I3(baud_select_IBUF[2]),
        .I4(baud_select_IBUF[1]),
        .I5(counter[14]),
        .O(counter1_carry__0_i_4__0_n_0));
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
       (.I0(counter[30]),
        .I1(counter[31]),
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
    .INIT(64'h0000100011110221)) 
    counter1_carry_i_1__0
       (.I0(counter[10]),
        .I1(counter[11]),
        .I2(baud_select_IBUF[0]),
        .I3(baud_select_IBUF[1]),
        .I4(baud_select_IBUF[2]),
        .I5(counter[9]),
        .O(counter1_carry_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0110000010022488)) 
    counter1_carry_i_2__0
       (.I0(counter[6]),
        .I1(counter[8]),
        .I2(baud_select_IBUF[2]),
        .I3(baud_select_IBUF[1]),
        .I4(baud_select_IBUF[0]),
        .I5(counter[7]),
        .O(counter1_carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0104200080200412)) 
    counter1_carry_i_3__0
       (.I0(counter[5]),
        .I1(counter[4]),
        .I2(baud_select_IBUF[2]),
        .I3(baud_select_IBUF[1]),
        .I4(baud_select_IBUF[0]),
        .I5(counter[3]),
        .O(counter1_carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h2000442008810004)) 
    counter1_carry_i_4
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(baud_select_IBUF[1]),
        .I3(baud_select_IBUF[2]),
        .I4(baud_select_IBUF[0]),
        .I5(counter[2]),
        .O(counter1_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \counter[0]_i_1__5 
       (.I0(counter[0]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[10]_i_1 
       (.I0(counter0[10]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[10]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[11]_i_1 
       (.I0(counter0[11]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[11]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[12]_i_1 
       (.I0(counter0[12]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[12]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[13]_i_1 
       (.I0(counter0[13]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[13]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[14]_i_1 
       (.I0(counter0[14]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[14]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[15]_i_1 
       (.I0(counter0[15]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[15]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[16]_i_1 
       (.I0(counter0[16]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[16]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[17]_i_1 
       (.I0(counter0[17]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[17]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[18]_i_1 
       (.I0(counter0[18]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[18]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[19]_i_1 
       (.I0(counter0[19]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[19]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[1]_i_1__5 
       (.I0(counter0[1]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[20]_i_1 
       (.I0(counter0[20]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[20]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[21]_i_1 
       (.I0(counter0[21]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[21]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[22]_i_1 
       (.I0(counter0[22]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[22]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[23]_i_1 
       (.I0(counter0[23]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[23]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[24]_i_1 
       (.I0(counter0[24]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[24]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[25]_i_1 
       (.I0(counter0[25]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[25]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[26]_i_1 
       (.I0(counter0[26]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[26]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[27]_i_1 
       (.I0(counter0[27]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[27]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[28]_i_1 
       (.I0(counter0[28]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[28]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[29]_i_1 
       (.I0(counter0[29]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[29]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[2]_i_1 
       (.I0(counter0[2]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[30]_i_1 
       (.I0(counter0[30]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[30]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[31]_i_1 
       (.I0(counter0[31]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[31]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[3]_i_1__4 
       (.I0(counter0[3]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[4]_i_1__4 
       (.I0(counter0[4]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[5]_i_1 
       (.I0(counter0[5]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[6]_i_1 
       (.I0(counter0[6]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[7]_i_1 
       (.I0(counter0[7]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[8]_i_1 
       (.I0(counter0[8]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[8]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[9]_i_1 
       (.I0(counter0[9]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[9]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[0]),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[10]),
        .Q(counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[11]),
        .Q(counter[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[12]),
        .Q(counter[12]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[13]),
        .Q(counter[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[14]),
        .Q(counter[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[15]),
        .Q(counter[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[16]),
        .Q(counter[16]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[17]),
        .Q(counter[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[18]),
        .Q(counter[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[19]),
        .Q(counter[19]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[1]),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[20]),
        .Q(counter[20]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[21]),
        .Q(counter[21]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[22]),
        .Q(counter[22]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[23]),
        .Q(counter[23]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[24]),
        .Q(counter[24]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[25]),
        .Q(counter[25]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[26]),
        .Q(counter[26]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[27]),
        .Q(counter[27]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[28]),
        .Q(counter[28]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[29]),
        .Q(counter[29]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[2]),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[30]),
        .Q(counter[30]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[31]),
        .Q(counter[31]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[3]),
        .Q(counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[4]),
        .Q(counter[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[5]),
        .Q(counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[6]),
        .Q(counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[7]),
        .Q(counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[8]),
        .Q(counter[8]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[9]),
        .Q(counter[9]));
  LUT3 #(
    .INIT(8'h02)) 
    sample_ENABLE_i_1
       (.I0(counter1_carry__1_n_1),
        .I1(Q[0]),
        .I2(Q[12]),
        .O(sample_ENABLE_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    sample_ENABLE_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(sample_ENABLE_i_1_n_0),
        .Q(sample_ENABLE));
  LUT2 #(
    .INIT(4'h2)) 
    \sample_counter[3]_i_1 
       (.I0(sample_ENABLE),
        .I1(AR),
        .O(sample_ENABLE_reg_0));
endmodule

module baud_controller_t
   (sample_ENABLE,
    CO,
    D,
    sample_ENABLE_reg_0,
    clk_IBUF_BUFG,
    reset_debounced,
    Q,
    Tx_EN_IBUF,
    \FSM_onehot_cur_state_reg[0] ,
    \FSM_onehot_cur_state_reg[0]_0 ,
    \FSM_onehot_cur_state_reg[0]_1 ,
    baud_select_IBUF);
  output sample_ENABLE;
  output [0:0]CO;
  output [2:0]D;
  input sample_ENABLE_reg_0;
  input clk_IBUF_BUFG;
  input reset_debounced;
  input [1:0]Q;
  input Tx_EN_IBUF;
  input \FSM_onehot_cur_state_reg[0] ;
  input [2:0]\FSM_onehot_cur_state_reg[0]_0 ;
  input \FSM_onehot_cur_state_reg[0]_1 ;
  input [2:0]baud_select_IBUF;

  wire [0:0]CO;
  wire [2:0]D;
  wire \FSM_onehot_cur_state_reg[0] ;
  wire [2:0]\FSM_onehot_cur_state_reg[0]_0 ;
  wire \FSM_onehot_cur_state_reg[0]_1 ;
  wire [1:0]Q;
  wire Tx_EN_IBUF;
  wire [2:0]baud_select_IBUF;
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
  wire counter1_carry__0_i_2_n_0;
  wire counter1_carry__0_i_3_n_0;
  wire counter1_carry__0_i_4_n_0;
  wire counter1_carry__0_n_0;
  wire counter1_carry__1_i_1__0_n_0;
  wire counter1_carry__1_i_2__0_n_0;
  wire counter1_carry__1_i_3__0_n_0;
  wire counter1_carry_i_1_n_0;
  wire counter1_carry_i_2_n_0;
  wire counter1_carry_i_3_n_0;
  wire counter1_carry_i_4__0_n_0;
  wire counter1_carry_n_0;
  wire \counter[0]_i_1__6_n_0 ;
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
  wire \counter[1]_i_1__6_n_0 ;
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
  wire \counter[3]_i_1__5_n_0 ;
  wire \counter[4]_i_1__5_n_0 ;
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
  wire reset_debounced;
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
    .INIT(64'hF800FFFFF800F800)) 
    \FSM_onehot_cur_state[0]_i_1__0 
       (.I0(sample_ENABLE),
        .I1(\FSM_onehot_cur_state_reg[0] ),
        .I2(\FSM_onehot_cur_state_reg[0]_0 [2]),
        .I3(Tx_EN_IBUF),
        .I4(\FSM_onehot_cur_state_reg[0]_1 ),
        .I5(\FSM_onehot_cur_state_reg[0]_0 [0]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h5444)) 
    \FSM_onehot_cur_state[12]_i_1 
       (.I0(Tx_EN_IBUF),
        .I1(\FSM_onehot_cur_state_reg[0]_0 [2]),
        .I2(\FSM_onehot_cur_state_reg[0] ),
        .I3(sample_ENABLE),
        .O(D[2]));
  LUT5 #(
    .INIT(32'h44F44444)) 
    \FSM_onehot_cur_state[1]_i_1__0 
       (.I0(sample_ENABLE),
        .I1(\FSM_onehot_cur_state_reg[0]_0 [1]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\FSM_onehot_cur_state_reg[0]_0 [0]),
        .O(D[1]));
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
        .S({counter1_carry_i_1_n_0,counter1_carry_i_2_n_0,counter1_carry_i_3_n_0,counter1_carry_i_4__0_n_0}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter1_carry__0
       (.CI(counter1_carry_n_0),
        .CO({counter1_carry__0_n_0,NLW_counter1_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter1_carry__0_O_UNCONNECTED[3:0]),
        .S({counter1_carry__0_i_1__0_n_0,counter1_carry__0_i_2_n_0,counter1_carry__0_i_3_n_0,counter1_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    counter1_carry__0_i_1__0
       (.I0(\counter_reg_n_0_[22] ),
        .I1(\counter_reg_n_0_[23] ),
        .I2(\counter_reg_n_0_[21] ),
        .O(counter1_carry__0_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000111111110)) 
    counter1_carry__0_i_2
       (.I0(\counter_reg_n_0_[19] ),
        .I1(\counter_reg_n_0_[20] ),
        .I2(baud_select_IBUF[0]),
        .I3(baud_select_IBUF[2]),
        .I4(baud_select_IBUF[1]),
        .I5(\counter_reg_n_0_[18] ),
        .O(counter1_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h0000001E)) 
    counter1_carry__0_i_3
       (.I0(baud_select_IBUF[1]),
        .I1(baud_select_IBUF[2]),
        .I2(\counter_reg_n_0_[16] ),
        .I3(\counter_reg_n_0_[15] ),
        .I4(\counter_reg_n_0_[17] ),
        .O(counter1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000021011124002)) 
    counter1_carry__0_i_4
       (.I0(\counter_reg_n_0_[12] ),
        .I1(\counter_reg_n_0_[13] ),
        .I2(baud_select_IBUF[0]),
        .I3(baud_select_IBUF[1]),
        .I4(baud_select_IBUF[2]),
        .I5(\counter_reg_n_0_[14] ),
        .O(counter1_carry__0_i_4_n_0));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 counter1_carry__1
       (.CI(counter1_carry__0_n_0),
        .CO({NLW_counter1_carry__1_CO_UNCONNECTED[3],CO,NLW_counter1_carry__1_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_counter1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,counter1_carry__1_i_1__0_n_0,counter1_carry__1_i_2__0_n_0,counter1_carry__1_i_3__0_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    counter1_carry__1_i_1__0
       (.I0(\counter_reg_n_0_[30] ),
        .I1(\counter_reg_n_0_[31] ),
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
    .INIT(64'h0201001220804100)) 
    counter1_carry_i_1
       (.I0(\counter_reg_n_0_[9] ),
        .I1(\counter_reg_n_0_[11] ),
        .I2(baud_select_IBUF[0]),
        .I3(baud_select_IBUF[1]),
        .I4(baud_select_IBUF[2]),
        .I5(\counter_reg_n_0_[10] ),
        .O(counter1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h2000024008124001)) 
    counter1_carry_i_2
       (.I0(\counter_reg_n_0_[6] ),
        .I1(\counter_reg_n_0_[7] ),
        .I2(baud_select_IBUF[0]),
        .I3(baud_select_IBUF[1]),
        .I4(baud_select_IBUF[2]),
        .I5(\counter_reg_n_0_[8] ),
        .O(counter1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h2881424400000000)) 
    counter1_carry_i_3
       (.I0(\counter_reg_n_0_[5] ),
        .I1(\counter_reg_n_0_[4] ),
        .I2(baud_select_IBUF[2]),
        .I3(baud_select_IBUF[1]),
        .I4(baud_select_IBUF[0]),
        .I5(\counter_reg_n_0_[3] ),
        .O(counter1_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    counter1_carry_i_4__0
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .O(counter1_carry_i_4__0_n_0));
  LUT5 #(
    .INIT(32'h00004555)) 
    \counter[0]_i_1__6 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[0]_i_1__6_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[10]_i_1__0 
       (.I0(counter0_carry__1_n_6),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[10]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[11]_i_1__0 
       (.I0(counter0_carry__1_n_5),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[11]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[12]_i_1__0 
       (.I0(counter0_carry__1_n_4),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[12]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[13]_i_1__0 
       (.I0(counter0_carry__2_n_7),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[13]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[14]_i_1__0 
       (.I0(counter0_carry__2_n_6),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[14]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[15]_i_1__0 
       (.I0(counter0_carry__2_n_5),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[15]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[16]_i_1__0 
       (.I0(counter0_carry__2_n_4),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[16]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[17]_i_1__0 
       (.I0(counter0_carry__3_n_7),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[17]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[18]_i_1__0 
       (.I0(counter0_carry__3_n_6),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[18]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[19]_i_1__0 
       (.I0(counter0_carry__3_n_5),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[19]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[1]_i_1__6 
       (.I0(counter0_carry_n_7),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[1]_i_1__6_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[20]_i_1__0 
       (.I0(counter0_carry__3_n_4),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[20]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[21]_i_1__0 
       (.I0(counter0_carry__4_n_7),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[21]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[22]_i_1__0 
       (.I0(counter0_carry__4_n_6),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[22]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[23]_i_1__0 
       (.I0(counter0_carry__4_n_5),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[23]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[24]_i_1__0 
       (.I0(counter0_carry__4_n_4),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[24]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[25]_i_1__0 
       (.I0(counter0_carry__5_n_7),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[25]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[26]_i_1__0 
       (.I0(counter0_carry__5_n_6),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[26]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[27]_i_1__0 
       (.I0(counter0_carry__5_n_5),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[27]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[28]_i_1__0 
       (.I0(counter0_carry__5_n_4),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[28]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[29]_i_1__0 
       (.I0(counter0_carry__6_n_7),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[29]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[2]_i_1__0 
       (.I0(counter0_carry_n_6),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[30]_i_1__0 
       (.I0(counter0_carry__6_n_6),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[30]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[31]_i_1__0 
       (.I0(counter0_carry__6_n_5),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[31]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[3]_i_1__5 
       (.I0(counter0_carry_n_5),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[3]_i_1__5_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[4]_i_1__5 
       (.I0(counter0_carry_n_4),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[4]_i_1__5_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[5]_i_1__0 
       (.I0(counter0_carry__0_n_7),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[5]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[6]_i_1__0 
       (.I0(counter0_carry__0_n_6),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[6]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[7]_i_1__0 
       (.I0(counter0_carry__0_n_5),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[8]_i_1__0 
       (.I0(counter0_carry__0_n_4),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00008AAA)) 
    \counter[9]_i_1__0 
       (.I0(counter0_carry__1_n_7),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(CO),
        .O(\counter[9]_i_1__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[0]_i_1__6_n_0 ),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[10]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[11]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[12]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[13]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[14]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[15]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[16]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[17]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[18]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[19]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[1]_i_1__6_n_0 ),
        .Q(\counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[20]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[21]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[22]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[23]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[24]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[25]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[26]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[27]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[28]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[29]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[2]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[30]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[31]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[3]_i_1__5_n_0 ),
        .Q(\counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[4]_i_1__5_n_0 ),
        .Q(\counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[5]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[6]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[7]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[8]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(\counter[9]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    sample_ENABLE_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(sample_ENABLE_reg_0),
        .Q(sample_ENABLE));
endmodule

module synchronizer
   (sync_signal,
    D,
    prev_bit_0,
    sync_signal_reg_0,
    sync_signal_reg_1,
    TxD,
    clk_IBUF_BUFG,
    \FSM_onehot_cur_state_reg[0] ,
    cur_bit,
    Q,
    \FSM_onehot_cur_state_reg[0]_0 ,
    prev_bit_reg,
    prev_bit,
    prev_bit_reg_0,
    Rx_EN_IBUF,
    cur_bit_reg,
    sample_ENABLE,
    cur_bit_reg_0);
  output sync_signal;
  output [0:0]D;
  output prev_bit_0;
  output sync_signal_reg_0;
  output sync_signal_reg_1;
  input TxD;
  input clk_IBUF_BUFG;
  input \FSM_onehot_cur_state_reg[0] ;
  input cur_bit;
  input [2:0]Q;
  input \FSM_onehot_cur_state_reg[0]_0 ;
  input prev_bit_reg;
  input prev_bit;
  input prev_bit_reg_0;
  input Rx_EN_IBUF;
  input [0:0]cur_bit_reg;
  input sample_ENABLE;
  input cur_bit_reg_0;

  wire [0:0]D;
  wire \FSM_onehot_cur_state[0]_i_2__0_n_0 ;
  wire \FSM_onehot_cur_state_reg[0] ;
  wire \FSM_onehot_cur_state_reg[0]_0 ;
  wire [2:0]Q;
  wire Rx_EN_IBUF;
  wire TxD;
  wire clk_IBUF_BUFG;
  wire cur_bit;
  wire [0:0]cur_bit_reg;
  wire cur_bit_reg_0;
  wire prev_bit;
  wire prev_bit_0;
  wire prev_bit_reg;
  wire prev_bit_reg_0;
  wire sample_ENABLE;
  wire sync_signal;
  wire sync_signal_reg_0;
  wire sync_signal_reg_1;
  wire sync_stage1;

  LUT6 #(
    .INIT(64'hFFFFFFFFF7000000)) 
    \FSM_onehot_cur_state[0]_i_1 
       (.I0(\FSM_onehot_cur_state_reg[0] ),
        .I1(cur_bit),
        .I2(sync_signal),
        .I3(Q[1]),
        .I4(\FSM_onehot_cur_state_reg[0]_0 ),
        .I5(\FSM_onehot_cur_state[0]_i_2__0_n_0 ),
        .O(D));
  LUT4 #(
    .INIT(16'hA888)) 
    \FSM_onehot_cur_state[0]_i_2__0 
       (.I0(Rx_EN_IBUF),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(sync_signal),
        .O(\FSM_onehot_cur_state[0]_i_2__0_n_0 ));
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
  LUT5 #(
    .INIT(32'h0000D55D)) 
    prev_bit_i_2
       (.I0(prev_bit_reg),
        .I1(\FSM_onehot_cur_state_reg[0] ),
        .I2(sync_signal),
        .I3(prev_bit),
        .I4(prev_bit_reg_0),
        .O(prev_bit_0));
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
        .D(TxD),
        .Q(sync_stage1),
        .R(1'b0));
endmodule

module uart_receiver
   (D,
    \Rx_DATA_reg[7]_0 ,
    dp_OBUF,
    clk_IBUF_BUFG,
    AR,
    TxD,
    Rx_EN_IBUF,
    baud_select_IBUF,
    \shift_reg_reg[0][0] ,
    \shift_reg_reg[0][0]_0 );
  output [0:0]D;
  output [3:0]\Rx_DATA_reg[7]_0 ;
  output dp_OBUF;
  input clk_IBUF_BUFG;
  input [0:0]AR;
  input TxD;
  input Rx_EN_IBUF;
  input [2:0]baud_select_IBUF;
  input \shift_reg_reg[0][0] ;
  input \shift_reg_reg[0][0]_0 ;

  wire [0:0]AR;
  wire [0:0]D;
  wire \FSM_onehot_cur_state[11]_i_3_n_0 ;
  wire \FSM_onehot_cur_state[11]_i_4_n_0 ;
  wire \FSM_onehot_cur_state[13]_i_1_n_0 ;
  wire \FSM_onehot_cur_state_reg_n_0_[2] ;
  wire \FSM_onehot_cur_state_reg_n_0_[3] ;
  wire \FSM_onehot_cur_state_reg_n_0_[4] ;
  wire \FSM_onehot_cur_state_reg_n_0_[5] ;
  wire \FSM_onehot_cur_state_reg_n_0_[6] ;
  wire \FSM_onehot_cur_state_reg_n_0_[7] ;
  wire \FSM_onehot_cur_state_reg_n_0_[8] ;
  wire \FSM_onehot_cur_state_reg_n_0_[9] ;
  wire [7:0]Rx_DATA;
  wire Rx_DATA0;
  wire [3:0]\Rx_DATA_reg[7]_0 ;
  wire Rx_EN_IBUF;
  wire Rx_FERROR;
  wire Rx_FERROR_i_3_n_0;
  wire Rx_PERROR;
  wire TxD;
  wire baud_controller_r_inst_n_10;
  wire baud_controller_r_inst_n_11;
  wire baud_controller_r_inst_n_12;
  wire baud_controller_r_inst_n_13;
  wire baud_controller_r_inst_n_14;
  wire baud_controller_r_inst_n_15;
  wire baud_controller_r_inst_n_16;
  wire baud_controller_r_inst_n_17;
  wire baud_controller_r_inst_n_18;
  wire baud_controller_r_inst_n_19;
  wire baud_controller_r_inst_n_3;
  wire baud_controller_r_inst_n_4;
  wire baud_controller_r_inst_n_5;
  wire baud_controller_r_inst_n_6;
  wire baud_controller_r_inst_n_7;
  wire baud_controller_r_inst_n_8;
  wire baud_controller_r_inst_n_9;
  wire [2:0]baud_select_IBUF;
  wire bit_stable_reg_n_0;
  wire check_parity;
  wire clk_IBUF_BUFG;
  wire cur_bit;
  wire cur_bit_i_2_n_0;
  wire disabled;
  wire dp_OBUF;
  wire end_sequence;
  wire idle;
  wire p_0_in5_in;
  wire prev_bit;
  wire prev_bit_0;
  wire prev_bit_i_3_n_0;
  wire sample_ENABLE;
  wire sample_counter;
  wire \sample_counter[0]_i_1_n_0 ;
  wire \sample_counter[1]_i_1_n_0 ;
  wire \sample_counter[2]_i_1_n_0 ;
  wire \sample_counter[3]_i_2_n_0 ;
  wire \sample_counter_reg_n_0_[0] ;
  wire \sample_counter_reg_n_0_[1] ;
  wire \sample_counter_reg_n_0_[2] ;
  wire \shift_reg_reg[0][0] ;
  wire \shift_reg_reg[0][0]_0 ;
  wire start_sequence;
  wire sync_signal;
  wire synchronizer_inst_n_1;
  wire synchronizer_inst_n_3;
  wire synchronizer_inst_n_4;

  LUT4 #(
    .INIT(16'h9669)) 
    \FSM_onehot_cur_state[11]_i_3 
       (.I0(\FSM_onehot_cur_state[11]_i_4_n_0 ),
        .I1(Rx_DATA[6]),
        .I2(Rx_DATA[7]),
        .I3(cur_bit),
        .O(\FSM_onehot_cur_state[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \FSM_onehot_cur_state[11]_i_4 
       (.I0(Rx_DATA[5]),
        .I1(Rx_DATA[4]),
        .I2(Rx_DATA[0]),
        .I3(Rx_DATA[1]),
        .I4(Rx_DATA[2]),
        .I5(Rx_DATA[3]),
        .O(\FSM_onehot_cur_state[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \FSM_onehot_cur_state[13]_i_1 
       (.I0(idle),
        .I1(disabled),
        .I2(Rx_EN_IBUF),
        .O(\FSM_onehot_cur_state[13]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "BIT_3:00000000100000,BIT_2:00000000010000,LOCK:01000000000000,BIT_1:00000000001000,IDLE:00000000000001,DISABLED:10000000000000,END_BIT:00100000000000,BIT_0:00000000000100,START_BIT:00000000000010,BIT_6:00000100000000,PARITY:00010000000000,BIT_5:00000010000000,BIT_7:00001000000000,BIT_4:00000001000000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_cur_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(synchronizer_inst_n_1),
        .PRE(AR),
        .Q(idle));
  (* FSM_ENCODED_STATES = "BIT_3:00000000100000,BIT_2:00000000010000,LOCK:01000000000000,BIT_1:00000000001000,IDLE:00000000000001,DISABLED:10000000000000,END_BIT:00100000000000,BIT_0:00000000000100,START_BIT:00000000000010,BIT_6:00000100000000,PARITY:00010000000000,BIT_5:00000010000000,BIT_7:00001000000000,BIT_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_4),
        .Q(check_parity));
  (* FSM_ENCODED_STATES = "BIT_3:00000000100000,BIT_2:00000000010000,LOCK:01000000000000,BIT_1:00000000001000,IDLE:00000000000001,DISABLED:10000000000000,END_BIT:00100000000000,BIT_0:00000000000100,START_BIT:00000000000010,BIT_6:00000100000000,PARITY:00010000000000,BIT_5:00000010000000,BIT_7:00001000000000,BIT_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_3),
        .Q(end_sequence));
  (* FSM_ENCODED_STATES = "BIT_3:00000000100000,BIT_2:00000000010000,LOCK:01000000000000,BIT_1:00000000001000,IDLE:00000000000001,DISABLED:10000000000000,END_BIT:00100000000000,BIT_0:00000000000100,START_BIT:00000000000010,BIT_6:00000100000000,PARITY:00010000000000,BIT_5:00000010000000,BIT_7:00001000000000,BIT_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[13] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_cur_state[13]_i_1_n_0 ),
        .Q(disabled));
  (* FSM_ENCODED_STATES = "BIT_3:00000000100000,BIT_2:00000000010000,LOCK:01000000000000,BIT_1:00000000001000,IDLE:00000000000001,DISABLED:10000000000000,END_BIT:00100000000000,BIT_0:00000000000100,START_BIT:00000000000010,BIT_6:00000100000000,PARITY:00010000000000,BIT_5:00000010000000,BIT_7:00001000000000,BIT_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_13),
        .Q(start_sequence));
  (* FSM_ENCODED_STATES = "BIT_3:00000000100000,BIT_2:00000000010000,LOCK:01000000000000,BIT_1:00000000001000,IDLE:00000000000001,DISABLED:10000000000000,END_BIT:00100000000000,BIT_0:00000000000100,START_BIT:00000000000010,BIT_6:00000100000000,PARITY:00010000000000,BIT_5:00000010000000,BIT_7:00001000000000,BIT_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_12),
        .Q(\FSM_onehot_cur_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "BIT_3:00000000100000,BIT_2:00000000010000,LOCK:01000000000000,BIT_1:00000000001000,IDLE:00000000000001,DISABLED:10000000000000,END_BIT:00100000000000,BIT_0:00000000000100,START_BIT:00000000000010,BIT_6:00000100000000,PARITY:00010000000000,BIT_5:00000010000000,BIT_7:00001000000000,BIT_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_11),
        .Q(\FSM_onehot_cur_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "BIT_3:00000000100000,BIT_2:00000000010000,LOCK:01000000000000,BIT_1:00000000001000,IDLE:00000000000001,DISABLED:10000000000000,END_BIT:00100000000000,BIT_0:00000000000100,START_BIT:00000000000010,BIT_6:00000100000000,PARITY:00010000000000,BIT_5:00000010000000,BIT_7:00001000000000,BIT_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_10),
        .Q(\FSM_onehot_cur_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "BIT_3:00000000100000,BIT_2:00000000010000,LOCK:01000000000000,BIT_1:00000000001000,IDLE:00000000000001,DISABLED:10000000000000,END_BIT:00100000000000,BIT_0:00000000000100,START_BIT:00000000000010,BIT_6:00000100000000,PARITY:00010000000000,BIT_5:00000010000000,BIT_7:00001000000000,BIT_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_9),
        .Q(\FSM_onehot_cur_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "BIT_3:00000000100000,BIT_2:00000000010000,LOCK:01000000000000,BIT_1:00000000001000,IDLE:00000000000001,DISABLED:10000000000000,END_BIT:00100000000000,BIT_0:00000000000100,START_BIT:00000000000010,BIT_6:00000100000000,PARITY:00010000000000,BIT_5:00000010000000,BIT_7:00001000000000,BIT_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_8),
        .Q(\FSM_onehot_cur_state_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "BIT_3:00000000100000,BIT_2:00000000010000,LOCK:01000000000000,BIT_1:00000000001000,IDLE:00000000000001,DISABLED:10000000000000,END_BIT:00100000000000,BIT_0:00000000000100,START_BIT:00000000000010,BIT_6:00000100000000,PARITY:00010000000000,BIT_5:00000010000000,BIT_7:00001000000000,BIT_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_7),
        .Q(\FSM_onehot_cur_state_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "BIT_3:00000000100000,BIT_2:00000000010000,LOCK:01000000000000,BIT_1:00000000001000,IDLE:00000000000001,DISABLED:10000000000000,END_BIT:00100000000000,BIT_0:00000000000100,START_BIT:00000000000010,BIT_6:00000100000000,PARITY:00010000000000,BIT_5:00000010000000,BIT_7:00001000000000,BIT_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_6),
        .Q(\FSM_onehot_cur_state_reg_n_0_[8] ));
  (* FSM_ENCODED_STATES = "BIT_3:00000000100000,BIT_2:00000000010000,LOCK:01000000000000,BIT_1:00000000001000,IDLE:00000000000001,DISABLED:10000000000000,END_BIT:00100000000000,BIT_0:00000000000100,START_BIT:00000000000010,BIT_6:00000100000000,PARITY:00010000000000,BIT_5:00000010000000,BIT_7:00001000000000,BIT_4:00000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_5),
        .Q(\FSM_onehot_cur_state_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(Rx_DATA0),
        .CLR(AR),
        .D(sync_signal),
        .Q(Rx_DATA[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(Rx_DATA0),
        .CLR(AR),
        .D(Rx_DATA[0]),
        .Q(Rx_DATA[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(Rx_DATA0),
        .CLR(AR),
        .D(Rx_DATA[1]),
        .Q(Rx_DATA[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(Rx_DATA0),
        .CLR(AR),
        .D(Rx_DATA[2]),
        .Q(Rx_DATA[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(Rx_DATA0),
        .CLR(AR),
        .D(Rx_DATA[3]),
        .Q(Rx_DATA[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(Rx_DATA0),
        .CLR(AR),
        .D(Rx_DATA[4]),
        .Q(Rx_DATA[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(Rx_DATA0),
        .CLR(AR),
        .D(Rx_DATA[5]),
        .Q(Rx_DATA[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(Rx_DATA0),
        .CLR(AR),
        .D(Rx_DATA[6]),
        .Q(Rx_DATA[7]));
  LUT2 #(
    .INIT(4'hE)) 
    Rx_FERROR_i_3
       (.I0(disabled),
        .I1(idle),
        .O(Rx_FERROR_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    Rx_FERROR_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_17),
        .Q(Rx_FERROR));
  FDCE #(
    .INIT(1'b0)) 
    Rx_PERROR_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_18),
        .Q(Rx_PERROR));
  FDCE #(
    .INIT(1'b0)) 
    Rx_VALID_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_19),
        .Q(D));
  baud_controller_r baud_controller_r_inst
       (.AR(AR),
        .D({baud_controller_r_inst_n_3,baud_controller_r_inst_n_4,baud_controller_r_inst_n_5,baud_controller_r_inst_n_6,baud_controller_r_inst_n_7,baud_controller_r_inst_n_8,baud_controller_r_inst_n_9,baud_controller_r_inst_n_10,baud_controller_r_inst_n_11,baud_controller_r_inst_n_12,baud_controller_r_inst_n_13}),
        .E(Rx_DATA0),
        .\FSM_onehot_cur_state_reg[1] (baud_controller_r_inst_n_17),
        .\FSM_onehot_cur_state_reg[1]_0 (baud_controller_r_inst_n_18),
        .\FSM_onehot_cur_state_reg[1]_1 (baud_controller_r_inst_n_19),
        .Q({disabled,end_sequence,check_parity,\FSM_onehot_cur_state_reg_n_0_[9] ,\FSM_onehot_cur_state_reg_n_0_[8] ,\FSM_onehot_cur_state_reg_n_0_[7] ,\FSM_onehot_cur_state_reg_n_0_[6] ,\FSM_onehot_cur_state_reg_n_0_[5] ,\FSM_onehot_cur_state_reg_n_0_[4] ,\FSM_onehot_cur_state_reg_n_0_[3] ,\FSM_onehot_cur_state_reg_n_0_[2] ,start_sequence,idle}),
        .Rx_EN_IBUF(Rx_EN_IBUF),
        .Rx_FERROR(Rx_FERROR),
        .Rx_FERROR_reg(Rx_FERROR_i_3_n_0),
        .Rx_PERROR(Rx_PERROR),
        .Rx_PERROR_reg(\FSM_onehot_cur_state[11]_i_3_n_0 ),
        .Rx_PERROR_reg_0({p_0_in5_in,\sample_counter_reg_n_0_[2] ,\sample_counter_reg_n_0_[1] ,\sample_counter_reg_n_0_[0] }),
        .Rx_VALID_reg(D),
        .baud_select_IBUF(baud_select_IBUF),
        .bit_stable_reg(baud_controller_r_inst_n_16),
        .bit_stable_reg_0(bit_stable_reg_n_0),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .cur_bit(cur_bit),
        .prev_bit_0(prev_bit_0),
        .sample_ENABLE(sample_ENABLE),
        .sample_ENABLE_reg_0(sample_counter),
        .\sample_counter_reg[2] (baud_controller_r_inst_n_15),
        .\sample_counter_reg[3] (baud_controller_r_inst_n_14),
        .sync_signal(sync_signal));
  FDPE #(
    .INIT(1'b1)) 
    bit_stable_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(baud_controller_r_inst_n_16),
        .PRE(AR),
        .Q(bit_stable_reg_n_0));
  LUT3 #(
    .INIT(8'h7F)) 
    cur_bit_i_2
       (.I0(\sample_counter_reg_n_0_[1] ),
        .I1(\sample_counter_reg_n_0_[0] ),
        .I2(\sample_counter_reg_n_0_[2] ),
        .O(cur_bit_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    cur_bit_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(synchronizer_inst_n_3),
        .Q(cur_bit));
  LUT2 #(
    .INIT(4'h1)) 
    dp_OBUF_inst_i_1
       (.I0(Rx_FERROR),
        .I1(Rx_PERROR),
        .O(dp_OBUF));
  LUT5 #(
    .INIT(32'hFFFFFF9B)) 
    prev_bit_i_3
       (.I0(\sample_counter_reg_n_0_[1] ),
        .I1(\sample_counter_reg_n_0_[0] ),
        .I2(bit_stable_reg_n_0),
        .I3(\sample_counter_reg_n_0_[2] ),
        .I4(p_0_in5_in),
        .O(prev_bit_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    prev_bit_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(AR),
        .D(synchronizer_inst_n_4),
        .Q(prev_bit));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sample_counter[0]_i_1 
       (.I0(\sample_counter_reg_n_0_[0] ),
        .O(\sample_counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sample_counter[1]_i_1 
       (.I0(\sample_counter_reg_n_0_[0] ),
        .I1(\sample_counter_reg_n_0_[1] ),
        .O(\sample_counter[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6A)) 
    \sample_counter[2]_i_1 
       (.I0(\sample_counter_reg_n_0_[2] ),
        .I1(\sample_counter_reg_n_0_[0] ),
        .I2(\sample_counter_reg_n_0_[1] ),
        .O(\sample_counter[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \sample_counter[3]_i_2 
       (.I0(p_0_in5_in),
        .I1(\sample_counter_reg_n_0_[2] ),
        .I2(\sample_counter_reg_n_0_[0] ),
        .I3(\sample_counter_reg_n_0_[1] ),
        .O(\sample_counter[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_counter),
        .CLR(AR),
        .D(\sample_counter[0]_i_1_n_0 ),
        .Q(\sample_counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_counter),
        .CLR(AR),
        .D(\sample_counter[1]_i_1_n_0 ),
        .Q(\sample_counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_counter),
        .CLR(AR),
        .D(\sample_counter[2]_i_1_n_0 ),
        .Q(\sample_counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_counter),
        .CLR(AR),
        .D(\sample_counter[3]_i_2_n_0 ),
        .Q(p_0_in5_in));
  LUT4 #(
    .INIT(16'hFB08)) 
    \shift_reg[0][0]_i_1 
       (.I0(Rx_DATA[4]),
        .I1(\shift_reg_reg[0][0] ),
        .I2(\shift_reg_reg[0][0]_0 ),
        .I3(Rx_DATA[0]),
        .O(\Rx_DATA_reg[7]_0 [0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \shift_reg[0][1]_i_1 
       (.I0(Rx_DATA[5]),
        .I1(\shift_reg_reg[0][0] ),
        .I2(\shift_reg_reg[0][0]_0 ),
        .I3(Rx_DATA[1]),
        .O(\Rx_DATA_reg[7]_0 [1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \shift_reg[0][2]_i_1 
       (.I0(Rx_DATA[6]),
        .I1(\shift_reg_reg[0][0] ),
        .I2(\shift_reg_reg[0][0]_0 ),
        .I3(Rx_DATA[2]),
        .O(\Rx_DATA_reg[7]_0 [2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \shift_reg[0][3]_i_2 
       (.I0(Rx_DATA[7]),
        .I1(\shift_reg_reg[0][0] ),
        .I2(\shift_reg_reg[0][0]_0 ),
        .I3(Rx_DATA[3]),
        .O(\Rx_DATA_reg[7]_0 [3]));
  synchronizer synchronizer_inst
       (.D(synchronizer_inst_n_1),
        .\FSM_onehot_cur_state_reg[0] (bit_stable_reg_n_0),
        .\FSM_onehot_cur_state_reg[0]_0 (baud_controller_r_inst_n_14),
        .Q({disabled,end_sequence,idle}),
        .Rx_EN_IBUF(Rx_EN_IBUF),
        .TxD(TxD),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .cur_bit(cur_bit),
        .cur_bit_reg(p_0_in5_in),
        .cur_bit_reg_0(cur_bit_i_2_n_0),
        .prev_bit(prev_bit),
        .prev_bit_0(prev_bit_0),
        .prev_bit_reg(prev_bit_i_3_n_0),
        .prev_bit_reg_0(baud_controller_r_inst_n_15),
        .sample_ENABLE(sample_ENABLE),
        .sync_signal(sync_signal),
        .sync_signal_reg_0(synchronizer_inst_n_3),
        .sync_signal_reg_1(synchronizer_inst_n_4));
endmodule

module uart_transmitter
   (CO,
    \counter_reg[0] ,
    \counter_reg[0]_0 ,
    TxD,
    sample_ENABLE_reg,
    clk_IBUF_BUFG,
    reset_debounced,
    sync_stage1_reg,
    sync_stage1_reg_0,
    Q,
    Tx_EN_IBUF,
    \FSM_onehot_cur_state_reg[0]_0 ,
    \counter_reg[0]_1 ,
    baud_select_IBUF);
  output [0:0]CO;
  output \counter_reg[0] ;
  output \counter_reg[0]_0 ;
  output TxD;
  input sample_ENABLE_reg;
  input clk_IBUF_BUFG;
  input reset_debounced;
  input sync_stage1_reg;
  input sync_stage1_reg_0;
  input [1:0]Q;
  input Tx_EN_IBUF;
  input \FSM_onehot_cur_state_reg[0]_0 ;
  input [1:0]\counter_reg[0]_1 ;
  input [2:0]baud_select_IBUF;

  wire [0:0]CO;
  wire \FSM_onehot_cur_state_reg[0]_0 ;
  wire \FSM_onehot_cur_state_reg_n_0_[0] ;
  wire \FSM_onehot_cur_state_reg_n_0_[10] ;
  wire \FSM_onehot_cur_state_reg_n_0_[11] ;
  wire \FSM_onehot_cur_state_reg_n_0_[12] ;
  wire \FSM_onehot_cur_state_reg_n_0_[1] ;
  wire \FSM_onehot_cur_state_reg_n_0_[2] ;
  wire \FSM_onehot_cur_state_reg_n_0_[3] ;
  wire \FSM_onehot_cur_state_reg_n_0_[4] ;
  wire \FSM_onehot_cur_state_reg_n_0_[5] ;
  wire \FSM_onehot_cur_state_reg_n_0_[6] ;
  wire \FSM_onehot_cur_state_reg_n_0_[7] ;
  wire \FSM_onehot_cur_state_reg_n_0_[8] ;
  wire \FSM_onehot_cur_state_reg_n_0_[9] ;
  wire [1:0]Q;
  wire TxD;
  wire Tx_EN_IBUF;
  wire baud_controller_t_inst_n_2;
  wire baud_controller_t_inst_n_3;
  wire baud_controller_t_inst_n_4;
  wire [2:0]baud_select_IBUF;
  wire clk_IBUF_BUFG;
  wire \counter[1]_i_2_n_0 ;
  wire \counter[1]_i_3_n_0 ;
  wire \counter_reg[0] ;
  wire \counter_reg[0]_0 ;
  wire [1:0]\counter_reg[0]_1 ;
  wire reset_debounced;
  wire sample_ENABLE;
  wire sample_ENABLE_reg;
  wire sync_stage1_i_2_n_0;
  wire sync_stage1_i_3_n_0;
  wire sync_stage1_reg;
  wire sync_stage1_reg_0;

  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_cur_state_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(baud_controller_t_inst_n_4),
        .PRE(reset_debounced),
        .Q(\FSM_onehot_cur_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[10] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_ENABLE),
        .CLR(reset_debounced),
        .D(\FSM_onehot_cur_state_reg_n_0_[9] ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[10] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[11] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_ENABLE),
        .CLR(reset_debounced),
        .D(\FSM_onehot_cur_state_reg_n_0_[10] ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[11] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[12] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(baud_controller_t_inst_n_2),
        .Q(\FSM_onehot_cur_state_reg_n_0_[12] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(reset_debounced),
        .D(baud_controller_t_inst_n_3),
        .Q(\FSM_onehot_cur_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_ENABLE),
        .CLR(reset_debounced),
        .D(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_ENABLE),
        .CLR(reset_debounced),
        .D(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[4] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_ENABLE),
        .CLR(reset_debounced),
        .D(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[5] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_ENABLE),
        .CLR(reset_debounced),
        .D(\FSM_onehot_cur_state_reg_n_0_[4] ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[6] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_ENABLE),
        .CLR(reset_debounced),
        .D(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[7] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_ENABLE),
        .CLR(reset_debounced),
        .D(\FSM_onehot_cur_state_reg_n_0_[6] ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[8] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_ENABLE),
        .CLR(reset_debounced),
        .D(\FSM_onehot_cur_state_reg_n_0_[7] ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[8] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[9] 
       (.C(clk_IBUF_BUFG),
        .CE(sample_ENABLE),
        .CLR(reset_debounced),
        .D(\FSM_onehot_cur_state_reg_n_0_[8] ),
        .Q(\FSM_onehot_cur_state_reg_n_0_[9] ));
  baud_controller_t baud_controller_t_inst
       (.CO(CO),
        .D({baud_controller_t_inst_n_2,baud_controller_t_inst_n_3,baud_controller_t_inst_n_4}),
        .\FSM_onehot_cur_state_reg[0] (\FSM_onehot_cur_state_reg_n_0_[11] ),
        .\FSM_onehot_cur_state_reg[0]_0 ({\FSM_onehot_cur_state_reg_n_0_[12] ,\FSM_onehot_cur_state_reg_n_0_[1] ,\FSM_onehot_cur_state_reg_n_0_[0] }),
        .\FSM_onehot_cur_state_reg[0]_1 (\FSM_onehot_cur_state_reg[0]_0 ),
        .Q(Q),
        .Tx_EN_IBUF(Tx_EN_IBUF),
        .baud_select_IBUF(baud_select_IBUF),
        .clk_IBUF_BUFG(clk_IBUF_BUFG),
        .reset_debounced(reset_debounced),
        .sample_ENABLE(sample_ENABLE),
        .sample_ENABLE_reg_0(sample_ENABLE_reg));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[0]_i_1 
       (.I0(\counter[1]_i_2_n_0 ),
        .I1(sync_stage1_reg),
        .O(\counter_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[1]_i_1 
       (.I0(sync_stage1_reg),
        .I1(\counter[1]_i_2_n_0 ),
        .I2(sync_stage1_reg_0),
        .O(\counter_reg[0] ));
  LUT5 #(
    .INIT(32'h00000020)) 
    \counter[1]_i_2 
       (.I0(\counter[1]_i_3_n_0 ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[1] ),
        .I2(\counter_reg[0]_1 [1]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[9] ),
        .I4(sync_stage1_i_2_n_0),
        .O(\counter[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \counter[1]_i_3 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I2(\counter_reg[0]_1 [0]),
        .I3(\FSM_onehot_cur_state_reg_n_0_[11] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[7] ),
        .I5(\FSM_onehot_cur_state_reg_n_0_[10] ),
        .O(\counter[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFCFCFFF0FCFCFEFE)) 
    sync_stage1_i_1
       (.I0(sync_stage1_i_2_n_0),
        .I1(\FSM_onehot_cur_state_reg_n_0_[7] ),
        .I2(sync_stage1_i_3_n_0),
        .I3(\FSM_onehot_cur_state_reg_n_0_[10] ),
        .I4(sync_stage1_reg_0),
        .I5(sync_stage1_reg),
        .O(TxD));
  LUT4 #(
    .INIT(16'hFFFE)) 
    sync_stage1_i_2
       (.I0(\FSM_onehot_cur_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[8] ),
        .I2(\FSM_onehot_cur_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_cur_state_reg_n_0_[6] ),
        .O(sync_stage1_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    sync_stage1_i_3
       (.I0(\FSM_onehot_cur_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_cur_state_reg_n_0_[9] ),
        .I3(\FSM_onehot_cur_state_reg_n_0_[0] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[11] ),
        .I5(\FSM_onehot_cur_state_reg_n_0_[12] ),
        .O(sync_stage1_i_3_n_0));
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

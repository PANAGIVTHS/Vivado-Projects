// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Nov 11 04:49:57 2024
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
    CLK,
    AR,
    E,
    D);
  output [6:0]LED_OBUF;
  output \shift_times_reg[1]_0 ;
  output \shift_times_reg[0]_0 ;
  input [1:0]Q;
  input [1:0]\shift_times_reg[0]_1 ;
  input CLK;
  input [0:0]AR;
  input [0:0]E;
  input [3:0]D;

  wire [0:0]AR;
  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [6:0]LED_OBUF;
  wire \LED_OBUF[6]_inst_i_2_n_0 ;
  wire \LED_OBUF[6]_inst_i_3_n_0 ;
  wire \LED_OBUF[6]_inst_i_4_n_0 ;
  wire \LED_OBUF[6]_inst_i_5_n_0 ;
  wire [1:0]Q;
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
    .INIT(16'h4418)) 
    \LED_OBUF[0]_inst_i_1 
       (.I0(\LED_OBUF[6]_inst_i_2_n_0 ),
        .I1(\LED_OBUF[6]_inst_i_4_n_0 ),
        .I2(\LED_OBUF[6]_inst_i_5_n_0 ),
        .I3(\LED_OBUF[6]_inst_i_3_n_0 ),
        .O(LED_OBUF[0]));
  LUT4 #(
    .INIT(16'h5190)) 
    \LED_OBUF[1]_inst_i_1 
       (.I0(\LED_OBUF[6]_inst_i_2_n_0 ),
        .I1(\LED_OBUF[6]_inst_i_4_n_0 ),
        .I2(\LED_OBUF[6]_inst_i_5_n_0 ),
        .I3(\LED_OBUF[6]_inst_i_3_n_0 ),
        .O(LED_OBUF[1]));
  LUT4 #(
    .INIT(16'h80AE)) 
    \LED_OBUF[2]_inst_i_1 
       (.I0(\LED_OBUF[6]_inst_i_5_n_0 ),
        .I1(\LED_OBUF[6]_inst_i_4_n_0 ),
        .I2(\LED_OBUF[6]_inst_i_3_n_0 ),
        .I3(\LED_OBUF[6]_inst_i_2_n_0 ),
        .O(LED_OBUF[2]));
  LUT4 #(
    .INIT(16'h4138)) 
    \LED_OBUF[3]_inst_i_1 
       (.I0(\LED_OBUF[6]_inst_i_2_n_0 ),
        .I1(\LED_OBUF[6]_inst_i_3_n_0 ),
        .I2(\LED_OBUF[6]_inst_i_5_n_0 ),
        .I3(\LED_OBUF[6]_inst_i_4_n_0 ),
        .O(LED_OBUF[3]));
  LUT4 #(
    .INIT(16'h0226)) 
    \LED_OBUF[4]_inst_i_1 
       (.I0(\LED_OBUF[6]_inst_i_2_n_0 ),
        .I1(\LED_OBUF[6]_inst_i_3_n_0 ),
        .I2(\LED_OBUF[6]_inst_i_4_n_0 ),
        .I3(\LED_OBUF[6]_inst_i_5_n_0 ),
        .O(LED_OBUF[4]));
  LUT4 #(
    .INIT(16'h1A23)) 
    \LED_OBUF[5]_inst_i_1 
       (.I0(\LED_OBUF[6]_inst_i_2_n_0 ),
        .I1(\LED_OBUF[6]_inst_i_3_n_0 ),
        .I2(\LED_OBUF[6]_inst_i_4_n_0 ),
        .I3(\LED_OBUF[6]_inst_i_5_n_0 ),
        .O(LED_OBUF[5]));
  LUT4 #(
    .INIT(16'h6810)) 
    \LED_OBUF[6]_inst_i_1 
       (.I0(\LED_OBUF[6]_inst_i_2_n_0 ),
        .I1(\LED_OBUF[6]_inst_i_3_n_0 ),
        .I2(\LED_OBUF[6]_inst_i_4_n_0 ),
        .I3(\LED_OBUF[6]_inst_i_5_n_0 ),
        .O(LED_OBUF[6]));
  LUT6 #(
    .INIT(64'hCCFFF0AACC00F0AA)) 
    \LED_OBUF[6]_inst_i_2 
       (.I0(\shift_reg_reg[0] [3]),
        .I1(\shift_reg_reg[3] [3]),
        .I2(\shift_reg_reg[1] [3]),
        .I3(Q[0]),
        .I4(Q[1]),
        .I5(\shift_reg_reg[2] [3]),
        .O(\LED_OBUF[6]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F3300550F33FF55)) 
    \LED_OBUF[6]_inst_i_3 
       (.I0(\shift_reg_reg[0] [2]),
        .I1(\shift_reg_reg[1] [2]),
        .I2(\shift_reg_reg[3] [2]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\shift_reg_reg[2] [2]),
        .O(\LED_OBUF[6]_inst_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h3355000F3355FF0F)) 
    \LED_OBUF[6]_inst_i_4 
       (.I0(\shift_reg_reg[1] [1]),
        .I1(\shift_reg_reg[3] [1]),
        .I2(\shift_reg_reg[0] [1]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\shift_reg_reg[2] [1]),
        .O(\LED_OBUF[6]_inst_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF0CCFFAAF0CC00AA)) 
    \LED_OBUF[6]_inst_i_5 
       (.I0(\shift_reg_reg[0] [0]),
        .I1(\shift_reg_reg[1] [0]),
        .I2(\shift_reg_reg[3] [0]),
        .I3(Q[1]),
        .I4(Q[0]),
        .I5(\shift_reg_reg[2] [0]),
        .O(\LED_OBUF[6]_inst_i_5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[0][0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[0]),
        .Q(\shift_reg_reg[0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[0][1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[1]),
        .Q(\shift_reg_reg[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[0][2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[2]),
        .Q(\shift_reg_reg[0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[0][3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(D[3]),
        .Q(\shift_reg_reg[0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[1][0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\shift_reg_reg[0] [0]),
        .Q(\shift_reg_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[1][1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\shift_reg_reg[0] [1]),
        .Q(\shift_reg_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[1][2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\shift_reg_reg[0] [2]),
        .Q(\shift_reg_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[1][3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\shift_reg_reg[0] [3]),
        .Q(\shift_reg_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[2][0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\shift_reg_reg[1] [0]),
        .Q(\shift_reg_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[2][1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\shift_reg_reg[1] [1]),
        .Q(\shift_reg_reg[2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[2][2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\shift_reg_reg[1] [2]),
        .Q(\shift_reg_reg[2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[2][3] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\shift_reg_reg[1] [3]),
        .Q(\shift_reg_reg[2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[3][0] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\shift_reg_reg[2] [0]),
        .Q(\shift_reg_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[3][1] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\shift_reg_reg[2] [1]),
        .Q(\shift_reg_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[3][2] 
       (.C(CLK),
        .CE(E),
        .CLR(AR),
        .D(\shift_reg_reg[2] [2]),
        .Q(\shift_reg_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \shift_reg_reg[3][3] 
       (.C(CLK),
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
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\shift_times[0]_i_1_n_0 ),
        .Q(\shift_times_reg[0]_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \shift_times_reg[1] 
       (.C(CLK),
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
  wire \counter[0]_i_1__6_n_0 ;
  wire [3:1]p_0_in__5;

  LUT4 #(
    .INIT(16'hDFFF)) 
    \anodes_OBUF[0]_inst_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(anodes_OBUF[0]));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \anodes_OBUF[1]_inst_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(anodes_OBUF[1]));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \anodes_OBUF[2]_inst_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(anodes_OBUF[2]));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \anodes_OBUF[3]_inst_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(anodes_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__6 
       (.I0(counter[0]),
        .O(\counter[0]_i_1__6_n_0 ));
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
    .INIT(16'h6AAA)) 
    \counter[3]_i_1__6 
       (.I0(Q[1]),
        .I1(counter[1]),
        .I2(counter[0]),
        .I3(Q[0]),
        .O(p_0_in__5[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[0]_i_1__6_n_0 ),
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
    CLK,
    p_0_in,
    SR);
  output button_debounced_reg_0;
  input CLK;
  input p_0_in;
  input [0:0]SR;

  wire CLK;
  wire [0:0]SR;
  wire button_debounced_i_1__1_n_0;
  wire button_debounced_n_0;
  wire button_debounced_reg_0;
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
       (.C(CLK),
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
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(counter_reg__0[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(counter_reg__0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[2]_i_1__2_n_0 ),
        .Q(counter_reg__0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(counter_reg__0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(counter_reg__0[4]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "Debouncer" *) 
module Debouncer_0
   (D,
    CLK,
    p_0_in,
    SR);
  output [0:0]D;
  input CLK;
  input p_0_in;
  input [0:0]SR;

  wire CLK;
  wire [0:0]D;
  wire [0:0]SR;
  wire button_debounced_i_1__2_n_0;
  wire button_debounced_n_0;
  wire \counter[2]_i_1__3_n_0 ;
  wire [4:0]counter_reg__0;
  wire p_0_in;
  wire [4:0]p_0_in__1;

  LUT2 #(
    .INIT(4'h7)) 
    button_debounced
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .O(button_debounced_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    button_debounced_i_1__2
       (.I0(p_0_in),
        .I1(counter_reg__0[3]),
        .I2(button_debounced_n_0),
        .I3(counter_reg__0[4]),
        .I4(counter_reg__0[2]),
        .I5(D),
        .O(button_debounced_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    button_debounced_reg
       (.C(CLK),
        .CE(1'b1),
        .D(button_debounced_i_1__2_n_0),
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
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__1[0]),
        .Q(counter_reg__0[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__1[1]),
        .Q(counter_reg__0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[2]_i_1__3_n_0 ),
        .Q(counter_reg__0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__1[3]),
        .Q(counter_reg__0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__1[4]),
        .Q(counter_reg__0[4]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "Debouncer" *) 
module Debouncer_2
   (AR,
    CLK,
    p_0_in_0,
    \counter_reg[4]_0 );
  output [0:0]AR;
  input CLK;
  input p_0_in_0;
  input [0:0]\counter_reg[4]_0 ;

  wire [0:0]AR;
  wire CLK;
  wire button_debounced_i_1__0_n_0;
  wire button_debounced_n_0;
  wire \counter[2]_i_1__6_n_0 ;
  wire [0:0]\counter_reg[4]_0 ;
  wire [4:0]counter_reg__0;
  wire p_0_in_0;
  wire [4:0]p_0_in__4;

  LUT2 #(
    .INIT(4'h7)) 
    button_debounced
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .O(button_debounced_n_0));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    button_debounced_i_1__0
       (.I0(p_0_in_0),
        .I1(counter_reg__0[3]),
        .I2(button_debounced_n_0),
        .I3(counter_reg__0[4]),
        .I4(counter_reg__0[2]),
        .I5(AR),
        .O(button_debounced_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    button_debounced_reg
       (.C(CLK),
        .CE(1'b1),
        .D(button_debounced_i_1__0_n_0),
        .Q(AR),
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
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__4[0]),
        .Q(counter_reg__0[0]),
        .R(\counter_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__4[1]),
        .Q(counter_reg__0[1]),
        .R(\counter_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[2]_i_1__6_n_0 ),
        .Q(counter_reg__0[2]),
        .R(\counter_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__4[3]),
        .Q(counter_reg__0[3]),
        .R(\counter_reg[4]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__4[4]),
        .Q(counter_reg__0[4]),
        .R(\counter_reg[4]_0 ));
endmodule

(* ORIG_REF_NAME = "Debouncer" *) 
module Debouncer_3
   (p_0_in,
    D,
    SR,
    Tx_WR_IBUF,
    CLK);
  output p_0_in;
  output [0:0]D;
  output [0:0]SR;
  input Tx_WR_IBUF;
  input CLK;

  wire CLK;
  wire [0:0]D;
  wire \FF_wire_reg_n_0_[0] ;
  wire [0:0]SR;
  wire Tx_WR_IBUF;
  wire button_debounced_i_1__3_n_0;
  wire button_debounced_n_0;
  wire \counter[2]_i_1__5_n_0 ;
  wire [4:0]counter_reg__0;
  wire p_0_in;
  wire [4:0]p_0_in__3;
  wire p_1_in;

  FDRE #(
    .INIT(1'b0)) 
    \FF_wire_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(Tx_WR_IBUF),
        .Q(\FF_wire_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FF_wire_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FF_wire_reg_n_0_[0] ),
        .Q(p_1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FF_wire_reg[2] 
       (.C(CLK),
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
       (.C(CLK),
        .CE(1'b1),
        .D(button_debounced_i_1__3_n_0),
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
  LUT2 #(
    .INIT(4'h6)) 
    \counter[4]_i_1__0 
       (.I0(p_0_in),
        .I1(p_1_in),
        .O(SR));
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
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__3[0]),
        .Q(counter_reg__0[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__3[1]),
        .Q(counter_reg__0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[2]_i_1__5_n_0 ),
        .Q(counter_reg__0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__3[3]),
        .Q(counter_reg__0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
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
    CLK);
  output p_0_in;
  output [0:0]AR;
  output [0:0]SR;
  input reset_IBUF;
  input CLK;

  wire [0:0]AR;
  wire CLK;
  wire \FF_wire_reg_n_0_[0] ;
  wire [0:0]SR;
  wire button_debounced_i_1_n_0;
  wire button_debounced_n_0;
  wire \counter[2]_i_1__4_n_0 ;
  wire [4:0]counter_reg__0;
  wire p_0_in;
  wire [4:0]p_0_in__2;
  wire p_1_in;
  wire reset_IBUF;

  FDRE #(
    .INIT(1'b0)) 
    \FF_wire_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(reset_IBUF),
        .Q(\FF_wire_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FF_wire_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FF_wire_reg_n_0_[0] ),
        .Q(p_1_in),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FF_wire_reg[2] 
       (.C(CLK),
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
       (.C(CLK),
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
    \counter[4]_i_1 
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
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__2[0]),
        .Q(counter_reg__0[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__2[1]),
        .Q(counter_reg__0[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\counter[2]_i_1__4_n_0 ),
        .Q(counter_reg__0[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in__2[3]),
        .Q(counter_reg__0[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
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
    CLK,
    Q,
    AR,
    E,
    D);
  output [3:0]anodes_OBUF;
  output [6:0]LED_OBUF;
  output \shift_times_reg[1] ;
  output \shift_times_reg[0] ;
  input CLK;
  input [1:0]Q;
  input [0:0]AR;
  input [0:0]E;
  input [3:0]D;

  wire [0:0]AR;
  wire CLK;
  wire [3:0]D;
  wire [0:0]E;
  wire [6:0]LED_OBUF;
  wire [1:0]Q;
  wire [3:0]anodes_OBUF;
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
        .CLK(CLK),
        .D(D),
        .E(E),
        .LED_OBUF(LED_OBUF),
        .Q(counter),
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
        .CLKIN1(CLK),
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
    CLK,
    \FF_reg[0]_0 ,
    D);
  output [1:0]Q;
  input CLK;
  input \FF_reg[0]_0 ;
  input [0:0]D;

  wire CLK;
  wire [0:0]D;
  wire \FF_reg[0]_0 ;
  wire [1:0]Q;

  FDCE #(
    .INIT(1'b0)) 
    \FF_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\FF_reg[0]_0 ),
        .D(D),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \FF_reg[1] 
       (.C(CLK),
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
    CLK,
    AR,
    D);
  output \FF_reg[1]_0 ;
  output [1:0]Q;
  output \FF_reg[1]_1 ;
  input [0:0]CO;
  input Tx_EN_IBUF;
  input CLK;
  input [0:0]AR;
  input [0:0]D;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]CO;
  wire [0:0]D;
  wire \FF_reg[1]_0 ;
  wire \FF_reg[1]_1 ;
  wire [1:0]Q;
  wire Tx_EN_IBUF;

  FDCE #(
    .INIT(1'b0)) 
    \FF_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \FF_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(Q[0]),
        .Q(Q[1]));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_cur_state[0]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\FF_reg[1]_1 ));
  LUT4 #(
    .INIT(16'hA2AA)) 
    sample_ENABLE_i_1__0
       (.I0(CO),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Tx_EN_IBUF),
        .O(\FF_reg[1]_0 ));
endmodule

(* ORIG_REF_NAME = "Hold_to_step" *) 
module Hold_to_step_4
   (E,
    Q,
    \shift_reg_reg[3][0] ,
    \shift_reg_reg[3][0]_0 ,
    CLK,
    AR,
    D);
  output [0:0]E;
  output [1:0]Q;
  input \shift_reg_reg[3][0] ;
  input \shift_reg_reg[3][0]_0 ;
  input CLK;
  input [0:0]AR;
  input [0:0]D;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire [1:0]Q;
  wire \shift_reg_reg[3][0] ;
  wire \shift_reg_reg[3][0]_0 ;

  FDCE #(
    .INIT(1'b0)) 
    \FF_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \FF_reg[1] 
       (.C(CLK),
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
    CLK,
    TxD,
    reset_IBUF,
    Rx_EN_IBUF,
    baud_select_IBUF);
  output p_0_in;
  output [0:0]SR;
  output [3:0]anodes_OBUF;
  output [6:0]LED_OBUF;
  output dp_OBUF;
  input CLK;
  input TxD;
  input reset_IBUF;
  input Rx_EN_IBUF;
  input [2:0]baud_select_IBUF;

  wire CLK;
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
        .CLK(CLK),
        .D({uart_receiver_inst_n_1,uart_receiver_inst_n_2,uart_receiver_inst_n_3,uart_receiver_inst_n_4}),
        .E(\CharacterDecoder_inst/shift_reg ),
        .LED_OBUF(LED_OBUF),
        .Q({Hold_to_step_inst_n_1,Hold_to_step_inst_n_2}),
        .anodes_OBUF(anodes_OBUF),
        .\shift_times_reg[0] (FourDigitLEDdriver_inst_n_12),
        .\shift_times_reg[1] (FourDigitLEDdriver_inst_n_11));
  Hold_to_step_4 Hold_to_step_inst
       (.AR(reset_debounced),
        .CLK(CLK),
        .D(Rx_VALID),
        .E(\CharacterDecoder_inst/shift_reg ),
        .Q({Hold_to_step_inst_n_1,Hold_to_step_inst_n_2}),
        .\shift_reg_reg[3][0] (FourDigitLEDdriver_inst_n_11),
        .\shift_reg_reg[3][0]_0 (FourDigitLEDdriver_inst_n_12));
  Debouncer_5 reset_debouncer
       (.AR(reset_debounced),
        .CLK(CLK),
        .SR(SR),
        .p_0_in(p_0_in),
        .reset_IBUF(reset_IBUF));
  uart_receiver uart_receiver_inst
       (.AR(reset_debounced),
        .CLK(CLK),
        .D(Rx_VALID),
        .\Rx_DATA_reg[3]_0 ({uart_receiver_inst_n_1,uart_receiver_inst_n_2,uart_receiver_inst_n_3,uart_receiver_inst_n_4}),
        .Rx_EN_IBUF(Rx_EN_IBUF),
        .TxD(TxD),
        .baud_select_IBUF(baud_select_IBUF),
        .dp_OBUF(dp_OBUF),
        .\shift_reg_reg[0][0] (FourDigitLEDdriver_inst_n_11),
        .\shift_reg_reg[0][0]_0 (FourDigitLEDdriver_inst_n_12));
endmodule

(* ECO_CHECKSUM = "e1d0bb32" *) 
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
  wire sender_inst_n_1;
  wire sender_inst_n_2;
  wire sender_inst_n_3;

initial begin
 $sdf_annotate("SenderTestModule_tb_time_impl.sdf",,,,"tool_control");
end
  Hold_to_step Hold_to_step_inst
       (.CLK(clk_IBUF_BUFG),
        .D(button_debounced),
        .\FF_reg[0]_0 (reset_debouncer_n_0),
        .Q(FF));
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
       (.CLK(clk_IBUF_BUFG),
        .LED_OBUF(LED_OBUF),
        .Rx_EN_IBUF(Rx_EN_IBUF),
        .SR(Listener_inst_n_1),
        .TxD(TxD),
        .anodes_OBUF(anodes_OBUF),
        .baud_select_IBUF(baud_select_IBUF),
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
        .D(sender_inst_n_2),
        .PRE(reset_debouncer_n_0),
        .Q(\counter_reg_n_0_[0] ));
  FDPE #(
    .INIT(1'b1)) 
    \counter_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sender_inst_n_1),
        .PRE(reset_debouncer_n_0),
        .Q(\counter_reg_n_0_[1] ));
  OBUF dp_OBUF_inst
       (.I(dp_OBUF),
        .O(dp));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
  Debouncer reset_debouncer
       (.CLK(clk_IBUF_BUFG),
        .SR(Listener_inst_n_1),
        .button_debounced_reg_0(reset_debouncer_n_0),
        .p_0_in(p_0_in));
  Sender sender_inst
       (.CLK(clk_IBUF_BUFG),
        .Q(FF),
        .SR(sender_inst_n_3),
        .TxD(TxD),
        .Tx_EN_IBUF(Tx_EN_IBUF),
        .Tx_WR_IBUF(Tx_WR_IBUF),
        .baud_select_IBUF(baud_select_IBUF),
        .\counter_reg[0] (sender_inst_n_1),
        .\counter_reg[0]_0 (sender_inst_n_2),
        .\counter_reg[4] (Listener_inst_n_1),
        .p_0_in(p_0_in_0),
        .p_0_in_0(p_0_in),
        .sync_stage1_reg(\counter_reg_n_0_[0] ),
        .sync_stage1_reg_0(\counter_reg_n_0_[1] ));
  Debouncer_0 write_debouncer
       (.CLK(clk_IBUF_BUFG),
        .D(button_debounced),
        .SR(sender_inst_n_3),
        .p_0_in(p_0_in_0));
endmodule

module Sender
   (p_0_in,
    \counter_reg[0] ,
    \counter_reg[0]_0 ,
    SR,
    TxD,
    CLK,
    Tx_WR_IBUF,
    sync_stage1_reg,
    sync_stage1_reg_0,
    Tx_EN_IBUF,
    Q,
    baud_select_IBUF,
    p_0_in_0,
    \counter_reg[4] );
  output p_0_in;
  output \counter_reg[0] ;
  output \counter_reg[0]_0 ;
  output [0:0]SR;
  output TxD;
  input CLK;
  input Tx_WR_IBUF;
  input sync_stage1_reg;
  input sync_stage1_reg_0;
  input Tx_EN_IBUF;
  input [1:0]Q;
  input [2:0]baud_select_IBUF;
  input p_0_in_0;
  input [0:0]\counter_reg[4] ;

  wire CLK;
  wire Hold_to_step_inst_n_0;
  wire Hold_to_step_inst_n_1;
  wire Hold_to_step_inst_n_2;
  wire Hold_to_step_inst_n_3;
  wire [1:0]Q;
  wire [0:0]SR;
  wire TxD;
  wire Tx_EN_IBUF;
  wire Tx_WR_IBUF;
  wire [2:0]baud_select_IBUF;
  wire \counter_reg[0] ;
  wire \counter_reg[0]_0 ;
  wire [0:0]\counter_reg[4] ;
  wire p_0_in;
  wire p_0_in_0;
  wire reset_debounced;
  wire sync_stage1_reg;
  wire sync_stage1_reg_0;
  wire uart_transmitter_inst_n_0;
  wire write_debouncer_n_1;

  Hold_to_step_1 Hold_to_step_inst
       (.AR(reset_debounced),
        .CLK(CLK),
        .CO(uart_transmitter_inst_n_0),
        .D(write_debouncer_n_1),
        .\FF_reg[1]_0 (Hold_to_step_inst_n_0),
        .\FF_reg[1]_1 (Hold_to_step_inst_n_3),
        .Q({Hold_to_step_inst_n_1,Hold_to_step_inst_n_2}),
        .Tx_EN_IBUF(Tx_EN_IBUF));
  Debouncer_2 reset_debouncer
       (.AR(reset_debounced),
        .CLK(CLK),
        .\counter_reg[4]_0 (\counter_reg[4] ),
        .p_0_in_0(p_0_in_0));
  uart_transmitter uart_transmitter_inst
       (.AR(reset_debounced),
        .CLK(CLK),
        .CO(uart_transmitter_inst_n_0),
        .\FSM_sequential_cur_state_reg[0]_0 (Hold_to_step_inst_n_3),
        .Q({Hold_to_step_inst_n_1,Hold_to_step_inst_n_2}),
        .TxD(TxD),
        .Tx_EN_IBUF(Tx_EN_IBUF),
        .baud_select_IBUF(baud_select_IBUF),
        .\counter_reg[0] (\counter_reg[0] ),
        .\counter_reg[0]_0 (\counter_reg[0]_0 ),
        .\counter_reg[0]_1 (Q),
        .sample_ENABLE_reg(Hold_to_step_inst_n_0),
        .sync_stage1_reg(sync_stage1_reg),
        .sync_stage1_reg_0(sync_stage1_reg_0));
  Debouncer_3 write_debouncer
       (.CLK(CLK),
        .D(write_debouncer_n_1),
        .SR(SR),
        .Tx_WR_IBUF(Tx_WR_IBUF),
        .p_0_in(p_0_in));
endmodule

module baud_controller_r
   (sample_ENABLE,
    E,
    sample_ENABLE_reg_0,
    prev_bit_1,
    \sample_counter_reg[0] ,
    D,
    sync_signal_reg,
    \FSM_onehot_cur_state_reg[1] ,
    \FSM_onehot_cur_state_reg[1]_0 ,
    \FSM_onehot_cur_state_reg[1]_1 ,
    CLK,
    AR,
    bit_stable,
    Q,
    cur_bit,
    bit_stable_reg,
    prev_bit,
    sync_signal,
    Rx_PERROR_reg,
    baud_select_IBUF,
    Rx_FERROR,
    Rx_PERROR,
    Rx_VALID_reg);
  output sample_ENABLE;
  output [0:0]E;
  output [0:0]sample_ENABLE_reg_0;
  output prev_bit_1;
  output \sample_counter_reg[0] ;
  output [9:0]D;
  output sync_signal_reg;
  output \FSM_onehot_cur_state_reg[1] ;
  output \FSM_onehot_cur_state_reg[1]_0 ;
  output \FSM_onehot_cur_state_reg[1]_1 ;
  input CLK;
  input [0:0]AR;
  input bit_stable;
  input [12:0]Q;
  input cur_bit;
  input [3:0]bit_stable_reg;
  input prev_bit;
  input sync_signal;
  input Rx_PERROR_reg;
  input [2:0]baud_select_IBUF;
  input Rx_FERROR;
  input Rx_PERROR;
  input [0:0]Rx_VALID_reg;

  wire [0:0]AR;
  wire CLK;
  wire [9:0]D;
  wire [0:0]E;
  wire \FSM_onehot_cur_state_reg[1] ;
  wire \FSM_onehot_cur_state_reg[1]_0 ;
  wire \FSM_onehot_cur_state_reg[1]_1 ;
  wire [12:0]Q;
  wire Rx_FERROR;
  wire Rx_FERROR0;
  wire Rx_PERROR;
  wire Rx_PERROR_i_2_n_0;
  wire Rx_PERROR_reg;
  wire [0:0]Rx_VALID_reg;
  wire [2:0]baud_select_IBUF;
  wire bit_stable;
  wire bit_stable_i_2_n_0;
  wire [3:0]bit_stable_reg;
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
  wire \counter[0]_i_1__7_n_0 ;
  wire cur_bit;
  wire p_0_in1_in;
  wire [31:1]p_0_in__0;
  wire prev_bit;
  wire prev_bit_1;
  wire prev_bit_i_2_n_0;
  wire prev_bit_i_3_n_0;
  wire sample_ENABLE;
  wire sample_ENABLE_i_1_n_0;
  wire [0:0]sample_ENABLE_reg_0;
  wire \sample_counter_reg[0] ;
  wire sync_signal;
  wire sync_signal_reg;
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
    .INIT(16'h8F80)) 
    \FSM_onehot_cur_state[10]_i_1 
       (.I0(bit_stable),
        .I1(Q[9]),
        .I2(\sample_counter_reg[0] ),
        .I3(Q[10]),
        .O(D[8]));
  LUT5 #(
    .INIT(32'hE2222222)) 
    \FSM_onehot_cur_state[11]_i_1 
       (.I0(Q[11]),
        .I1(\sample_counter_reg[0] ),
        .I2(bit_stable),
        .I3(Q[10]),
        .I4(Rx_PERROR_reg),
        .O(D[9]));
  LUT5 #(
    .INIT(32'h80000000)) 
    \FSM_onehot_cur_state[11]_i_2 
       (.I0(bit_stable_reg[0]),
        .I1(bit_stable_reg[1]),
        .I2(bit_stable_reg[2]),
        .I3(bit_stable_reg[3]),
        .I4(sample_ENABLE),
        .O(\sample_counter_reg[0] ));
  LUT5 #(
    .INIT(32'h20FF2000)) 
    \FSM_onehot_cur_state[2]_i_1 
       (.I0(Q[1]),
        .I1(cur_bit),
        .I2(bit_stable),
        .I3(\sample_counter_reg[0] ),
        .I4(Q[2]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_onehot_cur_state[3]_i_1 
       (.I0(bit_stable),
        .I1(Q[2]),
        .I2(\sample_counter_reg[0] ),
        .I3(Q[3]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_onehot_cur_state[4]_i_1 
       (.I0(bit_stable),
        .I1(Q[3]),
        .I2(\sample_counter_reg[0] ),
        .I3(Q[4]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_onehot_cur_state[5]_i_1 
       (.I0(bit_stable),
        .I1(Q[4]),
        .I2(\sample_counter_reg[0] ),
        .I3(Q[5]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_onehot_cur_state[6]_i_1 
       (.I0(bit_stable),
        .I1(Q[5]),
        .I2(\sample_counter_reg[0] ),
        .I3(Q[6]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_onehot_cur_state[7]_i_1 
       (.I0(bit_stable),
        .I1(Q[6]),
        .I2(\sample_counter_reg[0] ),
        .I3(Q[7]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_onehot_cur_state[8]_i_1 
       (.I0(bit_stable),
        .I1(Q[7]),
        .I2(\sample_counter_reg[0] ),
        .I3(Q[8]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h8F80)) 
    \FSM_onehot_cur_state[9]_i_1 
       (.I0(bit_stable),
        .I1(Q[8]),
        .I2(\sample_counter_reg[0] ),
        .I3(Q[9]),
        .O(D[7]));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \Rx_DATA[7]_i_1 
       (.I0(p_0_in1_in),
        .I1(Q[1]),
        .I2(Q[10]),
        .I3(Q[11]),
        .I4(Q[12]),
        .I5(Q[0]),
        .O(E));
  LUT5 #(
    .INIT(32'h00008000)) 
    \Rx_DATA[7]_i_2 
       (.I0(sample_ENABLE),
        .I1(bit_stable_reg[2]),
        .I2(bit_stable_reg[1]),
        .I3(bit_stable_reg[0]),
        .I4(bit_stable_reg[3]),
        .O(p_0_in1_in));
  LUT3 #(
    .INIT(8'hDC)) 
    Rx_FERROR_i_1
       (.I0(Q[1]),
        .I1(Rx_FERROR0),
        .I2(Rx_FERROR),
        .O(\FSM_onehot_cur_state_reg[1] ));
  LUT6 #(
    .INIT(64'h0002AAAA00020002)) 
    Rx_FERROR_i_2
       (.I0(Rx_PERROR_i_2_n_0),
        .I1(bit_stable),
        .I2(Q[0]),
        .I3(Q[12]),
        .I4(cur_bit),
        .I5(Q[11]),
        .O(Rx_FERROR0));
  LUT5 #(
    .INIT(32'h75553000)) 
    Rx_PERROR_i_1
       (.I0(Q[1]),
        .I1(Rx_PERROR_reg),
        .I2(Q[10]),
        .I3(Rx_PERROR_i_2_n_0),
        .I4(Rx_PERROR),
        .O(\FSM_onehot_cur_state_reg[1]_0 ));
  LUT5 #(
    .INIT(32'h00001000)) 
    Rx_PERROR_i_2
       (.I0(bit_stable_reg[1]),
        .I1(bit_stable_reg[0]),
        .I2(sample_ENABLE),
        .I3(bit_stable_reg[3]),
        .I4(bit_stable_reg[2]),
        .O(Rx_PERROR_i_2_n_0));
  LUT6 #(
    .INIT(64'hD5555555C0000000)) 
    Rx_VALID_i_1
       (.I0(Q[1]),
        .I1(bit_stable),
        .I2(\sample_counter_reg[0] ),
        .I3(cur_bit),
        .I4(Q[11]),
        .I5(Rx_VALID_reg),
        .O(\FSM_onehot_cur_state_reg[1]_1 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAEA)) 
    bit_stable_i_1
       (.I0(bit_stable_i_2_n_0),
        .I1(sample_ENABLE),
        .I2(bit_stable_reg[0]),
        .I3(bit_stable_reg[2]),
        .I4(bit_stable_reg[3]),
        .I5(bit_stable_reg[1]),
        .O(prev_bit_1));
  LUT6 #(
    .INIT(64'hA88AAAAAAAAAAAAA)) 
    bit_stable_i_2
       (.I0(bit_stable),
        .I1(\sample_counter_reg[0] ),
        .I2(prev_bit),
        .I3(sync_signal),
        .I4(bit_stable_reg[0]),
        .I5(sample_ENABLE),
        .O(bit_stable_i_2_n_0));
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
    .INIT(64'h0000000211121110)) 
    counter1_carry__0_i_4__0
       (.I0(counter[12]),
        .I1(counter[13]),
        .I2(baud_select_IBUF[1]),
        .I3(baud_select_IBUF[2]),
        .I4(baud_select_IBUF[0]),
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
    .INIT(64'h0110000010044828)) 
    counter1_carry_i_2__0
       (.I0(counter[8]),
        .I1(counter[6]),
        .I2(baud_select_IBUF[1]),
        .I3(baud_select_IBUF[2]),
        .I4(baud_select_IBUF[0]),
        .I5(counter[7]),
        .O(counter1_carry_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0102400080400214)) 
    counter1_carry_i_3__0
       (.I0(counter[4]),
        .I1(counter[5]),
        .I2(baud_select_IBUF[2]),
        .I3(baud_select_IBUF[1]),
        .I4(baud_select_IBUF[0]),
        .I5(counter[3]),
        .O(counter1_carry_i_3__0_n_0));
  LUT6 #(
    .INIT(64'h0420240180080010)) 
    counter1_carry_i_4
       (.I0(counter[1]),
        .I1(counter[2]),
        .I2(baud_select_IBUF[0]),
        .I3(baud_select_IBUF[2]),
        .I4(baud_select_IBUF[1]),
        .I5(counter[0]),
        .O(counter1_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \counter[0]_i_1__7 
       (.I0(counter[0]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(\counter[0]_i_1__7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[14]_i_1 
       (.I0(counter0[14]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[14]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[15]_i_1 
       (.I0(counter0[15]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[15]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[16]_i_1 
       (.I0(counter0[16]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[16]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[17]_i_1 
       (.I0(counter0[17]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[17]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[18]_i_1 
       (.I0(counter0[18]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[18]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[20]_i_1 
       (.I0(counter0[20]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[20]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
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
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[3]_i_1__4 
       (.I0(counter0[3]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[4]_i_1__4 
       (.I0(counter0[4]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[4]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[5]_i_1 
       (.I0(counter0[5]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[6]_i_1 
       (.I0(counter0[6]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \counter[7]_i_1 
       (.I0(counter0[7]),
        .I1(Q[12]),
        .I2(Q[0]),
        .I3(counter1_carry__1_n_1),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
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
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[0]_i_1__7_n_0 ),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[10]),
        .Q(counter[10]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[11]),
        .Q(counter[11]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[12]),
        .Q(counter[12]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[13]),
        .Q(counter[13]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[14]),
        .Q(counter[14]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[15]),
        .Q(counter[15]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[16]),
        .Q(counter[16]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[17]),
        .Q(counter[17]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[18]),
        .Q(counter[18]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[19]),
        .Q(counter[19]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[1]),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[20]),
        .Q(counter[20]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[21]),
        .Q(counter[21]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[22]),
        .Q(counter[22]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[23]),
        .Q(counter[23]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[24]),
        .Q(counter[24]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[25]),
        .Q(counter[25]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[26]),
        .Q(counter[26]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[27]),
        .Q(counter[27]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[28]),
        .Q(counter[28]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[29]),
        .Q(counter[29]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[2]),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[30]),
        .Q(counter[30]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[31]),
        .Q(counter[31]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[3]),
        .Q(counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[4]),
        .Q(counter[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[5]),
        .Q(counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[6]),
        .Q(counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[7]),
        .Q(counter[7]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[8]),
        .Q(counter[8]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in__0[9]),
        .Q(counter[9]));
  LUT6 #(
    .INIT(64'hCCCCCCCCCCD8F0F0)) 
    prev_bit_i_1
       (.I0(prev_bit_i_2_n_0),
        .I1(sync_signal),
        .I2(prev_bit),
        .I3(\sample_counter_reg[0] ),
        .I4(bit_stable),
        .I5(prev_bit_i_3_n_0),
        .O(sync_signal_reg));
  LUT2 #(
    .INIT(4'h7)) 
    prev_bit_i_2
       (.I0(sample_ENABLE),
        .I1(bit_stable_reg[0]),
        .O(prev_bit_i_2_n_0));
  LUT5 #(
    .INIT(32'h01000000)) 
    prev_bit_i_3
       (.I0(bit_stable_reg[1]),
        .I1(bit_stable_reg[3]),
        .I2(bit_stable_reg[2]),
        .I3(bit_stable_reg[0]),
        .I4(sample_ENABLE),
        .O(prev_bit_i_3_n_0));
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
        .O(sample_ENABLE_reg_0));
endmodule

module baud_controller_t
   (CO,
    D,
    sample_ENABLE_reg_0,
    CLK,
    AR,
    Q,
    \FSM_sequential_cur_state_reg[0] ,
    Tx_EN_IBUF,
    \counter_reg[31]_0 ,
    baud_select_IBUF);
  output [0:0]CO;
  output [3:0]D;
  input sample_ENABLE_reg_0;
  input CLK;
  input [0:0]AR;
  input [3:0]Q;
  input \FSM_sequential_cur_state_reg[0] ;
  input Tx_EN_IBUF;
  input [1:0]\counter_reg[31]_0 ;
  input [2:0]baud_select_IBUF;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]CO;
  wire [3:0]D;
  wire \FSM_sequential_cur_state_reg[0] ;
  wire [3:0]Q;
  wire Tx_EN_IBUF;
  wire [2:0]baud_select_IBUF;
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
  wire \counter[0]_i_1__5_n_0 ;
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
  wire [1:0]\counter_reg[31]_0 ;
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
    .INIT(64'h0066666700666662)) 
    \FSM_sequential_cur_state[0]_i_1 
       (.I0(Q[0]),
        .I1(sample_ENABLE),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(\FSM_sequential_cur_state_reg[0] ),
        .O(D[0]));
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
    .INIT(64'h5555C0003FFFC000)) 
    \FSM_sequential_cur_state[2]_i_1 
       (.I0(Tx_EN_IBUF),
        .I1(sample_ENABLE),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h00FFFFFF80800000)) 
    \FSM_sequential_cur_state[3]_i_1 
       (.I0(sample_ENABLE),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Tx_EN_IBUF),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(D[3]));
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
        .I2(baud_select_IBUF[1]),
        .I3(baud_select_IBUF[2]),
        .I4(baud_select_IBUF[0]),
        .I5(\counter_reg_n_0_[18] ),
        .O(counter1_carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h00000056)) 
    counter1_carry__0_i_3
       (.I0(\counter_reg_n_0_[16] ),
        .I1(baud_select_IBUF[1]),
        .I2(baud_select_IBUF[2]),
        .I3(\counter_reg_n_0_[17] ),
        .I4(\counter_reg_n_0_[15] ),
        .O(counter1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000014011142004)) 
    counter1_carry__0_i_4
       (.I0(\counter_reg_n_0_[13] ),
        .I1(\counter_reg_n_0_[12] ),
        .I2(baud_select_IBUF[1]),
        .I3(baud_select_IBUF[0]),
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
    .INIT(64'h0100200020810448)) 
    counter1_carry_i_1
       (.I0(\counter_reg_n_0_[9] ),
        .I1(\counter_reg_n_0_[10] ),
        .I2(baud_select_IBUF[2]),
        .I3(baud_select_IBUF[0]),
        .I4(baud_select_IBUF[1]),
        .I5(\counter_reg_n_0_[11] ),
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
    .INIT(64'h2880002000028808)) 
    counter1_carry_i_3
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[4] ),
        .I2(baud_select_IBUF[1]),
        .I3(baud_select_IBUF[2]),
        .I4(baud_select_IBUF[0]),
        .I5(\counter_reg_n_0_[5] ),
        .O(counter1_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    counter1_carry_i_4__0
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[0] ),
        .O(counter1_carry_i_4__0_n_0));
  LUT5 #(
    .INIT(32'h00005155)) 
    \counter[0]_i_1__5 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[0]_i_1__5_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[10]_i_1__0 
       (.I0(counter0_carry__1_n_6),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[10]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[11]_i_1__0 
       (.I0(counter0_carry__1_n_5),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[11]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[12]_i_1__0 
       (.I0(counter0_carry__1_n_4),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[12]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[13]_i_1__0 
       (.I0(counter0_carry__2_n_7),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[13]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[14]_i_1__0 
       (.I0(counter0_carry__2_n_6),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[14]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[15]_i_1__0 
       (.I0(counter0_carry__2_n_5),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[15]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[16]_i_1__0 
       (.I0(counter0_carry__2_n_4),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[16]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[17]_i_1__0 
       (.I0(counter0_carry__3_n_7),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[17]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[18]_i_1__0 
       (.I0(counter0_carry__3_n_6),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[18]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[19]_i_1__0 
       (.I0(counter0_carry__3_n_5),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[19]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[1]_i_1__6 
       (.I0(counter0_carry_n_7),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[1]_i_1__6_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[20]_i_1__0 
       (.I0(counter0_carry__3_n_4),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[20]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[21]_i_1__0 
       (.I0(counter0_carry__4_n_7),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[21]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[22]_i_1__0 
       (.I0(counter0_carry__4_n_6),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[22]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[23]_i_1__0 
       (.I0(counter0_carry__4_n_5),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[23]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[24]_i_1__0 
       (.I0(counter0_carry__4_n_4),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[24]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[25]_i_1__0 
       (.I0(counter0_carry__5_n_7),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[25]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[26]_i_1__0 
       (.I0(counter0_carry__5_n_6),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[26]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[27]_i_1__0 
       (.I0(counter0_carry__5_n_5),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[27]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[28]_i_1__0 
       (.I0(counter0_carry__5_n_4),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[28]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[29]_i_1__0 
       (.I0(counter0_carry__6_n_7),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[29]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[2]_i_1__0 
       (.I0(counter0_carry_n_6),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[2]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[30]_i_1__0 
       (.I0(counter0_carry__6_n_6),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[30]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[31]_i_1__0 
       (.I0(counter0_carry__6_n_5),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[31]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[3]_i_1__5 
       (.I0(counter0_carry_n_5),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[3]_i_1__5_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[4]_i_1__5 
       (.I0(counter0_carry_n_4),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[4]_i_1__5_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[5]_i_1__0 
       (.I0(counter0_carry__0_n_7),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[5]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[6]_i_1__0 
       (.I0(counter0_carry__0_n_6),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[6]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[7]_i_1__0 
       (.I0(counter0_carry__0_n_5),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[7]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[8]_i_1__0 
       (.I0(counter0_carry__0_n_4),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[8]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h0000A2AA)) 
    \counter[9]_i_1__0 
       (.I0(counter0_carry__1_n_7),
        .I1(Tx_EN_IBUF),
        .I2(\counter_reg[31]_0 [0]),
        .I3(\counter_reg[31]_0 [1]),
        .I4(CO),
        .O(\counter[9]_i_1__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[0]_i_1__5_n_0 ),
        .Q(\counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[10]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[11]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[11] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[12]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[12] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[13]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[13] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[14]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[14] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[15]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[15] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[16]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[16] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[17]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[17] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[18]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[18] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[19]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[19] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[1]_i_1__6_n_0 ),
        .Q(\counter_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[20]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[20] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[21]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[21] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[22]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[22] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[23]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[23] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[24]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[24] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[25]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[25] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[26]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[26] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[27]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[27] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[28]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[28] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[29]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[29] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[2]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[30]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[30] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[31]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[31] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[3]_i_1__5_n_0 ),
        .Q(\counter_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[4]_i_1__5_n_0 ),
        .Q(\counter_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[5]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[6]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[6] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[7]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[7] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[8]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[8] ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[9]_i_1__0_n_0 ),
        .Q(\counter_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    sample_ENABLE_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(sample_ENABLE_reg_0),
        .Q(sample_ENABLE));
endmodule

module synchronizer
   (sync_signal,
    D,
    sync_signal_reg_0,
    TxD,
    CLK,
    Q,
    \FSM_onehot_cur_state_reg[0] ,
    \FSM_onehot_cur_state_reg[0]_0 ,
    Rx_EN_IBUF,
    \FSM_onehot_cur_state_reg[0]_1 ,
    bit_stable,
    cur_bit,
    sample_ENABLE,
    cur_bit_reg,
    cur_bit_reg_0);
  output sync_signal;
  output [1:0]D;
  output sync_signal_reg_0;
  input TxD;
  input CLK;
  input [6:0]Q;
  input \FSM_onehot_cur_state_reg[0] ;
  input \FSM_onehot_cur_state_reg[0]_0 ;
  input Rx_EN_IBUF;
  input \FSM_onehot_cur_state_reg[0]_1 ;
  input bit_stable;
  input cur_bit;
  input sample_ENABLE;
  input cur_bit_reg;
  input [0:0]cur_bit_reg_0;

  wire CLK;
  wire [1:0]D;
  wire \FSM_onehot_cur_state[0]_i_2_n_0 ;
  wire \FSM_onehot_cur_state[0]_i_3_n_0 ;
  wire \FSM_onehot_cur_state[0]_i_4_n_0 ;
  wire \FSM_onehot_cur_state[1]_i_2_n_0 ;
  wire \FSM_onehot_cur_state_reg[0] ;
  wire \FSM_onehot_cur_state_reg[0]_0 ;
  wire \FSM_onehot_cur_state_reg[0]_1 ;
  wire [6:0]Q;
  wire Rx_EN_IBUF;
  wire TxD;
  wire bit_stable;
  wire cur_bit;
  wire cur_bit_reg;
  wire [0:0]cur_bit_reg_0;
  wire sample_ENABLE;
  wire sync_signal;
  wire sync_signal_reg_0;
  wire sync_stage1;

  LUT5 #(
    .INIT(32'hFFFFF200)) 
    \FSM_onehot_cur_state[0]_i_1 
       (.I0(Q[4]),
        .I1(\FSM_onehot_cur_state_reg[0] ),
        .I2(\FSM_onehot_cur_state[0]_i_2_n_0 ),
        .I3(\FSM_onehot_cur_state_reg[0]_0 ),
        .I4(\FSM_onehot_cur_state[0]_i_3_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hAAAAAAAAFFFFFFFE)) 
    \FSM_onehot_cur_state[0]_i_2 
       (.I0(\FSM_onehot_cur_state[0]_i_4_n_0 ),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(\FSM_onehot_cur_state_reg[0]_1 ),
        .I5(bit_stable),
        .O(\FSM_onehot_cur_state[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hA888)) 
    \FSM_onehot_cur_state[0]_i_3 
       (.I0(Rx_EN_IBUF),
        .I1(Q[6]),
        .I2(Q[0]),
        .I3(sync_signal),
        .O(\FSM_onehot_cur_state[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFCF8CCC)) 
    \FSM_onehot_cur_state[0]_i_4 
       (.I0(sync_signal),
        .I1(Q[5]),
        .I2(bit_stable),
        .I3(cur_bit),
        .I4(Q[1]),
        .O(\FSM_onehot_cur_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h55D555D5FFFF00C0)) 
    \FSM_onehot_cur_state[1]_i_1 
       (.I0(\FSM_onehot_cur_state[1]_i_2_n_0 ),
        .I1(Q[0]),
        .I2(Rx_EN_IBUF),
        .I3(sync_signal),
        .I4(Q[1]),
        .I5(\FSM_onehot_cur_state_reg[0]_0 ),
        .O(D[1]));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \FSM_onehot_cur_state[1]_i_2 
       (.I0(Q[5]),
        .I1(bit_stable),
        .I2(cur_bit),
        .I3(sync_signal),
        .O(\FSM_onehot_cur_state[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    cur_bit_i_1
       (.I0(sync_signal),
        .I1(sample_ENABLE),
        .I2(cur_bit_reg),
        .I3(cur_bit_reg_0),
        .I4(cur_bit),
        .O(sync_signal_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    sync_signal_reg
       (.C(CLK),
        .CE(1'b1),
        .D(sync_stage1),
        .Q(sync_signal),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    sync_stage1_reg
       (.C(CLK),
        .CE(1'b1),
        .D(TxD),
        .Q(sync_stage1),
        .R(1'b0));
endmodule

module uart_receiver
   (D,
    \Rx_DATA_reg[3]_0 ,
    dp_OBUF,
    CLK,
    AR,
    TxD,
    Rx_EN_IBUF,
    baud_select_IBUF,
    \shift_reg_reg[0][0] ,
    \shift_reg_reg[0][0]_0 );
  output [0:0]D;
  output [3:0]\Rx_DATA_reg[3]_0 ;
  output dp_OBUF;
  input CLK;
  input [0:0]AR;
  input TxD;
  input Rx_EN_IBUF;
  input [2:0]baud_select_IBUF;
  input \shift_reg_reg[0][0] ;
  input \shift_reg_reg[0][0]_0 ;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire \FSM_onehot_cur_state[0]_i_5_n_0 ;
  wire \FSM_onehot_cur_state[11]_i_3_n_0 ;
  wire \FSM_onehot_cur_state[11]_i_4_n_0 ;
  wire \FSM_onehot_cur_state[12]_i_1_n_0 ;
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
  wire [3:0]\Rx_DATA_reg[3]_0 ;
  wire Rx_EN_IBUF;
  wire Rx_FERROR;
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
  wire baud_controller_r_inst_n_4;
  wire baud_controller_r_inst_n_5;
  wire baud_controller_r_inst_n_6;
  wire baud_controller_r_inst_n_7;
  wire baud_controller_r_inst_n_8;
  wire baud_controller_r_inst_n_9;
  wire [2:0]baud_select_IBUF;
  wire bit_stable;
  wire check_parity;
  wire cur_bit;
  wire cur_bit_i_2_n_0;
  wire disabled;
  wire dp_OBUF;
  wire end_sequence;
  wire idle;
  wire prev_bit;
  wire prev_bit_1;
  wire sample_ENABLE;
  wire [3:1]sample_counter;
  wire \sample_counter[0]_i_1_n_0 ;
  wire \sample_counter[1]_i_1_n_0 ;
  wire \sample_counter[2]_i_1_n_0 ;
  wire \sample_counter[3]_i_2_n_0 ;
  wire sample_counter_0;
  wire \sample_counter_reg_n_0_[0] ;
  wire \shift_reg_reg[0][0] ;
  wire \shift_reg_reg[0][0]_0 ;
  wire start_sequence;
  wire sync_signal;
  wire synchronizer_inst_n_1;
  wire synchronizer_inst_n_2;
  wire synchronizer_inst_n_3;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_cur_state[0]_i_5 
       (.I0(\FSM_onehot_cur_state_reg_n_0_[8] ),
        .I1(\FSM_onehot_cur_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_cur_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_cur_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_cur_state_reg_n_0_[4] ),
        .I5(\FSM_onehot_cur_state_reg_n_0_[9] ),
        .O(\FSM_onehot_cur_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h9669699669969669)) 
    \FSM_onehot_cur_state[11]_i_3 
       (.I0(cur_bit),
        .I1(\FSM_onehot_cur_state[11]_i_4_n_0 ),
        .I2(Rx_DATA[1]),
        .I3(Rx_DATA[0]),
        .I4(Rx_DATA[3]),
        .I5(Rx_DATA[2]),
        .O(\FSM_onehot_cur_state[11]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \FSM_onehot_cur_state[11]_i_4 
       (.I0(Rx_DATA[5]),
        .I1(Rx_DATA[4]),
        .I2(Rx_DATA[7]),
        .I3(Rx_DATA[6]),
        .O(\FSM_onehot_cur_state[11]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \FSM_onehot_cur_state[12]_i_1 
       (.I0(idle),
        .I1(disabled),
        .I2(Rx_EN_IBUF),
        .O(\FSM_onehot_cur_state[12]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_cur_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(synchronizer_inst_n_2),
        .PRE(AR),
        .Q(idle));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_6),
        .Q(check_parity));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_5),
        .Q(end_sequence));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_cur_state[12]_i_1_n_0 ),
        .Q(disabled));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(synchronizer_inst_n_1),
        .Q(start_sequence));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_14),
        .Q(\FSM_onehot_cur_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_13),
        .Q(\FSM_onehot_cur_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_12),
        .Q(\FSM_onehot_cur_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_11),
        .Q(\FSM_onehot_cur_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_10),
        .Q(\FSM_onehot_cur_state_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_9),
        .Q(\FSM_onehot_cur_state_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_8),
        .Q(\FSM_onehot_cur_state_reg_n_0_[8] ));
  (* FSM_ENCODED_STATES = "BIT_2:0000000010000,BIT_3:0000000100000,BIT_1:0000000001000,IDLE:0000000000001,DISABLED:1000000000000,END_BIT:0100000000000,BIT_0:0000000000100,START_BIT:0000000000010,BIT_6:0000100000000,PARITY:0010000000000,BIT_5:0000010000000,BIT_7:0001000000000,BIT_4:0000001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_cur_state_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_7),
        .Q(\FSM_onehot_cur_state_reg_n_0_[9] ));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[0] 
       (.C(CLK),
        .CE(Rx_DATA0),
        .CLR(AR),
        .D(sync_signal),
        .Q(Rx_DATA[0]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[1] 
       (.C(CLK),
        .CE(Rx_DATA0),
        .CLR(AR),
        .D(Rx_DATA[0]),
        .Q(Rx_DATA[1]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[2] 
       (.C(CLK),
        .CE(Rx_DATA0),
        .CLR(AR),
        .D(Rx_DATA[1]),
        .Q(Rx_DATA[2]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[3] 
       (.C(CLK),
        .CE(Rx_DATA0),
        .CLR(AR),
        .D(Rx_DATA[2]),
        .Q(Rx_DATA[3]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[4] 
       (.C(CLK),
        .CE(Rx_DATA0),
        .CLR(AR),
        .D(Rx_DATA[3]),
        .Q(Rx_DATA[4]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[5] 
       (.C(CLK),
        .CE(Rx_DATA0),
        .CLR(AR),
        .D(Rx_DATA[4]),
        .Q(Rx_DATA[5]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[6] 
       (.C(CLK),
        .CE(Rx_DATA0),
        .CLR(AR),
        .D(Rx_DATA[5]),
        .Q(Rx_DATA[6]));
  FDCE #(
    .INIT(1'b0)) 
    \Rx_DATA_reg[7] 
       (.C(CLK),
        .CE(Rx_DATA0),
        .CLR(AR),
        .D(Rx_DATA[6]),
        .Q(Rx_DATA[7]));
  FDCE #(
    .INIT(1'b0)) 
    Rx_FERROR_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_16),
        .Q(Rx_FERROR));
  FDCE #(
    .INIT(1'b0)) 
    Rx_PERROR_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_17),
        .Q(Rx_PERROR));
  FDCE #(
    .INIT(1'b0)) 
    Rx_VALID_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_18),
        .Q(D));
  baud_controller_r baud_controller_r_inst
       (.AR(AR),
        .CLK(CLK),
        .D({baud_controller_r_inst_n_5,baud_controller_r_inst_n_6,baud_controller_r_inst_n_7,baud_controller_r_inst_n_8,baud_controller_r_inst_n_9,baud_controller_r_inst_n_10,baud_controller_r_inst_n_11,baud_controller_r_inst_n_12,baud_controller_r_inst_n_13,baud_controller_r_inst_n_14}),
        .E(Rx_DATA0),
        .\FSM_onehot_cur_state_reg[1] (baud_controller_r_inst_n_16),
        .\FSM_onehot_cur_state_reg[1]_0 (baud_controller_r_inst_n_17),
        .\FSM_onehot_cur_state_reg[1]_1 (baud_controller_r_inst_n_18),
        .Q({disabled,end_sequence,check_parity,\FSM_onehot_cur_state_reg_n_0_[9] ,\FSM_onehot_cur_state_reg_n_0_[8] ,\FSM_onehot_cur_state_reg_n_0_[7] ,\FSM_onehot_cur_state_reg_n_0_[6] ,\FSM_onehot_cur_state_reg_n_0_[5] ,\FSM_onehot_cur_state_reg_n_0_[4] ,\FSM_onehot_cur_state_reg_n_0_[3] ,\FSM_onehot_cur_state_reg_n_0_[2] ,start_sequence,idle}),
        .Rx_FERROR(Rx_FERROR),
        .Rx_PERROR(Rx_PERROR),
        .Rx_PERROR_reg(\FSM_onehot_cur_state[11]_i_3_n_0 ),
        .Rx_VALID_reg(D),
        .baud_select_IBUF(baud_select_IBUF),
        .bit_stable(bit_stable),
        .bit_stable_reg({sample_counter,\sample_counter_reg_n_0_[0] }),
        .cur_bit(cur_bit),
        .prev_bit(prev_bit),
        .prev_bit_1(prev_bit_1),
        .sample_ENABLE(sample_ENABLE),
        .sample_ENABLE_reg_0(sample_counter_0),
        .\sample_counter_reg[0] (baud_controller_r_inst_n_4),
        .sync_signal(sync_signal),
        .sync_signal_reg(baud_controller_r_inst_n_15));
  FDPE #(
    .INIT(1'b1)) 
    bit_stable_reg
       (.C(CLK),
        .CE(1'b1),
        .D(prev_bit_1),
        .PRE(AR),
        .Q(bit_stable));
  LUT3 #(
    .INIT(8'h80)) 
    cur_bit_i_2
       (.I0(sample_counter[2]),
        .I1(sample_counter[1]),
        .I2(\sample_counter_reg_n_0_[0] ),
        .O(cur_bit_i_2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    cur_bit_reg
       (.C(CLK),
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
  FDCE #(
    .INIT(1'b0)) 
    prev_bit_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(baud_controller_r_inst_n_15),
        .Q(prev_bit));
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
        .I1(sample_counter[1]),
        .O(\sample_counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sample_counter[2]_i_1 
       (.I0(\sample_counter_reg_n_0_[0] ),
        .I1(sample_counter[1]),
        .I2(sample_counter[2]),
        .O(\sample_counter[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \sample_counter[3]_i_2 
       (.I0(sample_counter[3]),
        .I1(\sample_counter_reg_n_0_[0] ),
        .I2(sample_counter[1]),
        .I3(sample_counter[2]),
        .O(\sample_counter[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[0] 
       (.C(CLK),
        .CE(sample_counter_0),
        .CLR(AR),
        .D(\sample_counter[0]_i_1_n_0 ),
        .Q(\sample_counter_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[1] 
       (.C(CLK),
        .CE(sample_counter_0),
        .CLR(AR),
        .D(\sample_counter[1]_i_1_n_0 ),
        .Q(sample_counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[2] 
       (.C(CLK),
        .CE(sample_counter_0),
        .CLR(AR),
        .D(\sample_counter[2]_i_1_n_0 ),
        .Q(sample_counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \sample_counter_reg[3] 
       (.C(CLK),
        .CE(sample_counter_0),
        .CLR(AR),
        .D(\sample_counter[3]_i_2_n_0 ),
        .Q(sample_counter[3]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \shift_reg[0][0]_i_1 
       (.I0(Rx_DATA[0]),
        .I1(\shift_reg_reg[0][0] ),
        .I2(\shift_reg_reg[0][0]_0 ),
        .I3(Rx_DATA[4]),
        .O(\Rx_DATA_reg[3]_0 [0]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \shift_reg[0][1]_i_1 
       (.I0(Rx_DATA[1]),
        .I1(\shift_reg_reg[0][0] ),
        .I2(\shift_reg_reg[0][0]_0 ),
        .I3(Rx_DATA[5]),
        .O(\Rx_DATA_reg[3]_0 [1]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \shift_reg[0][2]_i_1 
       (.I0(Rx_DATA[2]),
        .I1(\shift_reg_reg[0][0] ),
        .I2(\shift_reg_reg[0][0]_0 ),
        .I3(Rx_DATA[6]),
        .O(\Rx_DATA_reg[3]_0 [2]));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \shift_reg[0][3]_i_2 
       (.I0(Rx_DATA[3]),
        .I1(\shift_reg_reg[0][0] ),
        .I2(\shift_reg_reg[0][0]_0 ),
        .I3(Rx_DATA[7]),
        .O(\Rx_DATA_reg[3]_0 [3]));
  synchronizer synchronizer_inst
       (.CLK(CLK),
        .D({synchronizer_inst_n_1,synchronizer_inst_n_2}),
        .\FSM_onehot_cur_state_reg[0] (\FSM_onehot_cur_state[11]_i_3_n_0 ),
        .\FSM_onehot_cur_state_reg[0]_0 (baud_controller_r_inst_n_4),
        .\FSM_onehot_cur_state_reg[0]_1 (\FSM_onehot_cur_state[0]_i_5_n_0 ),
        .Q({disabled,end_sequence,check_parity,\FSM_onehot_cur_state_reg_n_0_[3] ,\FSM_onehot_cur_state_reg_n_0_[2] ,start_sequence,idle}),
        .Rx_EN_IBUF(Rx_EN_IBUF),
        .TxD(TxD),
        .bit_stable(bit_stable),
        .cur_bit(cur_bit),
        .cur_bit_reg(cur_bit_i_2_n_0),
        .cur_bit_reg_0(sample_counter[3]),
        .sample_ENABLE(sample_ENABLE),
        .sync_signal(sync_signal),
        .sync_signal_reg_0(synchronizer_inst_n_3));
endmodule

module uart_transmitter
   (CO,
    \counter_reg[0] ,
    \counter_reg[0]_0 ,
    TxD,
    sample_ENABLE_reg,
    CLK,
    AR,
    sync_stage1_reg,
    sync_stage1_reg_0,
    \FSM_sequential_cur_state_reg[0]_0 ,
    Tx_EN_IBUF,
    Q,
    \counter_reg[0]_1 ,
    baud_select_IBUF);
  output [0:0]CO;
  output \counter_reg[0] ;
  output \counter_reg[0]_0 ;
  output TxD;
  input sample_ENABLE_reg;
  input CLK;
  input [0:0]AR;
  input sync_stage1_reg;
  input sync_stage1_reg_0;
  input \FSM_sequential_cur_state_reg[0]_0 ;
  input Tx_EN_IBUF;
  input [1:0]Q;
  input [1:0]\counter_reg[0]_1 ;
  input [2:0]baud_select_IBUF;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]CO;
  wire \FSM_sequential_cur_state_reg[0]_0 ;
  wire [1:0]Q;
  wire TxD;
  wire Tx_EN_IBUF;
  wire [2:0]baud_select_IBUF;
  wire \counter[1]_i_2_n_0 ;
  wire \counter_reg[0] ;
  wire \counter_reg[0]_0 ;
  wire [1:0]\counter_reg[0]_1 ;
  wire [3:0]cur_state;
  wire [3:0]next_state;
  wire sample_ENABLE_reg;
  wire sync_stage1_reg;
  wire sync_stage1_reg_0;

  (* FSM_ENCODED_STATES = "BIT_2:0100,BIT_3:0101,BIT_1:0011,IDLE:0000,DISABLED:1100,END_BIT:1011,BIT_0:0010,START_BIT:0001,BIT_6:1000,PARITY:1010,BIT_5:0111,BIT_7:1001,BIT_4:0110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(next_state[0]),
        .Q(cur_state[0]));
  (* FSM_ENCODED_STATES = "BIT_2:0100,BIT_3:0101,BIT_1:0011,IDLE:0000,DISABLED:1100,END_BIT:1011,BIT_0:0010,START_BIT:0001,BIT_6:1000,PARITY:1010,BIT_5:0111,BIT_7:1001,BIT_4:0110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(next_state[1]),
        .Q(cur_state[1]));
  (* FSM_ENCODED_STATES = "BIT_2:0100,BIT_3:0101,BIT_1:0011,IDLE:0000,DISABLED:1100,END_BIT:1011,BIT_0:0010,START_BIT:0001,BIT_6:1000,PARITY:1010,BIT_5:0111,BIT_7:1001,BIT_4:0110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(next_state[2]),
        .Q(cur_state[2]));
  (* FSM_ENCODED_STATES = "BIT_2:0100,BIT_3:0101,BIT_1:0011,IDLE:0000,DISABLED:1100,END_BIT:1011,BIT_0:0010,START_BIT:0001,BIT_6:1000,PARITY:1010,BIT_5:0111,BIT_7:1001,BIT_4:0110" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(next_state[3]),
        .Q(cur_state[3]));
  baud_controller_t baud_controller_t_inst
       (.AR(AR),
        .CLK(CLK),
        .CO(CO),
        .D(next_state),
        .\FSM_sequential_cur_state_reg[0] (\FSM_sequential_cur_state_reg[0]_0 ),
        .Q(cur_state),
        .Tx_EN_IBUF(Tx_EN_IBUF),
        .baud_select_IBUF(baud_select_IBUF),
        .\counter_reg[31]_0 (Q),
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
  LUT6 #(
    .INIT(64'h4000400040004004)) 
    \counter[1]_i_2 
       (.I0(\counter_reg[0]_1 [0]),
        .I1(\counter_reg[0]_1 [1]),
        .I2(cur_state[2]),
        .I3(cur_state[3]),
        .I4(cur_state[1]),
        .I5(cur_state[0]),
        .O(\counter[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFBA8BABFFABAB55)) 
    sync_stage1_i_1
       (.I0(cur_state[0]),
        .I1(sync_stage1_reg_0),
        .I2(sync_stage1_reg),
        .I3(cur_state[2]),
        .I4(cur_state[3]),
        .I5(cur_state[1]),
        .O(TxD));
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

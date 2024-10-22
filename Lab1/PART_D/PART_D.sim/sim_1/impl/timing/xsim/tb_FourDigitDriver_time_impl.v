// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Oct 23 00:11:13 2024
// Host        : DESKTOP-922FQ13 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/panag/Desktop/GitHub/Repositories/Vivado-Code/Lab1/PART_D/PART_D.sim/sim_1/impl/timing/xsim/tb_FourDigitDriver_time_impl.v
// Design      : FourDigitLEDdriver
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module ConstCounter
   (Q,
    an0_OBUF,
    an1_OBUF,
    an2_OBUF,
    an3_OBUF,
    CLK,
    AR);
  output [3:0]Q;
  output an0_OBUF;
  output an1_OBUF;
  output an2_OBUF;
  output an3_OBUF;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [3:0]Q;
  wire an0_OBUF;
  wire an1_OBUF;
  wire an2_OBUF;
  wire an3_OBUF;
  wire \counter[0]_i_1__0_n_0 ;
  wire [3:1]p_0_in;

  LUT4 #(
    .INIT(16'hFEFF)) 
    an0_OBUF_inst_i_1
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(an0_OBUF));
  LUT4 #(
    .INIT(16'hEFFF)) 
    an1_OBUF_inst_i_1
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(an1_OBUF));
  LUT4 #(
    .INIT(16'hEFFF)) 
    an2_OBUF_inst_i_1
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .O(an2_OBUF));
  LUT4 #(
    .INIT(16'hBFFF)) 
    an3_OBUF_inst_i_1
       (.I0(Q[0]),
        .I1(Q[3]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(an3_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__0 
       (.I0(Q[0]),
        .O(\counter[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(p_0_in[1]));
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(p_0_in[2]));
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(p_0_in[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[0]_i_1__0_n_0 ),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(Q[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(Q[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(Q[3]));
endmodule

module Debouncer
   (AR,
    CLK,
    D);
  output [0:0]AR;
  input CLK;
  input [0:0]D;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire \FF_wire_reg_n_0_[0] ;
  wire button_debounced_i_1_n_0;
  wire button_debounced_i_2_n_0;
  wire \counter[4]_i_1_n_0 ;
  wire [4:0]counter_reg__0;
  wire [4:0]p_0_in;
  wire p_0_in_0;
  wire p_1_in;

  FDRE #(
    .INIT(1'b0)) 
    \FF_wire_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D),
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
        .Q(p_0_in_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    button_debounced_i_1
       (.I0(p_0_in_0),
        .I1(counter_reg__0[3]),
        .I2(button_debounced_i_2_n_0),
        .I3(counter_reg__0[2]),
        .I4(counter_reg__0[4]),
        .I5(AR),
        .O(button_debounced_i_1_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    button_debounced_i_2
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .O(button_debounced_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    button_debounced_reg
       (.C(CLK),
        .CE(1'b1),
        .D(button_debounced_i_1_n_0),
        .Q(AR),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1__0 
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .O(p_0_in[1]));
  LUT3 #(
    .INIT(8'h6A)) 
    \counter[2]_i_1 
       (.I0(counter_reg__0[2]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[0]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \counter[3]_i_1 
       (.I0(counter_reg__0[3]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[0]),
        .I3(counter_reg__0[2]),
        .O(p_0_in[3]));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[4]_i_1 
       (.I0(p_0_in_0),
        .I1(p_1_in),
        .O(\counter[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \counter[4]_i_2 
       (.I0(counter_reg__0[4]),
        .I1(counter_reg__0[2]),
        .I2(counter_reg__0[0]),
        .I3(counter_reg__0[1]),
        .I4(counter_reg__0[3]),
        .O(p_0_in[4]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(counter_reg__0[0]),
        .R(\counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(counter_reg__0[1]),
        .R(\counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(counter_reg__0[2]),
        .R(\counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[3]),
        .Q(counter_reg__0[3]),
        .R(\counter[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in[4]),
        .Q(counter_reg__0[4]),
        .R(\counter[4]_i_1_n_0 ));
endmodule

(* ECO_CHECKSUM = "9e262eed" *) 
(* NotValidForBitStream *)
module FourDigitLEDdriver
   (reset,
    clk,
    an3,
    an2,
    an1,
    an0,
    a,
    b,
    c,
    d,
    e,
    f,
    g,
    dp);
  input reset;
  input clk;
  output an3;
  output an2;
  output an1;
  output an0;
  output a;
  output b;
  output c;
  output d;
  output e;
  output f;
  output g;
  output dp;

  wire a;
  wire a_OBUF;
  wire an0;
  wire an0_OBUF;
  wire an1;
  wire an1_OBUF;
  wire an2;
  wire an2_OBUF;
  wire an3;
  wire an3_OBUF;
  wire b;
  wire b_OBUF;
  wire button_debounced;
  wire c;
  wire c_OBUF;
  wire clk;
  wire clk_IBUF;
  wire [3:0]counter;
  wire d;
  wire d_OBUF;
  wire dp;
  wire e;
  wire e_OBUF;
  wire f;
  wire f_OBUF;
  wire feedback;
  wire g;
  wire g_OBUF;
  wire new_clk;
  wire new_clk_BUFG;
  wire overflow;
  wire reset;
  wire reset_IBUF;
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

initial begin
 $sdf_annotate("tb_FourDigitDriver_time_impl.sdf",,,,"tool_control");
end
  ConstCounter ConstCounter_inst
       (.AR(button_debounced),
        .CLK(new_clk_BUFG),
        .Q(counter),
        .an0_OBUF(an0_OBUF),
        .an1_OBUF(an1_OBUF),
        .an2_OBUF(an2_OBUF),
        .an3_OBUF(an3_OBUF));
  Debouncer Debouncer_inst
       (.AR(button_debounced),
        .CLK(new_clk_BUFG),
        .D(reset_IBUF));
  Incrementer Incrementer_inst
       (.AR(button_debounced),
        .CLK(new_clk_BUFG),
        .D(overflow),
        .Q(counter),
        .a_OBUF(a_OBUF),
        .b_OBUF(b_OBUF),
        .c_OBUF(c_OBUF),
        .d_OBUF(d_OBUF),
        .e_OBUF(e_OBUF),
        .f_OBUF(f_OBUF),
        .g_OBUF(g_OBUF));
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
        .CLKIN1(clk_IBUF),
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
  ScrollCounter ScrollCounter_inst
       (.AR(button_debounced),
        .CLK(new_clk_BUFG),
        .D(overflow));
  OBUF a_OBUF_inst
       (.I(a_OBUF),
        .O(a));
  OBUF an0_OBUF_inst
       (.I(an0_OBUF),
        .O(an0));
  OBUF an1_OBUF_inst
       (.I(an1_OBUF),
        .O(an1));
  OBUF an2_OBUF_inst
       (.I(an2_OBUF),
        .O(an2));
  OBUF an3_OBUF_inst
       (.I(an3_OBUF),
        .O(an3));
  OBUF b_OBUF_inst
       (.I(b_OBUF),
        .O(b));
  OBUF c_OBUF_inst
       (.I(c_OBUF),
        .O(c));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF d_OBUF_inst
       (.I(d_OBUF),
        .O(d));
  OBUF dp_OBUF_inst
       (.I(1'b0),
        .O(dp));
  OBUF e_OBUF_inst
       (.I(e_OBUF),
        .O(e));
  OBUF f_OBUF_inst
       (.I(f_OBUF),
        .O(f));
  OBUF g_OBUF_inst
       (.I(g_OBUF),
        .O(g));
  (* LOPT_BUFG_CLOCK *) 
  (* OPT_MODIFIED = "BUFG_OPT " *) 
  BUFG new_clk_BUFG_inst
       (.I(new_clk),
        .O(new_clk_BUFG));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
endmodule

module Incrementer
   (g_OBUF,
    e_OBUF,
    c_OBUF,
    b_OBUF,
    a_OBUF,
    f_OBUF,
    d_OBUF,
    Q,
    CLK,
    D,
    AR);
  output g_OBUF;
  output e_OBUF;
  output c_OBUF;
  output b_OBUF;
  output a_OBUF;
  output f_OBUF;
  output d_OBUF;
  input [3:0]Q;
  input CLK;
  input [0:0]D;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire [1:0]FF;
  wire [3:0]Q;
  wire a_OBUF;
  wire a_OBUF_inst_i_2_n_0;
  wire a_OBUF_inst_i_3_n_0;
  wire a_OBUF_inst_i_4_n_0;
  wire b_OBUF;
  wire b_OBUF_inst_i_2_n_0;
  wire b_OBUF_inst_i_3_n_0;
  wire b_OBUF_inst_i_4_n_0;
  wire [4:0]button_presses;
  wire \button_presses[4]_i_1_n_0 ;
  wire c_OBUF;
  wire c_OBUF_inst_i_2_n_0;
  wire c_OBUF_inst_i_3_n_0;
  wire c_OBUF_inst_i_4_n_0;
  wire d_OBUF;
  wire d_OBUF_inst_i_2_n_0;
  wire d_OBUF_inst_i_3_n_0;
  wire d_OBUF_inst_i_4_n_0;
  wire e_OBUF;
  wire e_OBUF_inst_i_2_n_0;
  wire e_OBUF_inst_i_3_n_0;
  wire e_OBUF_inst_i_4_n_0;
  wire f_OBUF;
  wire f_OBUF_inst_i_2_n_0;
  wire f_OBUF_inst_i_3_n_0;
  wire f_OBUF_inst_i_4_n_0;
  wire g_OBUF;
  wire g_OBUF_inst_i_2_n_0;
  wire g_OBUF_inst_i_3_n_0;
  wire g_OBUF_inst_i_4_n_0;
  wire [4:0]p_0_in;

  FDRE #(
    .INIT(1'b0)) 
    \FF_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(D),
        .Q(FF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \FF_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(FF[0]),
        .Q(FF[1]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hBF80FF3FBF80C000)) 
    a_OBUF_inst_i_1
       (.I0(a_OBUF_inst_i_2_n_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(a_OBUF_inst_i_3_n_0),
        .I4(Q[2]),
        .I5(a_OBUF_inst_i_4_n_0),
        .O(a_OBUF));
  LUT6 #(
    .INIT(64'h59040EA007D2096B)) 
    a_OBUF_inst_i_2
       (.I0(Q[3]),
        .I1(button_presses[0]),
        .I2(button_presses[4]),
        .I3(button_presses[3]),
        .I4(button_presses[1]),
        .I5(button_presses[2]),
        .O(a_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hE5AB2AB0A6AD70A5)) 
    a_OBUF_inst_i_3
       (.I0(Q[3]),
        .I1(button_presses[0]),
        .I2(button_presses[4]),
        .I3(button_presses[1]),
        .I4(button_presses[3]),
        .I5(button_presses[2]),
        .O(a_OBUF_inst_i_3_n_0));
  LUT6 #(
    .INIT(64'hA60D08500B06E197)) 
    a_OBUF_inst_i_4
       (.I0(Q[3]),
        .I1(button_presses[0]),
        .I2(button_presses[4]),
        .I3(button_presses[1]),
        .I4(button_presses[3]),
        .I5(button_presses[2]),
        .O(a_OBUF_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'hBF80FF3FBF80C000)) 
    b_OBUF_inst_i_1
       (.I0(b_OBUF_inst_i_2_n_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(b_OBUF_inst_i_3_n_0),
        .I4(Q[2]),
        .I5(b_OBUF_inst_i_4_n_0),
        .O(b_OBUF));
  LUT6 #(
    .INIT(64'h5D030F5F060BAFAF)) 
    b_OBUF_inst_i_2
       (.I0(Q[3]),
        .I1(button_presses[0]),
        .I2(button_presses[4]),
        .I3(button_presses[2]),
        .I4(button_presses[3]),
        .I5(button_presses[1]),
        .O(b_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hE7AA2F9FA4AD6F9F)) 
    b_OBUF_inst_i_3
       (.I0(Q[3]),
        .I1(button_presses[0]),
        .I2(button_presses[4]),
        .I3(button_presses[1]),
        .I4(button_presses[3]),
        .I5(button_presses[2]),
        .O(b_OBUF_inst_i_3_n_0));
  LUT6 #(
    .INIT(64'hAE030FAF09075F5F)) 
    b_OBUF_inst_i_4
       (.I0(Q[3]),
        .I1(button_presses[0]),
        .I2(button_presses[4]),
        .I3(button_presses[2]),
        .I4(button_presses[3]),
        .I5(button_presses[1]),
        .O(b_OBUF_inst_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \button_presses[0]_i_1 
       (.I0(button_presses[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \button_presses[1]_i_1 
       (.I0(button_presses[0]),
        .I1(button_presses[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \button_presses[2]_i_1 
       (.I0(button_presses[1]),
        .I1(button_presses[0]),
        .I2(button_presses[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \button_presses[3]_i_1 
       (.I0(button_presses[2]),
        .I1(button_presses[1]),
        .I2(button_presses[0]),
        .I3(button_presses[3]),
        .O(p_0_in[3]));
  LUT2 #(
    .INIT(4'h2)) 
    \button_presses[4]_i_1 
       (.I0(FF[1]),
        .I1(FF[0]),
        .O(\button_presses[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h7FFF0000)) 
    \button_presses[4]_i_2 
       (.I0(button_presses[2]),
        .I1(button_presses[3]),
        .I2(button_presses[1]),
        .I3(button_presses[0]),
        .I4(button_presses[4]),
        .O(p_0_in[4]));
  FDCE #(
    .INIT(1'b0)) 
    \button_presses_reg[0] 
       (.C(CLK),
        .CE(\button_presses[4]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[0]),
        .Q(button_presses[0]));
  FDCE #(
    .INIT(1'b0)) 
    \button_presses_reg[1] 
       (.C(CLK),
        .CE(\button_presses[4]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[1]),
        .Q(button_presses[1]));
  FDCE #(
    .INIT(1'b0)) 
    \button_presses_reg[2] 
       (.C(CLK),
        .CE(\button_presses[4]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[2]),
        .Q(button_presses[2]));
  FDCE #(
    .INIT(1'b0)) 
    \button_presses_reg[3] 
       (.C(CLK),
        .CE(\button_presses[4]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[3]),
        .Q(button_presses[3]));
  FDCE #(
    .INIT(1'b0)) 
    \button_presses_reg[4] 
       (.C(CLK),
        .CE(\button_presses[4]_i_1_n_0 ),
        .CLR(AR),
        .D(p_0_in[4]),
        .Q(button_presses[4]));
  LUT6 #(
    .INIT(64'hBF80FF3FBF80C000)) 
    c_OBUF_inst_i_1
       (.I0(c_OBUF_inst_i_2_n_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(c_OBUF_inst_i_3_n_0),
        .I4(Q[2]),
        .I5(c_OBUF_inst_i_4_n_0),
        .O(c_OBUF));
  LUT6 #(
    .INIT(64'h550102A8035E03AF)) 
    c_OBUF_inst_i_2
       (.I0(Q[3]),
        .I1(button_presses[0]),
        .I2(button_presses[4]),
        .I3(button_presses[3]),
        .I4(button_presses[1]),
        .I5(button_presses[2]),
        .O(c_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hE6A4A8AC2C639997)) 
    c_OBUF_inst_i_3
       (.I0(Q[3]),
        .I1(button_presses[0]),
        .I2(button_presses[4]),
        .I3(button_presses[2]),
        .I4(button_presses[1]),
        .I5(button_presses[3]),
        .O(c_OBUF_inst_i_3_n_0));
  LUT6 #(
    .INIT(64'hAA0102540303AD5F)) 
    c_OBUF_inst_i_4
       (.I0(Q[3]),
        .I1(button_presses[0]),
        .I2(button_presses[4]),
        .I3(button_presses[1]),
        .I4(button_presses[3]),
        .I5(button_presses[2]),
        .O(c_OBUF_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'hBF80FF3FBF80C000)) 
    d_OBUF_inst_i_1
       (.I0(d_OBUF_inst_i_2_n_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(d_OBUF_inst_i_3_n_0),
        .I4(Q[2]),
        .I5(d_OBUF_inst_i_4_n_0),
        .O(d_OBUF));
  LUT6 #(
    .INIT(64'h7530303030100AAF)) 
    d_OBUF_inst_i_2
       (.I0(Q[3]),
        .I1(button_presses[4]),
        .I2(button_presses[0]),
        .I3(button_presses[1]),
        .I4(button_presses[2]),
        .I5(button_presses[3]),
        .O(d_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hEFAB0302A3A30055)) 
    d_OBUF_inst_i_3
       (.I0(Q[3]),
        .I1(button_presses[0]),
        .I2(button_presses[4]),
        .I3(button_presses[1]),
        .I4(button_presses[3]),
        .I5(button_presses[2]),
        .O(d_OBUF_inst_i_3_n_0));
  LUT6 #(
    .INIT(64'hB3A033003200055F)) 
    d_OBUF_inst_i_4
       (.I0(Q[3]),
        .I1(button_presses[4]),
        .I2(button_presses[1]),
        .I3(button_presses[0]),
        .I4(button_presses[2]),
        .I5(button_presses[3]),
        .O(d_OBUF_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'hBF80FF3FBF80C000)) 
    e_OBUF_inst_i_1
       (.I0(e_OBUF_inst_i_2_n_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(e_OBUF_inst_i_3_n_0),
        .I4(Q[2]),
        .I5(e_OBUF_inst_i_4_n_0),
        .O(e_OBUF));
  LUT6 #(
    .INIT(64'hF1F8F4F0F052032B)) 
    e_OBUF_inst_i_2
       (.I0(Q[3]),
        .I1(button_presses[0]),
        .I2(button_presses[4]),
        .I3(button_presses[1]),
        .I4(button_presses[2]),
        .I5(button_presses[3]),
        .O(e_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hF4F2D084F9F0400D)) 
    e_OBUF_inst_i_3
       (.I0(Q[3]),
        .I1(button_presses[0]),
        .I2(button_presses[4]),
        .I3(button_presses[2]),
        .I4(button_presses[3]),
        .I5(button_presses[1]),
        .O(e_OBUF_inst_i_3_n_0));
  LUT6 #(
    .INIT(64'hF2F8F4F0F003A117)) 
    e_OBUF_inst_i_4
       (.I0(Q[3]),
        .I1(button_presses[0]),
        .I2(button_presses[4]),
        .I3(button_presses[2]),
        .I4(button_presses[1]),
        .I5(button_presses[3]),
        .O(e_OBUF_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'hBF80FF3FBF80C000)) 
    f_OBUF_inst_i_1
       (.I0(f_OBUF_inst_i_2_n_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(f_OBUF_inst_i_3_n_0),
        .I4(Q[2]),
        .I5(f_OBUF_inst_i_4_n_0),
        .O(f_OBUF));
  LUT6 #(
    .INIT(64'hF9FCF4F8FC54022B)) 
    f_OBUF_inst_i_2
       (.I0(Q[3]),
        .I1(button_presses[0]),
        .I2(button_presses[4]),
        .I3(button_presses[1]),
        .I4(button_presses[2]),
        .I5(button_presses[3]),
        .O(f_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hF5FBD342F2F18005)) 
    f_OBUF_inst_i_3
       (.I0(Q[3]),
        .I1(button_presses[0]),
        .I2(button_presses[4]),
        .I3(button_presses[1]),
        .I4(button_presses[3]),
        .I5(button_presses[2]),
        .O(f_OBUF_inst_i_3_n_0));
  LUT6 #(
    .INIT(64'hFF6CFF84FAC80117)) 
    f_OBUF_inst_i_4
       (.I0(Q[3]),
        .I1(button_presses[0]),
        .I2(button_presses[1]),
        .I3(button_presses[4]),
        .I4(button_presses[2]),
        .I5(button_presses[3]),
        .O(f_OBUF_inst_i_4_n_0));
  LUT6 #(
    .INIT(64'hBF80FF3FBF80C000)) 
    g_OBUF_inst_i_1
       (.I0(g_OBUF_inst_i_2_n_0),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(g_OBUF_inst_i_3_n_0),
        .I4(Q[2]),
        .I5(g_OBUF_inst_i_4_n_0),
        .O(g_OBUF));
  LUT6 #(
    .INIT(64'hF3F9F4F0F2719A6F)) 
    g_OBUF_inst_i_2
       (.I0(Q[3]),
        .I1(button_presses[0]),
        .I2(button_presses[4]),
        .I3(button_presses[1]),
        .I4(button_presses[2]),
        .I5(button_presses[3]),
        .O(g_OBUF_inst_i_2_n_0));
  LUT6 #(
    .INIT(64'hF4FDD0E4FAF0D9A7)) 
    g_OBUF_inst_i_3
       (.I0(Q[3]),
        .I1(button_presses[0]),
        .I2(button_presses[4]),
        .I3(button_presses[1]),
        .I4(button_presses[3]),
        .I5(button_presses[2]),
        .O(g_OBUF_inst_i_3_n_0));
  LUT6 #(
    .INIT(64'hF3F6F8F0F1B2659F)) 
    g_OBUF_inst_i_4
       (.I0(Q[3]),
        .I1(button_presses[0]),
        .I2(button_presses[4]),
        .I3(button_presses[1]),
        .I4(button_presses[2]),
        .I5(button_presses[3]),
        .O(g_OBUF_inst_i_4_n_0));
endmodule

module ScrollCounter
   (D,
    CLK,
    AR);
  output [0:0]D;
  input CLK;
  input [0:0]AR;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire [7:0]counter;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire \counter[4]_i_1_n_0 ;
  wire \counter[5]_i_1_n_0 ;
  wire \counter[6]_i_1_n_0 ;
  wire \counter[7]_i_1_n_0 ;
  wire \counter[7]_i_2_n_0 ;
  wire p_0_in;

  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter[0]),
        .O(\counter[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter[0]),
        .I1(counter[1]),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1 
       (.I0(counter[0]),
        .I1(counter[1]),
        .I2(counter[2]),
        .O(\counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1 
       (.I0(counter[1]),
        .I1(counter[0]),
        .I2(counter[2]),
        .I3(counter[3]),
        .O(\counter[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_1 
       (.I0(counter[2]),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[3]),
        .I4(counter[4]),
        .O(\counter[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter[5]_i_1 
       (.I0(counter[3]),
        .I1(counter[1]),
        .I2(counter[0]),
        .I3(counter[2]),
        .I4(counter[4]),
        .I5(counter[5]),
        .O(\counter[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[6]_i_1 
       (.I0(\counter[7]_i_2_n_0 ),
        .I1(counter[6]),
        .O(\counter[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[7]_i_1 
       (.I0(\counter[7]_i_2_n_0 ),
        .I1(counter[6]),
        .I2(counter[7]),
        .O(\counter[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter[7]_i_2 
       (.I0(counter[5]),
        .I1(counter[3]),
        .I2(counter[1]),
        .I3(counter[0]),
        .I4(counter[2]),
        .I5(counter[4]),
        .O(\counter[7]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[0]_i_1_n_0 ),
        .Q(counter[0]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[1]_i_1_n_0 ),
        .Q(counter[1]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter[2]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[3]_i_1_n_0 ),
        .Q(counter[3]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[4]_i_1_n_0 ),
        .Q(counter[4]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[5]_i_1_n_0 ),
        .Q(counter[5]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[6]_i_1_n_0 ),
        .Q(counter[6]));
  FDCE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\counter[7]_i_1_n_0 ),
        .Q(counter[7]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h80)) 
    overflow_i_1
       (.I0(counter[7]),
        .I1(\counter[7]_i_2_n_0 ),
        .I2(counter[6]),
        .O(p_0_in));
  FDCE #(
    .INIT(1'b0)) 
    overflow_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(p_0_in),
        .Q(D));
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

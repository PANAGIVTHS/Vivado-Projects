// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Nov 19 03:22:00 2024
// Host        : DESKTOP-922FQ13 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/panag/Desktop/GitHub/Repositories/Vivado-Code/Lab3/lab3_project/lab3_project.sim/sim_1/impl/timing/xsim/VGA_tb_2_time_impl.v
// Design      : VGA
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module B_BRAM
   (RAMB18E1_inst_0,
    CLK,
    reset_IBUF,
    ADDRARDADDR);
  output [0:0]RAMB18E1_inst_0;
  input CLK;
  input reset_IBUF;
  input [13:0]ADDRARDADDR;

  wire [13:0]ADDRARDADDR;
  wire CLK;
  wire [0:0]RAMB18E1_inst_0;
  wire reset_IBUF;
  wire [15:0]NLW_RAMB18E1_inst_DIADI_UNCONNECTED;
  wire [15:0]NLW_RAMB18E1_inst_DIBDI_UNCONNECTED;
  wire [1:0]NLW_RAMB18E1_inst_DIPADIP_UNCONNECTED;
  wire [1:0]NLW_RAMB18E1_inst_DIPBDIP_UNCONNECTED;
  wire [15:1]NLW_RAMB18E1_inst_DOADO_UNCONNECTED;
  wire [15:0]NLW_RAMB18E1_inst_DOBDO_UNCONNECTED;
  wire [1:0]NLW_RAMB18E1_inst_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_RAMB18E1_inst_DOPBDOP_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000004),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(0)) 
    RAMB18E1_inst
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(1'b0),
        .DIADI(NLW_RAMB18E1_inst_DIADI_UNCONNECTED[15:0]),
        .DIBDI(NLW_RAMB18E1_inst_DIBDI_UNCONNECTED[15:0]),
        .DIPADIP(NLW_RAMB18E1_inst_DIPADIP_UNCONNECTED[1:0]),
        .DIPBDIP(NLW_RAMB18E1_inst_DIPBDIP_UNCONNECTED[1:0]),
        .DOADO({NLW_RAMB18E1_inst_DOADO_UNCONNECTED[15:1],RAMB18E1_inst_0}),
        .DOBDO(NLW_RAMB18E1_inst_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_RAMB18E1_inst_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_RAMB18E1_inst_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(reset_IBUF),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(reset_IBUF),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

module ClockGenerator
   (new_clk,
    E,
    clk_IBUF,
    enable_IBUF,
    lopt);
  output new_clk;
  output [0:0]E;
  input clk_IBUF;
  input enable_IBUF;
  output lopt;

  wire [0:0]E;
  wire clk_IBUF;
  wire enable_IBUF;
  wire feedback;
  wire locked;
  wire \^new_clk ;
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
  wire NLW_MMCME2_BASE_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_MMCME2_BASE_inst_DO_UNCONNECTED;

  assign lopt = \^new_clk ;
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
    .CLKOUT0_DIVIDE_F(24.000000),
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
        .CLKOUT0(\^new_clk ),
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
        .LOCKED(locked),
        .PSCLK(1'b0),
        .PSDONE(NLW_MMCME2_BASE_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(1'b0));
  LUT2 #(
    .INIT(4'h8)) 
    \count[9]_i_2 
       (.I0(enable_IBUF),
        .I1(locked),
        .O(E));
endmodule

module GUCounter
   (D,
    S,
    reset_IBUF,
    CO,
    Q,
    E,
    CLK);
  output [1:0]D;
  output [3:0]S;
  input reset_IBUF;
  input [0:0]CO;
  input [1:0]Q;
  input [0:0]E;
  input CLK;

  wire CLK;
  wire [0:0]CO;
  wire [1:0]D;
  wire [0:0]E;
  wire \FSM_sequential_cur_state[0]_i_2_n_0 ;
  wire \FSM_sequential_cur_state[0]_i_3_n_0 ;
  wire \FSM_sequential_cur_state[1]_i_2_n_0 ;
  wire [1:0]Q;
  wire [3:0]S;
  wire \count[0]_i_1__0_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1__0_n_0 ;
  wire \count[3]_i_1__0_n_0 ;
  wire \count[4]_i_1__0_n_0 ;
  wire \count[5]_i_1_n_0 ;
  wire \count[6]_i_1__1_n_0 ;
  wire \count[7]_i_1_n_0 ;
  wire \count[8]_i_1_n_0 ;
  wire \count[9]_i_1_n_0 ;
  wire \count[9]_i_3_n_0 ;
  wire \count[9]_i_4_n_0 ;
  wire \count[9]_i_5_n_0 ;
  wire reset_IBUF;
  wire [9:0]sel0;

  LUT6 #(
    .INIT(64'hFFFFFF02FFC3FF02)) 
    \FSM_sequential_cur_state[0]_i_1 
       (.I0(\FSM_sequential_cur_state[0]_i_2_n_0 ),
        .I1(Q[1]),
        .I2(sel0[5]),
        .I3(\FSM_sequential_cur_state[0]_i_3_n_0 ),
        .I4(Q[0]),
        .I5(\FSM_sequential_cur_state[1]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \FSM_sequential_cur_state[0]_i_2 
       (.I0(sel0[6]),
        .I1(sel0[4]),
        .I2(sel0[9]),
        .I3(sel0[8]),
        .I4(sel0[7]),
        .I5(\count[9]_i_4_n_0 ),
        .O(\FSM_sequential_cur_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \FSM_sequential_cur_state[0]_i_3 
       (.I0(\count[9]_i_5_n_0 ),
        .I1(Q[1]),
        .I2(sel0[9]),
        .I3(\count[9]_i_4_n_0 ),
        .I4(sel0[7]),
        .I5(sel0[8]),
        .O(\FSM_sequential_cur_state[0]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hB8AA)) 
    \FSM_sequential_cur_state[1]_i_1__0 
       (.I0(Q[1]),
        .I1(\FSM_sequential_cur_state[1]_i_2_n_0 ),
        .I2(sel0[5]),
        .I3(Q[0]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_cur_state[1]_i_2 
       (.I0(sel0[6]),
        .I1(sel0[4]),
        .I2(sel0[9]),
        .I3(sel0[8]),
        .I4(sel0[7]),
        .I5(\count[9]_i_4_n_0 ),
        .O(\FSM_sequential_cur_state[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__0 
       (.I0(sel0[0]),
        .O(\count[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(sel0[0]),
        .I1(sel0[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1__0 
       (.I0(sel0[1]),
        .I1(sel0[0]),
        .I2(sel0[2]),
        .O(\count[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1__0 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[3]),
        .O(\count[3]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_1__0 
       (.I0(sel0[3]),
        .I1(sel0[1]),
        .I2(sel0[0]),
        .I3(sel0[2]),
        .I4(sel0[4]),
        .O(\count[4]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_1 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[3]),
        .I4(sel0[4]),
        .I5(sel0[5]),
        .O(\count[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \count[6]_i_1__1 
       (.I0(\count[9]_i_4_n_0 ),
        .I1(sel0[4]),
        .I2(sel0[5]),
        .I3(sel0[6]),
        .O(\count[6]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \count[7]_i_1 
       (.I0(\count[9]_i_4_n_0 ),
        .I1(sel0[5]),
        .I2(sel0[4]),
        .I3(sel0[6]),
        .I4(sel0[7]),
        .O(\count[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF40000000)) 
    \count[8]_i_1 
       (.I0(\count[9]_i_4_n_0 ),
        .I1(sel0[6]),
        .I2(sel0[4]),
        .I3(sel0[5]),
        .I4(sel0[7]),
        .I5(sel0[8]),
        .O(\count[8]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count[9]_i_1 
       (.I0(reset_IBUF),
        .I1(CO),
        .O(\count[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF4000)) 
    \count[9]_i_3 
       (.I0(\count[9]_i_4_n_0 ),
        .I1(sel0[8]),
        .I2(sel0[7]),
        .I3(\count[9]_i_5_n_0 ),
        .I4(sel0[9]),
        .O(\count[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \count[9]_i_4 
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .I3(sel0[3]),
        .O(\count[9]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h80)) 
    \count[9]_i_5 
       (.I0(sel0[5]),
        .I1(sel0[4]),
        .I2(sel0[6]),
        .O(\count[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\count[0]_i_1__0_n_0 ),
        .Q(sel0[0]),
        .R(\count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\count[1]_i_1_n_0 ),
        .Q(sel0[1]),
        .R(\count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\count[2]_i_1__0_n_0 ),
        .Q(sel0[2]),
        .R(\count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\count[3]_i_1__0_n_0 ),
        .Q(sel0[3]),
        .R(\count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\count[4]_i_1__0_n_0 ),
        .Q(sel0[4]),
        .R(\count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(\count[5]_i_1_n_0 ),
        .Q(sel0[5]),
        .R(\count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(\count[6]_i_1__1_n_0 ),
        .Q(sel0[6]),
        .R(\count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(\count[7]_i_1_n_0 ),
        .Q(sel0[7]),
        .R(\count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(\count[8]_i_1_n_0 ),
        .Q(sel0[8]),
        .R(\count[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(\count[9]_i_3_n_0 ),
        .Q(sel0[9]),
        .R(\count[9]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h2D)) 
    user_reset_carry_i_1
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(sel0[9]),
        .O(S[3]));
  LUT4 #(
    .INIT(16'h0110)) 
    user_reset_carry_i_2__0
       (.I0(sel0[8]),
        .I1(sel0[7]),
        .I2(sel0[6]),
        .I3(Q[0]),
        .O(S[2]));
  LUT5 #(
    .INIT(32'h00288200)) 
    user_reset_carry_i_3
       (.I0(sel0[3]),
        .I1(Q[1]),
        .I2(sel0[5]),
        .I3(sel0[4]),
        .I4(Q[0]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h80)) 
    user_reset_carry_i_4
       (.I0(sel0[2]),
        .I1(sel0[0]),
        .I2(sel0[1]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "GUCounter" *) 
module GUCounter__parameterized0
   (D,
    S,
    \count_reg[18]_0 ,
    user_reset_carry__0_i_8_0,
    \FSM_sequential_cur_state_reg[1] ,
    DI,
    CO,
    reset_IBUF,
    Q,
    O,
    user_reset_carry,
    user_reset_carry__0,
    user_reset_carry__0_0,
    user_reset_carry__0_1,
    user_reset_carry__0_2,
    E,
    CLK);
  output [1:0]D;
  output [3:0]S;
  output [2:0]\count_reg[18]_0 ;
  output [0:0]user_reset_carry__0_i_8_0;
  output [2:0]\FSM_sequential_cur_state_reg[1] ;
  output [1:0]DI;
  input [0:0]CO;
  input reset_IBUF;
  input [1:0]Q;
  input [2:0]O;
  input [3:0]user_reset_carry;
  input [0:0]user_reset_carry__0;
  input [0:0]user_reset_carry__0_0;
  input [0:0]user_reset_carry__0_1;
  input [0:0]user_reset_carry__0_2;
  input [0:0]E;
  input CLK;

  wire CLK;
  wire [0:0]CO;
  wire [1:0]D;
  wire [1:0]DI;
  wire [0:0]E;
  wire \FSM_sequential_cur_state[0]_i_10_n_0 ;
  wire \FSM_sequential_cur_state[0]_i_11_n_0 ;
  wire \FSM_sequential_cur_state[0]_i_12_n_0 ;
  wire \FSM_sequential_cur_state[0]_i_2__0_n_0 ;
  wire \FSM_sequential_cur_state[0]_i_3__0_n_0 ;
  wire \FSM_sequential_cur_state[0]_i_4_n_0 ;
  wire \FSM_sequential_cur_state[0]_i_5_n_0 ;
  wire \FSM_sequential_cur_state[0]_i_6_n_0 ;
  wire \FSM_sequential_cur_state[0]_i_7_n_0 ;
  wire \FSM_sequential_cur_state[0]_i_8_n_0 ;
  wire \FSM_sequential_cur_state[0]_i_9_n_0 ;
  wire \FSM_sequential_cur_state[1]_i_2__0_n_0 ;
  wire \FSM_sequential_cur_state[1]_i_3_n_0 ;
  wire \FSM_sequential_cur_state[1]_i_4_n_0 ;
  wire \FSM_sequential_cur_state[1]_i_5_n_0 ;
  wire \FSM_sequential_cur_state[1]_i_6_n_0 ;
  wire \FSM_sequential_cur_state[1]_i_7_n_0 ;
  wire [2:0]\FSM_sequential_cur_state_reg[1] ;
  wire [2:0]O;
  wire [1:0]Q;
  wire [3:0]S;
  wire count0_carry__0_n_0;
  wire count0_carry__0_n_4;
  wire count0_carry__0_n_5;
  wire count0_carry__0_n_6;
  wire count0_carry__0_n_7;
  wire count0_carry__1_n_0;
  wire count0_carry__1_n_4;
  wire count0_carry__1_n_5;
  wire count0_carry__1_n_6;
  wire count0_carry__1_n_7;
  wire count0_carry__2_n_0;
  wire count0_carry__2_n_4;
  wire count0_carry__2_n_5;
  wire count0_carry__2_n_6;
  wire count0_carry__2_n_7;
  wire count0_carry__3_n_6;
  wire count0_carry__3_n_7;
  wire count0_carry_n_0;
  wire count0_carry_n_4;
  wire count0_carry_n_5;
  wire count0_carry_n_6;
  wire count0_carry_n_7;
  wire \count[0]_i_1_n_0 ;
  wire \count[18]_i_1_n_0 ;
  wire [2:0]\count_reg[18]_0 ;
  wire reset_IBUF;
  wire [18:0]sel0__0;
  wire [3:0]user_reset_carry;
  wire [0:0]user_reset_carry__0;
  wire [0:0]user_reset_carry__0_0;
  wire [0:0]user_reset_carry__0_1;
  wire [0:0]user_reset_carry__0_2;
  wire user_reset_carry__0_i_10_n_0;
  wire user_reset_carry__0_i_11_n_0;
  wire user_reset_carry__0_i_12_n_0;
  wire user_reset_carry__0_i_13_n_0;
  wire [0:0]user_reset_carry__0_i_8_0;
  wire user_reset_carry__0_i_8_n_0;
  wire user_reset_carry__0_i_8_n_4;
  wire user_reset_carry__0_i_8_n_5;
  wire user_reset_carry__0_i_8_n_6;
  wire user_reset_carry__0_i_9_n_0;
  wire [2:0]NLW_count0_carry_CO_UNCONNECTED;
  wire [2:0]NLW_count0_carry__0_CO_UNCONNECTED;
  wire [2:0]NLW_count0_carry__1_CO_UNCONNECTED;
  wire [2:0]NLW_count0_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_count0_carry__3_CO_UNCONNECTED;
  wire [3:2]NLW_count0_carry__3_O_UNCONNECTED;
  wire [3:1]NLW_user_reset_carry__0_i_5_CO_UNCONNECTED;
  wire [3:0]NLW_user_reset_carry__0_i_5_O_UNCONNECTED;
  wire [2:0]NLW_user_reset_carry__0_i_8_CO_UNCONNECTED;
  wire [0:0]NLW_user_reset_carry__0_i_8_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_cur_state[0]_i_10 
       (.I0(sel0__0[11]),
        .I1(sel0__0[12]),
        .O(\FSM_sequential_cur_state[0]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \FSM_sequential_cur_state[0]_i_11 
       (.I0(sel0__0[5]),
        .I1(sel0__0[7]),
        .I2(sel0__0[10]),
        .I3(sel0__0[14]),
        .O(\FSM_sequential_cur_state[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_sequential_cur_state[0]_i_12 
       (.I0(sel0__0[15]),
        .I1(sel0__0[16]),
        .I2(sel0__0[6]),
        .I3(sel0__0[8]),
        .I4(Q[1]),
        .I5(sel0__0[18]),
        .O(\FSM_sequential_cur_state[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \FSM_sequential_cur_state[0]_i_1__0 
       (.I0(\FSM_sequential_cur_state[0]_i_2__0_n_0 ),
        .I1(\FSM_sequential_cur_state[0]_i_3__0_n_0 ),
        .I2(\FSM_sequential_cur_state[0]_i_4_n_0 ),
        .I3(Q[0]),
        .I4(\FSM_sequential_cur_state[1]_i_3_n_0 ),
        .I5(\FSM_sequential_cur_state[0]_i_5_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    \FSM_sequential_cur_state[0]_i_2__0 
       (.I0(\FSM_sequential_cur_state[1]_i_5_n_0 ),
        .I1(\FSM_sequential_cur_state[0]_i_6_n_0 ),
        .I2(\FSM_sequential_cur_state[1]_i_7_n_0 ),
        .I3(\FSM_sequential_cur_state[0]_i_7_n_0 ),
        .I4(\FSM_sequential_cur_state[0]_i_8_n_0 ),
        .I5(sel0__0[5]),
        .O(\FSM_sequential_cur_state[0]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00DF0000)) 
    \FSM_sequential_cur_state[0]_i_3__0 
       (.I0(sel0__0[7]),
        .I1(sel0__0[10]),
        .I2(sel0__0[14]),
        .I3(sel0__0[5]),
        .I4(Q[0]),
        .O(\FSM_sequential_cur_state[0]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'h30E0)) 
    \FSM_sequential_cur_state[0]_i_4 
       (.I0(sel0__0[8]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(sel0__0[5]),
        .O(\FSM_sequential_cur_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAABAAAAAAAAAAAA)) 
    \FSM_sequential_cur_state[0]_i_5 
       (.I0(\FSM_sequential_cur_state[0]_i_9_n_0 ),
        .I1(\FSM_sequential_cur_state[0]_i_10_n_0 ),
        .I2(\FSM_sequential_cur_state[0]_i_6_n_0 ),
        .I3(\FSM_sequential_cur_state[1]_i_5_n_0 ),
        .I4(\FSM_sequential_cur_state[0]_i_11_n_0 ),
        .I5(\FSM_sequential_cur_state[0]_i_12_n_0 ),
        .O(\FSM_sequential_cur_state[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_cur_state[0]_i_6 
       (.I0(sel0__0[4]),
        .I1(sel0__0[3]),
        .I2(sel0__0[9]),
        .O(\FSM_sequential_cur_state[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \FSM_sequential_cur_state[0]_i_7 
       (.I0(sel0__0[12]),
        .I1(sel0__0[11]),
        .I2(Q[1]),
        .I3(sel0__0[8]),
        .O(\FSM_sequential_cur_state[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \FSM_sequential_cur_state[0]_i_8 
       (.I0(sel0__0[10]),
        .I1(sel0__0[14]),
        .I2(sel0__0[7]),
        .O(\FSM_sequential_cur_state[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8888888888880888)) 
    \FSM_sequential_cur_state[0]_i_9 
       (.I0(Q[0]),
        .I1(sel0__0[5]),
        .I2(sel0__0[8]),
        .I3(sel0__0[10]),
        .I4(sel0__0[14]),
        .I5(sel0__0[7]),
        .O(\FSM_sequential_cur_state[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FFFFFF00F700)) 
    \FSM_sequential_cur_state[1]_i_1 
       (.I0(Q[0]),
        .I1(sel0__0[5]),
        .I2(\FSM_sequential_cur_state[1]_i_2__0_n_0 ),
        .I3(Q[1]),
        .I4(\FSM_sequential_cur_state[1]_i_3_n_0 ),
        .I5(\FSM_sequential_cur_state[1]_i_4_n_0 ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hEFFF)) 
    \FSM_sequential_cur_state[1]_i_2__0 
       (.I0(sel0__0[7]),
        .I1(sel0__0[14]),
        .I2(sel0__0[10]),
        .I3(sel0__0[8]),
        .O(\FSM_sequential_cur_state[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    \FSM_sequential_cur_state[1]_i_3 
       (.I0(\FSM_sequential_cur_state[1]_i_5_n_0 ),
        .I1(sel0__0[9]),
        .I2(\FSM_sequential_cur_state[1]_i_6_n_0 ),
        .I3(sel0__0[11]),
        .I4(sel0__0[12]),
        .I5(\FSM_sequential_cur_state[1]_i_7_n_0 ),
        .O(\FSM_sequential_cur_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000040000000000)) 
    \FSM_sequential_cur_state[1]_i_4 
       (.I0(sel0__0[8]),
        .I1(Q[0]),
        .I2(sel0__0[5]),
        .I3(sel0__0[7]),
        .I4(sel0__0[10]),
        .I5(sel0__0[14]),
        .O(\FSM_sequential_cur_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'hEFFFFFFF)) 
    \FSM_sequential_cur_state[1]_i_5 
       (.I0(sel0__0[17]),
        .I1(sel0__0[13]),
        .I2(sel0__0[0]),
        .I3(sel0__0[1]),
        .I4(sel0__0[2]),
        .O(\FSM_sequential_cur_state[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_cur_state[1]_i_6 
       (.I0(sel0__0[3]),
        .I1(sel0__0[4]),
        .O(\FSM_sequential_cur_state[1]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_cur_state[1]_i_7 
       (.I0(sel0__0[15]),
        .I1(sel0__0[6]),
        .I2(sel0__0[18]),
        .I3(sel0__0[16]),
        .O(\FSM_sequential_cur_state[1]_i_7_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 count0_carry
       (.CI(1'b0),
        .CO({count0_carry_n_0,NLW_count0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(sel0__0[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry_n_4,count0_carry_n_5,count0_carry_n_6,count0_carry_n_7}),
        .S(sel0__0[4:1]));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 count0_carry__0
       (.CI(count0_carry_n_0),
        .CO({count0_carry__0_n_0,NLW_count0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__0_n_4,count0_carry__0_n_5,count0_carry__0_n_6,count0_carry__0_n_7}),
        .S(sel0__0[8:5]));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 count0_carry__1
       (.CI(count0_carry__0_n_0),
        .CO({count0_carry__1_n_0,NLW_count0_carry__1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__1_n_4,count0_carry__1_n_5,count0_carry__1_n_6,count0_carry__1_n_7}),
        .S(sel0__0[12:9]));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 count0_carry__2
       (.CI(count0_carry__1_n_0),
        .CO({count0_carry__2_n_0,NLW_count0_carry__2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({count0_carry__2_n_4,count0_carry__2_n_5,count0_carry__2_n_6,count0_carry__2_n_7}),
        .S(sel0__0[16:13]));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 count0_carry__3
       (.CI(count0_carry__2_n_0),
        .CO(NLW_count0_carry__3_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_count0_carry__3_O_UNCONNECTED[3:2],count0_carry__3_n_6,count0_carry__3_n_7}),
        .S({1'b0,1'b0,sel0__0[18:17]}));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(sel0__0[0]),
        .O(\count[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count[18]_i_1 
       (.I0(CO),
        .I1(reset_IBUF),
        .O(\count[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\count[0]_i_1_n_0 ),
        .Q(sel0__0[0]),
        .R(\count[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(CLK),
        .CE(E),
        .D(count0_carry__1_n_6),
        .Q(sel0__0[10]),
        .R(\count[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(CLK),
        .CE(E),
        .D(count0_carry__1_n_5),
        .Q(sel0__0[11]),
        .R(\count[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(CLK),
        .CE(E),
        .D(count0_carry__1_n_4),
        .Q(sel0__0[12]),
        .R(\count[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(CLK),
        .CE(E),
        .D(count0_carry__2_n_7),
        .Q(sel0__0[13]),
        .R(\count[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(CLK),
        .CE(E),
        .D(count0_carry__2_n_6),
        .Q(sel0__0[14]),
        .R(\count[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(CLK),
        .CE(E),
        .D(count0_carry__2_n_5),
        .Q(sel0__0[15]),
        .R(\count[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(CLK),
        .CE(E),
        .D(count0_carry__2_n_4),
        .Q(sel0__0[16]),
        .R(\count[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(CLK),
        .CE(E),
        .D(count0_carry__3_n_7),
        .Q(sel0__0[17]),
        .R(\count[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(CLK),
        .CE(E),
        .D(count0_carry__3_n_6),
        .Q(sel0__0[18]),
        .R(\count[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(count0_carry_n_7),
        .Q(sel0__0[1]),
        .R(\count[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(count0_carry_n_6),
        .Q(sel0__0[2]),
        .R(\count[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(count0_carry_n_5),
        .Q(sel0__0[3]),
        .R(\count[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(count0_carry_n_4),
        .Q(sel0__0[4]),
        .R(\count[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(count0_carry__0_n_7),
        .Q(sel0__0[5]),
        .R(\count[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(count0_carry__0_n_6),
        .Q(sel0__0[6]),
        .R(\count[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(CLK),
        .CE(E),
        .D(count0_carry__0_n_5),
        .Q(sel0__0[7]),
        .R(\count[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(CLK),
        .CE(E),
        .D(count0_carry__0_n_4),
        .Q(sel0__0[8]),
        .R(\count[18]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(CLK),
        .CE(E),
        .D(count0_carry__1_n_7),
        .Q(sel0__0[9]),
        .R(\count[18]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    user_reset0_carry_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(DI[1]));
  LUT2 #(
    .INIT(4'h2)) 
    user_reset0_carry_i_2
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(DI[0]));
  LUT2 #(
    .INIT(4'hB)) 
    user_reset0_carry_i_3
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\FSM_sequential_cur_state_reg[1] [2]));
  LUT2 #(
    .INIT(4'h6)) 
    user_reset0_carry_i_4
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\FSM_sequential_cur_state_reg[1] [1]));
  LUT2 #(
    .INIT(4'hB)) 
    user_reset0_carry_i_5
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(\FSM_sequential_cur_state_reg[1] [0]));
  LUT2 #(
    .INIT(4'h2)) 
    user_reset_carry__0_i_10
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(user_reset_carry__0_i_10_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    user_reset_carry__0_i_11
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(user_reset_carry__0_i_11_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    user_reset_carry__0_i_12
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(user_reset_carry__0_i_12_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    user_reset_carry__0_i_13
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(user_reset_carry__0_i_13_n_0));
  LUT3 #(
    .INIT(8'h82)) 
    user_reset_carry__0_i_2
       (.I0(user_reset_carry__0_1),
        .I1(sel0__0[18]),
        .I2(user_reset_carry__0_2),
        .O(\count_reg[18]_0 [2]));
  LUT6 #(
    .INIT(64'h6006000000006006)) 
    user_reset_carry__0_i_3
       (.I0(user_reset_carry__0_i_8_0),
        .I1(sel0__0[17]),
        .I2(user_reset_carry__0_i_8_n_4),
        .I3(sel0__0[16]),
        .I4(sel0__0[15]),
        .I5(user_reset_carry__0_i_8_n_5),
        .O(\count_reg[18]_0 [1]));
  LUT6 #(
    .INIT(64'h0990000000000990)) 
    user_reset_carry__0_i_4
       (.I0(user_reset_carry__0_i_8_n_6),
        .I1(sel0__0[14]),
        .I2(user_reset_carry__0),
        .I3(sel0__0[13]),
        .I4(sel0__0[12]),
        .I5(user_reset_carry__0_0),
        .O(\count_reg[18]_0 [0]));
  CARRY4 user_reset_carry__0_i_5
       (.CI(user_reset_carry__0_i_8_n_0),
        .CO({NLW_user_reset_carry__0_i_5_CO_UNCONNECTED[3:1],user_reset_carry__0_i_8_0}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_user_reset_carry__0_i_5_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 user_reset_carry__0_i_8
       (.CI(1'b0),
        .CO({user_reset_carry__0_i_8_n_0,NLW_user_reset_carry__0_i_8_CO_UNCONNECTED[2:0]}),
        .CYINIT(user_reset_carry__0),
        .DI({user_reset_carry__0_i_9_n_0,user_reset_carry__0_i_10_n_0,1'b1,1'b0}),
        .O({user_reset_carry__0_i_8_n_4,user_reset_carry__0_i_8_n_5,user_reset_carry__0_i_8_n_6,NLW_user_reset_carry__0_i_8_O_UNCONNECTED[0]}),
        .S({user_reset_carry__0_i_11_n_0,user_reset_carry__0_i_12_n_0,user_reset_carry__0_i_13_n_0,1'b1}));
  LUT2 #(
    .INIT(4'h2)) 
    user_reset_carry__0_i_9
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(user_reset_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    user_reset_carry_i_1__0
       (.I0(user_reset_carry[3]),
        .I1(sel0__0[11]),
        .I2(user_reset_carry[2]),
        .I3(sel0__0[10]),
        .I4(sel0__0[9]),
        .I5(user_reset_carry[1]),
        .O(S[3]));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    user_reset_carry_i_2
       (.I0(user_reset_carry[0]),
        .I1(sel0__0[8]),
        .I2(O[2]),
        .I3(sel0__0[7]),
        .I4(sel0__0[6]),
        .I5(O[1]),
        .O(S[2]));
  LUT4 #(
    .INIT(16'h9000)) 
    user_reset_carry_i_3__0
       (.I0(sel0__0[5]),
        .I1(O[0]),
        .I2(sel0__0[4]),
        .I3(sel0__0[3]),
        .O(S[1]));
  LUT3 #(
    .INIT(8'h80)) 
    user_reset_carry_i_4__0
       (.I0(sel0__0[0]),
        .I1(sel0__0[1]),
        .I2(sel0__0[2]),
        .O(S[0]));
endmodule

(* ORIG_REF_NAME = "GUCounter" *) 
module GUCounter__parameterized1
   (\count_reg[0]_0 ,
    CLK,
    reset_IBUF,
    \count_reg[1]_0 ,
    \count_reg[0]_1 ,
    user_reset);
  output [0:0]\count_reg[0]_0 ;
  input CLK;
  input reset_IBUF;
  input \count_reg[1]_0 ;
  input [1:0]\count_reg[0]_1 ;
  input user_reset;

  wire CLK;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire [0:0]\count_reg[0]_0 ;
  wire [1:0]\count_reg[0]_1 ;
  wire \count_reg[1]_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire overflow;
  wire overflow_i_1_n_0;
  wire reset_IBUF;
  wire user_reset;

  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg[0]_1 [1]),
        .I2(\count_reg[0]_1 [0]),
        .I3(user_reset),
        .I4(overflow),
        .I5(reset_IBUF),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00000006)) 
    \count[1]_i_1 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg[1]_0 ),
        .I3(overflow),
        .I4(reset_IBUF),
        .O(\count[1]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count[6]_i_2__0 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\count_reg_n_0_[1] ),
        .O(\count_reg[0]_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg_n_0_[1] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00001000)) 
    overflow_i_1
       (.I0(overflow),
        .I1(reset_IBUF),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\count_reg[1]_0 ),
        .O(overflow_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    overflow_reg
       (.C(CLK),
        .CE(1'b1),
        .D(overflow_i_1_n_0),
        .Q(overflow),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "GUCounter" *) 
module GUCounter__parameterized2
   (E,
    enable0,
    SR,
    Q,
    user_reset,
    reset_IBUF,
    CLK);
  output [0:0]E;
  input enable0;
  input [0:0]SR;
  input [1:0]Q;
  input user_reset;
  input reset_IBUF;
  input CLK;

  wire CLK;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire enable0;
  wire reset_IBUF;
  wire user_reset;

  LUT6 #(
    .INIT(64'h000000000000009A)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(E),
        .I4(user_reset),
        .I5(reset_IBUF),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h000046CC)) 
    \count[1]_i_1 
       (.I0(enable0),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(SR),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h000048F0)) 
    \count[2]_i_1 
       (.I0(enable0),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(SR),
        .O(\count[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \count[6]_i_1__0 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[0] ),
        .O(E));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\count[2]_i_1_n_0 ),
        .Q(\count_reg_n_0_[2] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "GUCounter" *) 
module GUCounter__parameterized3
   (Q,
    SR,
    E,
    CLK);
  output [6:0]Q;
  input [0:0]SR;
  input [0:0]E;
  input CLK;

  wire CLK;
  wire [0:0]E;
  wire [6:0]Q;
  wire [0:0]SR;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire \count[5]_i_1_n_0 ;
  wire \count[6]_i_3_n_0 ;
  wire \count[6]_i_4_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(Q[0]),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .O(\count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\count[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \count[6]_i_3 
       (.I0(\count[6]_i_4_n_0 ),
        .I1(Q[5]),
        .I2(Q[6]),
        .O(\count[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    \count[6]_i_4 
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\count[6]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\count[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\count[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\count[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\count[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\count[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(\count[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(\count[6]_i_3_n_0 ),
        .Q(Q[6]),
        .R(SR));
endmodule

(* ORIG_REF_NAME = "GUCounter" *) 
module GUCounter__parameterized3_0
   (VGA_BLUE_OBUF,
    Q,
    VGA_GREEN_OBUF,
    VGA_RED_OBUF,
    VGA_BLUE,
    user_reset,
    VGA_RED,
    DOADO,
    VGA_RED_0,
    SR,
    E,
    CLK);
  output VGA_BLUE_OBUF;
  output [6:0]Q;
  output VGA_GREEN_OBUF;
  output VGA_RED_OBUF;
  input [0:0]VGA_BLUE;
  input user_reset;
  input [1:0]VGA_RED;
  input [0:0]DOADO;
  input [0:0]VGA_RED_0;
  input [0:0]SR;
  input [0:0]E;
  input CLK;

  wire CLK;
  wire [0:0]DOADO;
  wire [0:0]E;
  wire [6:0]Q;
  wire [0:0]SR;
  wire [0:0]VGA_BLUE;
  wire VGA_BLUE_OBUF;
  wire VGA_GREEN_OBUF;
  wire [1:0]VGA_RED;
  wire [0:0]VGA_RED_0;
  wire VGA_RED_OBUF;
  wire \count[0]_i_1__1_n_0 ;
  wire \count[1]_i_1__0_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_1_n_0 ;
  wire \count[4]_i_1_n_0 ;
  wire \count[5]_i_1__0_n_0 ;
  wire \count[6]_i_2_n_0 ;
  wire \count[6]_i_3_n_0 ;
  wire user_reset;

  LUT6 #(
    .INIT(64'h0000002A00000000)) 
    VGA_BLUE_OBUF_inst_i_1
       (.I0(VGA_BLUE),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(user_reset),
        .I4(VGA_RED[0]),
        .I5(VGA_RED[1]),
        .O(VGA_BLUE_OBUF));
  LUT6 #(
    .INIT(64'h0000002A00000000)) 
    VGA_GREEN_OBUF_inst_i_1
       (.I0(DOADO),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(user_reset),
        .I4(VGA_RED[0]),
        .I5(VGA_RED[1]),
        .O(VGA_GREEN_OBUF));
  LUT6 #(
    .INIT(64'h0000002A00000000)) 
    VGA_RED_OBUF_inst_i_1
       (.I0(VGA_RED_0),
        .I1(Q[5]),
        .I2(Q[6]),
        .I3(user_reset),
        .I4(VGA_RED[0]),
        .I5(VGA_RED[1]),
        .O(VGA_RED_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1__1 
       (.I0(Q[0]),
        .O(\count[0]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \count[1]_i_1__0 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\count[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \count[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \count[3]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\count[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[4]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[4]),
        .O(\count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \count[5]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[5]),
        .O(\count[5]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \count[6]_i_2 
       (.I0(\count[6]_i_3_n_0 ),
        .I1(Q[5]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(Q[6]),
        .O(\count[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \count[6]_i_3 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .O(\count[6]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(\count[0]_i_1__1_n_0 ),
        .Q(Q[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\count[1]_i_1__0_n_0 ),
        .Q(Q[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK),
        .CE(E),
        .D(\count[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\count[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK),
        .CE(E),
        .D(\count[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK),
        .CE(E),
        .D(\count[5]_i_1__0_n_0 ),
        .Q(Q[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK),
        .CE(E),
        .D(\count[6]_i_2_n_0 ),
        .Q(Q[6]),
        .R(SR));
endmodule

module G_BRAM
   (DOADO,
    CLK,
    reset_IBUF,
    ADDRARDADDR);
  output [0:0]DOADO;
  input CLK;
  input reset_IBUF;
  input [13:0]ADDRARDADDR;

  wire [13:0]ADDRARDADDR;
  wire CLK;
  wire [0:0]DOADO;
  wire reset_IBUF;
  wire [15:0]NLW_RAMB18E1_inst_DIADI_UNCONNECTED;
  wire [15:0]NLW_RAMB18E1_inst_DIBDI_UNCONNECTED;
  wire [1:0]NLW_RAMB18E1_inst_DIPADIP_UNCONNECTED;
  wire [1:0]NLW_RAMB18E1_inst_DIPBDIP_UNCONNECTED;
  wire [15:1]NLW_RAMB18E1_inst_DOADO_UNCONNECTED;
  wire [15:0]NLW_RAMB18E1_inst_DOBDO_UNCONNECTED;
  wire [1:0]NLW_RAMB18E1_inst_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_RAMB18E1_inst_DOPBDOP_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000002),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(0)) 
    RAMB18E1_inst
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(1'b0),
        .DIADI(NLW_RAMB18E1_inst_DIADI_UNCONNECTED[15:0]),
        .DIBDI(NLW_RAMB18E1_inst_DIBDI_UNCONNECTED[15:0]),
        .DIPADIP(NLW_RAMB18E1_inst_DIPADIP_UNCONNECTED[1:0]),
        .DIPBDIP(NLW_RAMB18E1_inst_DIPBDIP_UNCONNECTED[1:0]),
        .DOADO({NLW_RAMB18E1_inst_DOADO_UNCONNECTED[15:1],DOADO}),
        .DOBDO(NLW_RAMB18E1_inst_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_RAMB18E1_inst_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_RAMB18E1_inst_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(reset_IBUF),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(reset_IBUF),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

module Hold_to_step
   (enable0,
    Q,
    \count_reg[2] ,
    CLK,
    reset_IBUF,
    D);
  output enable0;
  output [1:0]Q;
  input [1:0]\count_reg[2] ;
  input CLK;
  input reset_IBUF;
  input [0:0]D;

  wire CLK;
  wire [0:0]D;
  wire [1:0]Q;
  wire [1:0]\count_reg[2] ;
  wire enable0;
  wire reset_IBUF;

  FDCE #(
    .INIT(1'b0)) 
    \FF_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(D),
        .Q(Q[0]));
  FDCE #(
    .INIT(1'b0)) 
    \FF_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(Q[0]),
        .Q(Q[1]));
  LUT4 #(
    .INIT(16'h0040)) 
    \count[2]_i_2 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(\count_reg[2] [1]),
        .I3(\count_reg[2] [0]),
        .O(enable0));
endmodule

module PAPUnit
   (DOADO,
    RAMB18E1_inst,
    RAMB18E1_inst_0,
    CLK,
    reset_IBUF,
    Q,
    RAMB18E1_inst_1);
  output [0:0]DOADO;
  output [0:0]RAMB18E1_inst;
  output [0:0]RAMB18E1_inst_0;
  input CLK;
  input reset_IBUF;
  input [6:0]Q;
  input [6:0]RAMB18E1_inst_1;

  wire CLK;
  wire [0:0]DOADO;
  wire [6:0]Q;
  wire [0:0]RAMB18E1_inst;
  wire [0:0]RAMB18E1_inst_0;
  wire [6:0]RAMB18E1_inst_1;
  wire reset_IBUF;

  B_BRAM B_BRAM_inst
       (.ADDRARDADDR({Q,RAMB18E1_inst_1}),
        .CLK(CLK),
        .RAMB18E1_inst_0(RAMB18E1_inst_0),
        .reset_IBUF(reset_IBUF));
  G_BRAM G_BRAM_inst
       (.ADDRARDADDR({Q,RAMB18E1_inst_1}),
        .CLK(CLK),
        .DOADO(DOADO),
        .reset_IBUF(reset_IBUF));
  R_BRAM R_BRAM_inst
       (.ADDRARDADDR({Q,RAMB18E1_inst_1}),
        .CLK(CLK),
        .RAMB18E1_inst_0(RAMB18E1_inst),
        .reset_IBUF(reset_IBUF));
endmodule

module PixelAddrGen
   (VGA_BLUE_OBUF,
    Q,
    VGA_GREEN_OBUF,
    VGA_RED_OBUF,
    \count_reg[6] ,
    CLK,
    reset_IBUF,
    \count_reg[1] ,
    VGA_BLUE,
    user_reset,
    \count_reg[0] ,
    DOADO,
    VGA_RED,
    \count_reg[2] ,
    SR,
    D);
  output VGA_BLUE_OBUF;
  output [6:0]Q;
  output VGA_GREEN_OBUF;
  output VGA_RED_OBUF;
  output [6:0]\count_reg[6] ;
  input CLK;
  input reset_IBUF;
  input \count_reg[1] ;
  input [0:0]VGA_BLUE;
  input user_reset;
  input [1:0]\count_reg[0] ;
  input [0:0]DOADO;
  input [0:0]VGA_RED;
  input [1:0]\count_reg[2] ;
  input [0:0]SR;
  input [0:0]D;

  wire CLK;
  wire [0:0]D;
  wire [0:0]DOADO;
  wire [6:0]Q;
  wire [0:0]SR;
  wire UpUnit_inst_n_1;
  wire VENADDR;
  wire [0:0]VGA_BLUE;
  wire VGA_BLUE_OBUF;
  wire VGA_GREEN_OBUF;
  wire [0:0]VGA_RED;
  wire VGA_RED_OBUF;
  wire [1:0]\count_reg[0] ;
  wire \count_reg[1] ;
  wire [1:0]\count_reg[2] ;
  wire [6:0]\count_reg[6] ;
  wire reset_IBUF;
  wire user_reset;

  GUCounter__parameterized3 HPIXEL_counter_inst
       (.CLK(CLK),
        .E(UpUnit_inst_n_1),
        .Q(\count_reg[6] ),
        .SR(SR));
  UpscallingUnit UpUnit_inst
       (.CLK(CLK),
        .D(D),
        .E(VENADDR),
        .SR(SR),
        .\count_reg[0] (UpUnit_inst_n_1),
        .\count_reg[0]_0 (\count_reg[0] ),
        .\count_reg[1] (\count_reg[1] ),
        .\count_reg[2] (\count_reg[2] ),
        .reset_IBUF(reset_IBUF),
        .user_reset(user_reset));
  GUCounter__parameterized3_0 VPIXEL_counter_inst
       (.CLK(CLK),
        .DOADO(DOADO),
        .E(VENADDR),
        .Q(Q),
        .SR(SR),
        .VGA_BLUE(VGA_BLUE),
        .VGA_BLUE_OBUF(VGA_BLUE_OBUF),
        .VGA_GREEN_OBUF(VGA_GREEN_OBUF),
        .VGA_RED(\count_reg[0] ),
        .VGA_RED_0(VGA_RED),
        .VGA_RED_OBUF(VGA_RED_OBUF),
        .user_reset(user_reset));
endmodule

module R_BRAM
   (RAMB18E1_inst_0,
    CLK,
    reset_IBUF,
    ADDRARDADDR);
  output [0:0]RAMB18E1_inst_0;
  input CLK;
  input reset_IBUF;
  input [13:0]ADDRARDADDR;

  wire [13:0]ADDRARDADDR;
  wire CLK;
  wire [0:0]RAMB18E1_inst_0;
  wire reset_IBUF;
  wire [15:0]NLW_RAMB18E1_inst_DIADI_UNCONNECTED;
  wire [15:0]NLW_RAMB18E1_inst_DIBDI_UNCONNECTED;
  wire [1:0]NLW_RAMB18E1_inst_DIPADIP_UNCONNECTED;
  wire [1:0]NLW_RAMB18E1_inst_DIPBDIP_UNCONNECTED;
  wire [15:1]NLW_RAMB18E1_inst_DOADO_UNCONNECTED;
  wire [15:0]NLW_RAMB18E1_inst_DOBDO_UNCONNECTED;
  wire [1:0]NLW_RAMB18E1_inst_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_RAMB18E1_inst_DOPBDOP_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000003),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(1),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(0),
    .WRITE_WIDTH_B(0)) 
    RAMB18E1_inst
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(1'b0),
        .DIADI(NLW_RAMB18E1_inst_DIADI_UNCONNECTED[15:0]),
        .DIBDI(NLW_RAMB18E1_inst_DIBDI_UNCONNECTED[15:0]),
        .DIPADIP(NLW_RAMB18E1_inst_DIPADIP_UNCONNECTED[1:0]),
        .DIPBDIP(NLW_RAMB18E1_inst_DIPBDIP_UNCONNECTED[1:0]),
        .DOADO({NLW_RAMB18E1_inst_DOADO_UNCONNECTED[15:1],RAMB18E1_inst_0}),
        .DOBDO(NLW_RAMB18E1_inst_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_RAMB18E1_inst_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_RAMB18E1_inst_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b1),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(reset_IBUF),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(reset_IBUF),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
endmodule

module SSyncFSM
   (\FSM_sequential_cur_state_reg[1]_0 ,
    Q,
    D,
    VGA_HSYNC_OBUF,
    reset_IBUF,
    \count_reg[1] ,
    ACTIVE_SIG_IBUF,
    CLK,
    E);
  output \FSM_sequential_cur_state_reg[1]_0 ;
  output [1:0]Q;
  output [0:0]D;
  output VGA_HSYNC_OBUF;
  input reset_IBUF;
  input [1:0]\count_reg[1] ;
  input ACTIVE_SIG_IBUF;
  input CLK;
  input [0:0]E;

  wire ACTIVE_SIG_IBUF;
  wire CLK;
  wire CPIXEL_counter_inst_n_2;
  wire CPIXEL_counter_inst_n_3;
  wire CPIXEL_counter_inst_n_4;
  wire CPIXEL_counter_inst_n_5;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_sequential_cur_state_reg[1]_0 ;
  wire [1:0]Q;
  wire VGA_HSYNC_OBUF;
  wire [1:0]\count_reg[1] ;
  wire [1:0]next_state;
  wire reset_IBUF;
  wire user_reset_carry_n_0;
  wire [2:0]NLW_user_reset_carry_CO_UNCONNECTED;
  wire [3:0]NLW_user_reset_carry_O_UNCONNECTED;

  GUCounter CPIXEL_counter_inst
       (.CLK(CLK),
        .CO(user_reset_carry_n_0),
        .D(next_state),
        .E(E),
        .Q(Q),
        .S({CPIXEL_counter_inst_n_2,CPIXEL_counter_inst_n_3,CPIXEL_counter_inst_n_4,CPIXEL_counter_inst_n_5}),
        .reset_IBUF(reset_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FF[0]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(D));
  (* FSM_ENCODED_STATES = "BACK_PORCH:01,DISPLAYING:10,FRONT_PORCH:11,HSYNC_PULSE:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(next_state[0]),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "BACK_PORCH:01,DISPLAYING:10,FRONT_PORCH:11,HSYNC_PULSE:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(next_state[1]),
        .Q(Q[1]));
  LUT3 #(
    .INIT(8'h56)) 
    VGA_HSYNC_OBUF_inst_i_1
       (.I0(ACTIVE_SIG_IBUF),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(VGA_HSYNC_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    \count[1]_i_2 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(\count_reg[1] [1]),
        .I3(\count_reg[1] [0]),
        .O(\FSM_sequential_cur_state_reg[1]_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 user_reset_carry
       (.CI(1'b0),
        .CO({user_reset_carry_n_0,NLW_user_reset_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_user_reset_carry_O_UNCONNECTED[3:0]),
        .S({CPIXEL_counter_inst_n_2,CPIXEL_counter_inst_n_3,CPIXEL_counter_inst_n_4,CPIXEL_counter_inst_n_5}));
endmodule

(* ORIG_REF_NAME = "SSyncFSM" *) 
module SSyncFSM__parameterized0
   (Q,
    SR,
    user_reset,
    VGA_VSYNC_OBUF,
    reset_IBUF,
    ACTIVE_SIG_IBUF,
    CLK,
    E);
  output [1:0]Q;
  output [0:0]SR;
  output user_reset;
  output VGA_VSYNC_OBUF;
  input reset_IBUF;
  input ACTIVE_SIG_IBUF;
  input CLK;
  input [0:0]E;

  wire ACTIVE_SIG_IBUF;
  wire CLK;
  wire CPIXEL_counter_inst_n_10;
  wire CPIXEL_counter_inst_n_11;
  wire CPIXEL_counter_inst_n_12;
  wire CPIXEL_counter_inst_n_13;
  wire CPIXEL_counter_inst_n_14;
  wire CPIXEL_counter_inst_n_2;
  wire CPIXEL_counter_inst_n_3;
  wire CPIXEL_counter_inst_n_4;
  wire CPIXEL_counter_inst_n_5;
  wire CPIXEL_counter_inst_n_6;
  wire CPIXEL_counter_inst_n_7;
  wire CPIXEL_counter_inst_n_8;
  wire CPIXEL_counter_inst_n_9;
  wire [0:0]E;
  wire [1:0]Q;
  wire [0:0]SR;
  wire VDISP;
  wire VGA_VSYNC_OBUF;
  wire [1:0]next_state;
  wire reset_IBUF;
  wire user_reset;
  wire user_reset0_carry__0_i_1_n_0;
  wire user_reset0_carry__0_i_2_n_0;
  wire user_reset0_carry__0_i_3_n_0;
  wire user_reset0_carry__0_i_4_n_0;
  wire user_reset0_carry__0_i_5_n_0;
  wire user_reset0_carry__0_i_6_n_0;
  wire user_reset0_carry__0_i_7_n_0;
  wire user_reset0_carry__0_i_8_n_0;
  wire user_reset0_carry__0_n_0;
  wire user_reset0_carry__0_n_4;
  wire user_reset0_carry__0_n_5;
  wire user_reset0_carry__0_n_6;
  wire user_reset0_carry__0_n_7;
  wire user_reset0_carry__1_i_1_n_0;
  wire user_reset0_carry__1_i_2_n_0;
  wire user_reset0_carry__1_n_2;
  wire user_reset0_carry__1_n_7;
  wire user_reset0_carry_n_0;
  wire user_reset0_carry_n_4;
  wire user_reset0_carry_n_5;
  wire user_reset0_carry_n_6;
  wire user_reset__10;
  wire user_reset_carry__0_i_1_n_1;
  wire user_reset_carry__0_i_1_n_6;
  wire user_reset_carry__0_i_7_n_0;
  wire user_reset_carry__0_n_0;
  wire user_reset_carry_n_0;
  wire [2:0]NLW_user_reset0_carry_CO_UNCONNECTED;
  wire [0:0]NLW_user_reset0_carry_O_UNCONNECTED;
  wire [2:0]NLW_user_reset0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_user_reset0_carry__1_CO_UNCONNECTED;
  wire [3:1]NLW_user_reset0_carry__1_O_UNCONNECTED;
  wire [2:0]NLW_user_reset_carry_CO_UNCONNECTED;
  wire [3:0]NLW_user_reset_carry_O_UNCONNECTED;
  wire [2:0]NLW_user_reset_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_user_reset_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_user_reset_carry__0_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_user_reset_carry__0_i_1_O_UNCONNECTED;
  wire [3:0]NLW_user_reset_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_user_reset_carry__1_O_UNCONNECTED;

  GUCounter__parameterized0 CPIXEL_counter_inst
       (.CLK(CLK),
        .CO(user_reset__10),
        .D(next_state),
        .DI({CPIXEL_counter_inst_n_13,CPIXEL_counter_inst_n_14}),
        .E(E),
        .\FSM_sequential_cur_state_reg[1] ({CPIXEL_counter_inst_n_10,CPIXEL_counter_inst_n_11,CPIXEL_counter_inst_n_12}),
        .O({user_reset0_carry_n_4,user_reset0_carry_n_5,user_reset0_carry_n_6}),
        .Q(Q),
        .S({CPIXEL_counter_inst_n_2,CPIXEL_counter_inst_n_3,CPIXEL_counter_inst_n_4,CPIXEL_counter_inst_n_5}),
        .\count_reg[18]_0 ({CPIXEL_counter_inst_n_6,CPIXEL_counter_inst_n_7,CPIXEL_counter_inst_n_8}),
        .reset_IBUF(reset_IBUF),
        .user_reset_carry({user_reset0_carry__0_n_4,user_reset0_carry__0_n_5,user_reset0_carry__0_n_6,user_reset0_carry__0_n_7}),
        .user_reset_carry__0(user_reset0_carry__1_n_2),
        .user_reset_carry__0_0(user_reset0_carry__1_n_7),
        .user_reset_carry__0_1(user_reset_carry__0_i_1_n_1),
        .user_reset_carry__0_2(user_reset_carry__0_i_1_n_6),
        .user_reset_carry__0_i_8_0(CPIXEL_counter_inst_n_9));
  (* FSM_ENCODED_STATES = "BACK_PORCH:01,DISPLAYING:10,FRONT_PORCH:11,HSYNC_PULSE:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(next_state[0]),
        .Q(Q[0]));
  (* FSM_ENCODED_STATES = "BACK_PORCH:01,DISPLAYING:10,FRONT_PORCH:11,HSYNC_PULSE:00" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_sequential_cur_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(reset_IBUF),
        .D(next_state[1]),
        .Q(Q[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'hB)) 
    VGA_RED_OBUF_inst_i_2
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(user_reset));
  LUT3 #(
    .INIT(8'h56)) 
    VGA_VSYNC_OBUF_inst_i_1
       (.I0(ACTIVE_SIG_IBUF),
        .I1(Q[1]),
        .I2(Q[0]),
        .O(VGA_VSYNC_OBUF));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hFD)) 
    \count[6]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(reset_IBUF),
        .O(SR));
  (* OPT_MODIFIED = "PROPCONST SWEEP " *) 
  CARRY4 user_reset0_carry
       (.CI(1'b0),
        .CO({user_reset0_carry_n_0,NLW_user_reset0_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({CPIXEL_counter_inst_n_13,1'b1,CPIXEL_counter_inst_n_14,1'b0}),
        .O({user_reset0_carry_n_4,user_reset0_carry_n_5,user_reset0_carry_n_6,NLW_user_reset0_carry_O_UNCONNECTED[0]}),
        .S({CPIXEL_counter_inst_n_10,CPIXEL_counter_inst_n_11,CPIXEL_counter_inst_n_12,1'b1}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 user_reset0_carry__0
       (.CI(user_reset0_carry_n_0),
        .CO({user_reset0_carry__0_n_0,NLW_user_reset0_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({user_reset0_carry__0_i_1_n_0,user_reset0_carry__0_i_2_n_0,user_reset0_carry__0_i_3_n_0,user_reset0_carry__0_i_4_n_0}),
        .O({user_reset0_carry__0_n_4,user_reset0_carry__0_n_5,user_reset0_carry__0_n_6,user_reset0_carry__0_n_7}),
        .S({user_reset0_carry__0_i_5_n_0,user_reset0_carry__0_i_6_n_0,user_reset0_carry__0_i_7_n_0,user_reset0_carry__0_i_8_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    user_reset0_carry__0_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(user_reset0_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    user_reset0_carry__0_i_2
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(user_reset0_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'hB)) 
    user_reset0_carry__0_i_3
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(user_reset0_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    user_reset0_carry__0_i_4
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(user_reset0_carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    user_reset0_carry__0_i_5
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(user_reset0_carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    user_reset0_carry__0_i_6
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(user_reset0_carry__0_i_6_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    user_reset0_carry__0_i_7
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(user_reset0_carry__0_i_7_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    user_reset0_carry__0_i_8
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(user_reset0_carry__0_i_8_n_0));
  CARRY4 user_reset0_carry__1
       (.CI(user_reset0_carry__0_n_0),
        .CO({NLW_user_reset0_carry__1_CO_UNCONNECTED[3:2],user_reset0_carry__1_n_2,NLW_user_reset0_carry__1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,user_reset0_carry__1_i_1_n_0}),
        .O({NLW_user_reset0_carry__1_O_UNCONNECTED[3:1],user_reset0_carry__1_n_7}),
        .S({1'b0,1'b0,1'b1,user_reset0_carry__1_i_2_n_0}));
  LUT2 #(
    .INIT(4'hE)) 
    user_reset0_carry__1_i_1
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(user_reset0_carry__1_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    user_reset0_carry__1_i_2
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(user_reset0_carry__1_i_2_n_0));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 user_reset_carry
       (.CI(1'b0),
        .CO({user_reset_carry_n_0,NLW_user_reset_carry_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_user_reset_carry_O_UNCONNECTED[3:0]),
        .S({CPIXEL_counter_inst_n_2,CPIXEL_counter_inst_n_3,CPIXEL_counter_inst_n_4,CPIXEL_counter_inst_n_5}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 user_reset_carry__0
       (.CI(user_reset_carry_n_0),
        .CO({user_reset_carry__0_n_0,NLW_user_reset_carry__0_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_user_reset_carry__0_O_UNCONNECTED[3:0]),
        .S({user_reset_carry__0_i_1_n_1,CPIXEL_counter_inst_n_6,CPIXEL_counter_inst_n_7,CPIXEL_counter_inst_n_8}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 user_reset_carry__0_i_1
       (.CI(1'b0),
        .CO({NLW_user_reset_carry__0_i_1_CO_UNCONNECTED[3],user_reset_carry__0_i_1_n_1,NLW_user_reset_carry__0_i_1_CO_UNCONNECTED[1:0]}),
        .CYINIT(CPIXEL_counter_inst_n_9),
        .DI({1'b0,1'b0,VDISP,1'b0}),
        .O({NLW_user_reset_carry__0_i_1_O_UNCONNECTED[3:2],user_reset_carry__0_i_1_n_6,NLW_user_reset_carry__0_i_1_O_UNCONNECTED[0]}),
        .S({1'b0,1'b1,user_reset_carry__0_i_7_n_0,1'b1}));
  LUT2 #(
    .INIT(4'h2)) 
    user_reset_carry__0_i_6
       (.I0(Q[1]),
        .I1(Q[0]),
        .O(VDISP));
  LUT2 #(
    .INIT(4'hB)) 
    user_reset_carry__0_i_7
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(user_reset_carry__0_i_7_n_0));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 user_reset_carry__1
       (.CI(user_reset_carry__0_n_0),
        .CO({NLW_user_reset_carry__1_CO_UNCONNECTED[3],user_reset__10,NLW_user_reset_carry__1_CO_UNCONNECTED[1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_user_reset_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,user_reset_carry__0_i_1_n_1,user_reset_carry__0_i_1_n_1,user_reset_carry__0_i_1_n_1}));
endmodule

module UpscallingUnit
   (E,
    \count_reg[0] ,
    CLK,
    reset_IBUF,
    \count_reg[1] ,
    \count_reg[2] ,
    \count_reg[0]_0 ,
    user_reset,
    SR,
    D);
  output [0:0]E;
  output [0:0]\count_reg[0] ;
  input CLK;
  input reset_IBUF;
  input \count_reg[1] ;
  input [1:0]\count_reg[2] ;
  input [1:0]\count_reg[0]_0 ;
  input user_reset;
  input [0:0]SR;
  input [0:0]D;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire HEN_inst_n_1;
  wire [0:0]SR;
  wire [0:0]\count_reg[0] ;
  wire [1:0]\count_reg[0]_0 ;
  wire \count_reg[1] ;
  wire [1:0]\count_reg[2] ;
  wire enable0;
  wire [1:1]p_0_in;
  wire reset_IBUF;
  wire user_reset;

  Hold_to_step HEN_inst
       (.CLK(CLK),
        .D(D),
        .Q({HEN_inst_n_1,p_0_in}),
        .\count_reg[2] (\count_reg[2] ),
        .enable0(enable0),
        .reset_IBUF(reset_IBUF));
  GUCounter__parameterized1 H_upscale_counter_inst
       (.CLK(CLK),
        .\count_reg[0]_0 (\count_reg[0] ),
        .\count_reg[0]_1 (\count_reg[0]_0 ),
        .\count_reg[1]_0 (\count_reg[1] ),
        .reset_IBUF(reset_IBUF),
        .user_reset(user_reset));
  GUCounter__parameterized2 V_upscale_counter_inst
       (.CLK(CLK),
        .E(E),
        .Q({HEN_inst_n_1,p_0_in}),
        .SR(SR),
        .enable0(enable0),
        .reset_IBUF(reset_IBUF),
        .user_reset(user_reset));
endmodule

(* ECO_CHECKSUM = "5853e37e" *) (* POWER_OPT_BRAM_CDC = "0" *) (* POWER_OPT_BRAM_SR_ADDR = "0" *) 
(* POWER_OPT_LOOPED_NET_PERCENTAGE = "0" *) 
(* NotValidForBitStream *)
module VGA
   (reset,
    clk,
    enable,
    ACTIVE_SIG,
    VGA_RED,
    VGA_GREEN,
    VGA_BLUE,
    VGA_HSYNC,
    VGA_VSYNC);
  input reset;
  input clk;
  input enable;
  input ACTIVE_SIG;
  output VGA_RED;
  output VGA_GREEN;
  output VGA_BLUE;
  output VGA_HSYNC;
  output VGA_VSYNC;

  wire ACTIVE_SIG;
  wire ACTIVE_SIG_IBUF;
  wire HDISP;
  wire HSyncFSM_n_0;
  wire VGA_BLUE;
  wire VGA_BLUE_OBUF;
  wire VGA_GREEN;
  wire VGA_GREEN_OBUF;
  wire VGA_HSYNC;
  wire VGA_HSYNC_OBUF;
  wire VGA_RED;
  wire VGA_RED_OBUF;
  wire VGA_VSYNC;
  wire VGA_VSYNC_OBUF;
  wire VSyncFSM_n_2;
  wire blue_val;
  wire clk;
  wire clk_IBUF;
  wire [1:0]cur_state;
  wire [1:0]cur_state_0;
  wire enable;
  wire enable_IBUF;
  wire green_val;
  wire internal_enable;
  wire lopt;
  wire new_clk_BUFG;
  wire red_val;
  wire reset;
  wire reset_IBUF;
  wire user_reset;
  wire [6:0]xPixelAddr;
  wire [6:0]yPixelAddr;
  wire NLW_PixelClk_inst_new_clk_UNCONNECTED;

initial begin
 $sdf_annotate("VGA_tb_2_time_impl.sdf",,,,"tool_control");
end
  IBUF ACTIVE_SIG_IBUF_inst
       (.I(ACTIVE_SIG),
        .O(ACTIVE_SIG_IBUF));
  SSyncFSM HSyncFSM
       (.ACTIVE_SIG_IBUF(ACTIVE_SIG_IBUF),
        .CLK(new_clk_BUFG),
        .D(HDISP),
        .E(internal_enable),
        .\FSM_sequential_cur_state_reg[1]_0 (HSyncFSM_n_0),
        .Q(cur_state),
        .VGA_HSYNC_OBUF(VGA_HSYNC_OBUF),
        .\count_reg[1] (cur_state_0),
        .reset_IBUF(reset_IBUF));
  PAPUnit PAPUnit_inst
       (.CLK(new_clk_BUFG),
        .DOADO(green_val),
        .Q(yPixelAddr),
        .RAMB18E1_inst(red_val),
        .RAMB18E1_inst_0(blue_val),
        .RAMB18E1_inst_1(xPixelAddr),
        .reset_IBUF(reset_IBUF));
  PixelAddrGen PixelAddrGen_inst
       (.CLK(new_clk_BUFG),
        .D(HDISP),
        .DOADO(green_val),
        .Q(yPixelAddr),
        .SR(VSyncFSM_n_2),
        .VGA_BLUE(blue_val),
        .VGA_BLUE_OBUF(VGA_BLUE_OBUF),
        .VGA_GREEN_OBUF(VGA_GREEN_OBUF),
        .VGA_RED(red_val),
        .VGA_RED_OBUF(VGA_RED_OBUF),
        .\count_reg[0] (cur_state),
        .\count_reg[1] (HSyncFSM_n_0),
        .\count_reg[2] (cur_state_0),
        .\count_reg[6] (xPixelAddr),
        .reset_IBUF(reset_IBUF),
        .user_reset(user_reset));
  ClockGenerator PixelClk_inst
       (.E(internal_enable),
        .clk_IBUF(clk_IBUF),
        .enable_IBUF(enable_IBUF),
        .lopt(lopt),
        .new_clk(NLW_PixelClk_inst_new_clk_UNCONNECTED));
  OBUF VGA_BLUE_OBUF_inst
       (.I(VGA_BLUE_OBUF),
        .O(VGA_BLUE));
  OBUF VGA_GREEN_OBUF_inst
       (.I(VGA_GREEN_OBUF),
        .O(VGA_GREEN));
  OBUF VGA_HSYNC_OBUF_inst
       (.I(VGA_HSYNC_OBUF),
        .O(VGA_HSYNC));
  OBUF VGA_RED_OBUF_inst
       (.I(VGA_RED_OBUF),
        .O(VGA_RED));
  OBUF VGA_VSYNC_OBUF_inst
       (.I(VGA_VSYNC_OBUF),
        .O(VGA_VSYNC));
  SSyncFSM__parameterized0 VSyncFSM
       (.ACTIVE_SIG_IBUF(ACTIVE_SIG_IBUF),
        .CLK(new_clk_BUFG),
        .E(internal_enable),
        .Q(cur_state_0),
        .SR(VSyncFSM_n_2),
        .VGA_VSYNC_OBUF(VGA_VSYNC_OBUF),
        .reset_IBUF(reset_IBUF),
        .user_reset(user_reset));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  IBUF enable_IBUF_inst
       (.I(enable),
        .O(enable_IBUF));
  (* OPT_MODIFIED = "BUFG_OPT " *) 
  BUFG new_clk_BUFG_inst
       (.I(lopt),
        .O(new_clk_BUFG));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
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


module FRAME12 (
    input clk,
    input reset,
    input read_enable,
    input [1:0] write_enable,
    input reg_enable,
    input [13:0] address,
    output pixel_val
);
   wire [15:0] doa_data;
   wire [15:0] dob_data;      // Unused output for port B
   wire [1:0] dipa_unused;    // Unused parity input for port A
   wire [1:0] dipb_unused;    // Unused parity input for port B
   wire [1:0] dopa_unused;    // Unused parity output for port A
   wire [1:0] dopb_unused;    // Unused parity output for port B

   // RAMB18E1: 18K-bit Configurable Synchronous Block RAM
   //           Artix-7
   // Xilinx HDL Language Template, version 2020.2.
   
   assign dipa_unused = 2'h00;
   assign dipb_unused = 2'h00;
   assign dopa_unused = 2'h00;
   assign dopb_unused = 2'h00;

   RAMB18E1 #(
      .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
      .SIM_COLLISION_CHECK("ALL"),
      .DOA_REG(0),
      .DOB_REG(0),
      .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
      .INIT_06(256'h00000000000000000007FFFFFFF8000000000000000000000007FFFFFFF80000),
      .INIT_07(256'h0000000000000000001FFFFFFFFF000000000000000000000007FFFFFFF80000),
      .INIT_08(256'h0000000000000000001FFFFFFFFF00000000000000000000001FFFFFFFFF0000),
      .INIT_09(256'h000000000000FFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFF),
      .INIT_0A(256'h000000000000FFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFF),
      .INIT_0B(256'h0000000000001FFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFF),
      .INIT_0C(256'h0000000000001FFFFFFFFFFFFFFFFFFF0000000000001FFFFFFFFFFFFFFFFFFF),
      .INIT_0D(256'h000000000000FFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFF),
      .INIT_0E(256'h000000000007FFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFF),
      .INIT_0F(256'h000000000007FFFFFFFFFFFFFFFFFFFF000000000007FFFFFFFFFFFFFFFFFFFF),
      .INIT_10(256'h00000000001FFFFFFFFFFFFFFFFFFFFF00000000001FFFFFFFFFFFFFFFFFFFFF),
      .INIT_11(256'h001FFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000001FFFFFFFFFFFFFFFFFFFFF),
      .INIT_12(256'h001FFFFFFFFFFFFFFFFFFFFFFFFFFFFF001FFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
      .INIT_13(256'h001FFFFFFFFFFFFFFFFFFFFFFFFFFFFF001FFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
      .INIT_14(256'h001FFFFFFFF800001FFFFFFFFFFFFFFF001FFFFFFFF800001FFFFFFFFFFFFFFF),
      .INIT_15(256'h001FFFFFFFF8000007FFFFFFFFFFFFFF001FFFFFFFF800001FFFFFFFFFFFFFFF),
      .INIT_16(256'h001FFFFFFFF8000007FFFFFFFFFFFFFF001FFFFFFFF8000007FFFFFFFFFFFFFF),
      .INIT_17(256'h001FFFFFFFE00000001FFFFFFFFFFFFF001FFFFFFFE00000001FFFFFFFFFFFFF),
      .INIT_18(256'h001FFFFFFFE00000001FFFFFFFFFFFFF001FFFFFFFE00000001FFFFFFFFFFFFF),
      .INIT_19(256'h001FFFFFFFE00000001FFFFFFFFFFFFF001FFFFFFFE00000001FFFFFFFFFFFFF),
      .INIT_1A(256'h00FFFFFFFF0000000007FFFFFFFFFFFF00FFFFFFFF0000000007FFFFFFFFFFFF),
      .INIT_1B(256'h03FFFFFFFF0000000007FFFFFFFFFFFF00FFFFFFFF0000000007FFFFFFFFFFFF),
      .INIT_1C(256'h1FFFFFFFFF0000000007FFFFFFFFFFFF03FFFFFFFF0000000007FFFFFFFFFFFF),
      .INIT_1D(256'h1FFFFFFFFF0000000007FFFFFFFFFFFF1FFFFFFFFF0000000007FFFFFFFFFFFF),
      .INIT_1E(256'h1FFFFFFFFF0000000007FFFFFFFFFFFF1FFFFFFFFF0000000007FFFFFFFFFFFF),
      .INIT_1F(256'hFFFFFFFFFFE00000001FFFFFFFFFFFFF1FFFFFFFFF0000000007FFFFFFFFFFFF),
      .INIT_20(256'hFFFFFFFFFFE00000001FFFFFFFFFFFFFFFFFFFFFFFE00000001FFFFFFFFFFFFF),
      .INIT_21(256'hFFFFFFFFFFE00000001FFFFFFFFFFFFFFFFFFFFFFFE00000001FFFFFFFFFFFFF),
      .INIT_22(256'hFFFFFFFFFFE0000000FFFFFFFFFFFFFFFFFFFFFFFFE00000001FFFFFFFFFFFFF),
      .INIT_23(256'hFFFFFFFFFFE0000000FFFFFFFFFFFFFFFFFFFFFFFFE0000000FFFFFFFFFFFFFF),
      .INIT_24(256'hFFFFFFFFFFF8000007FFFFFFFFFFFFFFFFFFFFFFFFF8000007FFFFFFFFFFFFFF),
      .INIT_25(256'hFFFFFFFFFFFFE0001FFFFFFFFFFFFFFFFFFFFFFFFFFFE0001FFFFFFFFFFFFFFF),
      .INIT_26(256'hFFFFFFFFFFFFF800FFFFFFFFFFFFFFFFFFFFFFFFFFFFE0001FFFFFFFFFFFFFFF),
      .INIT_27(256'hFFFFFFFFFFFFF800FFFFFFFFFFFFFFFFFFFFFFFFFFFFF800FFFFFFFFFFFFFFFF),
      .INIT_28(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
      .INIT_29(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
      .INIT_2A(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
      .INIT_2B(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
      .INIT_2C(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
      .INIT_2D(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
      .INIT_2E(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
      .INIT_2F(256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF),
      .INIT_A(18'h00000),
      .INIT_B(18'h00000),
      .INIT_FILE("NONE"),
      .RAM_MODE("TDP"),
      .READ_WIDTH_A(1), 
      .READ_WIDTH_B(0), 
      .WRITE_WIDTH_A(0), 
      .WRITE_WIDTH_B(0), 
      .RSTREG_PRIORITY_A("RSTREG"),
      .RSTREG_PRIORITY_B("RSTREG"),
      .SRVAL_A(18'h00000),
      .SRVAL_B(18'h00000),
      .SIM_DEVICE("7SERIES"),
      .WRITE_MODE_A("WRITE_FIRST"),
      .WRITE_MODE_B("WRITE_FIRST")
   )
   RAMB18E1_inst (
      // Port A
      .DOADO(doa_data),                   // 16-bit output: A port data/LSB data
      .DOPADOP(dopa_unused),              // 2-bit output: A port parity data
      .ADDRARDADDR(address),      // 15-bit input: A port address (with MSB padding)
      .CLKARDCLK(clk),                    // 1-bit input: A port clock/Read clock
      .ENARDEN(read_enable),              // 1-bit input: A port enable/Read enable
      .REGCEAREGCE(reg_enable),           // 1-bit input: A port register enable/Register enable
      .RSTRAMARSTRAM(reset),              // 1-bit input: A port set/reset
      .RSTREGARSTREG(reset),              // 1-bit input: A port register set/reset
      .DIADI(16'h0000),                   // 16-bit input: A port data input
      .DIPADIP(dipa_unused),              // 2-bit input: A port parity input
      .WEA(write_enable),                 // 2-bit input: A port write enable

      // Port B (Unused)
      .DOBDO(dob_data),                   // 16-bit output: B port data
      .DOPBDOP(dopb_unused),              // 2-bit output: B port parity data
      .ADDRBWRADDR(14'b0),             // 15-bit input: B port address
      .CLKBWRCLK(1'b0),                   // 1-bit input: B port clock
      .ENBWREN(1'b0),                     // 1-bit input: B port enable
      .REGCEB(1'b0),                      // 1-bit input: B port register enable
      .RSTRAMB(1'b0),                     // 1-bit input: B port set/reset
      .RSTREGB(1'b0),                     // 1-bit input: B port register set/reset
      .DIBDI(16'h0000),                   // 16-bit input: B port data input
      .DIPBDIP(dipb_unused),              // 2-bit input: B port parity input
      .WEBWE(4'b0000)                     // 4-bit input: B port write enable
   );

   assign pixel_val = doa_data[0];

endmodule

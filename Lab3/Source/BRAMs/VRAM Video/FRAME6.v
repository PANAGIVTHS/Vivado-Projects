module FRAME6 (
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
      .INIT_00(256'hFFFFF80000003FFFFFFFFFFFFFFFFFFFFFFFF80000003FFFFFFFFFFFFFFFFFFF),
      .INIT_01(256'hFFFFC000000007FFFFFFFFFFFFFFFFFFFFFFC000000007FFFFFFFFFFFFFFFFFF),
      .INIT_02(256'hFFFE00000000003FFFFFFFFFFFFFFFFFFFFFC000000007FFFFFFFFFFFFFFFFFF),
      .INIT_03(256'hFFFE00000000003FFFFFFFFFFFFFFFFFFFFE00000000003FFFFFFFFFFFFFFFFF),
      .INIT_04(256'hFFFE000000000007FFFFFFFFFFFFFFFFFFFE000000000007FFFFFFFFFFFFFFFF),
      .INIT_05(256'hFFFE000000000000FFFFFFFFFFFFFFFFFFFE000000000007FFFFFFFFFFFFFFFF),
      .INIT_06(256'hFFFE000000000000FFFFFFFFFFFFFFFFFFFE000000000000FFFFFFFFFFFFFFFF),
      .INIT_07(256'hFFFE000000000000FFFFFFFFFFFFFFFFFFFE000000000000FFFFFFFFFFFFFFFF),
      .INIT_08(256'hFFFE000000000000FFFFFFFFFFFFFFFFFFFE000000000000FFFFFFFFFFFFFFFF),
      .INIT_09(256'hFFF80000000000003FFFFFFFFFFFFFFFFFF80000000000003FFFFFFFFFFFFFFF),
      .INIT_0A(256'hFFF80000000000003FFFFFFFFFFFFFFFFFF80000000000003FFFFFFFFFFFFFFF),
      .INIT_0B(256'hFFF80000000000003FFFFFFFFFFFFFFFFFF80000000000003FFFFFFFFFFFFFFF),
      .INIT_0C(256'hFFC00000000000003FFFFFFFFFFFFFFFFFC00000000000003FFFFFFFFFFFFFFF),
      .INIT_0D(256'hFFC00000000000003FFFFFFFFFFFFFFFFFC00000000000003FFFFFFFFFFFFFFF),
      .INIT_0E(256'hFFC00000000000003FFFFFFFFFFFFFFFFFC00000000000003FFFFFFFFFFFFFFF),
      .INIT_0F(256'hFFC0000000000000FFFFFFFFFFFFFFFFFFC0000000000000FFFFFFFFFFFFFFFF),
      .INIT_10(256'hFFC0000000000007FFFFFFFFFFFFFFFFFFC0000000000000FFFFFFFFFFFFFFFF),
      .INIT_11(256'hFFC0000000000007FFFFFFFFFFFFFFFFFFC0000000000007FFFFFFFFFFFFFFFF),
      .INIT_12(256'hFFC000000000003FFFFFFFFFFFFFFFFFFFC000000000003FFFFFFFFFFFFFFFFF),
      .INIT_13(256'hFFC000000000003FFFFFFFFFFFFFFFFFFFC000000000003FFFFFFFFFFFFFFFFF),
      .INIT_14(256'hFFC000000000003FFFFFFFFFFFFFFFFFFFC000000000003FFFFFFFFFFFFFFFFF),
      .INIT_15(256'hFFC000000000003FFFFFFFFFFFFFFFFFFFC000000000003FFFFFFFFFFFFFFFFF),
      .INIT_16(256'hFFC000000000003FFFFFFFFFFFFFFFFFFFC000000000003FFFFFFFFFFFFFFFFF),
      .INIT_17(256'hFFC000000000003FFFFFFFFFFFFFFFFFFFC000000000003FFFFFFFFFFFFFFFFF),
      .INIT_18(256'hFFC00000000000FFFF1FFFFFFFFFFFFFFFC00000000000FFFF1FFFFFFFFFFFFF),
      .INIT_19(256'hFFC00000000000FFF807FFFFFFFFFFFFFFC00000000000FFFF1FFFFFFFFFFFFF),
      .INIT_1A(256'hFFC00000000000FFF807FFFFFFFFFFFFFFC00000000000FFF807FFFFFFFFFFFF),
      .INIT_1B(256'hFE000000000007F80000FFFFFFFFFFFFFE000000000007F80000FFFFFFFFFFFF),
      .INIT_1C(256'hFE000000000007F80000FFFFFFFFFFFFFE000000000007F80000FFFFFFFFFFFF),
      .INIT_1D(256'hFE000000000007F80000FFFFFFFFFFFFFE000000000007F80000FFFFFFFFFFFF),
      .INIT_1E(256'hFE000000000007F800001FFFFFFFFFFFFE000000000007F800001FFFFFFFFFFF),
      .INIT_1F(256'hFE000000000007F800001FFFFFFFFFFFFE000000000007F800001FFFFFFFFFFF),
      .INIT_20(256'hFE000000000007F800001FFFFFFFFFFFFE000000000007F800001FFFFFFFFFFF),
      .INIT_21(256'hFFC6000000003FF80000FFFFFFFFFFFFFFC6000000003FF80000FFFFFFFFFFFF),
      .INIT_22(256'hFFFE000000003FC00000FFFFFFFFFFFFFFC6000000003FF80000FFFFFFFFFFFF),
      .INIT_23(256'hFFFE000000003FC00000FFFFFFFFFFFFFFFE000000003FC00000FFFFFFFFFFFF),
      .INIT_24(256'hFFFE0000000007000007FFFFFFFFFFFFFFFE0000000007000007FFFFFFFFFFFF),
      .INIT_25(256'hFFFFC000000000000007FFFFFFFFFFFFFFFE0000000007000007FFFFFFFFFFFF),
      .INIT_26(256'hFFFFC000000000000007FFFFFFFFFFFFFFFFC000000000000007FFFFFFFFFFFF),
      .INIT_27(256'hFFFFF80000000000001FFFFFFFFFFFFFFFFFF80000000000001FFFFFFFFFFFFF),
      .INIT_28(256'hFFFFF80000000000001FFFFFFFFFFFFFFFFFF80000000000001FFFFFFFFFFFFF),
      .INIT_29(256'hFFFFF80000000000001FFFFFFFFFFFFFFFFFF80000000000001FFFFFFFFFFFFF),
      .INIT_2A(256'hFFFFC000000000000007FFFFFFFFFFFFFFFFF80000000000001FFFFFFFFFFFFF),
      .INIT_2B(256'hFFFFC000000000000007FFFFFFFFFFFFFFFFC000000000000007FFFFFFFFFFFF),
      .INIT_2C(256'hFFFFC000000000000007FFFFFFFFFFFFFFFFC000000000000007FFFFFFFFFFFF),
      .INIT_2D(256'hFFFFC000000000000007FFFFFFFFFFFFFFFFC000000000000007FFFFFFFFFFFF),
      .INIT_2E(256'hFFFFC000000000000007FFFFFFFFFFFFFFFFC000000000000007FFFFFFFFFFFF),
      .INIT_2F(256'hFFFFC000000000000007FFFFFFFFFFFFFFFFC000000000000007FFFFFFFFFFFF),
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

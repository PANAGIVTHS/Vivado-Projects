
module FRAME0 (
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
      .INIT_00(256'hFFFFFFFFFFFFFFFFFFE0000000000000FFFFFFFFFFFFFFFFFFE0000000000000),
      .INIT_01(256'hFFFFFFFFFFFFFFFFFFE0000000000000FFFFFFFFFFFFFFFFFFE0000000000000),
      .INIT_02(256'hFFFFFFFFFFFFFFFFFFE0000000000000FFFFFFFFFFFFFFFFFFE0000000000000),
      .INIT_03(256'hFFFFFFFFFFFFFFFFFFFC000000000000FFFFFFFFFFFFFFFFFFFC000000000000),
      .INIT_04(256'hFFFFFFFFFFFFFFFFFFFC000000000000FFFFFFFFFFFFFFFFFFFC000000000000),
      .INIT_05(256'hFFFFFFFFFFFFFFFFFFFC000000000000FFFFFFFFFFFFFFFFFFFC000000000000),
      .INIT_06(256'hFFFFFFFFFFFFFFFFFFE0000000000000FFFFFFFFFFFFFFFFFFE0000000000000),
      .INIT_07(256'hFFFFFFFFFFFFFFFFFF00000000000000FFFFFFFFFFFFFFFFFF00000000000000),
      .INIT_08(256'hFFFFFFFC000003FFE000000000000000FFFFFFFFFFFFFFFFFF00000000000000),
      .INIT_09(256'hFFFFFFFC000003FFE000000000000000FFFFFFFC000003FFE000000000000000),
      .INIT_0A(256'hFFFFFFFC000003FFE000000000000000FFFFFFFC000003FFE000000000000000),
      .INIT_0B(256'hFFFFFFE0000003FFE000000000000000FFFFFFFC000003FFE000000000000000),
      .INIT_0C(256'hFFFFFFE0000003FFE000000000000000FFFFFFE0000003FFE000000000000000),
      .INIT_0D(256'h1FFFFFE0000003FFE0000000000000001FFFFFE0000003FFE000000000000000),
      .INIT_0E(256'h03FFFF00000003FFE0000000000000001FFFFFE0000003FFE000000000000000),
      .INIT_0F(256'h00FFFC0000001FFFE00000000000000003FFFF00000003FFE000000000000000),
      .INIT_10(256'h00FFFC0000001FFFE00000000000000000FFFC0000001FFFE000000000000000),
      .INIT_11(256'h001FE0000000FFFFFC00000000000000001FE0000000FFFFFC00000000000000),
      .INIT_12(256'h000300000003FFFFFF00000000000000001FE0000000FFFFFC00000000000000),
      .INIT_13(256'h000300000003FFFFFF00000000000000000300000003FFFFFF00000000000000),
      .INIT_14(256'h00000000001FFFFFFFE000000000000000000000001FFFFFFFE0000000000000),
      .INIT_15(256'h00000000001FFFFFFFE000000000000000000000001FFFFFFFE0000000000000),
      .INIT_16(256'h00000000001FFFFFFFE000000000000000000000001FFFFFFFE0000000000000),
      .INIT_17(256'h00000000001FFFFFFFFC00000000000000000000001FFFFFFFFC000000000000),
      .INIT_18(256'h00000000001FFFFFFFFC00000000000000000000001FFFFFFFFC000000000000),
      .INIT_19(256'h0000000000FFFFFFFFFC00000000000000000000001FFFFFFFFC000000000000),
      .INIT_1A(256'h0000000000FFFFFFFFFC0000000000000000000000FFFFFFFFFC000000000000),
      .INIT_1B(256'h0000000000FFFFFFFFFC0000000000000000000000FFFFFFFFFC000000000000),
      .INIT_1C(256'h0000000000FFFFFFFFFC0000000000000000000000FFFFFFFFFC000000000000),
      .INIT_1D(256'h0000000000FFFFFFFFFC0000000000000000000000FFFFFFFFFC000000000000),
      .INIT_1E(256'h0000000000FFFFFFFFE00000000000000000000000FFFFFFFFE0000000000000),
      .INIT_1F(256'h00000000001FFFFFFF000000000000000000000000FFFFFFFFE0000000000000),
      .INIT_20(256'h00000000001FFFFFFC0000000000000000000000001FFFFFFF00000000000000),
      .INIT_21(256'h00000000001FFFFFFC0000000000000000000000001FFFFFFC00000000000000),
      .INIT_22(256'h000000000003FFFF0000000000000000000000000003FFFF0000000000000000),
      .INIT_23(256'h000000000000FFFC0000000000000000000000000003FFFF0000000000000000),
      .INIT_24(256'h000000000000FFFC0000000000000000000000000000FFFC0000000000000000),
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

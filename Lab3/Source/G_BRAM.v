module G_BRAM (
    input clk,
    input reset,
    input read_enable,
    input [1:0] write_enable,
    input reg_enable,
    input [13:0] address,
    output [15:0] green_val // Adjusted to 16-bit output to match `DOADO` width
);

   wire [15:0] doa_data;

   // RAMB18E1: 18K-bit Configurable Synchronous Block RAM
   //           Artix-7
   // Xilinx HDL Language Template, version 2020.2

   RAMB18E1 #(
      .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
      .SIM_COLLISION_CHECK("ALL"),
      .DOA_REG(0),
      .DOB_REG(0),
      .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000001),
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
      .INIT_A(18'h00000),
      .INIT_B(18'h00000),
      .INIT_FILE("NONE"),
      .RAM_MODE("TDP"),
      .READ_WIDTH_A(18), 
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
      .DOADO(doa_data),                   // 16-bit output: A port data/LSB data
      .ADDRARDADDR(address),              // 14-bit input: A port address/Read address
      .CLKARDCLK(clk),                    // 1-bit input: A port clock/Read clock
      .ENARDEN(read_enable),              // 1-bit input: A port enable/Read enable
      .REGCEAREGCE(reg_enable),           // 1-bit input: A port register enable/Register enable
      .RSTRAMARSTRAM(reset),              // 1-bit input: A port set/reset
      .RSTREGARSTREG(reset),              // 1-bit input: A port register set/reset
      .WEA(write_enable)                  // 2-bit input: A port write enable
      // Unconnected ports removed
   );

   assign green_val = doa_data;
endmodule

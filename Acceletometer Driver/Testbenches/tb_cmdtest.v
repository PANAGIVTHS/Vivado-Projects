`timescale 1ns / 10ps
//m
module tb_cmdtest;
reg clk;
reg reset;

localparam CLK_PERIOD = 10;
always #(CLK_PERIOD/2) clk=~clk;


localparam WRITE = 8'h0A;
localparam SOFT_RESET = 8'h1F;
localparam FILTER_CTL = 8'h2C;
localparam READ = 8'h0B;
localparam POWER_CTL = 8'h2D;
localparam OFF = 8'hFF;

wire o_CMD_Stall;
reg [7:0] i_CMD_Instruction;
reg [7:0] i_CMD_Address;
reg [7:0] i_CMD_Data;

CMDController CMDInst (.clk(clk), .reset(reset), .enable(1'b1), .i_CMD_Instruction(i_CMD_Instruction),
                       .i_CMD_Address(i_CMD_Address), .i_CMD_Data(i_CMD_Data), .o_CMD_Stall(o_CMD_Stall));

initial begin
    clk<=0;

    #(CLK_PERIOD*388) reset<=1;
    #(CLK_PERIOD*3) reset<=0; 
    
    i_CMD_Instruction = WRITE;
    i_CMD_Address = SOFT_RESET;
    i_CMD_Data = 8'h52; 

    #(CLK_PERIOD*50000)

    i_CMD_Instruction = READ;
    i_CMD_Address = 0;
    i_CMD_Data = 8'h45; 
    #(CLK_PERIOD*1000)
    i_CMD_Instruction = OFF;

end

endmodule
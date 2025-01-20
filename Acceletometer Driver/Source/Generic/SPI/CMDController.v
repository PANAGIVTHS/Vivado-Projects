

module CMDController #(
    localparam CMDLENGTH = 8,
    localparam DATA_LENGTH = 8,
    localparam DATA_TEMP_LENGTH = 14,
    localparam OFF = 8'hFF,    
    localparam READ = 8'b00001011,
    localparam WRITE = 8'b00001010,
    localparam SOFT_RESET_ADDR = 8'h1F,
    localparam FILTER_CTL_ADDR = 8'h2C,
    localparam POWER_CTL_ADDR = 8'h2D
)(
    input clk,
    input reset,
    input enable,
    input i_SPI_Miso,
    output o_SPI_Clk,
    output o_SPI_Mosi,
    output o_SPI_CSLow,
    output reg [DATA_LENGTH-1:0] o_CMD_DataX,
    output reg [DATA_LENGTH-1:0] o_CMD_DataY,
    output reg [DATA_LENGTH-1:0] o_CMD_DataZ,
    output reg [DATA_TEMP_LENGTH-1:0] o_CMD_DataT,
    output reg o_CMD_dataReady
);
    reg [CMDLENGTH - 1:0] i_CMD_Instruction;
    reg [CMDLENGTH - 1:0] i_CMD_Address;
    reg [CMDLENGTH - 1:0] i_CMD_Data;
    reg [DATA_LENGTH-1:0] temp_l;
    wire [CMDLENGTH - 1:0] o_CMD_Data;
    wire o_CMD_Ready;
    wire nextCommand;
    wire datax, datay, dataz, datat1, datat2;
    wire o_Rx_ByteValid;

    CMDHandler CMDHandlerInst (.clk(clk), .reset(reset), .enable(enable), .i_CMD_Instruction(i_CMD_Instruction),
                               .i_CMD_Address(i_CMD_Address), .i_CMD_Address(i_CMD_Address), .i_CMD_Data(i_CMD_Data),
                               .o_CMD_Data(o_CMD_Data), .o_CMD_Stall(), .o_CMD_Ready(o_CMD_Ready), 
                               .o_Rx_ByteValid(o_Rx_ByteValid), .o_SPI_Clk(o_SPI_Clk), .o_SPI_CSLow(o_SPI_CSLow),
                               .o_SPI_Mosi(o_SPI_Mosi), .i_SPI_Miso(i_SPI_Miso));

    toPulse toPulseInst (.clk(clk), .reset(reset), .contSignal(o_CMD_Ready), .pulse(nextCommand));

    //? FSM
    reg [3:0] curState;
    reg [3:0] nextState;

    localparam IDLE = 4'b0000, SOFT_RESET = 4'b0001, POWER_CTL  = 4'b0011, FILTER_CTL = 4'b0010,
               DATA_X = 4'b0110, DATA_Y = 4'b0111, DATA_Z = 4'b0101, TEMP_L = 4'b0100, TEMP_H = 4'b1100;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            o_CMD_DataX <= 0;
            o_CMD_DataY <= 0;
            o_CMD_DataZ <= 0;
            o_CMD_DataT <= 0;
            o_CMD_dataReady <= 0;
            temp_l <= 0;
        end else if (o_Rx_ByteValid && datax) begin
            o_CMD_DataX <= o_CMD_Data;
        end else if (o_Rx_ByteValid && datay) begin
            o_CMD_DataY <= o_CMD_Data;
        end else if (o_Rx_ByteValid && dataz) begin
            o_CMD_DataZ <= o_CMD_Data;
        end else if (o_Rx_ByteValid && datat1) begin
            temp_l <= o_CMD_Data;
        end else if (o_Rx_ByteValid && datat2) begin
            o_CMD_DataT <= {o_CMD_Data[3:0], temp_l};
            o_CMD_dataReady <= 1;
        end
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            curState <= IDLE;
        end else begin
            curState <= nextState;
        end
    end

    always @(*) begin
        datax = 0;
        datay = 0;
        dataz = 0;
        datat1 = 0;
        datat2 = 0;
        i_CMD_Instruction = OFF; 
        i_CMD_Address = 0;
        i_CMD_Data = 0;
        case (curState)
            IDLE: begin
                nextState = enable ? IDLE : SOFT_RESET;
            end
            SOFT_RESET: begin
                nextState = nextCommand ? POWER_CTL : SOFT_RESET;
                i_CMD_Instruction = WRITE;
                i_CMD_Address = SOFT_RESET_ADDR;
                i_CMD_Data = 8'h52;
            end
            POWER_CTL: begin
                nextState = nextCommand ? FILTER_CTL : POWER_CTL;
                i_CMD_Instruction = WRITE;
                i_CMD_Address = POWER_CTL_ADDR;
                i_CMD_Data = 8'h02;
            end
            FILTER_CTL: begin
                nextState = nextCommand ? DATA_X : FILTER_CTL;
                i_CMD_Instruction = WRITE; 
                i_CMD_Address = FILTER_CTL_ADDR;
                i_CMD_Data = 8'h14;
            end
            DATA_X: begin
                datax = 1;
                nextState = nextCommand ? DATA_Y : DATA_X;
                i_CMD_Instruction = READ;
                i_CMD_Address = 8'h08;
                i_CMD_Data = OFF;
            end
            DATA_Y: begin
                datay = 1;
                nextState = nextCommand ? DATA_Z : DATA_Y;
                i_CMD_Instruction = READ;
                i_CMD_Address = 8'h09;
                i_CMD_Data = OFF;
            end
            DATA_Z: begin
                dataz = 1;
                nextState = nextCommand ? TEMP_L : DATA_Z;
                i_CMD_Instruction = READ;
                i_CMD_Address = 8'h0A;
                i_CMD_Data = OFF;
            end
            TEMP_L: begin
                datat1 = 1;
                nextState = nextCommand ? TEMP_H : TEMP_L;
                i_CMD_Instruction = READ;
                i_CMD_Address = 8'h14;
                i_CMD_Data = OFF;
                temp_l = o_CMD_Data;
            end
            TEMP_H: begin
                datat2 = 1;
                nextState = nextCommand ? DATA_X : TEMP_H;
                i_CMD_Instruction = READ;
                i_CMD_Address = 8'h15;
                i_CMD_Data = OFF;
            end
            default: nextState = IDLE;
        endcase
    end
endmodule
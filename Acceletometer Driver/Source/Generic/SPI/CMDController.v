/*
 * -----------------------------------------------------------------------------
 ? Signal Naming Convention:
 *   The naming convention used in this module is as follows:
 *     x_Y_z
 *     where:
 !       x - Indicates the signal type:
 *           'i' for input signals.
 *           'o' for output signals.
 *           <none>: for insternal signals.
 !       Y - Specifies the class or category of the signal (optional):
 *           SPI: SPI-specific signals (e.g., i_SPI_Miso, o_SPI_Mosi, o_SPI_CSLow).
 *           CMD: Command-related signals (e.g., o_CMD_DataX, o_CMD_DataY).
 !       z - Descriptive name of the variable:
 *           A meaningful identifier for the signal.
 *
 * -----------------------------------------------------------------------------
 ? More Information about Naming:
 *   Examples and more in Top module.
 * -----------------------------------------------------------------------------
 ? Module Description:
 *   The CMDController module is used to control the ADXL362 accelerometer and
 *   to read the data from the accelerometer. The module uses the CMDHandler
 *   module to handle the commands and data transfers over the SPI interface.
 *   The module uses a state machine to perform the startup sequence and to
 *   read the data from the accelerometer.
 *
 ?   Inputs:
 *     - clk: Clock signal.
 *     - reset: Reset signal.
 *     - enable: Enable signal.
 *     - i_SPI_Miso: Input signal carrying the SPI MISO data.
 *
 ?   Outputs:
 *     - o_SPI_Clk: Output signal carrying the SPI clock.
 *     - o_SPI_Mosi: Output signal carrying the SPI MOSI data.
 *     - o_SPI_CSLow: Output signal indicating that the SPI CS is low.
 *     - o_CMD_DataX: Output signal carrying the X-axis raw data.
 *     - o_CMD_DataY: Output signal carrying the Y-axis raw data.
 *     - o_CMD_DataZ: Output signal carrying the Z-axis raw data.
 *     - o_CMD_DataT: Output signal carrying the temperature raw data.
 *     - o_CMD_dataReady: Output signal indicating that the data is ready.
 *
 * -----------------------------------------------------------------------------
 */

module CMDController #(
    localparam SOFT_RESET_ADDR = 8'h1F,
    localparam FILTER_CTL_ADDR = 8'h2C,
    localparam POWER_CTL_ADDR = 8'h2D,
    localparam DATA_TEMP_LENGTH = 12,
    localparam WRITE = 8'b00001010,
    localparam READ = 8'b00001011,
    localparam DATA_LENGTH = 8,
    localparam CMDLENGTH = 8,
    localparam OFF = 8'hFF
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
    reg [CMDLENGTH - 1:0] cmdInstruction, cmdAddress, cmdDataOut;
    wire cmdReady, nextCommand, dataValid, newDataPulse;
    wire [CMDLENGTH - 1:0] cmdDataIn;
    reg [DATA_LENGTH-1:0] temp_l;
    reg datax, datay, dataz, datat1, datat2;

    CMDHandler CMDHandlerInst (.clk(clk), .reset(reset), .enable(enable), .i_CMD_Instruction(cmdInstruction),
                               .i_CMD_Address(cmdAddress), .i_CMD_Data(cmdDataOut),
                               .o_CMD_Data(cmdDataIn), .o_CMD_Stall(), .o_CMD_Ready(cmdReady), 
                               .o_DATA_Valid(dataValid), .o_SPI_Clk(o_SPI_Clk), .o_SPI_CSLow(o_SPI_CSLow),
                               .o_SPI_Mosi(o_SPI_Mosi), .i_SPI_Miso(i_SPI_Miso));

    toPulse toPulseInst (.clk(clk), .reset(reset), .contSignal(cmdReady), .pulse(nextCommand));
    toPulse toPulseInst2 (.clk(clk), .reset(reset), .contSignal(dataValid), .pulse(newDataPulse));

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
        end else if (!newDataPulse) begin 
            o_CMD_dataReady <= 0;
        end else if (newDataPulse && datax) begin
            o_CMD_dataReady <= 1;
            o_CMD_DataT <= {cmdDataIn[3:0], temp_l};
        end else if (newDataPulse && datay) begin
            o_CMD_dataReady <= 1;
            o_CMD_DataX <= cmdDataIn;
        end else if (newDataPulse && dataz) begin
            o_CMD_dataReady <= 1;
            o_CMD_DataY <= cmdDataIn;
        end else if (newDataPulse && datat1) begin
            o_CMD_dataReady <= 1;
            o_CMD_DataZ <= cmdDataIn;
        end else if (newDataPulse && datat2) begin
            temp_l <= cmdDataIn;
            o_CMD_dataReady <= 1;
        end
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            curState <= IDLE;
        end else if (enable) begin
            curState <= nextState;
        end
    end

    always @(*) begin
        datax = 0;
        datay = 0;
        dataz = 0;
        datat1 = 0;
        datat2 = 0;
        cmdInstruction = OFF; 
        cmdAddress = 0;
        cmdDataOut = 0;
        case (curState)
            IDLE: begin
                nextState = enable ? SOFT_RESET : IDLE;
            end
            SOFT_RESET: begin
                nextState = nextCommand ? POWER_CTL : SOFT_RESET;
                cmdInstruction = WRITE;
                cmdAddress = SOFT_RESET_ADDR;
                cmdDataOut = 8'h52;
            end
            POWER_CTL: begin
                nextState = nextCommand ? FILTER_CTL : POWER_CTL;
                cmdInstruction = WRITE;
                cmdAddress = POWER_CTL_ADDR;
                cmdDataOut = 8'h02;
            end
            FILTER_CTL: begin
                nextState = nextCommand ? DATA_X : FILTER_CTL;
                cmdInstruction = WRITE; 
                cmdAddress = FILTER_CTL_ADDR;
                cmdDataOut = 8'h14;
            end
            DATA_X: begin
                datax = 1;
                nextState = nextCommand ? DATA_Y : DATA_X;
                cmdInstruction = READ;
                cmdAddress = 8'h08;
                cmdDataOut = OFF;
            end
            DATA_Y: begin
                datay = 1;
                nextState = nextCommand ? DATA_Z : DATA_Y;
                cmdInstruction = READ;
                cmdAddress = 8'h09;
                cmdDataOut = OFF;
            end
            DATA_Z: begin
                dataz = 1;
                nextState = nextCommand ? TEMP_L : DATA_Z;
                cmdInstruction = READ;
                cmdAddress = 8'h0A;
                cmdDataOut = OFF;
            end
            TEMP_L: begin
                datat1 = 1;
                nextState = nextCommand ? TEMP_H : TEMP_L;
                cmdInstruction = READ;
                cmdAddress = 8'h14;
                cmdDataOut = OFF;
            end
            TEMP_H: begin
                datat2 = 1;
                nextState = nextCommand ? DATA_X : TEMP_H;
                cmdInstruction = READ;
                cmdAddress = 8'h15;
                cmdDataOut = OFF;
            end
            default: nextState = IDLE;
        endcase
    end
endmodule
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
 *           Rx: Receive-related signals.
 *           SPI: SPI-specific signals (e.g., i_SPI_Miso, o_SPI_Mosi, o_SPI_CSLow).
 *           CMD: Command-related signals (e.g., i_CMD_Instruction, o_CMD_Data).
 *           <none>: Control signals (e.g., start, done, enable).
 !       z - Descriptive name of the variable:
 *           A meaningful identifier for the signal.
 *
 * -----------------------------------------------------------------------------
 ? More Information about Naming:
 *   Examples and more in Top module.
 * -----------------------------------------------------------------------------
 ? Module Description:
 *   The CMDHandler module is used to handle ADXL362 commands and data transfers
 *   over the SPI interface. The module uses a state machine to control the data
 *   transfer process and to ensure that the correct sequence of 8bit information
 *   is transmitted to create a valid command. The module also handles the timing
 *   requirements for each command.
 *
 ?   Inputs:
 *     - i_CMD_Instruction: 8-bit input signal carrying the command instruction.
 *     - i_CMD_Address: 8-bit input signal carrying the command address.
 *     - i_CMD_Data: 8-bit input signal carrying the command data.
 *     - i_SPI_Miso: Input signal carrying the SPI MISO data.
 *
 ?   Outputs:
 *     - o_CMD_Data: 8-bit output signal carrying the received byte from slave.
 *     - o_CMD_Stall: Output signal indicating that the command is stalled.
 *     - o_CMD_Ready: Output signal indicating that a command can be sent.
 *     - o_DATA_Valid: Output signal indicating that the current byte is valid.
 *     - o_SPI_Clk: Output signal carrying the SPI clock.
 *     - o_SPI_Mosi: Output signal carrying the SPI MOSI data.
 *     - o_SPI_CSLow: Output signal indicating that the SPI CS is low.
 * -----------------------------------------------------------------------------
 */

module CMDHandler #(
    localparam POWER_CTL_TIMEOUT = 18'd20, // 40ms 200000
    localparam FILTER_CTL_TIMEOUT = 18'd5, // 5ms 25000
    localparam SOFT_RESET_TIMEOUT = 18'd2, // 0.5ms 2500
    localparam WRITE = 8'b00001010,
    localparam READ = 8'b00001011,
    localparam SOFT_RESET = 8'h1F,
    localparam FILTER_CTL = 8'h2C,
    localparam POWER_CTL = 8'h2D,
    localparam TIMEOUT_BITS = 18,
    localparam CMDLENGTH = 8,
    localparam OFF = 8'hFF
)(
    //? Global Interface.
    input clk,
    input reset,
    input enable,

    //? SPI Master Interface
    output o_SPI_Clk,
    input i_SPI_Miso,
    output o_SPI_Mosi,
    output o_SPI_CSLow,

    //? CMDHandler Interface
    input [CMDLENGTH - 1:0] i_CMD_Instruction,
    input [CMDLENGTH - 1:0] i_CMD_Address,
    input [CMDLENGTH - 1:0] i_CMD_Data,
    output reg [CMDLENGTH - 1:0] o_CMD_Data,
    output o_CMD_Stall,
    output o_CMD_Ready,
    output reg o_DATA_Valid
);
    //? Master Signals
    wire [CMDLENGTH-1:0] readByte;
    reg [CMDLENGTH-1:0] byteToSend;
    reg byteToSendValid;

    //? FSM Signals
    reg [2:0] curState;
    reg [2:0] nextState;
    reg data, idle, timer;
    reg [CMDLENGTH - 1:0] internalAddress;
    reg [CMDLENGTH - 1:0] internalInstr;
    reg [CMDLENGTH - 1:0] internalData;  
    reg [TIMEOUT_BITS - 1:0] timeout;
    
    //? Counter Signals
    wire [2:0] count;
    wire [17:0] countTimeout;

    localparam IDLE = 3'b000, INSTRUCTION = 3'b001, ADDRESS = 3'b011, DATA = 3'b010, TIMEOUT = 3'b110;

    assign o_CMD_Stall = |countTimeout;              // Indicates that the command is stalled
    assign o_CMD_Ready = idle && countTimeout == 0;  // Indicates that a command can be sent

    // Instantiate the SPIMaster module
    SPIMaster MasterInst (
        .clk(clk),
        .reset(reset),
        .o_Rx_Byte(readByte),
        .i_Tx_Byte(byteToSend),
        .i_Tx_Valid(byteToSendValid),
        .o_Tx_Hold(),
        .o_Tx_holdValid(),
        .i_SPI_Miso(i_SPI_Miso),
        .o_SPI_CSLow(o_SPI_CSLow),
        .o_SPI_Mosi(o_SPI_Mosi),
        .o_SPI_Clk(o_SPI_Clk),
        .o_CLK_locked(locked)
    );

    
    // Change command values only when in Idle state
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            internalAddress <= 0;
            internalInstr <= OFF;
            internalData <= 0;
        end else if (idle) begin
            internalInstr <= i_CMD_Instruction;
            internalAddress <= i_CMD_Address;
            internalData <= i_CMD_Data;
        end
    end

    // Output received byte when the timer is activated
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            o_CMD_Data <= 0;
        end else if (timer) begin
            o_CMD_Data <= readByte;
        end
    end

    // Instantiate Counters
    GUCounter #(.BITS(TIMEOUT_BITS))
        GUCounterTimeoutInst (.clk(o_SPI_Clk), .reset_in({reset, countTimeout == timeout - 1 || !timer || !locked}), .enable(enable && timer && locked), .count(countTimeout));

    GUCounter #(.BITS(3))
        GUCounterInst (.clk(o_SPI_Clk), .reset_in({reset, internalInstr == OFF || idle || timer || !locked}), .enable(enable && !idle && locked), .count(count));

    // Set the timeout value for each command
    always @(*) begin
        if (internalInstr == READ) begin 
            timeout = FILTER_CTL_TIMEOUT;
        end else begin 
            case (internalAddress)
                POWER_CTL: timeout = POWER_CTL_TIMEOUT; // 40ms
                FILTER_CTL: timeout = FILTER_CTL_TIMEOUT; // 5ms
                SOFT_RESET: timeout = SOFT_RESET_TIMEOUT;  // 0.5ms
                default: timeout = 2;        // 400ns bigger than required 20ns (Tcsd).
            endcase
        end
    end

    always @(posedge o_SPI_Clk or posedge reset) begin
        if (reset) begin
            curState <= IDLE;
        end else if (locked) begin
            curState <= nextState;
        end
    end
    
    always @(*) begin
        data = 0;
        idle = 0;
        timer = 0;
        o_DATA_Valid = 0;
        case (curState)
            IDLE: begin
                idle = 1;
                if (internalInstr == OFF) begin 
                    nextState = IDLE;
                end else begin 
                    nextState = INSTRUCTION;
                end
                byteToSendValid = 0;
                byteToSend = 0;
            end
            INSTRUCTION: begin 
                if (count == CMDLENGTH - 1) begin 
                    nextState = ADDRESS;
                end else begin
                    nextState = INSTRUCTION;
                end
                byteToSendValid = 1;
                byteToSend = internalInstr;
            end
            ADDRESS: begin 
                if (count == CMDLENGTH - 1) begin 
                    nextState = DATA;
                end else begin 
                    nextState = ADDRESS;
                end
                byteToSendValid = 1;
                byteToSend = internalAddress;
            end
            DATA: begin
                data = 1;
                if (count == CMDLENGTH - 1) begin
                    nextState = TIMEOUT;
                end else begin 
                    nextState = DATA;
                end
                byteToSendValid = 1;
                byteToSend = internalData;
            end
            TIMEOUT: begin
                timer = 1;
                if (internalInstr == READ) begin
                    o_DATA_Valid = 1;
                end
                if (countTimeout == timeout - 1) begin 
                    nextState = IDLE;
                end else begin
                    nextState = TIMEOUT;
                end
                byteToSendValid = 0;
                byteToSend = 0;
            end
            default: begin
                nextState = IDLE;
                byteToSendValid = 0;
                byteToSend = 0;
            end 
        endcase
    end
endmodule
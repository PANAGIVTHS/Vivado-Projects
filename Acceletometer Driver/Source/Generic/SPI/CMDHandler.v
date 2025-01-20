
module CMDHandler #(
    localparam CMDLENGTH = 8,
    localparam READ = 8'b00001011,
    localparam WRITE = 8'b00001010,
    localparam OFF = 8'hFF,
    localparam SOFT_RESET = 8'h1F,
    localparam FILTER_CTL = 8'h2C,
    localparam POWER_CTL = 8'h2D,
    localparam TIMEOUT_BITS = 18
)(
    input clk,
    input reset,
    input enable,
    input [CMDLENGTH - 1:0] i_CMD_Instruction,
    input [CMDLENGTH - 1:0] i_CMD_Address,
    input [CMDLENGTH - 1:0] i_CMD_Data,
    output reg [CMDLENGTH - 1:0] o_CMD_Data,
    output o_CMD_Stall,
    output o_CMD_Ready
);
    //? Master Signals
    wire [CMDLENGTH-1:0] o_Rx_Byte;
    reg [CMDLENGTH-1:0] i_Tx_Byte;
    reg i_Tx_Valid;
    wire o_Tx_Hold, o_Tx_holdValid;
    wire i_SPI_Miso, o_SPI_CSLow, o_SPI_Mosi, o_SPI_Clk;

    //? FSM Signals
    reg [2:0] curState;
    reg [2:0] nextState;
    reg data, idle, timer;
    wire [17:0] countTimeout;
    reg o_Rx_ByteValid;
    reg [CMDLENGTH - 1:0] internalAddress;
    reg [CMDLENGTH - 1:0] internalInstr;
    reg [CMDLENGTH - 1:0] internalData;
    
    localparam IDLE = 3'b000, INSTRUCTION = 3'b001, ADDRESS = 3'b011, DATA = 3'b010, TIMEOUT = 3'b110;

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

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            o_CMD_Data <= 0;
        end else if (timer) begin
            o_CMD_Data <= o_Rx_Byte;
        end
    end

    // Instantiate the SPIMaster module
    SPIMaster MasterInst (
        .clk(clk),
        .reset(reset),
        .o_Rx_Byte(o_Rx_Byte),
        .i_Tx_Byte(i_Tx_Byte),
        .i_Tx_Valid(i_Tx_Valid),
        .o_Tx_Hold(o_Tx_Hold),
        .o_Tx_holdValid(o_Tx_holdValid),
        .i_SPI_Miso(1'b1),
        .o_SPI_CSLow(o_SPI_CSLow),
        .o_SPI_Mosi(o_SPI_Mosi),
        .o_SPI_Clk(o_SPI_Clk),
        .locked(locked)
    );

    wire [2:0] count;

    GUCounter #(.BITS(3))
        GUCounterInst (.clk(o_SPI_Clk), .reset_in({reset, internalInstr == OFF || idle || timer}), .enable(enable && !idle), .count(count));

    assign o_CMD_Stall = |countTimeout;
    assign o_CMD_Ready = idle && !o_CMD_Stall;

    reg [TIMEOUT_BITS - 1:0] timeout;

    always @(*) begin
        case (internalAddress)
            POWER_CTL: timeout = 200000; // 40ms
            FILTER_CTL: timeout = 25000; // 5ms
            SOFT_RESET: timeout = 2500;  // 0.5ms
            default: timeout = 1;        // 200ns bigger than required 20ns (Tcsd)
        endcase
    end

    GUCounter #(.BITS(TIMEOUT_BITS), .SYNCH_RESET(0))
        GUCounterTimeoutInst (.clk(o_SPI_Clk), .reset_in({reset, countTimeout == timeout || !timer}), .enable(enable && timer), .count(countTimeout));

    always @(posedge o_SPI_Clk or posedge reset) begin
        if (reset) begin
            curState <= IDLE;
        end else begin
            curState <= nextState;
        end
    end
    
    always @(*) begin
        data = 0;
        idle = 0;
        timer = 0;
        o_Rx_ByteValid = 0;
        case (curState)
            IDLE: begin
                idle = 1;
                if (internalInstr == OFF) begin 
                    nextState = IDLE;
                end else begin 
                    nextState = INSTRUCTION;
                end
                i_Tx_Valid = 0;
                i_Tx_Byte = 0;
            end
            INSTRUCTION: begin 
                if (count == CMDLENGTH - 1) begin 
                    nextState = ADDRESS;
                end else begin
                    nextState = INSTRUCTION;
                end
                i_Tx_Valid = 1;
                i_Tx_Byte = internalInstr;
            end
            ADDRESS: begin 
                if (count == CMDLENGTH - 1) begin 
                    nextState = DATA;
                end else begin 
                    nextState = ADDRESS;
                end
                i_Tx_Valid = 1;
                i_Tx_Byte = internalAddress;
            end
            DATA: begin
                data = 1;
                if (count == CMDLENGTH - 1) begin
                    nextState = TIMEOUT;
                end else begin 
                    nextState = DATA;
                end
                i_Tx_Valid = 1;
                i_Tx_Byte = internalData;
            end
            TIMEOUT: begin
                timer = 1;
                
                if (internalInstr == READ) begin
                    o_Rx_ByteValid = 1;
                end

                if (countTimeout == timeout - 1) begin 
                    nextState = IDLE;
                end else begin
                    nextState = TIMEOUT;
                end
                i_Tx_Valid = 0;
                i_Tx_Byte = 0;
            end
            default: begin
                nextState = IDLE;
                i_Tx_Valid = 0;
                i_Tx_Byte = 0;
            end 
        endcase
    end
endmodule
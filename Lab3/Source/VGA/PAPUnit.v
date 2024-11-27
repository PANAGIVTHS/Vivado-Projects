/*
    The Pixel Acquisition Processing Unit (PAPUnit) module is responsible for processing the pixel data from the VRAMs and outputting the RGB values.
    It uses the line and offset signals to generate the BRAM address for the red, green, and blue channels. The module uses the G_BRAM, R_BRAM, and
    B_BRAM modules to read the pixel data from the BRAMs. The PAPUnit will output the combined pixel data (RGB) and a signal to indicate the pixel data
    validity. The module will only output valid pixel data when the line and offset signals are within the BRAM (file) boundaries.

    *Notice: The BRAM modules are instantiated in the PAPUnit module, which has to be enabled for them to also be enabled.
    !Danger: Do not concatenate the pixel data outside the always block. This will cause Timing Violaions.
    
    Inputs:
    - clk: Clock signal.
    - reset: Reset signal.
    - enable: Enable signal to start the PAPUnit.
    - line: Line number (0 to 95 for BRAM, 7 bits).
    - offset: Pixel offset (0 to 127 for BRAM, 7 bits).

    Outputs:
    - pixel_data: 3-bit combined pixel data (RGB).
    - valid_pixel: Signal to indicate pixel data validity.
*/

module PAPUnit #(
    parameter HOLD_FRAME = 25,
    parameter BITS = 5
)(
    input clk,                   // Clock signal
    input reset,                 // Reset signal
    input enable,                // Enable signal
    input [6:0] line,            // Line number (0 to 95 for screen, 7 bits)
    input [6:0] offset,          // Pixel offset (0 to 127 for screen, 7 bits)
    input data_src,              // Data source (0 for frame, 1 for BRAM)
    output reg [2:0] pixel_data,     // 3-bit combined pixel data (RGB)
    output valid_pixel           // Signal to indicate pixel data validity.
);

    reg [13:0] address;
    reg [3:0] frame;
    wire [12:0] frame_data;
    wire green_val, red_val, blue_val;
    wire next_frame_hold, next_frame_debounced;
    wire [BITS-1:0] HFRAMECounter;
    wire frameSig;

    localparam NUM_FRAMES = 13;

    SSyncFSM #(.COUNTER_BITS(19), .SHOLD(1600), .SBP(23200), .DISPLAY_TIME(384000), .SFP(8000))
        VSyncFSM (.reset(reset), .clk(clk), .enable(enable), .ACTIVE_SIG(1'b1), .VGA_SIG(next_frame_hold), .displaying());

    Debouncer #(.HOLD_SIGNAL(3), .BITS(4)) 
        Debouncer_inst (.clk(clk), .button(next_frame_hold), .button_debounced(next_frame_debounced));

    Hold_to_step Hold_to_step_inst (.clk(clk), .reset(reset), .button(next_frame_debounced), .spike(frameSig));
    GUCounter #(.BITS(BITS)) HFRAMECounter_inst (.clk(clk), .reset_in({reset, HFRAMECounter == HOLD_FRAME}), .enable(frameSig), .count(HFRAMECounter), .overflow());
    
    always @(posedge clk) begin
        if (reset) begin
            frame <= 0;
        end else if (frame > NUM_FRAMES - 1) begin
            frame <= 0;
        end else if ((HFRAMECounter == HOLD_FRAME - 1) && frameSig && enable) begin
            frame <= frame + 1;
        end
    end

    // Synchronous generation of BRAM row and offset. Why is it needed tho?
    always @(posedge clk) begin
        if (reset) begin
            address <= 0;
        end else if (enable) begin
            address <= {line, offset};
        end
    end

    // Instantiate the BRAM modules for red, green, and blue channels
    G_BRAM G_BRAM_inst (
        .clk(clk),
        .reset(reset),
        .read_enable(enable),
        .write_enable(2'b00),
        .reg_enable(1'b1),
        .address(address), 
        .green_val(green_val)
    );

    R_BRAM R_BRAM_inst (
        .clk(clk),
        .reset(reset),
        .read_enable(enable),
        .write_enable(2'b00),
        .reg_enable(1'b1),
        .address(address), 
        .red_val(red_val)
    );

    B_BRAM B_BRAM_inst (
        .clk(clk),
        .reset(reset),
        .read_enable(enable),
        .write_enable(2'b00),
        .reg_enable(1'b1),
        .address(address),
        .blue_val(blue_val)
    );

    FRAME0 FRAME0_inst (
        .clk(clk),
        .reset(reset),
        .read_enable(enable),
        .write_enable(2'b00),
        .reg_enable(1'b1),
        .address(address),
        .pixel_val(frame_data[0])
    );

    FRAME1 FRAME1_inst (
        .clk(clk),
        .reset(reset),
        .read_enable(enable),
        .write_enable(2'b00),
        .reg_enable(1'b1),
        .address(address),
        .pixel_val(frame_data[1])
    );

    FRAME2 FRAME2_inst (
        .clk(clk),
        .reset(reset),
        .read_enable(enable),
        .write_enable(2'b00),
        .reg_enable(1'b1),
        .address(address),
        .pixel_val(frame_data[2])
    );

    FRAME3 FRAME3_inst (
        .clk(clk),
        .reset(reset),
        .read_enable(enable),
        .write_enable(2'b00),
        .reg_enable(1'b1),
        .address(address),
        .pixel_val(frame_data[3])
    );

    FRAME4 FRAME4_inst (
        .clk(clk),
        .reset(reset),
        .read_enable(enable),
        .write_enable(2'b00),
        .reg_enable(1'b1),
        .address(address),
        .pixel_val(frame_data[4])
    );

    FRAME5 FRAME5_inst (
        .clk(clk),
        .reset(reset),
        .read_enable(enable),
        .write_enable(2'b00),
        .reg_enable(1'b1),
        .address(address),
        .pixel_val(frame_data[5])
    );

    FRAME6 FRAME6_inst (
        .clk(clk),
        .reset(reset),
        .read_enable(enable),
        .write_enable(2'b00),
        .reg_enable(1'b1),
        .address(address),
        .pixel_val(frame_data[6])
    );

    FRAME7 FRAME7_inst (
        .clk(clk),
        .reset(reset),
        .read_enable(enable),
        .write_enable(2'b00),
        .reg_enable(1'b1),
        .address(address),
        .pixel_val(frame_data[7])
    );

    FRAME8 FRAME8_inst (
        .clk(clk),
        .reset(reset),
        .read_enable(enable),
        .write_enable(2'b00),
        .reg_enable(1'b1),
        .address(address),
        .pixel_val(frame_data[8])
    );

    FRAME9 FRAME9_inst (
        .clk(clk),
        .reset(reset),
        .read_enable(enable),
        .write_enable(2'b00),
        .reg_enable(1'b1),
        .address(address),
        .pixel_val(frame_data[9])
    );

    FRAME10 FRAME10_inst (
        .clk(clk),
        .reset(reset),
        .read_enable(enable),
        .write_enable(2'b00),
        .reg_enable(1'b1),
        .address(address),
        .pixel_val(frame_data[10])
    );

    FRAME11 FRAME11_inst (
        .clk(clk),
        .reset(reset),
        .read_enable(enable),
        .write_enable(2'b00),
        .reg_enable(1'b1),
        .address(address),
        .pixel_val(frame_data[11])
    );

    FRAME12 FRAME12_inst (
        .clk(clk),
        .reset(reset),
        .read_enable(enable),
        .write_enable(2'b00),
        .reg_enable(1'b1),
        .address(address),
        .pixel_val(frame_data[12])
    );

    // Combine the pixel datA
    always @(*) begin 
        if (data_src) begin
            pixel_data = {3{frame_data[frame]}};
        end else begin
            pixel_data = {red_val, green_val, blue_val};
        end
    end

    // Set valid_pixel when reading valid pixel from BRAM
    assign valid_pixel = (line < 96 && offset < 128);
endmodule


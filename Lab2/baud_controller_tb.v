`timescale 1ns/10ps

module tb_controller;
    reg reset, clk;
    reg [2:0] baud_select;
    reg Tx_WR, Tx_EN;
    wire sample_ENABLE, sample_ENABLE1;

    // Clock generation
    localparam CLK_PERIOD = 10;  // 100MHz clock, adjust if needed
    always #(CLK_PERIOD / 2) clk = ~clk;

    // Instantiate baud controllers
    baud_controller_t baud_controller_t_inst (
        .reset(reset),
        .clk(clk),
        .baud_select(baud_select),
        .sample_ENABLE(sample_ENABLE),
        .Enable_controller(Tx_EN & Tx_WR)
    );

    baud_controller_r baud_controller_r_inst (
        .reset(reset),
        .clk(clk),
        .baud_select(baud_select),
        .sample_ENABLE(sample_ENABLE1),
        .Disable_controller(Tx_EN & Tx_WR)
    );

    // Baud rate parameters
    localparam BAUD3 = 3'b000, BAUD12 = 3'b001, BAUD48 = 3'b010, BAUD96 = 3'b011;
    localparam BAUD192 = 3'b100, BAUD384 = 3'b101, BAUD576 = 3'b110, BAUD1152 = 3'b111;

    // Baud limit values for synchronization delay (for 100MHz clock)
    integer baud_limits [0:7];
    initial begin
        baud_limits[BAUD3]   = 333343;
        baud_limits[BAUD12]  = 83343;
        baud_limits[BAUD48]  = 20847;
        baud_limits[BAUD96]  = 10431;
        baud_limits[BAUD192] = 5215;
        baud_limits[BAUD384] = 2623;
        baud_limits[BAUD576] = 1759;
        baud_limits[BAUD1152] = 879;
    end

    // Test procedure
    initial begin
        // Initialize signals
        clk = 0;
        reset = 1;
        Tx_WR = 0;
        Tx_EN = 0;
        baud_select = 3'b000;

        // Reset sequence
        #(CLK_PERIOD * 2) reset = 0;
        #(CLK_PERIOD * 5) reset = 1;
        #(CLK_PERIOD * 5) reset = 0;

        // Enable transmission
        Tx_EN = 1;

        // Loop through all baud rates
        $display("Starting synchronization test for all baud rates...");
        for (baud_select = 0; baud_select < 8; baud_select = baud_select + 1) begin
            // Trigger a write operation
            #(CLK_PERIOD) Tx_WR = 1;
            #(CLK_PERIOD) Tx_WR = 0;

            // Wait based on the baud rate limit of baud_controller_t
            #(baud_limits[baud_select] * CLK_PERIOD);

            // Check synchronization
            if (sample_ENABLE == sample_ENABLE1) begin
                $display("Baud rate %0d: Synchronization SUCCESS", baud_select);
            end else begin
                $display("Baud rate %0d: Synchronization FAILURE", baud_select);
            end

            // Small delay before next baud rate
            #(CLK_PERIOD * 10);
        end

        // End test
        $display("Test completed.");
        $finish;
    end
endmodule

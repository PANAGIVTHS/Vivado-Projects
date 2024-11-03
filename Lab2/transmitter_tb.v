`timescale 1ns/10ps

module tb_transmitter;
    reg reset, clk;
    reg Tx_WR, Tx_EN;
    reg [7:0] Tx_DATA;
    wire TxD, Tx_BUSY;
    wire sample_ENABLE;
    
    // Hardcoded baud rate selection for this testbench
    localparam BAUD_RATE = 3'b111;  // Set to BAUD1152
    localparam CLK_PERIOD = 10;     // Clock period for a 100MHz clock

    // Baud rate limits for each mode (for 100MHz clock, +1 as needed)
    integer baud_limits [0:7];
    initial begin
        baud_limits[3'b000] = 333343 + 1;
        baud_limits[3'b001] = 83343 + 1;
        baud_limits[3'b010] = 20847 + 1;
        baud_limits[3'b011] = 10431 + 1;
        baud_limits[3'b100] = 5215 + 1;
        baud_limits[3'b101] = 2623 + 1;
        baud_limits[3'b110] = 1759 + 1;
        baud_limits[3'b111] = 879 + 1;  // BAUD1152
    end

    // Instantiate modules
    uart_transmitter uart_transmitter_inst (
        .reset(reset),
        .clk(clk),
        .baud_select(BAUD_RATE),
        .Tx_EN(Tx_EN),
        .Tx_WR(Tx_WR),
        .Tx_DATA(Tx_DATA),
        .TxD(TxD),
        .Tx_BUSY(Tx_BUSY)
    );

    baud_controller_t baud_controller_t_inst (
        .reset(reset),
        .clk(clk),
        .baud_select(BAUD_RATE),
        .sample_ENABLE(sample_ENABLE),
        .Enable_controller(Tx_EN & Tx_WR)
    );

    // Clock generation
    always #(CLK_PERIOD / 2) clk = ~clk;

    // Task to initialize signals
    task initialize_signals;
        begin
            Tx_DATA = 8'b10111010;  // Example data for transmission
            reset = 1;
            clk = 0;
            Tx_WR = 0;
            Tx_EN = 0;
        end
    endtask

    // Task to perform reset sequence
    task reset_sequence;
        begin
            reset = 1;
            #(CLK_PERIOD * 2);
            reset = 0;
            #(CLK_PERIOD * 5);
        end
    endtask

    // Task to initiate a transmission for the selected baud rate
    task transmit_data;
        begin
            Tx_EN = 1;
            Tx_WR = 1;
            #(CLK_PERIOD) Tx_WR = 0;
            #(baud_limits[BAUD_RATE] * CLK_PERIOD);  // Wait for the transmission time based on the selected baud rate
        end
    endtask

    // Task to check transmitter busy signal
    task check_tx_busy;
        begin
            if (Tx_BUSY) begin
                $display("Transmitter is busy as expected.");
            end else begin
                $display("Transmitter is idle (unexpected)!");
            end
        end
    endtask

    // Main testbench logic
    initial begin
        initialize_signals;
        #100 reset_sequence;

        // Transmit data at hardcoded baud rate
        $display("Starting transmission with BAUD_RATE %0d", BAUD_RATE);
        transmit_data();
        
        // Check if transmitter indicates busy state during transmission
        check_tx_busy();
        
        // End the testbench
        $display("Transmitter Testbench completed.");
        $finish;
    end

    // Optional: Monitor the TxD line and display data bits
    always @(posedge sample_ENABLE) begin
        // --Start bit is skipped--
        if (Tx_BUSY && !Tx_WR) begin
            $display("Transmitting bit on TxD: %b", TxD);
        end
    end

endmodule

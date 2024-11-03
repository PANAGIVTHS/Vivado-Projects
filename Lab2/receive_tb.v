`timescale 1ns/10ps

module tb_receiver;
    reg reset, clk;
    reg Tx_WR, Tx_EN;
    reg [3:0] counter;
    reg [0:10] Tx_DATA;
    wire TxD;
    wire [7:0] Rx_DATA;
    wire Rx_FERROR, Rx_PERROR, Rx_VALID;
    wire sample_ENABLE;
    wire parity;

    // Hardcoded baud rate selection for this testbench
    localparam BAUD_RATE = 3'b111;  // Set to BAUD1152
    localparam CLK_PERIOD = 10;  // Clock period for a 100MHz clock

    // Baud rate limits for each mode (for 100MHz clock, as per the system's design)
    integer baud_limits [0:7];
    initial begin
        baud_limits[3'b000] = 333343 + 1; // the + 1 is for simulation purposes
        baud_limits[3'b001] = 83343 + 1;
        baud_limits[3'b010] = 20847 + 1;
        baud_limits[3'b011] = 10431 + 1;
        baud_limits[3'b100] = 5215 + 1;
        baud_limits[3'b101] = 2623 + 1;
        baud_limits[3'b110] = 1759 + 1;
        baud_limits[3'b111] = 879 + 1;  // BAUD1152
    end

    // Instantiate modules
    uart_receiver uart_receiver_inst (
        .reset(reset),
        .clk(clk),
        .baud_select(BAUD_RATE),
        .Rx_EN(Tx_EN & Tx_WR),
        .RxD(TxD),
        .Rx_DATA(Rx_DATA),
        .Rx_FERROR(Rx_FERROR),
        .Rx_PERROR(Rx_PERROR),
        .Rx_VALID(Rx_VALID),
        .parity(parity)
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
            Tx_DATA = 11'b01010111001;  // Sample data for transmission
            reset = 1;
            clk = 0;
            Tx_WR = 0;
            Tx_EN = 0;
            counter = 0;
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
            #(baud_limits[BAUD_RATE] * CLK_PERIOD);  // Wait for the transmission time based on BAUD1152 limit
        end
    endtask

    // Task to check if the transmitter and receiver are synchronized
    task check_synchronization;
        begin
            if (sample_ENABLE == 1'b1) begin
                $display("Synchronization PASS for BAUD_RATE %0d", BAUD_RATE);
            end else begin
                $display("Synchronization FAIL for BAUD_RATE %0d, %t", BAUD_RATE, $time);
            end
        end
    endtask

    // Main testbench logic
    initial begin
        initialize_signals;
        #100 reset_sequence;

        // Transmit data at hardcoded baud rate
        transmit_data();
        
        // Check synchronization
        check_synchronization();
        
        // End the testbench
        $display("Testbench completed.");
        $finish;
    end

    // Simulate the transmitter behavior
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            counter <= 0;
        end else if (sample_ENABLE) begin
            if (counter < 10)
                counter <= counter + 1;
            else
                counter <= 0;
        end
    end

    assign TxD = Tx_DATA[counter];  // Connect TxD to the corresponding bit in Tx_DATA
endmodule

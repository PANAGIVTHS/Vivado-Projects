`timescale 1ns/10ps

module tb_display_listener_sender;
    reg clk, reset, Enable, Send;
    reg [2:0] baud_select;
    wire button_step, TxD, Tx_BUSY;
    wire an3, an2, an1, an0, a, b, c, d, e, f, g, dp;

    // Local parameters
    localparam CLK_PERIOD = 10;
    localparam BAUD_RATE = 3'b111;  // Hardcoded to BAUD1152 for testing

    // Instantiate the display_listener and Sender modules
    display_listener display_listener_inst (
        .clk(clk),
        .reset(reset),
        .baud_select(baud_select),
        .Read_debounced(Enable),
        .TxD(TxD),
        .an3(an3),
        .an2(an2),
        .an1(an1),
        .an0(an0),
        .a(a),
        .b(b),
        .c(c),
        .d(d),
        .e(e),
        .f(f),
        .g(g),
        .dp(dp)
    );

    Sender Sender_inst (
        .clk(clk),
        .reset(reset),
        .Enable(Enable),
        .Send(Send),
        .BAUD_RATE(BAUD_RATE),
        .button_step(button_step),
        .TxD(TxD),
        .Tx_BUSY(Tx_BUSY)
    );

    // Clock generation
    always #(CLK_PERIOD / 2) clk = ~clk;

    // Task to initialize signals
    task initialize_signals;
        begin
            clk = 0;
            reset = 1;
            Enable = 0;
            Send = 0;
            baud_select = BAUD_RATE;
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

    // Task to simulate sending data
    task send_data;
        begin
            Enable = 1;
            Send = 1;
            #(CLK_PERIOD) Send = 0;
            #(CLK_PERIOD * 5);
        end
    endtask

    // Task to display the 7-segment representation visually
    task display_segment;
        input [6:0] LED;
        begin
            // LED segments are in the order a-g, with 'a' as LED[6] and 'g' as LED[0]
            $display(" %s ", LED[6] ? "----" : "    ");
            $display("%s   %s", LED[5] ? "|" : " ", LED[1] ? "|" : " ");
            $display("%s   %s", LED[5] ? "|" : " ", LED[1] ? "|" : " ");
            $display(" %s ", LED[0] ? "----" : "    ");
            $display("%s   %s", LED[4] ? "|" : " ", LED[2] ? "|" : " ");
            $display("%s   %s", LED[4] ? "|" : " ", LED[2] ? "|" : " ");
            $display(" %s ", LED[3] ? "----" : "    ");
            $display("\n");
        end
    endtask

    // Main testbench logic
    initial begin
        initialize_signals;
        reset_sequence;

        // Sending data from the Sender module to display_listener
        $display("Starting data transmission test...");
        send_data();
        
        // Wait for data reception and display output visualization
        #(CLK_PERIOD * 100);  // Adjust as needed based on baud rate timing

        // Display output verification
        if (an3 || an2 || an1 || an0) begin
            $display("Display activated.");
            $display("Anodes: %b%b%b%b", an3, an2, an1, an0);
            display_segment({a, b, c, d, e, f, g});  // Pass segment control signals to task
        end else begin
            $display("Error: Display inactive when it should be showing data.");
        end

        $display("Test complete.");
        $finish;
    end

    // Monitor outputs
    always @(posedge clk) begin
        if (Tx_BUSY) begin
            $display("Transmitter is busy.");
        end else if (Send) begin
            $display("Sending data...");
        end
    end

endmodule

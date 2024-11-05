`timescale 1ns/1ps

module SenderTestModule;

    // Testbench variables
    reg clk;
    reg reset;
    reg Enable;
    reg Send;
    reg [2:0] baud_rate;

    // Outputs from Sender
    wire button_step;
    wire TxD;
    wire Tx_BUSY;

    // Instantiate the Sender module
    Sender sender_inst (
        .clk(clk),
        .reset(reset),
        .Enable(Enable),
        .Send(Send),
        .BAUD_RATE(baud_rate),
        .button_step(button_step),
        .TxD(TxD),
        .Tx_BUSY(Tx_BUSY)
    );

    // Clock generation without forever loop
    always #(10 / 2) clk = ~clk;

    // Test sequence
    initial begin
        // Initializing signals
        reset = 1;
        Enable = 0;
        Send = 0;
        baud_rate = 3'b111;  // Set to maximum baud rate for fast testing

        // Hold reset for some time and then release it
        #20 reset = 0;

        // Enable transmission after a brief delay
        #50 Enable = 1;

        // Simulate a Send pulse with enough duration for debouncer to activate
        #100 Send = 1;
        #100 Send = 0;  // Keep Send active for 100 ns for debouncing

        // Wait for some time before the next transmission
        #500;

        // Trigger another Send pulse
        #100 Send = 1;
        #100 Send = 0;

        // End simulation after a delay to allow transmissions to complete
        #1000 $finish;
    end

endmodule

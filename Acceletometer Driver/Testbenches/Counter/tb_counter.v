module tb_GUCounter;
    // Testbench Parameters
    parameter BITS = 5; // 20-bit counter to check large values (up to 2^20-1)
    reg clk;
    reg [1:0] reset_in;
    reg enable;
    wire [BITS-1:0] count;

    // Instantiate the GUCounter
    GUCounter #(BITS) uut (
        .clk(clk),
        .reset_in(reset_in),
        .enable(enable),
        .count(count)
    );

    // Generate clock signal
    always begin
        clk = 0;
        #5 clk = 1;
        #5;
    end

    // Test procedure
    initial begin
        // Initialize inputs
        reset_in = 2'b00;
        enable = 0;
        
        // Apply reset once
        $display("Applying reset...");
        reset_in = 2'b10; // reset = 1, user_reset = 0
        #10;
        reset_in = 2'b00; // reset = 0, user_reset = 0

        // Enable counting
        $display("Starting to count...");
        enable = 1; // Enable the counter
        
        // Count indefinitely without finishing the simulation
        // Just continuously observe the count
        #1000000; // Simulate for a long period (1 million time units)
        
        // No $finish, so the simulation will continue
    end

    // Monitor signals
    initial begin
        $monitor("Time=%0t, Count=%d", $time, count);
    end
endmodule



module uart_receiver (
    input reset,
    input clk,
    input [2:0] baud_select,
    input Rx_EN,
    input RxD,                // Serial data input
    output reg [7:0] Rx_DATA, // Received data
    output reg Rx_FERROR,     // Framing error flag
    output reg Rx_PERROR,     // Parity error flag
    output reg Rx_VALID       // Data valid flag
);

    // Baud rate controller to enable sampling at the required frequency
    wire sample_ENABLE;
    baud_controller baud_controller_rx_inst (
        .reset(reset),
        .clk(clk),
        .baud_select(baud_select),
        .sample_ENABLE(sample_ENABLE)
    );

    reg [3:0] sample_counter = 0;  // Counts samples per bit (16 samples per bit)
    reg [3:0] bit_counter = 0;     // Counts bits received (11 bits total)
    reg [7:0] data_buffer = 0;     // Buffer to store received data bits
    reg bit_stable;                // Tracks if bit is stable across all samples
    reg sampled_value;             // Stores the first sample value for comparison
    reg parity_bit;                // Tracks calculated parity

    localparam START_BIT = 1'b0;   // Start bit value
    localparam STOP_BIT = 1'b1;    // Stop bit value

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            sample_counter <= 0;
            bit_counter <= 0;
            Rx_DATA <= 8'b0;
            Rx_VALID <= 0;
            Rx_FERROR <= 0;
            Rx_PERROR <= 0;
            data_buffer <= 0;
            bit_stable <= 1'b1;
            sampled_value <= 1'b0;
            parity_bit <= 1'b0;
        end else if (Rx_EN && sample_ENABLE) begin
            // On the first sample, record the sampled value for comparison
            if (sample_counter == 0) begin
                sampled_value <= RxD;
                bit_stable <= 1'b1;
            end else if (RxD != sampled_value) begin
                // If any sample differs from the initial, mark as unstable
                bit_stable <= 1'b0;
            end

            sample_counter <= sample_counter + 1;

                if (sample_counter == 15) begin
                    sample_counter <= 0; // Reset sample counter for next bit
                    
                    if (!bit_stable) begin
                        // Error: Bit didn't hold value for all 16 samples
                        Rx_FERROR <= 1;
                        bit_counter <= 0;
                    end else begin
                        // Process the stable bit value
                        if (bit_counter == 0) begin
                            // Start bit: Check if it's 0
                            if (sampled_value != START_BIT) Rx_FERROR <= 1;
                            else Rx_FERROR <= 0;
                            bit_counter <= bit_counter + 1;
                        end else if (bit_counter >= 1 && bit_counter <= 8) begin
                            // Data bits: Store in data buffer
                            data_buffer[bit_counter - 1] <= sampled_value;
                            parity_bit <= parity_bit ^ sampled_value; // Update parity
                            bit_counter <= bit_counter + 1;
                        end else if (bit_counter == 9) begin
                            // Parity bit: Check if matches computed parity
                            if (sampled_value != parity_bit) Rx_PERROR <= 1;
                            else Rx_PERROR <= 0;
                            bit_counter <= bit_counter + 1;
                        end else if (bit_counter == 10) begin
                            // Stop bit: Should be 1
                            if (sampled_value != STOP_BIT) Rx_FERROR <= 1;
                            else Rx_FERROR <= 0;
                            // Reset data valid flag when receiver is not enabled
                            Rx_VALID <= 0;
                            // If no errors, mark data as valid
                            if (~Rx_FERROR && ~Rx_PERROR) begin
                                Rx_DATA <= data_buffer;
                                Rx_VALID <= 1;
                            end
                            
                            bit_counter <= 0; // Reset for next byte
                        end
                    end
                end
        end else begin
            // IDLE
        end
    end
endmodule

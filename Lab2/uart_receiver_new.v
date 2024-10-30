module uart_receiver (
    input reset,
    input clk,
    input [2:0] baud_select,      // Επιλογή Baud Rate
    input Rx_EN,                  // Ενεργοποίηση δέκτη
    input RxD,                    // Σειριακή είσοδος
    output reg [7:0] Rx_DATA,     // Παραληφθέντα δεδομένα
    output reg Rx_VALID,          // Έγκυρα δεδομένα
    output reg Rx_FERROR,         // Σφάλμα πλαισίωσης
    output reg Rx_PERROR          // Σφάλμα ισοτιμίας
);

    reg [3:0] bit_counter;
    wire Rx_sample_ENABLE;

    localparam SETUP = 2'b00, IDLE = 2'b01, TRANSMITTING = 2'b10;

    baud_controller_r baud_controller_r_inst(reset, clk, baud_select, Rx_sample_ENABLE);
    
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
        end else if (Rx_EN && Rx_sample_ENABLE && sample_counter != 15) begin // SAMPLING
            if (sample_counter == 0) begin
                sampled_value <= RxD;
                bit_stable <= 1'b1;
            end else if (RxD != sampled_value) begin
                // If any sample differs from the initial, mark as unstable
                bit_stable <= 1'b0;
            end
            sample_counter <= sample_counter + 1;
        end else if (Rx_EN && Rx_sample_ENABLE && sample_counter == 15) begin // FRAME HANDLING
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
        end else begin
            
        end
    end

endmodule
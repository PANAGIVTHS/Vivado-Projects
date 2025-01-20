// Module: baud_controller                                                                                    //
//                                                                                                            //
// DESCRIPTION:                                                                                               //
// This module implements the baud rate controller for a UART (Universal Asynchronous Receiver/Transmitter).  //
// The baud rate controller is responsible for generating the clock enable signal at the desired baud rate    //
// for the UART communication. It divides the input clock frequency to match the required baud rate, ensuring //
// accurate timing for data transmission and reception.                                                       //

module Baud_controller (reset, clk, baud_select, sample_ENABLE);
input reset, clk;
input [2:0] baud_select;
output reg sample_ENABLE;

reg [14:0] counter;
reg [14:0] limit;
reg counter_reset;

// limits are -1 of the actual value, because the counter starts from 0 //
always @(baud_select)
begin
    case (baud_select) 
        3'b000: limit = 20832;
        3'b001: limit = 5207;
        3'b010: limit = 1301;  
        3'b011: limit = 650;   
        3'b100: limit = 325;   
        3'b101: limit = 162;     
        3'b110: limit = 108;     
        3'b111: limit = 53;
    endcase 
end

always @(posedge clk or posedge reset)
begin
    if(reset)
        counter <= 0;
    else
        if(counter_reset == 1)
            counter <= counter + 15'b1; 
        else
            counter <= 0;
end

always @(counter or limit)
begin
    if(counter == limit)
    begin
        sample_ENABLE = 1;
        counter_reset = 0;
    end
    else
    begin
        sample_ENABLE = 0;
        counter_reset = 1;
    end

end



endmodule
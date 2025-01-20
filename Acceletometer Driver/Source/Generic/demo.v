// Module: demo                                                                      //
// Description:                                                                      //
// This module is intended solely for demonstration purposes of the PuTTY interface. //
// It changes the data to be sent to the interface every 1 second.                   //

module demo (clk, reset, data_ready_for_printing, 
              ascii_X1, ascii_X2, ascii_X3, ascii_X4,
              ascii_Y1, ascii_Y2, ascii_Y3, ascii_Y4,
              ascii_Z1, ascii_Z2, ascii_Z3, ascii_Z4,
              ascii_T1, ascii_T2, ascii_T3, ascii_T4, ascii_T5, ascii_T6,
              is_negative_X, is_negative_Y, is_negative_Z, is_negative_T
);
  
input clk;
input reset;

output reg data_ready_for_printing;
output [7:0] ascii_X1, ascii_X2, ascii_X3, ascii_X4;
output [7:0] ascii_Y1, ascii_Y2, ascii_Y3, ascii_Y4;
output [7:0] ascii_Z1, ascii_Z2, ascii_Z3, ascii_Z4;
output [7:0] ascii_T1, ascii_T2, ascii_T3, ascii_T4, ascii_T5, ascii_T6;
output is_negative_X, is_negative_Y, is_negative_Z, is_negative_T;


reg [7:0] data_to_send;
reg change;

reg [31:0] counter;

assign ascii_X1 = data_to_send;
assign ascii_X2 = data_to_send;
assign ascii_X3 = data_to_send;
assign ascii_X4 = data_to_send;
assign ascii_Y1 = data_to_send;
assign ascii_Y2 = data_to_send;
assign ascii_Y3 = data_to_send;
assign ascii_Y4 = data_to_send;
assign ascii_Z1 = data_to_send;
assign ascii_Z2 = data_to_send;
assign ascii_Z3 = data_to_send;
assign ascii_Z4 = data_to_send;
assign ascii_T1 = data_to_send;
assign ascii_T2 = data_to_send;
assign ascii_T3 = data_to_send;
assign ascii_T4 = data_to_send;
assign ascii_T5 = data_to_send;
assign ascii_T6 = data_to_send;
assign is_negative_X = 1'b0;
assign is_negative_Y = 1'b0;
assign is_negative_Z = 1'b0;
assign is_negative_T = 1'b0;

// change every 1 second the data to be sent to the interface //
always @ (posedge clk or posedge reset)
begin
    if (reset == 1'b1)
    begin
        counter <= 32'd0;
        change <= 1'd0;
        data_to_send <= 32'd0;
        data_ready_for_printing <= 1'd0;
    end
    else
    begin
        if (counter == 32'd100000000)
        begin
            change <= ~change;
            data_to_send <= (change == 1'd0) ? 8'b00110001 : 8'b00110000;
            data_ready_for_printing <= 1'd1;
            counter <= 32'd0;
        end
        else
        begin
            counter <= counter + 32'd1;
            data_ready_for_printing <= 1'd0;
        end
    end
end

endmodule
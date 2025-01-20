
module rawToBinCoord (input [7:0] i_RAW_Data, output [11:0] o_BIN_Data);
    assign o_BIN_Data = (i_RAW_Data << 4) + 4'b1000;
endmodule

module rawToBinCoord (input [7:0] i_RAW_Data, output [18:0] o_BIN_Data);
    assign o_BIN_Data = (i_RAW_Data << 6) + i_RAW_Data;
endmodule
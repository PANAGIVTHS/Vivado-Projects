module UpscallingUnit #(pixelScaling = 5, lineScaling = 4000, H_COUNTER_BITS = 3, V_COUNTER_BITS = 12) (input clk, input reset, input HDISP, input VDISP, output HENADDR, output VENADDR);
    reg [H_COUNTER_BITS - 1:0] HCounter;
    reg [V_COUNTER_BITS - 1:0] VCounter;

    localparam PRE_FETCH = 2;
    
    always @ (posedge clk) begin
        if(reset) begin
            HCounter <= 0;
        end else if(HCounter == pixelScaling - 1) begin
            HCounter <= 0;
        end else if(HDISP) begin
            HCounter <= HCounter + 1;
        end
    end

    always @ (posedge clk) begin
        if(reset) begin
            VCounter <= 0;
        end else if (VCounter == lineScaling - 1) begin
            VCounter <= 0;
        end else if (VDISP) begin
            VCounter <= VCounter + 1;
        end
    end

    assign HENADDR = HCounter == (pixelScaling - 1) - PRE_FETCH;
    assign VENADDR = VCounter == (lineScaling - 1);
endmodule
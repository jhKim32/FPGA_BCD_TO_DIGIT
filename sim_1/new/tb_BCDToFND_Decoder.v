`timescale 1ns / 1ps

module tb_BCDToFND_Decoder();
    reg i_En;
    reg [3:0] i_Value;
    wire [7:0] o_FND_Font;

    BCDToFND_Decoder dut(
        .i_En(i_En),
        .i_Value(i_Value),
        .o_FND_Font(o_FND_Font)
    );

    initial begin
        #00 i_En = 1'b0; i_Value = 4'h0;
        #10 i_En = 1'b0; i_Value = 4'h1;
        #10 i_En = 1'b0; i_Value = 4'h2;
        #10 i_En = 1'b0; i_Value = 4'h3;
        #10 i_En = 1'b0; i_Value = 4'h4;
        #10 i_En = 1'b0; i_Value = 4'h5;
        #10 i_En = 1'b0; i_Value = 4'h6;
        #10 i_En = 1'b0; i_Value = 4'h7;
        #10 i_En = 1'b0; i_Value = 4'h8;
        #10 i_En = 1'b0; i_Value = 4'h9;
        #10 i_En = 1'b0; i_Value = 4'ha;

        #10 i_En = 1'b1; i_Value = 4'h0;
        #10 i_En = 1'b1; i_Value = 4'h1;
        #10 i_En = 1'b1; i_Value = 4'h2;
        #10 i_En = 1'b1; i_Value = 4'h3;
        #10 i_En = 1'b1; i_Value = 4'h4;
        #10 i_En = 1'b1; i_Value = 4'h5;
        #10 i_En = 1'b1; i_Value = 4'h6;
        #10 i_En = 1'b1; i_Value = 4'h7;
        #10 i_En = 1'b1; i_Value = 4'h8;
        #10 i_En = 1'b1; i_Value = 4'h9;
        #10 i_En = 1'b1; i_Value = 4'ha;

        #10 $finish;
    end
endmodule

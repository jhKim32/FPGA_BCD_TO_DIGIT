`timescale 1ns / 1ps



module tb_BCDToFND();
    reg i_En;
    reg [1:0] i_DigitSelect;
    reg [3:0] i_Value;
    wire [3:0] o_FND_Digit;
    wire [7:0] o_FND_Font;

    BCDToFND dut(
        .i_En(i_En),
        .i_DigitSelect(i_DigitSelect),
        .i_Value(i_Value),
        .o_FND_Digit(o_FND_Digit),
        .o_FND_Font(o_FND_Font)
    );

    initial begin
        #00 i_En = 1'b1; i_DigitSelect = 2'b00; i_Value = 4'h0;
        #10 i_En = 1'b1; i_DigitSelect = 2'b01; i_Value = 4'h1;
        #10 i_En = 1'b1; i_DigitSelect = 2'b10; i_Value = 4'h2;
        #10 i_En = 1'b1; i_DigitSelect = 2'b11; i_Value = 4'h3;
        #10 i_En = 1'b1; i_DigitSelect = 2'b00; i_Value = 4'h4;
        #10 i_En = 1'b1; i_DigitSelect = 2'b01; i_Value = 4'h5;
        #10 i_En = 1'b1; i_DigitSelect = 2'b10; i_Value = 4'h6;
        #10 i_En = 1'b1; i_DigitSelect = 2'b11; i_Value = 4'h7;
        #10 i_En = 1'b1; i_DigitSelect = 2'b00; i_Value = 4'h8;
        #10 i_En = 1'b1; i_DigitSelect = 2'b01; i_Value = 4'h9;
        #10 i_En = 1'b1; i_DigitSelect = 2'b10; i_Value = 4'ha;

        #10 i_En = 1'b0; i_DigitSelect = 2'b00; i_Value = 4'h0;
        #10 i_En = 1'b0; i_DigitSelect = 2'b01; i_Value = 4'h1;
        #10 i_En = 1'b0; i_DigitSelect = 2'b10; i_Value = 4'h2;
        #10 i_En = 1'b0; i_DigitSelect = 2'b11; i_Value = 4'h3;
        #10 i_En = 1'b0; i_DigitSelect = 2'b00; i_Value = 4'h4;
        #10 i_En = 1'b0; i_DigitSelect = 2'b01; i_Value = 4'h5;
        #10 i_En = 1'b0; i_DigitSelect = 2'b10; i_Value = 4'h6;
        #10 i_En = 1'b0; i_DigitSelect = 2'b11; i_Value = 4'h7;
        #10 i_En = 1'b0; i_DigitSelect = 2'b00; i_Value = 4'h8;
        #10 i_En = 1'b0; i_DigitSelect = 2'b01; i_Value = 4'h9;
        #10 i_En = 1'b0; i_DigitSelect = 2'b10; i_Value = 4'ha;

        #10 $finish;
    end
endmodule

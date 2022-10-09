`timescale 1ns / 1ps

module tb_DigitSelect_Decoder();

    reg i_En;
    reg [1:0] i_DigitSelect;
    wire [3:0] o_FND_Digit;

    DigitSelect_Decoder dut(
        .i_En(i_En),
        .i_DigitSelect(i_DigitSelect),
        .o_FND_Digit(o_FND_Digit)
    );

    initial
    begin
        #00 i_En = 1'b0; i_DigitSelect = 2'b00;    
        #10 i_En = 1'b0; i_DigitSelect = 2'b01;    
        #10 i_En = 1'b0; i_DigitSelect = 2'b10;    
        #10 i_En = 1'b0; i_DigitSelect = 2'b11;

        #10 i_En = 1'b1; i_DigitSelect = 2'b00;
        #10 i_En = 1'b1; i_DigitSelect = 2'b01;
        #10 i_En = 1'b1; i_DigitSelect = 2'b10;
        #10 i_En = 1'b1; i_DigitSelect = 2'b11;
        
        #10 $finish;
    end
endmodule

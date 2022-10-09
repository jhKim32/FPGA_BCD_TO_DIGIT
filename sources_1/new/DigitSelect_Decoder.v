`timescale 1ns / 1ps

module DigitSelect_Decoder(
    input i_En,
    input [1:0] i_DigitSelect,
    output [3:0] o_FND_Digit
    );

    reg [3:0] o_FND_Digit;

    always @(*)
    begin
        if(i_En)
        o_FND_Digit = 4'b1111;
        
        else
        begin
            case (i_DigitSelect)
                2'b00 : o_FND_Digit = 4'b1110;
                2'b01 : o_FND_Digit = 4'b1101;
                2'b10 : o_FND_Digit = 4'b1011;
                2'b11 : o_FND_Digit = 4'b0111;
            endcase
        end
    end
endmodule

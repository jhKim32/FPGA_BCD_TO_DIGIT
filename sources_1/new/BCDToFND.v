`timescale 1ns / 1ps

module BCDToFND(
    input i_En,
    input [1:0] i_DigitSelect,
    input [3:0] i_Value,
    output [3:0] o_FND_Digit,
    output [7:0] o_FND_Font
    );

    DigitSelect_Decoder Digit(
        .i_En(i_En),
        .i_DigitSelect(i_DigitSelect),
        .o_FND_Digit(o_FND_Digit)
    );

    BCDToFND_Decoder Fond(
        .i_En(i_En),
        .i_Value(i_Value),
        .o_FND_Font(o_FND_Font)
    );

endmodule

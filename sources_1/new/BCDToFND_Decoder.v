`timescale 1ns / 1ps

module BCDToFND_Decoder(
    input i_En,
    input [3:0] i_Value,
    output [7:0] o_FND_Font
    );

    reg [7:0] o_FND_Font;

    always @(*) begin
        if(i_En)
            o_FND_Font = 8'hff;
        else begin
            o_FND_Font = 8'hff;
            case (i_Value)
            4'h0 : o_FND_Font = 8'hc0;
            4'h1 : o_FND_Font = 8'hf9;
            4'h2 : o_FND_Font = 8'ha4;
            4'h3 : o_FND_Font = 8'hb0;
            4'h4 : o_FND_Font = 8'h99;
            4'h5 : o_FND_Font = 8'h92;
            4'h6 : o_FND_Font = 8'h82;
            4'h7 : o_FND_Font = 8'hf8;
            4'h8 : o_FND_Font = 8'h80;
            4'h9 : o_FND_Font = 8'h90;
            4'ha : o_FND_Font = 8'h7f;
            endcase
        end
    end
endmodule

module Addiererzelle #(parameter WIDTH=10) (
    input [WIDTH-1:0] A,
    input [WIDTH-1:0] B,
    input C_IN,              // Carry In (Uebertragseingang)/*@\llabel{line:C_IN}@*/
    output reg[WIDTH-1:0] S, // Summe
    output reg C_OUT         // Carry Out (Uebertragsausgang)
);

//something happens here

endmodule

/*******************************/

parameter ADD1_WIDTH = 6;
Addierzelle #(.WIDTH(ADD1_WIDTH)) add1 (/*@\llabel{line:referencing}@*/
    .A     (A),
    .B     (B),
    .C_IN  (C_IN),
    .S     (S),
    .C_OUT (C_OUT)
);

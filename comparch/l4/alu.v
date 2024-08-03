`include "and32.v"

`include "fa32.v"

`include "mux3w321.v"
module alu(
    output [31:0] result,
    output cout,
    input [31:0] a,b,
    input biv,
    input [1:0]op,
    input cin
);
genvar i;
wire [31:0] bnot,fa,orr,andr,bo,ba;
generate for(i=0;i<32;i=i+1)
    begin:neg
    not n1(bnot[i],b[i]);
    end
    endgenerate
mux321 m1(ba,biv,b,bnot);
fulladd32 f1(fa,cout,a,ba,cin);

or32 o1(orr,a,bo);
and32 a1(andr,a,bo);

mux3w321 m2(result,op,andr,orr,fa);




endmodule
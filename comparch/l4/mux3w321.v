`include "mux321.v"
`include "or32.v"
module mux3w321(
    output [31:0] out,
    input [1:0] sel,
    input [31:0] a,b,c
);
reg [31:0] d;
initial begin
    d=32'b0;

end

wire [31:0] out1,out2;
mux321 m1(out1,sel[0],a,b);
mux321 m2(out2,sel[1],c,d);
or32 o1(out,out1,out2);

endmodule
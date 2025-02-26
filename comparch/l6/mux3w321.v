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
mux321 m2(out2,sel[0],c,d);
mux321 m3(out,sel[1],out1,out2);

endmodule

// (as0'+bs0)+(cs1'+ds1)
//(as0's1')+bs0's1+cs1s0'
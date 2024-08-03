`include "1_b.v"
module fadd8(
    output [7:0] s,
    output cout,
    input [7:0] x,
    input [7:0] y,
    input cin
);
wire c1,c2,c3,c4,c5,c6,c7;
fadder f1(s[0],c1, x[0],y[0],cin);
fadder f2(s[1],c2, x[1],y[1],c1);
fadder f3(s[2],c3, x[2],y[2],c2);
fadder f4(s[3],c4, x[3],y[3],c3);
fadder f5(s[4],c5, x[4],y[4],c4);
fadder f6(s[5],c6, x[5],y[5],c5);
fadder f7(s[6],c7, x[6],y[6],c6);
fadder f8(s[7],cout, x[7],y[7],c7);



endmodule
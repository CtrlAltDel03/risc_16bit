`include "hwq1_a_g.v"
module fulladd4(
    output s3,s2,s1,s0,cout,
    input a3,a2,a1,a0,b3,b2,b1,b0,cin
);
wire c1,c2,c3;
fulladd1 fa1(s0,c1,a0,b0,cin);
fulladd1 fa2(s1,c2,a1,b1,c1);
fulladd1 fa3(s2,c3,a2,b2,c2);
fulladd1 fa4(s3,cout,a3,b3,c3);

endmodule
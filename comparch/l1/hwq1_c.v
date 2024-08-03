`include "hwq1_b.v"
module fulladdsub(
    output s3,s2,s1,s0,cout,
    input a3,a2,a1,a0,b3,b2,b1,b0,ctr
);
wire bb0,bb1,bb2,bb3,bb4;
xor x1(bb0,ctr,b0);
xor x2(bb1,ctr,b1);
xor x3(bb2,ctr,b2);
xor x4(bb3,ctr,b3);
fulladd4 fa(s3,s2,s1,s0,cout,a3,a2,a1,a0,bb3,bb2,bb1,bb0,ctr);


endmodule
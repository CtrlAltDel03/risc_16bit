module bitcomp4g(
    output [2:0] out,
    input [3:0] a,
    input [3:0] b
);
wire z0,z1,z2,z3;
wire an0,an1,an2,an3;
wire bn0,bn1,bn2,bn3;
wire nab0,nab1,nab2,nab3;
wire abn0,abn1,abn2,abn3;

not n1(an0,a[0]);
not n2(an1,a[1]);
not n3(an2,a[2]);
not n4(an3,a[3]);

not n5(bn0,b[0]);
not n6(bn1,b[1]);
not n7(bn2,b[2]);
not n8(bn3,b[3]);

and a1(nab0,an0,b[0]);
and a2(nab1,an1,b[1]);
and a3(nab2,an2,b[2]);
and a4(nab3,an3,b[3]);

and a5(abn0,a[0],bn0);
and a6(abn1,a[1],bn1);
and a7(abn2,a[2],bn2);
and a8(abn3,a[3],bn3);


xnor xn1(z0,a[0],b[0]);
xnor xn2(z1,a[1],b[1]);
xnor xn3(z2,a[2],b[2]);
xnor xn4(z3,a[3],b[3]);



endmodule
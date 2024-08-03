module decoder(
    output d0,d1,d2,d3,d4,d5,d6,d7,
    input x,y,z
);

wire xb, yb, zb;
not n1(xb, x);
not n2(yb, y);
not n3(zb, z);

and a1(d0, xb, yb, zb);
and a2(d1, xb, yb, z);
and a3(d2, xb, zb, y);
and a4(d3, xb, z, y);
and a5(d4, yb, zb, x);
and a6(d5, yb, z, x);
and a7(d6, zb, y, x);
and a8(d7, x, y, z);



endmodule
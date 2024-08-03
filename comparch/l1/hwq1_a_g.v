module fulladd1(
    output s,cout,
    input a,b,cin
);
wire s1,a1,a2,a3,ct;
xor x1(s1,a,b);
xor x2(s,s1,cin);
and an1(a1,a,b);
and an2(a2,cin,s1);
or o2(cout,a2,a1);

endmodule
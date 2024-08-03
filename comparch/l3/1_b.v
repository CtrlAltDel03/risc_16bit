`include "1_a.v"
module fadder(
    output s,cout,
    input x,y,z
);
wire d0,d1,d2,d3,d4,d5,d6,d7;
decoder de1(d0,d1,d2,d3,d4,d5,d6,d7,x,y,z);

or o1(s,d1,d2,d4,d7);
or o2(cout,d3,d5,d6,d7);





endmodule
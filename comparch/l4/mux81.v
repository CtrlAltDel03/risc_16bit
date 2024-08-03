`include "mux21.v"
module mux81(
    output [7:0] out,
    input sel,
    input [7:0] a,
    input [7:0] b
);
mux21 m1(out[0],sel,a[0],b[0]);
mux21 m2(out[1],sel,a[1],b[1]);
mux21 m3(out[2],sel,a[2],b[2]);
mux21 m4(out[3],sel,a[3],b[3]);
mux21 m5(out[4],sel,a[4],b[4]);
mux21 m6(out[5],sel,a[5],b[5]);
mux21 m7(out[6],sel,a[6],b[6]);
mux21 m8(out[7],sel,a[7],b[7]);


endmodule
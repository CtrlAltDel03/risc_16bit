`include "mux81.v"
module mux321(
    output [31:0] out,
    input sel,
    input [31:0] a,b
);
mux81 m1(out[7:0],sel,a[7:0],b[7:0]);
mux81 m2(out[15:8],sel,a[15:8],b[15:8]);
mux81 m3(out[23:16],sel,a[23:16],b[23:16]);
mux81 m4(out[31:24],sel,a[31:24],b[31:24]);


endmodule
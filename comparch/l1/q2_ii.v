module bitcomp4d(
output [2:0] out,
    input [3:0] a,b
);
assign out[2]= (a>b) ? 1'b1 : 1'b0;
assign out[1]= (a==b) ? 1'b1 : 1'b0;
assign out[0]= (a<b) ? 1'b1 : 1'b0;

endmodule
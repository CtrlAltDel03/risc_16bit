module decoder2_4(
    output [3:0] regisister,
input [1:0] regis
);
assign regisister[0]=(~regis[1])&(~regis[0]);
assign regisister[1]=(~regis[1])&(~regis[0]);
assign regisister[2]=regis[1]&(~regis[0]);
assign regisister[3]=regis[1]&regis[0];

endmodule
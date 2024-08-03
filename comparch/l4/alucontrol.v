module alucontrol(
    output [2:0] op,
    input [5:0] funct,
    input [1:0] aluop
);

assign op[0]=(aluop[1]&(funct[0]^funct[3]));
assign op[2]=(aluop[0] |(aluop[1]&funct[1]));
assign op[1]=((~aluop[1]) | (~funct[2]) );
endmodule
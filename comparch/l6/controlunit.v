module controlunit(output regdst,
output jump,
output branch,
output memrd,
output memwr,
output [1:0] aluop,
output memtoreg,
output regwr,
output alusrc,
input [5:0] opcode
);

generate
assign regdst=(~opcode[5] & ~opcode[4] & ~opcode[3] & ~opcode[2] & ~opcode[1] & opcode[0]);           
assign jump=(~opcode[0] & opcode[1]);
assign branch= (~opcode[0] & ~opcode[1] & opcode[2]);
assign memrd=(opcode[0] & opcode[1]  & ~opcode[3] & opcode[5]);
assign memwr=(opcode[0] & opcode[1] & opcode[3] & opcode[5]);
assign memtoreg=opcode[5];
assign regwr = ~(opcode[3]^opcode[2]);
assign alursrc = opcode[0];
assign aluop[0]=(~opcode[5] & ~opcode[4] & ~ opcode [3] & opcode[1] & ~opcode[0])| (~opcode[5] & ~opcode[4] & ~ opcode [3] & opcode[2]  & ~opcode[0]);
assign aluop[1]= (~opcode[5] & ~opcode[4] & ~opcode[3] & ~opcode[2] & ~opcode[1] & ~opcode[0]);
endgenerate



endmodule
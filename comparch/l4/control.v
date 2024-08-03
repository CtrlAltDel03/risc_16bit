module maincontrol(
    output RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,AlUOp1,AlUOp0,
    input [5:0] opcode
);
wire Rformat,lw,sw,beq;
assign Rformat=~opcode[5] & ~opcode[4] & ~opcode[3] & ~opcode[2] & ~opcode[1] & ~opcode[0];
assign lw=opcode[5] & ~opcode[4] & ~opcode[3] & ~opcode[2] & opcode[1] & opcode[0];
assign sw=opcode[5] & ~opcode[4] & opcode[3] & ~opcode[2] & opcode[1] & opcode[0];
assign beq=opcode[5] & ~opcode[4] & ~opcode[3] & opcode[2] & opcode[1] & opcode[0];

assign RegDst=Rformat;
assign ALUSrc=lw|sw;
assign MemtoReg=lw;
assign RegWrite=Rformat|lw;
assign MemRead=lw;
assign MemWrite=sw;
assign Branch=beq;
assign AlUOp1=Rformat;  
assign AlUOp0=beq;

endmodule

`include "pc.v"
`include "instrmem.v"
`include "sign_extender.v"
`include "control.v"
`include "regfile.v"
`include "mux5b21.v"
`include "alu.v"
`include "datamem.v"
`include "alucontrol.v"
module scd(
	output [31:0] aluout,
	input [4:0] pc,
	input clk,
	input reset
	);
	wire [31:0] instr;
	wire [31:0] signextend;
	wire RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,AlUOp1,AlUOp0;
	wire  [4:0] MuxRegWriteAddress;
	wire  [31:0]  MuxALU2Src, MuxWriteDataSrc, MuxJumpOut, DataMemOut;
	wire [31:0] readData1,readData2;
	wire  [1:0] ALUOp;
	wire  [2:0] Op;
	wire [31:0] ALUoutput;
	wire cout;
	wire [31:0] ReadData;
	instrmem m1(instr,pc);
	sign_extender s1(signextend,instr);
	control c1(RegDst,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,AlUOp[1],AlUOp[0],instr[31:26]);
	MUX5Bit_2To1 mx1(MuxRegWriteAddress, RegDst, instr[20:16], instr[16:11]);
	regfile r1(clk,reset,instr[26:21],instr[20:16],MuxRegWriteAddress,MuxWriteDataSrc,RegWrite,readData1,readData2);
	alucontrol alc(Op, instr[5:0],ALUOp);
	mux321 m32(MuxALU2Src,ALUSrc,readData2,signextend);
	alu al1(ALUoutput,cout,readData1,MuxALU2Src);
	data_memory d1(clk, MemRead, ALUoutput, ReadData, MemWrite, ALUoutput, readData2)
	mux321 m322(MuxWriteDataSrc,MemtoReg,ALUoutput,ReadData);






endmodule
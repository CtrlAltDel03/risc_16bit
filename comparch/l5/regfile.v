`include "reg32.v"
`include "dec2_4.v"
`include "mux41.v"
module regfile(clk,reset,readreg1,readreg2,writeReg,writeData,writeEnable,readData1,readData2);
input clk,reset,writeEnable;
input [1:0] readreg1,readreg2,writeReg;
input [31:0] writeData;
output [31:0] readData1,readData2;  

wire [31:0] wr1,wr2,wr3,wr4;
wire [3:0] dec;
decoder2_4 d1(dec,writeReg);
and a1(regclk1,clk,writeEnable,dec[0]);
and a2(regclk2,clk,writeEnable,dec[1]);
and a3(regclk3,clk,writeEnable,dec[2]);
and a4(regclk4,clk,writeEnable,dec[3]);

reg32b r1(wr1,writeData,regclk1,reset);
reg32b r2(wr2,writeData,regclk2,reset);
reg32b r3(wr3,writeData,regclk3,reset);
reg32b r4(wr4,writeData,regclk4,reset);

mux4_1 m1(readData1,wr1,wr2,wr3,wr4,readreg1);
mux4_1 m2(readData2,wr1,wr2,wr3,wr4,readreg2);

endmodule
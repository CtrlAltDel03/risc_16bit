`include "regfile.v"
module regfiletest();
reg clk,reset,writeEnable;
reg [1:0] readreg1,readreg2,writeReg;
reg [31:0] writeData;
wire [31:0] readData1,readData2;
regfile m1(clk,reset,readreg1,readreg2,writeReg,writeData,writeEnable,readData1,readData2);

initial
begin
    clk=0;
    reset=0;
    writeEnable=0;
end
always #1 clk=~clk;

initial
$monitor("clk=%b reset=%b writeEnable=%b readreg1=%b readreg2=%b writeReg=%b writeData=%h readData1=%h readData2=%h",clk,reset,writeEnable,readreg1,readreg2,writeReg,writeData,readData1,readData2);
initial 
begin
    reset=1;
    #2 reset=0;writeEnable=0;readreg1=0;readreg2=0;
    #4 writeEnable=1;writeReg=2'b01;writeData=32'h000000a1;
    #6 writeEnable=0;readreg1=2'b01;readreg2=0;
    #8 $finish;

end





endmodule
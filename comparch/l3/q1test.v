`include "q1.v"
module test();
wire [3:0] count;
reg clk;
reg reset;
synchrcount4 s1(count,clk,reset);
initial 
    begin
    clk=0;
    end
    always
    #1 clk=~clk;
initial
    $monitor($time," count=%b clk=%b reset=%b",count,clk,reset);
    initial
    begin
        reset<=1;
        #2reset <=0;
        #4 reset<=1;
        #6$finish;
    end
endmodule
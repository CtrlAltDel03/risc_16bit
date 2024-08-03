`include "q2_ii.v"
module testbench;
    reg a0,a1,a2,a3,b0,b1,b2,b3;
    wire out0,out1,out2;
    bitcomp4d bd1({out2,out1,out0},{a3,a2,a1,a0},{b3,b2,b1,b0});

    initial
        begin
            $monitor(,$time,"out=%b %b %b a=%b %b %b %b b=%b %b %b %b",out0,out1,out2,a0,a1,a2,a3,b0,b1,b2,b3);
            #0 a0=1'b0;a1=1'b0;a2=1'b0;a3=1'b0;b0=1'b0;b1=1'b0;b2=1'b0;b3=1'b0;
            #2 a0=1'b1;a1=1'b0;a2=1'b0;a3=1'b0;b0=1'b0;b1=1'b0;b2=1'b0;b3=1'b0;
            #4 a0=1'b0;a1=1'b0;a2=1'b0;a3=1'b0;b0=1'b1;b1=1'b0;b2=1'b0;b3=1'b0;
            #6 $finish;
            
        end



endmodule
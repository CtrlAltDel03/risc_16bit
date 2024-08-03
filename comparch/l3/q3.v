`include "shift.v"
`include "1_b.v"
module serialadd(
    output reg s,cout,
    input si,clk,res,clear
);
always @(posedge clk)
    if(res) begin
        shiftreg s1(1,si,clk,shift);
    else if(clear)
        s<=0;
    else
        s<=si^s;




endmodule
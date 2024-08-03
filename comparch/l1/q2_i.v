module bitcomp4b();
    output [2:0] out;
    input [3:0] a,b;

always @(out or a or b)
    if(a>b) assign out[2]=1'b1;
    else if(a<b) assign out[0]=1'b0;
    else assign out[1]=1'b1;

endmodule
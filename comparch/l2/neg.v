module signc(
    output ch,
    input [3:0] a);
    reg ch;
always @(a)
    if(a[3]==1)
    begin
        assign ch=1;
    end
    else
        assign ch=0;

endmodule
`include "neg.v"
module comp4(
    output x,y,z,
    input [3:0] a,
    input [3:0] b
);
wire signa,signb;
signc s1(signa,a);
signc s2(signb,b);
reg x,y,z;
always @(a or b or signa or signb)

    if(signa==1 && signb==0)
    begin
        z=1;
        x=0;
        y=0;
    end
    else if(signa==0 && signb==1)
    begin
        z=0;
        x=1;
        y=0;
    end
    else
        if(a>b)
        begin
            z=0;
            x=1;
            y=0;
        end
        else if(a<b)
        begin
            z=1;
            x=0;
            y=0;
        end
        else
        begin
            z=0;
            x=0;
            y=1;
        end


endmodule
`include "2.v"
module comptest();
reg [3:0] a,b;
wire x,y,z;
comp4 d1(x,y,z,a,b);
initial begin
    $monitor("a=%b b=%b x=%b y=%b z=%b", a,b,x,y,z);
    a = 4'b0000; b = 4'b0000;
    #10 a = 4'b0001; b = 4'b0001;
    #10 a = 4'b0010; b = 4'b0001;
    #10 a = 4'b0001; b = 4'b1010;
    #10 a = 4'b0010; b = 4'b0011;
    #10 a = 4'b1011; b = 4'b1010;
    #10 $finish;
end

endmodule
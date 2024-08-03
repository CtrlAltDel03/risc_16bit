`include "fa32.v"
module fa32test();
reg [31:0] a,b;
wire [31:0] out;
reg cin;
wire cout;
fulladd32 m1(out,cout,a,b,cin);
initial
begin
    $monitor("a=%h b=%h cin=%b sum=%h cout=%b",a,b,cin,out,cout);
    a=32'h0000;b=32'h0000;cin=0;
    #10 a=32'h0001;b=32'h0008;cin=0;
    #10 a=32'h0001;b=32'h0008;cin=1;
    $finish;

end

endmodule

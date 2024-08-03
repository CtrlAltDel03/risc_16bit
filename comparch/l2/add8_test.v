`include "1-i.v"
module add8test();
reg [7:0] x;
    reg [7:0] y;
    reg cin;
    wire [7:0] s;
    wire cout;
    fadd8 d1(s,cout, x,y,cin);
    initial begin
        $monitor("x=%b y=%b cin%b, s=%b cout=%b", x,y,cin, s,cout);
        x = 8'b00000000; y = 8'b00000000; cin = 1'b0;
        #10 x = 8'b00000001; y = 8'b00000001; cin = 1'b0;
        #10 x = 8'b11000000; y = 8'b10100101; cin = 1'b0;
        #10 x = 8'b11000000; y = 8'b10100101; cin = 1'b1;
        
        #10 $finish;
    end


endmodule
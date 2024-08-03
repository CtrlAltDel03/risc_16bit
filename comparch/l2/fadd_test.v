`include "1_b.v"
module faddtest();
reg [0:2] x;
    wire [0:7] y;
    wire s,cout;
    fadder d1(s,cout, x[0],x[1],x[2]);
    initial begin
        $monitor("x=%b, s=%b c=%b", x, s,cout);
        x = 3'b000;
        #10 x = 3'b001;
        #10 x = 3'b010;
        #10 x = 3'b011;
        #10 x = 3'b100;
        #10 x = 3'b101;
        #10 x = 3'b110;
        #10 x = 3'b111;
        #10 $finish;
    end


endmodule
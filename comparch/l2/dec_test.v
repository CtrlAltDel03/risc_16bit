`include "1_a.v"
module dec_test;
    reg [0:2] x;
    wire [0:7] y;
    decoder d1(y[0],y[1],y[2],y[3],y[4],y[5],y[6],y[7], x[0],x[1],x[2]);
    initial begin
        $monitor("x=%b, y=%b", x, y);
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
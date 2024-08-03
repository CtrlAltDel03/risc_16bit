`include "hwq1_a_g.v"
module fulladd1test(
);
wire s,cout;
reg a,b,cin;

fulladd1 fa1(s,cout,a,b,cin);

initial
    begin  
        $monitor(,$time,"s=%b cout=%b a=%b b=%b cin=%b",s,cout,a,b,cin);
        #0 a=1'b0;b=1'b0;cin=1'b0;
        #2 a=1'b1;b=1'b0;cin=1'b0;
        #4 a=1'b1;b=1'b0;cin=1'b1;
        #6 $finish;

    end

endmodule
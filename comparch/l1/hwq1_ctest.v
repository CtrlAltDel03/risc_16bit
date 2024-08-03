`include "hwq1_c.v"
module fulladdsubtest();
wire s0,s1,s2,s3,cout;
reg a0,a1,a2,a3,b0,b1,b2,b3,cin;

fulladdsub fa4(s0,s1,s2,s3,cout,a0,a1,a2,a3,b0,b1,b2,b3,cin);

initial
    begin  
        $monitor(,$time,"s=%b %b %b %b cout=%b  a=%b %b %b %b b=%b %b %b %b cin=%b",s0,s1,s2,s3,cout,a0,a1,a2,a3,b0,b1,b2,b3,cin);
        #0 a0=1'b0;a1=1'b0;a2=1'b0;a3=1'b0;b0=1'b0;b1=1'b0;b2=1'b0;b3=1'b0;cin=1'b0;
        #4 a0=1'b0;a1=1'b0;a2=1'b1;a3=1'b1;b0=1'b0;b1=1'b0;b2=1'b0;b3=1'b1;cin=1'b0;
        #8 a0=1'b0;a1=1'b0;a2=1'b1;a3=1'b1;b0=1'b0;b1=1'b0;b2=1'b0;b3=1'b1;cin=1'b1;
        
        #12 $finish;

    end

endmodule

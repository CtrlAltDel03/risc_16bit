`include "q1_df.v"
module testbench;
    reg bcd0,bcd1,bcd2,bcd3;
    wire grey0,grey1,grey2,grey3;
    bcdtogrey4_df bd1({grey3,grey2,grey1,grey0},{bcd3,bcd2,bcd1,bcd0});
    initial 
        begin
            $monitor(,$time,"grey=%b %b %b %b bcd=%b %b %b %b",grey0,grey1,grey2,grey3,bcd0,bcd1,bcd2,bcd3);
            #0 bcd0=1'b0;bcd1=1'b0;bcd2=1'b0;bcd3=1'b0;
            #2 bcd0=1'b0;bcd1=1'b1;bcd2=1'b0;bcd3=1'b1;
            #4 bcd0=1'b1;bcd1=1'b0;bcd2=1'b1;bcd3=1'b0;
            #6 bcd0=1'b1;bcd1=1'b1;bcd2=1'b1;bcd3=1'b1;
            #10 $finish;
        end



endmodule
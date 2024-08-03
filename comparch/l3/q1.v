module synchrcount4(
    output [3:0] count,
    input clk,
    input reset
);
reg [3:0] count;
always @(posedge clk or negedge reset)
    if(reset)
        count<=4'b0000;
    else
        count<=count+1;

endmodule
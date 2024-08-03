module fulladd32(
    output [31:0] sum,
    output cout,
    input [31:0] a,b,
    input cin
);
assign {cout,sum}=a+b+cin;

endmodule
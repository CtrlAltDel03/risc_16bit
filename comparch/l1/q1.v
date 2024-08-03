module bcdtogrey4(
    output [3:0] grey,
    input [3:0] bcd
    
);
    assign grey[0] = bcd[0];
    xor x1(grey[1], bcd[0], bcd[1]);
    xor x2(grey[2], bcd[1], bcd[2]);
    xor x3(grey[3], bcd[2], bcd[3]);

endmodule
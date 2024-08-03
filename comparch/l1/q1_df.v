module bcdtogrey4_df(
    output [3:0] grey,
    input [3:0] bcd
);
    assign grey[0] = bcd[0];
    assign grey[1] = bcd[0] ^ bcd[1];
    assign grey[2] = bcd[1] ^ bcd[2];
    assign grey[3] = bcd[2] ^ bcd[3];



endmodule
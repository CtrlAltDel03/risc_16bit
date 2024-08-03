module mux21(
    output out,
    input sel,a,b
);
wire notsel, na, nb;
not n1(notsel, sel);
and a1(na, a, notsel);
and a2(nb, b, sel);
or o1(out, na, nb);

endmodule
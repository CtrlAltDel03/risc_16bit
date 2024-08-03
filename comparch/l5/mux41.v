module mux4_1(
    output reg [31:0] regData,
    input [31:0] q0,q1,q2,q3,
    input [1:0] reg_no
);
always @(q1 or q2 or q3 or q0 or reg_no)
begin
    case(reg_no)
        2'b00: regData=q0;
        2'b01: regData=q1;
        2'b10: regData=q2;
        2'b11: regData=q3;
        default : regData=32'b0;
    endcase
end



endmodule
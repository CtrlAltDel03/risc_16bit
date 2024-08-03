module dff(output reg q,
    input d,clk,reset);

    always @(posedge clk or posedge reset) begin
        if(~reset) begin
            q<=1'b0;
        end 
        else begin
            q<=d;
        end
    end
endmodule

module reg32b(q,d,clk,reset);
output  [31:0] q;
input [31:0] d;
input clk,reset;
genvar i;
generate for(i=0;i<32;i=i+1) begin
    dff dff1(q[i],d[i],clk,reset);
end
endgenerate
    

endmodule
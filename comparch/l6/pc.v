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

module pc(output reg [4:0] instr,
input clk,reset);
genvar i;
always @(posedge clk ) begin
    if(~reset) begin
        instr=instr+1;
    end
    else begin
        instr=0;
    end
end
endmodule
module instrmem(output [31:0] instr,
    input [4:0] addr);

    reg [31:0] mem[0:31];
    initial begin
        generate for(i=0;i<32;i=i+1) begin
            mem[i]=32'b0;
        end
    endgenerate
    end
    always @(addr) begin
        instr=mem[addr];
    end


endmodule
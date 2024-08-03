`include "pc.v"
`include "instrmem.v"
module readaddr(
    output [31:0] instr,
    input clk,reset
);
reg [4:0] addr;
pc1 pc(addr,clk,reset);
instrmem im(instr,addr);



endmodule
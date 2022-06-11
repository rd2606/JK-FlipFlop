`timescale 1ns / 1ps

module JKFF(q,qb,j,k,clk);
input j,k,clk;
output reg q,qb;
always @(posedge clk)
case({j,k})
2'b01: q<=0;
2'b10: q<=1;
2'b11:q<=~q;
endcase
endmodule

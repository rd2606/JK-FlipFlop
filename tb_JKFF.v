`timescale 1ns / 1ps

module tb_JKFF();
reg j,k,clk;
wire q;

JKFF FF1(.q(q),.j(j),.k(k),.clk(clk));

integer i=4;
initial
begin
{j,k}=2'b00;
repeat(2)
begin
for(i=0;i<4;i=i+1)
begin
{j,k}=i;
#10;
end
end
end

initial
$monitor($time,"q=%b,j=%b,k=%b,clk=%b",q,j,k,clk);

initial
begin
clk=1'b0;
forever #3 clk<=~clk;
end

initial
#50 $finish;
endmodule
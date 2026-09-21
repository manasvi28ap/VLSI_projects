`timescale 1ns / 1ps
/////////////////////////////////////////////////////////////////////////////////
module bcd_counter_tb();
reg clk,rst,upcounter;
wire [3:0]count;
bcd_counter uut (
.clk(clk),
.rst(rst),
.upcounter(upcounter),
.count(count)
);
always begin
 #5 clk=~clk;
end
initial begin
upcounter=1;
rst=1;
clk=0;
#10;

rst=0;#100;
upcounter=0;
rst=0;#100;
$finish;
end
endmodule

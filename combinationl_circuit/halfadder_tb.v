`timescale 1ns/ 1ps
module ha_tb();
reg a,b;
wire sum,carry;
half_adder dut(
.a(a),
.b(b),
.sum(sum),
.carry(carry));
initial begin
$dumpfile ("halfadder.vcd");
$dumpvars (0,ha_tb);
$monitor ("a=%b,b=%b,S=%b,c=%b",a,b,sum,carry);
#5a=0;b=0;
#5a=0;b=1;
#5a=1;b=0;
#5a=1;b=1;
#20 $finish;
end
endmodule

`timescale 1ns/ 1ps
module hs_tb();
reg a,b;
wire d,bor;
half_subtractor dut(
.a(a),
.b(b),
.d(d),
.bor(bor));
initial begin
$dumpfile ("halfsubtractor.vcd");
$dumpvars (0,hs_tb);
  $monitor ("a=%b,b=%b,d=%b,bor=%b",a,b,d,bor);
#5a=0;b=0;
#5a=0;b=1;
#5a=1;b=0;
#5a=1;b=1;
#20 $finish;
end
endmodule

`timescale 1ns/1ps
module encoder4X2_tb();
reg d1,d2,d3,d4;
wire x,y;
encoder4X2 dut(
.d1(d1),
.d2(d2),
.d3(d3),
.d4(d4),
.x(x),
.y(y));
initial begin
$dumpfile ("encoder4X2.vcd");
$dumpvars(0,encoder4X2_tb);
$monitor ("time=%t,x=%b,y=%b,d1=%b,d2=%b,d3=%b,d4=%b",$time,x,y,d1,d2,d3,d4);
#5d1=1;d2=0;d3=0;d4=0;
#5d1=0;d2=1;d3=0;d4=0;
#5d1=0;d2=0;d3=1;d4=0;
#5d1=0;d2=0;d3=0;d4=1;
#30$finish;
end
endmodule

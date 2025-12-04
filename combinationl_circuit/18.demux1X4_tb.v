module demux1X4_tb ();
reg d,s0,s1;
wire y0,y1,y2,y3;
demux1X4 dut (
.d(d),
.s0(s0),
.s1(s1),
.y0(y0),
.y1(y1),
.y2(y2),
.y3(y3));
initial begin
$dumpfile("demux4.vcd");
$dumpvars(0,demux1X4_tb);
$monitor ("y0=%b,y1=%b,y2=%b,y3=%b,s0=%b,s1=%b,d=%b",y0,y1,y2,y3,s0,s1,d);
d=1;
#5 s0=0;s1=0;
#5 s0=0;s1=1;
#5 s0=1;s1=0;
#5 s0=1;s1=1;
#20 $finish;
end
endmodule

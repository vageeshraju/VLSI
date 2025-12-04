module demux1X2_tb ();
reg s0,d;
wire y0,y1;
demux1X2 dut (
.d(d),
.s0(s0),
.y0(y0),
.y1(y1));
initial begin
$dumpfile("demux2X1.vcd");
$dumpvars(0,demux2X1_tb);
$monitor ("y0=%b,y1=%b,s0=%b,d=%b",y0,y1,s0,d);
#5d=1;s0=0;
#5d=1;s0=1;
#10$finish;
end
endmodule

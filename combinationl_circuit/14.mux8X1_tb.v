module mux8X1_tb();
reg sel2,sel1,sel0,i0,i1,i2,i3,i4,i5,i6,i7;
wire y;
mux8X1 dut(
.y(y),
.sel2(sel2),
.sel1(sel1),
.sel0(sel0),
.i0(i0),
.i1(i1),
.i2(i2),
.i3(i3),
.i4(i4),
.i5(i5),
.i6(i6),
.i7(i7));
initial begin
$dumpfile("mux8X1.vcd");
$dumpvars(0,mux8X1_tb);
$monitor ("y=%b,sel2=%b,sel1=%b,sel0=%b,i0=%b,i1=%b,i2=%b,i3=%b,i4=%b,i5=%b,i6=%b,i7=%b",y,sel2,sel1,sel0,i0,i1,i2,i3,i4,i5,i6,i7);
#5sel2=0;sel1=0;sel0=0;i0=1;i2=0;i4=0;i6=0;
#5sel2=0;sel1=0;sel0=1;i0=1;i2=0;i4=0;i6=0;
#5sel2=0;sel1=1;sel0=0;i0=0;i2=1;i4=0;i6=0;
#5sel2=0;sel1=1;sel0=1;i0=0;i2=1;i4=0;i6=0;
#5sel2=1;sel1=0;sel0=0;i0=0;i2=0;i4=1;i6=0;
#5sel2=1;sel1=0;sel0=1;i0=0;i2=0;i4=1;i6=0;
#5sel2=1;sel1=1;sel0=0;i0=0;i2=0;i4=0;i6=1;
#5sel2=1;sel1=1;sel0=1;i0=0;i2=0;i4=0;i6=1;
#40 $finish;
end
endmodule

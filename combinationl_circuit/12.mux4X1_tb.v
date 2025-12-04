module mux2X1_tb();
reg sel,a,b;
wire y;
mux2X1 dut (
.sel(sel),
.a(a),
.b(b),
.y(y));
initial begin
$dumpfile("mux2X1.vcd");
$dumpvars(0,mux2X1_tb);
$monitor ("sel=%b,a=%b,b=%b,y=%b",sel,a,b,y);
#5sel=0;a=0;b=1;
#5sel=0;a=1;b=0;
#5sel=1;a=0;b=1;
#5sel=1;a=1;b=0;
#20 $finish;
end
endmodule

module nor_tb();
reg a,b;
wire x;
nor_gate dut (
.a(a),
.b(b),
.x(x));
initial begin
$dumpfile ("nor.vcd");
$dumpvars (0,nor_tb);
$monitor ("x=%b,a=%b,b=%b",x,a,b);
#5 a=0;b=0;
#5 a=1;b=0;
#5 a=1;b=1;
#20 $finish;
end
endmodule

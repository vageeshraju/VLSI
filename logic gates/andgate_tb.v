`timescale 1 ns/ 1ps
module and_gate_tb();
reg a,b;
wire y;
and_gate dut (
.a(a),
.b(b),
.y(y));
initial begin 
dumpfile("and_gate_tb.vcd");
dumpvars(0,and_gate_tb);
#10 a=0; b=1;
#10 a=1; b=1;
$display ("y=%b,a=%b,b=%b",y,a,b);
end
endmodule

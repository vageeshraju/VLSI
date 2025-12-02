module nand_tb();
reg a,b;
wire x;
nand_gate dut (
 .a(a),
 .b(b),
 .x(x));
initial begin
$dumpfile ("nand.vcd");
$dumpvars (0,nand_tb);
$monitor ("x=%b,a=%b,b=%b",x,a,b);
#5 a=0;b=0;
#5 a=0;b=1;
#5 a=1;b=0;
#5 a=1;b=1;
#30 $finish;
end
endmodule

module full_adder_tb();
reg a,b,cin;
wire sum,c_out;
full_adder dut (
.a(a),
.b(b),
.cin(cin),
.sum(sum),
.c_out(c_out));
initial begin
$dumpfile ("fulladder.vcd");
$dumpvars (0,full_adder_tb);
  $monitor ("a=%b,b=%b,cin=%b,sum=%b,c_out=%b",a,b,cin,sum,c_out);
#5a=0;b=0;cin=0;
#5a=0;b=1;cin=0;
#5a=1;b=0;cin=0;
#5a=1;b=1;cin=0;
#5a=0;b=0;cin=1;
#5a=0;b=1;cin=1;
#5a=1;b=0;cin=1;
#5a=1;b=1;cin=1;
#40 $finish;
end
endmodule

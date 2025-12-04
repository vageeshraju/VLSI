module full_subtractor_tb();
reg a,b,bin;
wire d,bout;
full_subtractor dut (
.a(a),
.b(b),
.bin(bin),
.d(d),
.bout(bout));
initial begin
$dumpfile ("fullsubtractor.vcd");
$dumpvars (0,full_subtractor_tb);
$monitor ("a=%b,b=%b,bin=%b,d=%b,bout=%b",a,b,bin,d,bout);
#5a=0;b=0;bin=0;
#5a=0;b=1;bin=0;
#5a=1;b=0;bin=0;
#5a=1;b=1;bin=0;
#5a=0;b=0;bin=1;
#5a=0;b=1;bin=1;
#5a=1;b=0;bin=1;
#5a=1;b=1;bin=1;
#40 $finish;
end
endmodule

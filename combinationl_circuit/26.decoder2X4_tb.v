`timescale 1ns /1ps
module decoder2X4_tb();
reg a,b;
wire f0,f1,f2,f3;
decoder2X4 dut (
.a(a),
.b(b),
.f0(f),
.f1(f1),
.f2(f2),
.f3(f3));
initial begin
        $dumpfile ("ecoder2X4.vcd");
        $dumpvars(0,decoder2X4_tb);
        $monitor ("time=%t,f0=%b,f1=%b,f2=%b,f3=%b,a=%b,b=%b",$time,f0,f1,f2,f3,a,b);
        #5a=0;b=0;
        #5a=0;b=1;
        #5a=1;b=0;
        #5a=1;b=1;
        #20$finish;
end
endmodule

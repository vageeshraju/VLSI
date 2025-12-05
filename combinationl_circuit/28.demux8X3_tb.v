`timescale 1ns /1ps
module decoder3X8_tb();
reg a,b,c;
wire f0,f1,f2,f3,f4,f5,f6,f7;
decoder3X8 dut (
.a(a),
.b(b),
.c(c),
.f0(f0),
.f1(f1),
.f2(f2),
.f3(f3),
.f4(f4),
.f5(f5),
.f6(f6),
.f7(f7));
initial begin
        $dumpfile ("decoder3X8.vcd");
        $dumpvars(0,decoder3X8_tb);
        $monitor ("time=%t,f0=%b,f1=%b,f2=%b,f3=%b,f4=%b,f5=%b,f6=%b,f7=%b,a=%b,b=%b,c=%b",$time,f0,f1,f2,f3,f4,f5,f6,f7,a,b,c);
        #5a=0;b=0;c=0;
        #5a=0;b=0;c=1;
        #5a=0;b=1;c=0;
        #5a=0;b=1;c=1;
        #5a=1;b=0;c=0;
        #5a=1;b=0;c=1;
        #5a=1;b=1;c=0;
        #5a=1;b=1;c=1;
        #40$finish;
end
endmodule

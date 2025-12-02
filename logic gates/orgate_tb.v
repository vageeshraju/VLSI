`timescale 1 ns/1ps
module or_gate ();
  reg a,b;
  wire y;
  or_gate dut (
    .a(a),
    .b(b),
    .y(y)
  );
  initial begin
    $dumpfile ("orgate.vcd");
    $dumpvars (0,or_gate_tb);
    $monitor ("a=%b,b=%b,y=%b",a,b,y);
    #10 a=0; b=1;
    #10 a=1; b=1;
    #30 $finish
  end 
endmodule

module notgate_tb();
  reg a;
  wire y;
  notgate dut (
    .a(a),
    .y(y));
  initial begin 
    $dumpfile ("not.vcd");
    $dumpvars (0,notgate_tb);
    $monitor ("y=%b,a=%b",y,a);
    #10 a=0;
    #5 a=1;
    #20 $finish;
  end 
endmodule

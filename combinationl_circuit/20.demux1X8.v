module demux1X8_tb ();
  reg d,s0,s1,s2;
  wire y0,y1,y2,y3,y4,y5,y6,y7;
  demux1X8 dut (
    .d(d),
    .s0(s0),
    .s1(s1),
    .s2(s2),
    .y0(y0),
    .y1(y1),
    .y2(y2),
    .y3(y3),
    .y4(y4),
    .y5(y5),
    .y6(y6),
    .y7(y7));
  initial begin
    $dumpfile("demux8.vcd");
    $dumpvars(0,demux1X8_tb);
    $monitor ("y0=%b,y1=%b,y2=%b,y3=%b,y4=%b,y5=%b,y6=%b,y7=%b,s0=%b,s1=%b,s2=%b,d=%b",y0,y1,y2,y3,y4,y5,y6,y7,s0,s1,s2,d);
    d=1;
    #5 s2=0;s1=0;s0=0;
    #5 s2=0;s1=0;s0=1;
    #5 s2=0;s1=1;s0=0;
    #5 s2=0;s1=1;s0=1;
    #5 s2=1;s1=0;s0=0;
    #5 s2=1;s1=0;s0=1;
    #5 s2=1;s1=1;s0=0;
    #5 s2=1;s1=1;s0=1;
    #40 $finish;
  end
endmodule

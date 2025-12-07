`timescale 1ns/1ps
module bcd_to_7segment_tb;
  reg  [3:0] bcd;
  wire [6:0] seg;
bcd_to_7segment uut (
        .bcd(bcd),
        .seg(seg)
    );
    initial begin
      $dumpfile("bcd7seg.vcd");
        $dumpvars(0, bcd_to_7segment_tb);
        bcd = 4'b0000; #10;
        $display("BCD=%b  Seg=%b", bcd, seg);
        bcd = 4'b0001; #10;
        $display("BCD=%b  Seg=%b", bcd, seg);
        bcd = 4'b0010; #10;
        $display("BCD=%b  Seg=%b", bcd, seg);
        bcd = 4'b0011; #10;
        $display("BCD=%b  Seg=%b", bcd, seg);
        bcd = 4'b0100; #10;
        $display("BCD=%b  Seg=%b", bcd, seg);
        bcd = 4'b0101; #10;
        $display("BCD=%b  Seg=%b", bcd, seg);
        bcd = 4'b0110; #10;
        $display("BCD=%b  Seg=%b", bcd, seg);
        bcd = 4'b0111; #10;
        $display("BCD=%b  Seg=%b", bcd, seg);
        bcd = 4'b1000; #10;
        $display("BCD=%b  Seg=%b", bcd, seg);
        bcd = 4'b1001; #10;
        $display("BCD=%b  Seg=%b", bcd, seg);
        bcd = 4'b1010; #10;
        $display("BCD=%b  Seg=%b (Invalid)", bcd, seg);
        bcd = 4'b1111; #10;
        $display("BCD=%b  Seg=%b (Invalid)", bcd, seg);
        $finish;
    end
endmodule

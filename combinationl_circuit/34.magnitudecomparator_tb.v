`timescale 1ns/1ps
module magnitude_comparator_4bit_tb;
    reg  [3:0] A, B;
    wire A_greater, A_equal, A_less;
magnitude_comparator_4bit uut (
        .A(A),
        .B(B),
        .A_greater(A_greater),
        .A_equal(A_equal),
        .A_less(A_less)
    );
    initial begin
        $dumpfile("comparator.vcd");
        $dumpvars(0, magnitude_comparator_4bit_tb);
        A = 4'b0101; B = 4'b0011; #10;
        $display("A=%b B=%b => >:%b =:%b <:%b",
                    A, B, A_greater, A_equal, A_less);
        A = 4'b1000; B = 4'b1111; #10;
        $display("A=%b B=%b => >:%b =:%b <:%b",
                    A, B, A_greater, A_equal, A_less);
        A = 4'b1010; B = 4'b1010; #10;
        $display("A=%b B=%b => >:%b =:%b <:%b",
                    A, B, A_greater, A_equal, A_less);
        A = 4'b0000; B = 4'b0001; #10;
        $display("A=%b B=%b => >:%b =:%b <:%b",
                    A, B, A_greater, A_equal, A_less);
        A = 4'b1111; B = 4'b0000; #10;
        $display("A=%b B=%b => >:%b =:%b <:%b",
                    A, B, A_greater, A_equal, A_less);
        A = 4'b0110; B = 4'b0101; #10;
      $display("A=%b B=%b => >:%b =:%b <:%b",
                    A, B, A_greater, A_equal, A_less);
      $finish;
    end
endmodule

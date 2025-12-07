`timescale 1ns/1ps
module cla_4bit_adder_tb;
  reg  [3:0] A, B;
  reg  Cin;
  wire [3:0] Sum;
  wire Cout; cla_4bit_adder uut(
        .A(A),
        .B(B),
        .Cin(Cin),
        .Sum(Sum),
        .Cout(Cout)
    );                                                               initial begin
        $dumpfile("cla.vcd");
        $dumpvars(0, cla_4bit_adder_tb);
        A = 4'b0001; B = 4'b0010; Cin = 0; #10;
        $display("A=%b B=%b Cin=%b => Sum=%b Cout=%b", A, B, Cin, Sum, Cout);
        A = 4'b0101; B = 4'b0011; Cin = 1; #10;
        $display("A=%b B=%b Cin=%b => Sum=%b Cout=%b", A, B, Cin, Sum, Cout);
        A = 4'b1111; B = 4'b0001; Cin = 0; #10;                          $display("A=%b B=%b Cin=%b => Sum=%b Cout=%b", A, B, Cin, Sum, Cout);
        A = 4'b1010; B = 4'b0101; Cin = 1; #10;
        $display("A=%b B=%b Cin=%b => Sum=%b Cout=%b", A, B, Cin, Sum, Cout);
        A = 4'b1111; B = 4'b1111; Cin = 1; #10;
        $display("A=%b B=%b Cin=%b => Sum=%b Cout=%b", A, B, Cin, Sum, Cout);                                                             $finish;
    end
endmodule

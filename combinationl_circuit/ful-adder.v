module full_adder (output sum,c_out, input a,b,cin);
assign sum  = a ^ b ^ cin;
assign c_out = (a & b) | (b & cin) | (a & cin);
endmodule

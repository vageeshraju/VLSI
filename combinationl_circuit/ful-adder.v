module full_adder (output sum,carry, input a,b,cin);
assign sum  = a ^ b ^ cin;
assign carry = (a & b) | (b & cin) | (a & cin);
endmodule

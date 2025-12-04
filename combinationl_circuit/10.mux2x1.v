module mux2X1(output y,input a,b,sel);
assign y = sel ? b : a;
endmodule

module mux4X1(output y,input sel1,sel0,a,b,c,d);
assign y=sel1?(sel0?d:c):(sel0?b:a);
endmodule

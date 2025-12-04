module mux8X1(output y,input sel2,sel1,sel0,i0,i1,i2,i3,i4,i5,i6,i7);
assign y=sel2?(sel1?(sel0?i7:i6):(sel0?i5:i4)):(sel1?(sel0?i3:i2):(sel0?i1:i0));
endmodule                 

module encoder8X4 (output x1,x2,x3,input i0,i1,i2,i3,i4,i5,i6,i7);
  assign x3=i4|i5|i6|i7;
  assign x2=i2|i3|i6|i7;
  assign x1=i1|i3|i5|i7;
endmodule

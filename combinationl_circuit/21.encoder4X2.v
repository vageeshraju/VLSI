module encoder4X2(output x,y,input d1,d2,d3,d4);
  assign x=d3|d4;
  assign y=d2|d4;
endmodule

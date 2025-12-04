module demux1X2(output y0,y1,input d,s0);
assign y0=d&(~s0);
assign y1=d&s0;
endmodule

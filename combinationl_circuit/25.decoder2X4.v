module decoder2X4(output f0,f1,f2,f3,input a,b);
assign f0=(~a)&(~b);
assign f1=(~a)&(b);
assign f2=(a)&(~b);
assign f3=(a)&(b);
endmodule

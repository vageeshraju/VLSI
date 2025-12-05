module decoder3X8(output f0,f1,f2,f3,f4,f5,f6,f7,input a,b,c);
assign f0=(~a)&(~b)&(~c);
assign f1=(~a)&(~b)&(c);
assign f2=(~a)&(b)&(~c);
assign f3=(~a)&(b)&(c);
assign f4=(a)&(~b)&(~c);
assign f5=(a)&(~b)&(c);
assign f6=(a)&(b)&(~c);
assign f7=(a)&(b)&(c);
endmodule

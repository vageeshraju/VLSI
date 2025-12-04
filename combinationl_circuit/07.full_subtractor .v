module full_subtractor(output d,bout, input a,b,bin );
assign d=a^b^bin;
assign bout = (~a&b) | (~ a& bin) | (b & bin);
endmodule

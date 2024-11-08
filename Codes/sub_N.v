module sub_N (a,b,c);
parameter N=8;
input [N-1:0] a,b;
output [N:0] c;
assign c = {1'b0,a} - {1'b0,b};
endmodule



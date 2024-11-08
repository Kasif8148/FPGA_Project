module add_mantovf (a,mant_ovf,c);
parameter N=8;
input [N:0] a;
input mant_ovf;
output [N:0] c;
assign c = a + mant_ovf;
endmodule

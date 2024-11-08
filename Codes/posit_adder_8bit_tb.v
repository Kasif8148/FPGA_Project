`timescale 1ns / 1ps
module posit_adder_8bit_tb_v;

function [31:0] log2;
input reg [31:0] value;
	begin
	value = value-1;
	for (log2=0; value>0; log2=log2+1)
        	value = value>>1;
      	end
endfunction

parameter N=8;
parameter Bs=log2(N);
parameter es=2;

reg [N-1:0] in1_reg, in2_reg;
reg start; 

wire [N-1:0]  out_reg;
wire done;

	reg clk;
	

// Instantiate the Unit Under Test (UUT)
posit_adder #(.N(N), .es(es)) uut (clk,in1_reg, in2_reg, start, out_reg, inf, zero, done);


	
	initial begin
		// Initialize Inputs
		in1_reg = 0;
		in2_reg = 0;
		clk = 0;
		start = 0;
	
		
		// Wait 100 ns for global reset to finish
		
		#100 start = 1;
		in1_reg = 8'b00101000;
		in2_reg = 8'b00111001;
		#10 in2_reg=8'b01110101;
		
		#10 in1_reg = 8'b00000110;
		    in2_reg = 8'b01010101;
		    
		#10 in1_reg = 8'b10101010;
		    in2_reg = 8'b11100101;
		    
		    #10 in1_reg = 8'b10000000;
		        in2_reg = 8'b11100101;
		     
		     # 10 in1_reg = 8'b01100101;
		          in2_reg = 8'b10000000;
		          
		          # 10 in1_reg = 8'b00000000;
		          in2_reg = 8'b00000000;
		        
		
		
		#10 
                #655500 start = 0;
		#100;
		
		
		$finish;
	end
	
 always #5 clk=~clk;

 
endmodule


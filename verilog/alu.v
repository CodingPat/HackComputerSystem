module Top;
	reg a,b;
	wire sum,carry;
	
	half_adder ha1(sum,carry,a,b);

	initial
	begin
		a=0;b=1;
		#1 $display("a=%b - b=%b - sum=%b - carry=%b \n",a,b,sum,carry);  
	end
	
	
endmodule

module half_adder(sum,carry,a,b);
	output sum,carry;
	input a,b;
	
		
	xor(sum,a,b);
	and(carry,a,b);
	
endmodule


class sample;
  rand int fact[];
  
  
	function int factorial(int a);
		if(a==0 || a==1)begin
			return 1;
		end
		else begin
		while (a>0)
		 return a*factorial(a-1);
		end
	endfunction
  
     
endclass
	
module top;
	sample s=new();
	
	initial begin
		assert(s.randomize()); 
			$display("factorial of a is %0d", s.factorial(4));// what ever number we will put here will get output
    end
endmodule
/*
# factorial of a is 24
*/

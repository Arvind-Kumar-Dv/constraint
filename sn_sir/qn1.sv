// write a constraint bfor an array of 10 element in which the first 5 element in increment in nature and next 5 element in decrement in nature

class sample;
rand int a[9:0];

constraint c1{
		foreach(a[i]){
				a[i] inside{[50:100]};
				
				if(i>1 && i<5){
				a[i]>a[i-1];
				}
			
				
			if(i>6&& i<10){
				a[i] <a[i-1];
				}
		}
	}

endclass

module top;
sample s=new();
	initial begin
		assert(s.randomize());
		$display("s=%p",s.a);
	end


endmodule

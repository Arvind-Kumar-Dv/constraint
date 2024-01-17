class sample;
rand int a[$];

constraint a_c{
		a.size()==10;
		foreach(a[i]) a[i]inside{[10:90]};
	
	}
endclass

module top;
sample s=new();
	initial begin
	assert(s.randomize());
	$display("s=%p",s.a);
	end

endmodule

/*
# s='{70, 58, 40, 49, 31, 40, 48, 28, 47, 23}
*/

 // genrate pattern 11,22,33,44,55 ...

class sample;
rand int a[9:0];

constraint c1{
				foreach(a[i])
				
						a[i]==(i+2)/2;
		 		}

endclass

module top;
sample s=new();
	
    initial begin
		assert(s.randomize());
		$display("s=%p",s);
	end
endmodule

/*
# s='{a:'{5, 5, 4, 4, 3, 3, 2, 2, 1, 1}}
*/

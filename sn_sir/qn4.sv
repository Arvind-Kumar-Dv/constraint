// genrate number in assending order

class sample;
rand int a[9:0];

constraint c1{
				foreach(a[i])
				
					{
					a[i] inside{[50:100]};
				
					if(i>0)
					{ a[i]<a[i-1]};
			}
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

# s='{a:'{53, 57, 65, 69, 75, 79, 80, 81, 93, 94}}

*/

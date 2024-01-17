// genrate number in decrement order
class sample;
rand int a[9:0];

constraint c1{
				foreach(a[i])
				
					{a[i] inside{[50:100]};
				
					if(i>0)
					{ a[i]>a[i-1]};
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
# s='{a:'{92, 88, 75, 72, 67, 66, 65, 64, 63, 59}}
*/

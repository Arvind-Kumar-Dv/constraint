
 // genrate pattern 1,2,3,4,5,5,4,3,2,1
class sample;
rand int a[9:0];

constraint c1{
				foreach(a[i])
				
					{						
					if(i<5)
				 a[i]==i+1;
		 else
				 a[i]==10-i;
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
# s='{a:'{1, 2, 3, 4, 5, 5, 4, 3, 2, 1}}
*/

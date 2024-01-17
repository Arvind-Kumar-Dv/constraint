

// genrate  odd number without modulus operator


class sample;
rand int a;

constraint c1{
					
				a[0]==1; 
				a inside{[10:100]};
			}
endclass

module top;
sample s=new();
	
    initial begin
			repeat(10) begin
				assert(s.randomize());
				$display("s=%p",s);
			end
    	end
endmodule



/*  output

# s='{a:35}
# s='{a:21}
# s='{a:55}
# s='{a:53}
# s='{a:13}
# s='{a:69}
# s='{a:79}
# s='{a:89}
# s='{a:95}
# s='{a:29}


*/


/*
// using array

class sample;
rand int a[9:0];

constraint c1{
		foreach(a[i]){
				
				a[i][0]==1; 
				a[i] inside{[10:100]};
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
*/

/* output
# s='{a:'{59, 57, 93, 53, 23, 27, 61, 23, 55, 35}}
*/

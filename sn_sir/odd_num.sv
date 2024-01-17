// genrate number odd number with modulus operator

class sample;
rand int a[9:0];

constraint c1{
				foreach(a[i]){
					a[i] inside{[10:100]};
					a[i]%2!=0; 
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

# s='{a:'{41, 93, 61, 91, 89, 75, 71, 89, 95, 59}}
*/

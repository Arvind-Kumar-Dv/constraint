class sample;
rand int a[];

constraint c1 { foreach (a[i]) a[i] inside {2,4,6,40,43,66,70};}
constraint c2 {foreach (a[j]) a[j]>2*j;}

endclass
module top;
sample s=new();

	initial begin
	s.a=new[10];
	assert(s.randomize());
	$display("s=%p",s.a);
	end
endmodule	
/* output for [5]
# s='{70, 4, 66, 40, 43, 66, 66, 66, 66, 43}
*/

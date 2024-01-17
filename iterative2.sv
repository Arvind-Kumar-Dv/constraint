class sample;
rand int a[];

constraint c1 { foreach (a[i]) a[i] inside {2,4,6,40,43,66,70};}
constraint c2 {foreach (a[j]) a[j]>2*j;}

endclass
module top;
sample s=new();

	initial begin
//	s.a=new[10];
	s.a=new[36];
	s.a[1]=10;  //if radomization is fail then these value it will show other wise it will not show
	s.a[2]=12;
	s.a[3]=14;
	assert(s.randomize());
	$display("s=%p",s.a);
	end
endmodule	
/* output for [10]
 s='{70, 4, 66, 40, 43, 66, 66, 66, 66, 43}
 output for [36]
# s='{0, 10, 12, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
*/

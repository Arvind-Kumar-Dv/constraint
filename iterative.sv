class sample;
rand int a[];

constraint c1 { foreach (a[i]) a[i] inside {2,4,6,8};}
constraint c2 {foreach (a[j]) a[j]>2*j;}

endclass
module top;
sample s=new();

	initial begin
	//s.a=new[5];// it will  give assertion eroor 2*5 >10 which is leass than 8
	 s.a=new[4];
	 assert(s.randomize());
	 $display("s=%p",s.a);
	end
endmodule	
/* output for [5]
s='{0, 0, 0, 0, 0}
output for [4]
s='{6, 4, 6, 8}
*/

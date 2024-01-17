class sample;
rand int a;		
rand bit [3:0]b;
	constraint c{a==2**b;}
endclass

module top;
sample s=new();
initial begin
		repeat(5) begin
			assert(s.randomize());
			$display("a=%0d,b=%0d",s.a,s.b);
		end

end
endmodule
/*

# a=256,b=8
# a=2048,b=11
# a=1024,b=10
# a=64,b=6
# a=256,b=8

*/

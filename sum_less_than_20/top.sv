class sample;
rand int a,b,c;
constraint c1{
			c==a+b;
			c inside {[2:19]};
			}

endclass

module top;
sample s=new();

initial begin
	 repeat(10) begin
		assert(s.randomize());
		$display("sum of a and b =%p",s.c);
	 end
end
endmodule

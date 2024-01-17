class sample;
rand bit [5:0]a;
constraint c1{a!=0; (a & (a-1))==0;}

endclass

module top;
sample s=new();
initial begin
		repeat(10) begin
			assert(s.randomize());
			$display("a=%0d,a=%b",s.a,s.a);
		end
end
endmodule
/*
# a=16,a=010000
# a=16,a=010000
# a=1,a=000001
# a=8,a=001000
# a=1,a=000001
# a=32,a=100000
# a=1,a=000001
# a=16,a=010000
# a=1,a=000001
# a=2,a=000010

*/

class parent;
		rand int count;
		
		function void print();
			$display("count=%0d",count);
		endfunction

		constraint c1{count>10;count<20;}
endclass

class sample extends parent;
		
		function void print();
			super.print();
		endfunction

		constraint c1{count>30;count<40;}
endclass

module top;
sample s=new();
initial begin
	assert(s.randomize());
	s.print();
end
endmodule
/*
# count=37
*/


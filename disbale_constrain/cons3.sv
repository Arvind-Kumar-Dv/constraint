// string randmization is not possible

class sample;
     rand string name;
  	function void print();
		$display("rand::string=%s",name);
	endfunction
endclass
module top;
sample s=new();
	initial begin
	assert(s.randomize());
	s.print();
	end
endmodule

class sample;
rand real num;
function void print();
$display("num=%f",num);
endfunction

constraint num_c{

		num inside {[300:375]};

}

function void post_randomize();
num=(num)/100.00;
endfunction

endclass

module top;
sample s=new();
initial begin
		repeat(4) begin
			assert(s.randomize());
			s.print();
		end
end
endmodule

/*
# num=3.691877
# num=3.147217
# num=3.100648
# num=3.059481

*/

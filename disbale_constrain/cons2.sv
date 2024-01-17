class packet;
  rand  bit [3:0] addr;
  rand  bit [3:0] data;
	function void print();
		$display("addr=%0d",addr);
		$display("data=%0d",data);
	endfunction
	
	function void pre_randomize();
		addr.rand_mode(0);
		data.rand_mode(0);
	endfunction
		
	function void post_randomize();
		addr=10;
		data=12;
	endfunction


endclass

module top;
  packet pkt=new();
  initial begin
			assert(pkt.randomize());
			pkt.print();
    
 		 end
endmodule

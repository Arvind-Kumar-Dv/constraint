class packet;
  rand  bit [3:0] addr;
endclass

module top;
packet p=new();
  initial begin
	//	p.randomize();// obj can be randomize
		p.addr.randomize();// field can not be randomize
    	$display("addr = %0d",p.addr);
		end
    
endmodule

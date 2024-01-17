class packet;
  rand  bit [3:0] addr;
  rand  bit [3:0] data;
  constraint addr_range { addr inside {5,10,15}; }
endclass

module top;
  initial begin
   			 packet pkt;
		     pkt = new();
			 pkt.data.rand_mode(0);
	
	repeat(3)begin
    	assert(pkt.randomize());
    	$display("data = %0d",pkt.addr);

    	$display("\t before disable constraint addr = %0d",pkt.addr);
		end
    
	$display("::::::::::: after disable_constraint:::::::::::");
	pkt.addr_range.constraint_mode(0);
	repeat(3)begin
    	assert(pkt.randomize());
    	$display("addr = %0d",pkt.addr);
		end
  end
endmodule

// for even index odd number and odd index even number
class sample;
rand int a[11:0];
//integer i;
function void print(string name="odd_num");
		$display("a=%p",a);
endfunction

constraint odd_num{
			foreach(a[i]){ 
					a[i] inside {[0:60]};
					if(i%2==0) a[i]%2 !=0;
					else a[i]%2 == 0;
				}
			}
endclass

module top;
sample pkt=new();
	initial begin
	assert(pkt.randomize());
	pkt.print();
	end
endmodule

/*
# a='{46, 55, 22, 9, 36, 13, 60, 21, 48, 59, 32, 39}
*/

class sample;
rand int a[10];
function void print();
$display("a=%p",a);
endfunction

constraint c1{
				foreach(a[i]){
									a[i] inside {[1:50]};
									foreach(a[j]){
											if(i!=j)
												a[i]!=a[j];
												
													
									  			}
								}
				}
endclass

module top;
sample s=new();
initial begin
			assert(s.randomize());
			s.print();
end
endmodule

/*
# a='{20, 47, 18, 19, 3, 24, 45, 4, 50, 41}
*/

// second method

/*

rand bit[3:0] dataQ[$];
  constraint d_c{
    foreach(dataQ[i]) {
      		foreach(dataQ[j]) {
        if(i!=j) 
                 dataQ[i]!=dataQ[j];
      			dataQ[i] inside {[1:15]};
    				  }

*/


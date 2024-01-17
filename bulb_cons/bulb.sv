class sample;
rand int intA[8:0];		
rand bit [8:0] temp;
constraint c2{
				$countones(temp)==5;
				foreach(intA[i]){
								intA[i]==temp[i];
								}
			}
endclass

module top;
sample s=new();
initial begin
assert(s.randomize());
$display("array=%p",s.intA);
end
endmodule

/*

# array='{0, 0, 0, 1, 0, 1, 1, 1, 1}

*/




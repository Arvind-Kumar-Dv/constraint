class sample;
rand int intQ[$];
constraint c1 {
intQ.size==15;//this is mandatory
unique {intQ};//by writing unique it will genrate unique number
foreach(intQ[i])
intQ[i] inside {[70:110]};
}
endclass
module top;
sample s=new();
initial begin
assert(s.randomize());
$display("intQ=%p",s.intQ);
end
endmodule
/* output
# intQ='{105, 84, 83, 73, 96, 100, 107, 109, 87, 97, 90, 85, 78, 110, 106}
*/


class sample;
rand int intA[19:0];
constraint c1 {
unique {intA};//by writing unique it will genrate unique number
foreach (intA[i])//no begin end is needed inside constraint
intA[i] inside {[70:110]};
}
endclass
module top;
sample s=new();
initial begin
assert(s.randomize());
$display("intA=%p",s.intA);
end
endmodule
/* output
# intA='{95, 100, 70, 79, 92, 88, 107, 106, 85, 109, 82, 77, 89, 110, 78, 71, 98, 93, 83, 97}
*/


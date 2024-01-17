class sample;
rand int a;
constraint c1 {
a dist {100 :=2, 200 :=3, 500 :=4};
}
//2+3+4=9 , 100-> 2/9 200->,3/9 500->,4/9 weightage
endclass

module top;
sample s=new();
initial begin
repeat(9)begin
assert(s.randomize);
$display("a=%0d",s.a);
end
end
endmodule
/* output
# a=100
# a=200
# a=500
# a=100
# a=500
# a=500
# a=200
# a=100
# a=500
# a=200
# a=500
# a=100
# a=500
# a=500
# a=100
*/

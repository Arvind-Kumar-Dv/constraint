class sample;
rand int a;
constraint c1 {
//a dist {[100:200] :/2 , 100 :=4, 115 :=2};
a dist {[100:200] :=2 , 100 :=4, 115 :=2};
//a dist {[100:200] :/3 , [300:400] :/4, [400:600]:/2};// for range instaed of eqaul we  must use slash /
}
endclass

module top;
sample s=new();
initial begin
repeat(15)begin
assert(s.randomize);
$display("a=%0d",s.a);
end
end
endmodule
/* output
# a=115
# a=115
# a=115
# a=100
# a=100
# a=100
# a=100
# a=115
# a=100
# a=100
# a=100
# a=115
# a=115
# a=100
# a=100
for second case output
# a=177
# a=129
# a=116
# a=121
# a=167
# a=113
# a=186
# a=142
# a=193
# a=152
# a=125
# a=193
# a=163
# a=126
# a=130
for last case output
# a=177
# a=159
# a=416
# a=121
# a=367
# a=313
# a=130
# a=142
# a=558
# a=352
# a=325
# a=193
# a=517
# a=520
# a=117


*/

class sample;
rand bit[6:0] a,b;
constraint c1 {a<b; a>30; b>50;}
endclass
module top;
sample s=new();
initial begin
repeat(15)begin
assert(s.randomize());
$display("a=%0d,b=%0d",s.a,s.b);
end
end
endmodule
/* output
# a=36,b=62
# a=43,b=83
# a=104,b=127
# a=117,b=119
# a=73,b=85
# a=120,b=126
# a=44,b=116
# a=45,b=76
# a=39,b=96
# a=55,b=75
# a=85,b=98
# a=81,b=113
# a=46,b=63
# a=89,b=93
# a=92,b=111


*/

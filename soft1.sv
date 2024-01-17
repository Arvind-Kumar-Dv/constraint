class sample;
rand bit [5:0]a,b;

task print();
$display("a=%0d,b=%0d",a,b);
endtask

constraint c{
 soft a>b; // with soft constraint it will not give error and without soft it will give assert error
 soft a<5;
 soft b>6;
}
endclass

module top;
sample s=new();
initial begin
		repeat(3) begin
assert(s.randomize());
s.print();
end
end
endmodule

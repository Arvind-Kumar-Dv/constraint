class sample;
rand bit [5:0] a;
rand bit [5:0] b;

function void print();
$display("even::a=%0d,odd_num =%0d",a,b);
endfunction

constraint odd_c{
		a%2==0; // for even num
		b%2!=0; // for odd number

}
endclass

module top;
sample p=new();
initial begin
		repeat (10) begin
		assert(p.randomize);
		p.print();
		end
end

endmodule

/*
# even::a=12,odd_num =15
# even::a=14,odd_num =59
# even::a=60,odd_num =45
# even::a=50,odd_num =29
# even::a=6,odd_num =11
# even::a=60,odd_num =47
# even::a=30,odd_num =39
# even::a=14,odd_num =33
# even::a=2,odd_num =45
# even::a=38,odd_num =3

*/

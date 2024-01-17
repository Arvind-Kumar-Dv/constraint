module top;
real a;
initial begin
repeat(5)begin
//a=$urandom_range(3500,2700)/1000.0;// up to 3 decimal
//a=$urandom_range(350,270)/100.0;//for 2 decimal
a=$urandom_range(35,27)/10.0;//for 1 decimal
//a=$urandom_range(3.5,2.7)/10.0;//for 1 decimal it will not work
$display("a=%f",a);
end
end
endmodule
/* output for 3 decimal
# a=3.042000
# a=2.971000
# a=2.701000
# a=3.230000
# a=3.226000

 output for 2 decimal
# a=2.880000
# a=2.980000
# a=3.070000
# a=3.410000
# a=3.460000
 output for 1 decimal
 # a=2.700000
# a=2.800000
# a=2.800000
# a=3.500000
# a=3.100000
*/

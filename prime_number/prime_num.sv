class sample;
parameter RANGE=20;
rand int A[$];

constraint prime_c{
	A.size inside{RANGE};
	foreach(A[i])
if(i>1 && (!( (i%2==0 && i!=2)||(i%3==0 && i!=3)||(i%4==0 && i!=4)||(i%5==0 && i!=5)||(i%6==0 && i!=6)||(i%7==0 && i!=7)|| (i%8==0 && i!=8)||(i%9==0 && i!=9))))			
		A[i]==i;
		else 
		A[i]==2;
		}

function void post_randomize();
	A=A.unique();
endfunction

endclass

module top;
sample s=new();

initial begin
	assert(s.randomize());
	$display("prime number =%p",s.A);
end

endmodule

/*
# prime number ='{2, 2, 2, 3, 2, 5, 2, 7, 2, 2, 2, 11, 2, 13, 2, 2, 2, 17, 2, 19} // without unique keyword
*/


/* with unique keyword

# prime number ='{2, 3, 5, 7, 11, 13, 17, 19}

*/

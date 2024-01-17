class sample;
  rand int even[];
  rand int que_even[];
  rand int odd[];
  rand int que_odd[];
  
  
	function int factorial(int a);
		if(a==0 || a==1)begin
			return 1;
		end
		else begin
		while (a>0)
		 return a*factorial(a-1);
		end
	endfunction
  
  
  //even
  constraint a1_c {
   even.size()==5;
    foreach(even[i]){
      //a[i]inside {[2:15]};
      
      even[i]==2*i;
     
    }
    
  }
      constraint odd_c{
        odd.size()==5;
        foreach(odd[i]){
          odd[i]==(2*i)+1;
        }
      }
  constraint que_c{
    que_even.size()==5;
    foreach(que_even[i])
    {
      que_even[i]==factorial(even[i]);
    }
  }
  constraint que_c1{
   que_odd.size()==5;
    foreach(que_odd[i])
      
    {
      que_odd[i]==factorial(odd[i]);
    }
  }
           
      
endclass
module top;
	sample s;
	
	initial begin
		s=new();
		s.randomize();
      $display("even=%p",s.even);
      $display("odd=%p",s.odd);
      
      $display("que_even =%p",s.que_even);
      $display("que_odd=%p",s.que_odd);
      
//	$display("factorial of a is %0d", s.factorial(5));
    end
endmodule

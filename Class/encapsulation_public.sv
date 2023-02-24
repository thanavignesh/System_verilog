
class base;
  int a;
  int b;
  function void sum(int v1,v2);
    a=v1+v2;
  endfunction
  function void disp();
    $display("the value of the sum=%0d  %0d",a,b);
  endfunction
endclass

class child extends base;
  function void display();
    $display("the display function in child class b=%0d",b);
  endfunction
endclass

module encap_public;
  
  base b1;
  child c1;
  
  initial begin
    b1=new();
    c1=new();
    
    b1.b=4;
    b1.sum(3,4);
    b1.disp();
    c1.b=8;
    c1.display;   
  end
endmodule
///# the value of the sum=7  4
//the display function in child class b=8*/




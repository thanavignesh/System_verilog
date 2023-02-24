
class a;
  int b,c;
  extern function void sum(int var1,var2);
  extern function void display();
endclass

function void a :: sum(int var1,var2);
  //int b;
  b=var1+var2;
endfunction

function void a:: display();
  $display("the value of sum =%0d and c=%0d",b,c);
endfunction
  
  module extern_keyword;
    a a1;
    initial begin
      a1=new();
      a1.c = 7;
      a1.display();
      a1.sum(5,2);
      a1.display();
    end
  endmodule
/*# the value of sum =0 and c=7
# the value of sum =7 and c=7*/
      

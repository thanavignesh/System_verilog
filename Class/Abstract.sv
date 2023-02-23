virtual class A;
 int a=10;
 function void dis();
	$display("the value of a in class A=%0d",a);
 endfunction
endclass: A

class B extends A;
 int b=10;
 function void display();
	 $display("the value of b in class b=%0d",b);
	endfunction: display
 endclass: B


module abstract_ex();
  B b1;
initial begin
b1 = new;
b1.a = 20;
b1.dis();
b1.display();

  end
  endmodule: abstract_ex



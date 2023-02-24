
class parent;
  int a=10;
  function void displ();
    $display("the value of  a in parent class =%0d",a);
endfunction
endclass

class child extends parent;
  
  function void display();
    $display("the value of a in child class =%0d",a);  
  endfunction
endclass

module inheritance;
  child c;
  initial begin
    c = new();
    c.display();
    c.displ();
    c.a=11;
    c.display();
  end
endmodule

/*# the value of a in child class =10
# the value of  a in parent class =10
# the value of a in child class =11


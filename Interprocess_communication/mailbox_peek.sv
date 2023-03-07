
class a;
  int b,i;
  mailbox m;
  function new(mailbox m1);
    this.m = m1;
  endfunction
  task generator();
    begin
      for(i=0;i<2;i++)begin
        b++;
        m.put(b);
        $display("b=%0d ftom generator",b);
      end
    end
  endtask
endclass

class r;
  int i,b;
  mailbox m;
  function new(mailbox m2);
    this.m = m2;
  endfunction
  task driver();
    begin
      for(i=0;i<2;i++) begin
      m.peek(b);
      $display("the peek value =%0d",b);
      end
      for(i=0;i<3;i++) begin
      m.get(b);
       $display("the get value =%0d",b);
       end     
      end
  endtask
endclass

module mailbox_peek();
  a a1;
  r a2;
  mailbox m4 = new(4);
  initial begin
    a1 = new(m4);
    a2 = new(m4);
    a1.generator();
    $display("....");
    a2.driver();
  end
endmodule
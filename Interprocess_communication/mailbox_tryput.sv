

class a;
  int b,i;
  mailbox m;
  function new(mailbox m1);
    this.m=m1;
  endfunction
  
  task generator();
    for (i=0;i<4;i++) begin
      b++;
      if (m.try_put(b))
       $display("the value of b from generator=%0d",b);
     else
       $display("failedto put");
    end
  endtask
endclass

class r;
  int b,i;
  mailbox m;
  function new(mailbox m2);
    this.m = m2;
  endfunction
  task driver();
    for(i=0;i<4;i++)begin
      m.get(b);
      $display("the value of b from driver=%0d",b);
    end
  endtask
endclass

module mailbox_tryput;
  a a1;
  r a2;
  mailbox m = new(3);
  initial begin
    a1 = new(m);
    a2 = new(m);
    
    begin 
      a1.generator();
      $display("....");
      a2.driver();
  
    end
  end
  
endmodule

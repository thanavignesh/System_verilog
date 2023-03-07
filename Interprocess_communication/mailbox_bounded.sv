
class a;
  int i;
  int b;
  mailbox m;
  
  function new(mailbox m1);
    this.m = m1;
  endfunction
  
  task generator();
    for(i=0;i<4;i++)begin
      if(m.num()==2)begin
        $display("mailbbox is full");
      end
      
    else begin
      b++;
      m.put(b);
      $display("%0dthe value of b in generator",b);
    end
  end
  endtask
endclass

class r;
  int i;
  int b;
  
  mailbox m;
  function new(mailbox m2);
    this.m = m2;  
  endfunction
  task driver();
    begin
      for(i=0;i<2;i++) begin
      m.get(b);
      $display("%0d the value of b in driver",b);
    end
    end  
  endtask
endclass


module mailbox_bounded();
  a a1;
  r a2;
  
  mailbox mb = new(2);
  
  initial begin
    a1 = new(mb);
    a2 = new(mb);
    repeat(3)
    begin
      a1.generator();
      $display("......");
      a2.driver();
    end
  end
endmodule
    
  
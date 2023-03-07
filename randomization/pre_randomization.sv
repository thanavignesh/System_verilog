
class generator;
  rand logic[2:0]b;
  int i;
  function void pre_randomization();
    if(i%2==0)
      begin
        rand_mode(0);
        $display("stop randomization");
      end
    else
      rand_mode(1);
      i++;  
  endfunction
endclass

module pre_randomization();
  int i;
  generator g = new();
  initial begin
    for (i=0;i<3;i++)
    begin
      void'(g.randomize());
      #1 $display("the randomized value %0d",g.b);
    end
  end
endmodule
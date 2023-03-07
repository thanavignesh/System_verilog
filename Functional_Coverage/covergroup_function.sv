
function [3:0] sum (int a,int b);
  int c;
  c= a+b;
  return c;
endfunction


module cvgroup_function;
  bit [1:0]a;
  bit[1:0]b;
  covergroup cg;
    c1 : coverpoint a;
    c2 : coverpoint b;
    c3 : coverpoint sum(a,b);
  
  endgroup
    cg g = new();
    initial 
      begin
        int add;
        repeat(10) begin
          a=$random;
          b=$random;
          g.sample();
          add=sum(a,b); $display("a=%0d,b=%0d,a+b=%0d,coverage=%.2f%%",a,b,add,g.get_inst_coverage());
          
        end
      end
    
    endmodule
    
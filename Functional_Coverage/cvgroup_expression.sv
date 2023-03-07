
module cvgroup_exp;
  bit [2:0]a;
  bit[1:0]b;
  covergroup cg;
    c1 : coverpoint a;
    c2 : coverpoint b;
    c3 : coverpoint a*b;
  
  endgroup
    cg g = new();
    initial 
      begin
        repeat(10) begin
          a=$random;
          b=$random;
          g.sample();
          $display("a=%0d,b=%0d,axb=%d,coverage=%.2f%%",a,b,a*b,g.get_inst_coverage());
          
        end
      end
    
    endmodule
    

module cvgroup_iff;
  bit[2:0]a;
  bit[2:0]b;
  bit clk;
  always #5 clk =~clk;
  covergroup group_name @(posedge clk);
    c1 : coverpoint a iff(b==5){
      bins b1 = {5};
      bins b2 = {1};
    						}
  endgroup
  initial 
    begin
      group_name g1 = new();
      for(int i=0;i<6;i++)begin
        a= $random;
      	b= $random;
        g1.sample();
      @ (posedge clk);
        if(b==5)
        $display("the bins are calculated");
      $display("the value of a=%0d and b=%0d and coverage =%0.2f%%",a,b,g1.get_inst_coverage());
    end
    end
  
endmodule

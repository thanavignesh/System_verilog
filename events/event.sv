
module event1();
  event ev1;
  initial begin
    #5 ->>ev1;
    $display ("%0d the ev1 is triggered -->",$time);
  end
  
  initial begin
    #1 @(ev1.triggered);
   $display ("%0d the ev1 is triggered @",$time); 
 end
 
 endmodule

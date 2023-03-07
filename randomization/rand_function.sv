
module ran_fun;

integer a; 
integer d;
logic [2:0] b;
bit [5:0] e;
byte c; 
initial begin 
  
  
a = $random();
b = $urandom();
c= $urandom_range(4,2); 
d = $random(23);  
e = $urandom(4);
$display("a-%0d,b=%0d,c=%0d,d=%0d,e=%0d",a,b,c,d,e);
end
endmodule
 
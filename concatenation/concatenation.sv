module concatenation;

logic [0:3] a,b,c;
int x;

initial begin
	a=1'b0;
	b=4'b1101;
	c=4'b1010;
x={a,b,c};
$display("\n \t the concatenation operator output is %0b",x);

end
endmodule

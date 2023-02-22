module bit_byte;
	byte a;
	bit [3:0]b;
 initial begin
	b=4'b1010;
	a=byte'(b);
	$display("the bit_bytr num a=%b",a);
end
endmodule


module blocking_caveat (
	input 		a , 
	input 		b , 
	input  		c, 
	output 	reg 	d
); 

reg x;
always @ (*)
begin
	// previous value of x is considered
	// as the order of assignments is swapped
	d = x & c;
	x = a | b;
end

endmodule

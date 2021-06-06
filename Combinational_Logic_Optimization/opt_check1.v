module opt_check1 (
	input 	a , 
	input 	b , 
	output 	y
);
	assign y = a?b:0;
endmodule

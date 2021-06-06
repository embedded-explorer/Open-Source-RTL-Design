module bad_latch2 (
	input 		clk , 
	input 		reset , 
	input 		d , 
	output 	reg 	q
);

// here if d changes then output wont change
always @ (clk,reset)
begin
	if(reset)
		q <= 1'b0;
	else 
		q <= d;
end

endmodule

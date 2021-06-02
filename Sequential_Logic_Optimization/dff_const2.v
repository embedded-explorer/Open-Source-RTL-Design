module dff_const2(
	input 		clk, 
	input 		set, 
	output 	reg 	q
);

always @(posedge clk, posedge set)
begin
	if(set)
		q <= 1'b1;
	else
		q <= 1'b1;
end

endmodule

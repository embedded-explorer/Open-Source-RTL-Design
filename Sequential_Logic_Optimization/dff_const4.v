module dff_const4(
	input 		clk, 
	input 		set, 
	output 	reg 	q
);

reg q1;

always @(posedge clk, posedge set)
begin
	if(set)
	begin
		q <= 1'b1;
		q1 <= 1'b1;
	end
	else
	begin
		q1 <= 1'b1;
		q <= q1;
	end
end

endmodule

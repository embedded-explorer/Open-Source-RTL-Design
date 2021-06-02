module dff_const3(
	input 		clk, 
	input 		set_reset, 
	output 	reg 	q
);

reg q1;

always @(posedge clk, posedge set_reset)
begin
	if(set_reset)
	begin
		q <= 1'b1;
		q1 <= 1'b0;
	end
	else
	begin
		q1 <= 1'b1;
		q <= q1;
	end
end

endmodule

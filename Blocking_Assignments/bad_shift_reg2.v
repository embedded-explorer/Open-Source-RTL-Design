module bad_shift_reg2 (
	input 		clk , 
	input 		reset , 
	input 		d , 
	output 	reg 	dout
);

reg q1;
always @ (posedge clk , posedge reset)
begin
	if(reset)
	begin
		q1 = 1'b0;
		dout = 1'b0;
	end
	else
	begin
		// 2 FFs are inferred but having blocking assignments is bad idea
		// if order is assignments is swapped then it causes problem
		dout = q1;
		q1 = d;
	end
end

endmodule

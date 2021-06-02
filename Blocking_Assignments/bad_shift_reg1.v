module bad_shift_reg1 (
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
		// By the time q1 is assigned to dout value of q1 will be d
		// hence only one flop is inferred though aim is to have two flops
		q1 = d;
		dout = q1;
	end
end

endmodule

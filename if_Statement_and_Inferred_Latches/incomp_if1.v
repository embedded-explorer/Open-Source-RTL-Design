module incomp_if1 (
	input 		i0 , 
	input 		i1 , 
	input 		i2 , 
	output 	reg 	y
);

always @ (*)
begin
	if(i0)
		y <= i1;
end

endmodule

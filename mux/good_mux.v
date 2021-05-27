module good_mux (
	input 		i0, i1, sel,
	output	reg 	y
);

always @ (*)
begin
	if(sel)
		y <= i1;
	else 
		y <= i0;
end

endmodule

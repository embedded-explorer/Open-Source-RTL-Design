module demux_for (
	output 		o0 , 
	output 		o1 , 
	output 		o2 , 
	output 		o3 , 
	output 		o4 , 
	output 		o5 , 
	output 		o6 , 
	output 		o7 , 
	input 	[2:0] 	sel , 
	input 		i
);

reg [7:0]y_int;
assign {o7,o6,o5,o4,o3,o2,o1,o0} = y_int;
integer k;

always @ (*)
	begin
	y_int = 8'b0;
	for(k = 0; k < 8; k=k+1) begin
		if(k == sel)
			y_int[k] = i;
	end
end

endmodule



module dff_sync_reset ( 
	input 		clk ,  
	input 		sync_reset , 
	input 		d , 
	output 	reg 	q 
);

always @ (posedge clk )
begin
	if (sync_reset)
		q <= 1'b0;
	else	
		q <= d;
end

endmodule

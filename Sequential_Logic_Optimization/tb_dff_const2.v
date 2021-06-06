`timescale 1ns / 1ps
module tb_dff_const2;
	// Inputs
	reg clk, set   ;
	// Output
	wire q;

        // Instantiate the Unit Under Test (UUT)
	dff_const2 uut (
		.clk	(clk	),
		.set	(set	),
		.q	(q	)	
	);

	initial begin
	$dumpfile("tb_dff_const2.vcd");
	$dumpvars(0,tb_dff_const2);
	// Initialize Inputs
	clk = 0;
	set = 1;
	#3000 $finish;
	end

	always #10 clk = ~clk;
	always #1547 set=~set;

endmodule


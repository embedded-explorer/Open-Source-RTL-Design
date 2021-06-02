`timescale 1ns / 1ps
module tb_dff_const3;
	// Inputs
	reg clk, set_reset   ;
	// Output
	wire q;

        // Instantiate the Unit Under Test (UUT)
	dff_const3 uut (
		.clk		(clk		),
		.set_reset	(set_reset	),
		.q		(q		)
	);

	initial begin
	$dumpfile("tb_dff_const3.vcd");
	$dumpvars(0,tb_dff_const3);
	// Initialize Inputs
	clk = 0;
	set_reset = 1;
	#3000 $finish;
	end

	always #10 clk = ~clk;
	always #1547 set_reset=~set_reset;

endmodule


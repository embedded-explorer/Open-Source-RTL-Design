`timescale 1ns / 1ps
module tb_counter_opt1;
	// Inputs
	reg clk, reset   ;
	// Output
	wire q;

        // Instantiate the Unit Under Test (UUT)
	counter_opt1 uut (
		.clk	(clk	),
		.reset	(reset	),
		.q	(q	)
	);

	initial begin
	$dumpfile("tb_counter_opt1.vcd");
	$dumpvars(0,tb_counter_opt1);
	// Initialize Inputs
	clk = 0;
	reset = 1;
	#3000 $finish;
	end

	always #10 clk = ~clk;
	always #1547 reset=~reset;

endmodule


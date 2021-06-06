`timescale 1ns / 1ps
module tb_blocking_caveat_net;
	// Inputs
	reg a,b,c   ;
	// Output
	wire d;

        // Instantiate the Unit Under Test (UUT)
	blocking_caveat uut (
		.a(a),
		.b(b),
		.c(c),
		.d(d)
	);

	initial begin
	$dumpfile("tb_blocking_caveat_net.vcd");
	$dumpvars(0,tb_blocking_caveat_net);
	// Initialize Inputs
	a = 0;
	b = 0;
	c = 0;
	#3000 $finish;
	end

	always #10 a = ~a;
	always #100 c =~c;
	always #50 b = ~b;

endmodule



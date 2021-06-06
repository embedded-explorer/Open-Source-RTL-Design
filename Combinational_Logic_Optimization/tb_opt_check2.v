`timescale 1ns / 1ps
module tb_opt_check2;
	// Inputs
	reg a,b;
	// Outputs
	wire y;

        // Instantiate the Unit Under Test (UUT)
	opt_check2 uut (
		.a(a),
		.b(b),
		.y(y)
	);

	initial begin
	$dumpfile("tb_opt_check2.vcd");
	$dumpvars(0,tb_opt_check2);
	// Initialize Inputs
	a = 0;
	b = 0;
	#300 $finish;
	end

	always #10 a = ~a;
	always #55 b = ~b;

endmodule


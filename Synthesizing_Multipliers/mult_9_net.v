/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 6.2.0-11ubuntu1 -O2 -fdebug-prefix-map=/build/yosys-OIL3SR/yosys-0.7=. -fstack-protector-strong -fPIC -Os) */

module mult_9(a, y);
  input [2:0] a;
  output [5:0] y;
  assign y = { a, a };
endmodule

/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 6.2.0-11ubuntu1 -O2 -fdebug-prefix-map=/build/yosys-OIL3SR/yosys-0.7=. -fstack-protector-strong -fPIC -Os) */

module bad_shift_reg1(clk, reset, d, dout);
  wire _0_;
  wire _1_;
  wire _2_;
  input clk;
  input d;
  output dout;
  input reset;
  sky130_fd_sc_hd__clkinv_1 _3_ (
    .A(_0_),
    .Y(_1_)
  );
  sky130_fd_sc_hd__dfrtp_1 _4_ (
    .CLK(clk),
    .D(d),
    .Q(dout),
    .RESET_B(_2_)
  );
  assign _0_ = reset;
  assign _2_ = _1_;
endmodule

/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 6.2.0-11ubuntu1 -O2 -fdebug-prefix-map=/build/yosys-OIL3SR/yosys-0.7=. -fstack-protector-strong -fPIC -Os) */

module comp_case(i0, i1, i2, sel, y);
  wire _00_;
  wire _01_;
  wire _02_;
  wire _03_;
  wire _04_;
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  input i0;
  input i1;
  input i2;
  input [1:0] sel;
  output y;
  sky130_fd_sc_hd__clkinv_1 _17_ (
    .A(_11_),
    .Y(_13_)
  );
  sky130_fd_sc_hd__nand2_1 _18_ (
    .A(_07_),
    .B(_14_),
    .Y(_15_)
  );
  sky130_fd_sc_hd__or2b_2 _19_ (
    .A(_07_),
    .B_N(_12_),
    .X(_16_)
  );
  sky130_fd_sc_hd__lpflow_inputiso0p_1 _20_ (
    .A(_11_),
    .SLEEP(_09_),
    .X(_08_)
  );
  sky130_fd_sc_hd__a31oi_1 _21_ (
    .A1(_16_),
    .A2(_13_),
    .A3(_15_),
    .B1(_08_),
    .Y(_10_)
  );
  assign _07_ = sel[0];
  assign _11_ = sel[1];
  assign _12_ = i0;
  assign _14_ = i1;
  assign _09_ = i2;
  assign y = _10_;
endmodule

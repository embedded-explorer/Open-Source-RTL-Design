/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 6.2.0-11ubuntu1 -O2 -fdebug-prefix-map=/build/yosys-OIL3SR/yosys-0.7=. -fstack-protector-strong -fPIC -Os) */

module bad_case(i0, i1, i2, i3, sel, y);
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
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  input i0;
  input i1;
  input i2;
  input i3;
  input [1:0] sel;
  output y;
  sky130_fd_sc_hd__nor2_1 _21_ (
    .A(_00_),
    .B(_05_),
    .Y(_11_)
  );
  sky130_fd_sc_hd__clkinv_1 _22_ (
    .A(_05_),
    .Y(_12_)
  );
  sky130_fd_sc_hd__o21ai_0 _23_ (
    .A1(_10_),
    .A2(_12_),
    .B1(_03_),
    .Y(_02_)
  );
  sky130_fd_sc_hd__clkinv_1 _24_ (
    .A(_03_),
    .Y(_04_)
  );
  sky130_fd_sc_hd__or2b_2 _25_ (
    .A(_09_),
    .B_N(_05_),
    .X(_06_)
  );
  sky130_fd_sc_hd__o211ai_1 _26_ (
    .A1(_05_),
    .A2(_07_),
    .B1(_04_),
    .C1(_06_),
    .Y(_08_)
  );
  sky130_fd_sc_hd__o21ai_0 _27_ (
    .A1(_11_),
    .A2(_02_),
    .B1(_08_),
    .Y(_01_)
  );
  assign _00_ = i2;
  assign _09_ = i1;
  assign _10_ = i3;
  assign y = _01_;
  assign _03_ = sel[1];
  assign _05_ = sel[0];
  assign _07_ = i0;
endmodule
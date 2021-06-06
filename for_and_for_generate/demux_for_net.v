/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 6.2.0-11ubuntu1 -O2 -fdebug-prefix-map=/build/yosys-OIL3SR/yosys-0.7=. -fstack-protector-strong -fPIC -Os) */

module demux_for(o0, o1, o2, o3, o4, o5, o6, o7, sel, i);
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
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  input i;
  output o0;
  output o1;
  output o2;
  output o3;
  output o4;
  output o5;
  output o6;
  output o7;
  input [2:0] sel;
  wire [7:0] y_int;
  sky130_fd_sc_hd__nand2_1 _27_ (
    .A(_23_),
    .B(_24_),
    .Y(_12_)
  );
  sky130_fd_sc_hd__nand2_1 _28_ (
    .A(_08_),
    .B(_09_),
    .Y(_13_)
  );
  sky130_fd_sc_hd__nor2_1 _29_ (
    .A(_12_),
    .B(_13_),
    .Y(_25_)
  );
  sky130_fd_sc_hd__or2b_2 _30_ (
    .A(_09_),
    .B_N(_08_),
    .X(_15_)
  );
  sky130_fd_sc_hd__nor2_1 _31_ (
    .A(_12_),
    .B(_15_),
    .Y(_26_)
  );
  sky130_fd_sc_hd__or2b_2 _32_ (
    .A(_08_),
    .B_N(_09_),
    .X(_18_)
  );
  sky130_fd_sc_hd__nor2_1 _33_ (
    .A(_12_),
    .B(_18_),
    .Y(_10_)
  );
  sky130_fd_sc_hd__nor3_1 _34_ (
    .A(_08_),
    .B(_09_),
    .C(_12_),
    .Y(_11_)
  );
  sky130_fd_sc_hd__clkinv_1 _35_ (
    .A(_24_),
    .Y(_20_)
  );
  sky130_fd_sc_hd__nand2_1 _36_ (
    .A(_20_),
    .B(_23_),
    .Y(_21_)
  );
  sky130_fd_sc_hd__nor2_1 _37_ (
    .A(_13_),
    .B(_21_),
    .Y(_14_)
  );
  sky130_fd_sc_hd__nor2_1 _38_ (
    .A(_15_),
    .B(_21_),
    .Y(_16_)
  );
  sky130_fd_sc_hd__nor2_1 _39_ (
    .A(_18_),
    .B(_21_),
    .Y(_17_)
  );
  sky130_fd_sc_hd__clkinv_1 _40_ (
    .A(_23_),
    .Y(_22_)
  );
  sky130_fd_sc_hd__nor4_1 _41_ (
    .A(_08_),
    .B(_09_),
    .C(_24_),
    .D(_22_),
    .Y(_19_)
  );
  assign y_int = { o7, o6, o5, o4, o3, o2, o1, o0 };
  assign _08_ = sel[1];
  assign _09_ = sel[0];
  assign _23_ = i;
  assign _24_ = sel[2];
  assign o7 = _25_;
  assign o6 = _26_;
  assign o5 = _10_;
  assign o4 = _11_;
  assign o3 = _14_;
  assign o2 = _16_;
  assign o1 = _17_;
  assign o0 = _19_;
endmodule

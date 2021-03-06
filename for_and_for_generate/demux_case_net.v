/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 6.2.0-11ubuntu1 -O2 -fdebug-prefix-map=/build/yosys-OIL3SR/yosys-0.7=. -fstack-protector-strong -fPIC -Os) */

module demux_case(o0, o1, o2, o3, o4, o5, o6, o7, sel, i);
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
  wire _27_;
  wire _28_;
  wire _29_;
  wire _30_;
  wire _31_;
  wire _32_;
  wire _33_;
  wire _34_;
  wire _35_;
  wire _36_;
  wire _37_;
  wire _38_;
  wire _39_;
  wire _40_;
  wire _41_;
  wire _42_;
  wire _43_;
  wire _44_;
  wire _45_;
  wire _46_;
  wire _47_;
  wire _48_;
  wire _49_;
  wire _50_;
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
  sky130_fd_sc_hd__or2b_2 _51_ (
    .A(_40_),
    .B_N(_48_),
    .X(_34_)
  );
  sky130_fd_sc_hd__nand2_1 _52_ (
    .A(_32_),
    .B(_33_),
    .Y(_35_)
  );
  sky130_fd_sc_hd__nor2_1 _53_ (
    .A(_35_),
    .B(_34_),
    .Y(_37_)
  );
  sky130_fd_sc_hd__or2b_2 _54_ (
    .A(_48_),
    .B_N(_40_),
    .X(_36_)
  );
  sky130_fd_sc_hd__nor2_1 _55_ (
    .A(_35_),
    .B(_36_),
    .Y(_42_)
  );
  sky130_fd_sc_hd__nand2_1 _56_ (
    .A(_40_),
    .B(_48_),
    .Y(_38_)
  );
  sky130_fd_sc_hd__clkinv_1 _57_ (
    .A(_32_),
    .Y(_39_)
  );
  sky130_fd_sc_hd__nand2_1 _58_ (
    .A(_39_),
    .B(_33_),
    .Y(_41_)
  );
  sky130_fd_sc_hd__nor2_1 _59_ (
    .A(_38_),
    .B(_41_),
    .Y(_44_)
  );
  sky130_fd_sc_hd__nor2_1 _60_ (
    .A(_36_),
    .B(_41_),
    .Y(_45_)
  );
  sky130_fd_sc_hd__nor2_1 _61_ (
    .A(_34_),
    .B(_41_),
    .Y(_46_)
  );
  sky130_fd_sc_hd__nor3_1 _62_ (
    .A(_40_),
    .B(_48_),
    .C(_35_),
    .Y(_47_)
  );
  sky130_fd_sc_hd__clkinv_1 _63_ (
    .A(_33_),
    .Y(_43_)
  );
  sky130_fd_sc_hd__nor4_1 _64_ (
    .A(_32_),
    .B(_40_),
    .C(_48_),
    .D(_43_),
    .Y(_49_)
  );
  sky130_fd_sc_hd__nor2_1 _65_ (
    .A(_35_),
    .B(_38_),
    .Y(_50_)
  );
  assign y_int = { o7, o6, o5, o4, o3, o2, o1, o0 };
  assign _32_ = sel[2];
  assign _40_ = sel[0];
  assign _48_ = sel[1];
  assign _33_ = i;
  assign o6 = _37_;
  assign o5 = _42_;
  assign o3 = _44_;
  assign o1 = _45_;
  assign o2 = _46_;
  assign o4 = _47_;
  assign o0 = _49_;
  assign o7 = _50_;
endmodule

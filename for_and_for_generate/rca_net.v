/* Generated by Yosys 0.7 (git sha1 61f6811, gcc 6.2.0-11ubuntu1 -O2 -fdebug-prefix-map=/build/yosys-OIL3SR/yosys-0.7=. -fstack-protector-strong -fPIC -Os) */

(* src = "fa.v:1" *)
module fa(a, b, c, co, sum);
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
  (* src = "fa.v:2" *)
  input a;
  (* src = "fa.v:3" *)
  input b;
  (* src = "fa.v:4" *)
  input c;
  (* src = "fa.v:5" *)
  output co;
  (* src = "fa.v:6" *)
  output sum;
  sky130_fd_sc_hd__nand2_1 _16_ (
    .A(_04_),
    .B(_05_),
    .Y(_06_)
  );
  sky130_fd_sc_hd__a21oi_1 _17_ (
    .A1(_06_),
    .A2(_14_),
    .B1(_03_),
    .Y(_07_)
  );
  sky130_fd_sc_hd__nor2_1 _18_ (
    .A(_15_),
    .B(_07_),
    .Y(_10_)
  );
  sky130_fd_sc_hd__o21ai_0 _19_ (
    .A1(_11_),
    .A2(_13_),
    .B1(_14_),
    .Y(_12_)
  );
  sky130_fd_sc_hd__clkinv_1 _20_ (
    .A(_03_),
    .Y(_11_)
  );
  sky130_fd_sc_hd__nor2_1 _21_ (
    .A(_08_),
    .B(_09_),
    .Y(_13_)
  );
  sky130_fd_sc_hd__nand2_1 _22_ (
    .A(_08_),
    .B(_09_),
    .Y(_14_)
  );
  sky130_fd_sc_hd__nor3b_1 _23_ (
    .A(_11_),
    .B(_13_),
    .C_N(_14_),
    .Y(_15_)
  );
  sky130_fd_sc_hd__clkinv_1 _24_ (
    .A(_08_),
    .Y(_04_)
  );
  sky130_fd_sc_hd__clkinv_1 _25_ (
    .A(_09_),
    .Y(_05_)
  );
  assign _03_ = b;
  assign _08_ = c;
  assign _09_ = a;
  assign sum = _10_;
  assign co = _12_;
endmodule

(* top =  1  *)
(* src = "rca.v:1" *)
module rca(num1, num2, sum);
  (* src = "rca.v:8" *)
  wire [7:0] int_co;
  (* src = "rca.v:7" *)
  wire [7:0] int_sum;
  (* src = "rca.v:2" *)
  input [7:0] num1;
  (* src = "rca.v:3" *)
  input [7:0] num2;
  (* src = "rca.v:4" *)
  output [8:0] sum;
  (* src = "rca.v:13" *)
  fa \$genblock$rca.v:12$3[1].u_fa_1  (
    .a(num1[1]),
    .b(num2[1]),
    .c(int_co[0]),
    .co(int_co[1]),
    .sum(int_sum[1])
  );
  (* src = "rca.v:13" *)
  fa \$genblock$rca.v:12$4[2].u_fa_1  (
    .a(num1[2]),
    .b(num2[2]),
    .c(int_co[1]),
    .co(int_co[2]),
    .sum(int_sum[2])
  );
  (* src = "rca.v:13" *)
  fa \$genblock$rca.v:12$5[3].u_fa_1  (
    .a(num1[3]),
    .b(num2[3]),
    .c(int_co[2]),
    .co(int_co[3]),
    .sum(int_sum[3])
  );
  (* src = "rca.v:13" *)
  fa \$genblock$rca.v:12$6[4].u_fa_1  (
    .a(num1[4]),
    .b(num2[4]),
    .c(int_co[3]),
    .co(int_co[4]),
    .sum(int_sum[4])
  );
  (* src = "rca.v:13" *)
  fa \$genblock$rca.v:12$7[5].u_fa_1  (
    .a(num1[5]),
    .b(num2[5]),
    .c(int_co[4]),
    .co(int_co[5]),
    .sum(int_sum[5])
  );
  (* src = "rca.v:13" *)
  fa \$genblock$rca.v:12$8[6].u_fa_1  (
    .a(num1[6]),
    .b(num2[6]),
    .c(int_co[5]),
    .co(int_co[6]),
    .sum(int_sum[6])
  );
  (* src = "rca.v:13" *)
  fa \$genblock$rca.v:12$9[7].u_fa_1  (
    .a(num1[7]),
    .b(num2[7]),
    .c(int_co[6]),
    .co(int_co[7]),
    .sum(int_sum[7])
  );
  (* src = "rca.v:18" *)
  fa u_fa_0 (
    .a(num1[0]),
    .b(num2[0]),
    .c(1'b0),
    .co(int_co[0]),
    .sum(int_sum[0])
  );
  assign sum = { int_co[7], int_sum };
endmodule

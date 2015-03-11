
module decoder_0 ( a, x, clk );
  input [1:0] a;
  output [3:0] x;
  input clk;
  wire   n4, n5;

  invp1 U20 ( .NQ(n5), .A(a[1]) );
  invp1 U21 ( .NQ(n4), .A(a[0]) );
  an3p1 U22 ( .Q(x[0]), .A(n4), .B(n5), .C(clk) );
  an3p1 U23 ( .Q(x[1]), .A(a[0]), .B(n5), .C(clk) );
  an3p1 U24 ( .Q(x[2]), .A(a[1]), .B(n4), .C(clk) );
  an3p1 U25 ( .Q(x[3]), .A(a[1]), .B(a[0]), .C(clk) );
endmodule


module decoder_1 ( a, x, clk );
  input [1:0] a;
  output [3:0] x;
  input clk;
  wire   n4, n5;

  invp1 U20 ( .NQ(n5), .A(a[1]) );
  invp1 U21 ( .NQ(n4), .A(a[0]) );
  an3p1 U22 ( .Q(x[0]), .A(n4), .B(n5), .C(clk) );
  an3p1 U23 ( .Q(x[1]), .A(a[0]), .B(n5), .C(clk) );
  an3p1 U24 ( .Q(x[2]), .A(a[1]), .B(n4), .C(clk) );
  an3p1 U25 ( .Q(x[3]), .A(a[1]), .B(a[0]), .C(clk) );
endmodule


module decoder_2 ( a, x, clk );
  input [1:0] a;
  output [3:0] x;
  input clk;
  wire   n4, n5;

  invp1 U20 ( .NQ(n5), .A(a[1]) );
  invp1 U21 ( .NQ(n4), .A(a[0]) );
  an3p1 U22 ( .Q(x[0]), .A(n4), .B(n5), .C(clk) );
  an3p1 U23 ( .Q(x[1]), .A(a[0]), .B(n5), .C(clk) );
  an3p1 U24 ( .Q(x[2]), .A(a[1]), .B(n4), .C(clk) );
  an3p1 U25 ( .Q(x[3]), .A(a[1]), .B(a[0]), .C(clk) );
endmodule


module control ( phi1, phi2, ctrl, L, M, N, ARdEn, BRdEn, WriteEn, FBEn, 
        notFBEn, ASelect, BSelect, DSelect, zeroSelect, shl, notshl, shr, 
        notshr, phi1_1, phi1_2, phi1_3, notphi1_1, notphi1_2, phi2_1 );
  input [6:0] ctrl;
  output [3:0] L;
  output [3:0] M;
  output [3:0] N;
  output [3:0] ARdEn;
  output [3:0] BRdEn;
  output [3:0] WriteEn;
  output [3:0] FBEn;
  output [3:0] notFBEn;
  input phi1, phi2;
  output ASelect, BSelect, DSelect, zeroSelect, shl, notshl, shr, notshr,
         phi1_1, phi1_2, phi1_3, notphi1_1, notphi1_2, phi2_1;
  wire   phi2, notphi1_2, N9, N13, n28, n29, n31, n83, n84, n95, n101, n102,
         n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, n118,
         n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129,
         n130, n131, n132, n133, n134;
  wire   [1:0] waddr;
  wire   [1:0] baddr;
  wire   [1:0] aaddr;
  assign L[0] = 1'b1;
  assign phi2_1 = phi2;
  assign WriteEn[3] = notFBEn[3];
  assign WriteEn[2] = notFBEn[2];
  assign WriteEn[1] = notFBEn[1];
  assign WriteEn[0] = notFBEn[0];
  assign notphi1_1 = notphi1_2;
  assign phi1_3 = N9;
  assign phi1_2 = N9;
  assign phi1_1 = N9;
  assign N9 = phi1;

  decoder_2 I1 ( .a(aaddr), .x(ARdEn), .clk(N9) );
  decoder_1 I2 ( .a(baddr), .x(BRdEn), .clk(N9) );
  decoder_0 I3 ( .a(waddr), .x(notFBEn), .clk(phi2) );
  latsp2 \waddr_reg[0]  ( .Q(waddr[0]), .D(ctrl[2]), .G(N9), .NS(1'b1) );
  latsp2 \waddr_reg[1]  ( .Q(waddr[1]), .D(ctrl[3]), .G(N9), .NS(1'b1) );
  latsp2 \aaddr_reg[0]  ( .Q(aaddr[0]), .D(ctrl[0]), .G(N13), .NS(1'b1) );
  latsp2 \aaddr_reg[1]  ( .Q(aaddr[1]), .D(ctrl[1]), .G(N13), .NS(1'b1) );
  latsp2 \opsel_reg[0]  ( .NQ(BSelect), .Q(DSelect), .D(ctrl[4]), .G(N13), 
        .NS(1'b1) );
  latsp2 \opsel_reg[1]  ( .NQ(ASelect), .Q(zeroSelect), .D(ctrl[5]), .G(N13), 
        .NS(1'b1) );
  latsp2 \baddr_reg[0]  ( .Q(baddr[0]), .D(ctrl[2]), .G(N13), .NS(1'b1) );
  latsp2 \baddr_reg[1]  ( .Q(baddr[1]), .D(ctrl[3]), .G(N13), .NS(1'b1) );
  an2p3 U105 ( .Q(N13), .A(notphi1_2), .B(phi2) );
  invp3 U106 ( .NQ(notphi1_2), .A(N9) );
  na3p1 U137 ( .NQ(n84), .A(n31), .B(n29), .C(n28) );
  na2p1 U138 ( .NQ(n95), .A(n31), .B(n134) );
  invp1 U139 ( .NQ(n126), .A(n123) );
  na2p1 U140 ( .NQ(n115), .A(n109), .B(n29) );
  invp1 U141 ( .NQ(n109), .A(n95) );
  na2p1 U142 ( .NQ(n114), .A(n128), .B(n108) );
  or2p1 U143 ( .Q(n108), .A(n29), .B(n28) );
  na2p1 U144 ( .NQ(n119), .A(n114), .B(n115) );
  na2p1 U145 ( .NQ(n122), .A(n134), .B(n128) );
  na2p1 U146 ( .NQ(n132), .A(n28), .B(n128) );
  na2p1 U147 ( .NQ(n129), .A(n102), .B(n126) );
  na2p1 U148 ( .NQ(n123), .A(n84), .B(n112) );
  invp1 U149 ( .NQ(n110), .A(n122) );
  no3p1 U150 ( .NQ(n131), .A(n119), .B(n101), .C(n134) );
  invp1 U151 ( .NQ(FBEn[0]), .A(notFBEn[0]) );
  invp1 U152 ( .NQ(FBEn[1]), .A(notFBEn[1]) );
  invp1 U153 ( .NQ(FBEn[2]), .A(notFBEn[2]) );
  invp1 U154 ( .NQ(FBEn[3]), .A(notFBEn[3]) );
  na2p1 U155 ( .NQ(N[0]), .A(phi2), .B(n84) );
  na2p1 U156 ( .NQ(N[2]), .A(phi2), .B(n83) );
  invp1 U157 ( .NQ(n116), .A(n115) );
  invp1 U158 ( .NQ(n120), .A(n119) );
  no2p1 U159 ( .NQ(n127), .A(n129), .B(n134) );
  na3p1 U160 ( .NQ(L[2]), .A(n132), .B(n130), .C(phi2) );
  invp1 U161 ( .NQ(n130), .A(n129) );
  an2p3 U162 ( .Q(n101), .A(n31), .B(n111) );
  an2p3 U163 ( .Q(n102), .A(n29), .B(n122) );
  latrp1 \opcode_reg[0]  ( .NQ(n28), .Q(n134), .D(ctrl[4]), .G(N9), .NR(1'b1)
         );
  latrp1 \opcode_reg[1]  ( .NQ(n31), .Q(n128), .D(ctrl[5]), .G(N9), .NR(1'b1)
         );
  latrp1 \opcode_reg[2]  ( .NQ(n29), .Q(n111), .D(ctrl[6]), .G(N9), .NR(1'b1)
         );
  latrp1 \shctl_reg[0]  ( .NQ(notshl), .Q(shl), .D(ctrl[0]), .G(N9), .NR(1'b1)
         );
  latrp1 \shctl_reg[1]  ( .NQ(notshr), .Q(shr), .D(ctrl[1]), .G(N9), .NR(1'b1)
         );
  na2p1 U169 ( .NQ(N[1]), .A(phi2), .B(n131) );
  na2p1 U170 ( .NQ(n112), .A(n111), .B(n110) );
  na3p1 U171 ( .NQ(N[3]), .A(phi2), .B(n126), .C(n102) );
  na2p1 U172 ( .NQ(M[0]), .A(phi2), .B(n126) );
  na2p1 U173 ( .NQ(n113), .A(n134), .B(n101) );
  na2p1 U174 ( .NQ(n117), .A(n114), .B(n113) );
  no2p1 U175 ( .NQ(n118), .A(n117), .B(n116) );
  na2p1 U176 ( .NQ(M[1]), .A(phi2), .B(n118) );
  na2p1 U177 ( .NQ(M[2]), .A(phi2), .B(n120) );
  na2p1 U178 ( .NQ(n121), .A(n28), .B(n101) );
  na2p1 U179 ( .NQ(n124), .A(n122), .B(n121) );
  no2p1 U180 ( .NQ(n125), .A(n124), .B(n123) );
  na2p1 U181 ( .NQ(M[3]), .A(phi2), .B(n125) );
  na2p1 U182 ( .NQ(L[1]), .A(phi2), .B(n127) );
  na2p1 U183 ( .NQ(L[3]), .A(phi2), .B(n131) );
  na2p1 U184 ( .NQ(n133), .A(n95), .B(n132) );
  na2p1 U185 ( .NQ(n83), .A(n29), .B(n133) );
endmodule


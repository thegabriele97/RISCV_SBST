
module b06 ( cc_mux, eql, uscite, clock, enable_count, ackout, reset, cont_eql, 
        test_si, test_se );
  output [2:1] cc_mux;
  output [2:1] uscite;
  input eql, clock, reset, cont_eql, test_si, test_se;
  output enable_count, ackout;
  wire   N42, N43, N44, N45, N46, N47, N48, N49, n1, n2, n3, n4, n5, n6, n7,
         n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21,
         n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35,
         n36, n37, n38, n39, n40, n41;
  wire   [2:0] state;

  INV_GATE U3 ( .I1(reset), .O(n1) );
  INV_GATE U4 ( .I1(n28), .O(n2) );
  INV_GATE U5 ( .I1(N45), .O(n3) );
  INV_GATE U6 ( .I1(n37), .O(n4) );
  INV_GATE U7 ( .I1(n18), .O(n5) );
  INV_GATE U8 ( .I1(state[2]), .O(n6) );
  INV_GATE U9 ( .I1(state[1]), .O(n7) );
  INV_GATE U10 ( .I1(state[0]), .O(n8) );
  INV_GATE U11 ( .I1(eql), .O(n9) );
  NAND_GATE U12 ( .I1(n10), .I2(n11), .O(N49) );
  NAND3_GATE U13 ( .I1(state[1]), .I2(n9), .I3(n12), .O(n11) );
  OR_GATE U14 ( .I1(cont_eql), .I2(n13), .O(n10) );
  NAND3_GATE U15 ( .I1(n14), .I2(n15), .I3(n16), .O(N48) );
  OR_GATE U16 ( .I1(n17), .I2(n9), .O(n15) );
  NAND_GATE U17 ( .I1(n18), .I2(n9), .O(n14) );
  NAND3_GATE U18 ( .I1(n19), .I2(n3), .I3(n20), .O(N47) );
  NAND_GATE U19 ( .I1(eql), .I2(n21), .O(n20) );
  NAND_GATE U20 ( .I1(n5), .I2(n22), .O(n21) );
  NAND_GATE U21 ( .I1(n23), .I2(n24), .O(N46) );
  NAND_GATE U22 ( .I1(n25), .I2(n9), .O(n24) );
  NAND_GATE U23 ( .I1(n4), .I2(n5), .O(n25) );
  NAND_GATE U24 ( .I1(n26), .I2(n27), .O(N45) );
  NAND_GATE U25 ( .I1(n28), .I2(n9), .O(n26) );
  NAND_GATE U26 ( .I1(n29), .I2(n30), .O(N44) );
  NAND_GATE U27 ( .I1(n31), .I2(n32), .O(n30) );
  NAND_GATE U28 ( .I1(n33), .I2(n34), .O(n31) );
  OR_GATE U29 ( .I1(n12), .I2(n7), .O(n34) );
  NAND_GATE U30 ( .I1(n12), .I2(n7), .O(n33) );
  AND_GATE U31 ( .I1(n6), .I2(n8), .O(n12) );
  OR_GATE U32 ( .I1(n13), .I2(eql), .O(n29) );
  NOR_GATE U33 ( .I1(n32), .I2(n7), .O(n13) );
  NAND3_GATE U34 ( .I1(n35), .I2(n5), .I3(n16), .O(N43) );
  AND_GATE U35 ( .I1(n2), .I2(n27), .O(n16) );
  NAND_GATE U36 ( .I1(eql), .I2(n36), .O(n27) );
  NAND_GATE U37 ( .I1(eql), .I2(n37), .O(n35) );
  NAND3_GATE U38 ( .I1(n4), .I2(n38), .I3(n23), .O(N42) );
  AND3_GATE U39 ( .I1(n39), .I2(n22), .I3(n40), .O(n23) );
  NAND_GATE U40 ( .I1(n36), .I2(n9), .O(n40) );
  NOR3_GATE U41 ( .I1(n7), .I2(state[0]), .I3(n6), .O(n36) );
  NAND3_GATE U42 ( .I1(state[1]), .I2(n6), .I3(state[0]), .O(n22) );
  OR3_GATE U43 ( .I1(state[2]), .I2(state[1]), .I3(state[0]), .O(n39) );
  NAND_GATE U44 ( .I1(eql), .I2(n41), .O(n38) );
  NAND_GATE U45 ( .I1(n5), .I2(n2), .O(n41) );
  AND3_GATE U46 ( .I1(n8), .I2(n7), .I3(state[2]), .O(n28) );
  AND3_GATE U47 ( .I1(n7), .I2(n6), .I3(state[0]), .O(n18) );
  NAND_GATE U48 ( .I1(n17), .I2(n19), .O(n37) );
  NAND3_GATE U49 ( .I1(n8), .I2(n6), .I3(state[1]), .O(n19) );
  OR_GATE U50 ( .I1(n32), .I2(state[1]), .O(n17) );
  NAND_GATE U51 ( .I1(state[0]), .I2(state[2]), .O(n32) );
  FLIP_FLOP_D_RESET_SCAN \state_reg[0]  ( .D(N46), .SI(enable_count), .SE(
        test_se), .CK(clock), .RESET(n1), .Q(state[0]) );
  FLIP_FLOP_D_RESET_SCAN \state_reg[2]  ( .D(N48), .SI(state[1]), .SE(test_se), 
        .CK(clock), .RESET(n1), .Q(state[2]) );
  FLIP_FLOP_D_RESET_SCAN \uscite_reg[2]  ( .D(N45), .SI(uscite[1]), .SE(
        test_se), .CK(clock), .RESET(n1), .Q(uscite[2]) );
  FLIP_FLOP_D_RESET_SCAN \state_reg[1]  ( .D(N47), .SI(state[0]), .SE(test_se), 
        .CK(clock), .RESET(n1), .Q(state[1]) );
  FLIP_FLOP_D_RESET_SCAN \uscite_reg[1]  ( .D(N44), .SI(state[2]), .SE(test_se), .CK(clock), .RESET(n1), .Q(uscite[1]) );
  FLIP_FLOP_D_RESET_SCAN \cc_mux_reg[2]  ( .D(N43), .SI(cc_mux[1]), .SE(
        test_se), .CK(clock), .RESET(n1), .Q(cc_mux[2]) );
  FLIP_FLOP_D_RESET_SCAN \cc_mux_reg[1]  ( .D(N42), .SI(ackout), .SE(test_se), 
        .CK(clock), .RESET(n1), .Q(cc_mux[1]) );
  FLIP_FLOP_D_RESET_SCAN enable_count_reg ( .D(N49), .SI(cc_mux[2]), .SE(
        test_se), .CK(clock), .RESET(n1), .Q(enable_count) );
  FLIP_FLOP_D_RESET_SCAN ackout_reg ( .D(N49), .SI(test_si), .SE(test_se), 
        .CK(clock), .RESET(n1), .Q(ackout) );
endmodule


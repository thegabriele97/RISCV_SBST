
module b10 ( r_button, g_button, key, start, reset, test, cts, ctr, rts, rtr, 
        clock, v_in, v_out );
  input [3:0] v_in;
  output [3:0] v_out;
  input r_button, g_button, key, start, reset, test, rts, rtr, clock;
  output cts, ctr;
  wire   voto0, voto1, voto2, voto3, \sign[3] , last_g, last_r, n1, n2, n3, n4,
         n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16, n17, n18, n19,
         n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, n31, n32, n33,
         n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46, n47,
         n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61,
         n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75,
         n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86, n87, n88, n89,
         n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100, n101, n102,
         n103, n104, n105, n106, n107, n108, n109, n110, n111, n112, n113,
         n114, n115, n116, n117, n118, n119, n120, n121, n122, n123, n124,
         n125, n126, n127, n128, n129, n130, n131, n132, n133, n134, n135,
         n136, n137, n138, n139, n140, n141, n142, n143, n144, n145, n146,
         n147, n148, n149, n150, n151, n152;
  wire   [3:0] stato;

  FLIP_FLOP_D_RESET last_r_reg ( .D(n152), .CK(clock), .RESET(n135), .Q(last_r) );
  FLIP_FLOP_D_RESET voto2_reg ( .D(n151), .CK(clock), .RESET(n135), .Q(voto2)
         );
  FLIP_FLOP_D_RESET \stato_reg[0]  ( .D(n150), .CK(clock), .RESET(n135), .Q(
        stato[0]) );
  FLIP_FLOP_D_RESET \v_out_reg[2]  ( .D(n149), .CK(clock), .RESET(n135), .Q(
        v_out[2]) );
  FLIP_FLOP_D_RESET \stato_reg[3]  ( .D(n148), .CK(clock), .RESET(n135), .Q(
        stato[3]) );
  FLIP_FLOP_D_RESET \stato_reg[1]  ( .D(n147), .CK(clock), .RESET(n135), .Q(
        stato[1]) );
  FLIP_FLOP_D_RESET \stato_reg[2]  ( .D(n146), .CK(clock), .RESET(n135), .Q(
        stato[2]) );
  FLIP_FLOP_D_RESET last_g_reg ( .D(n145), .CK(clock), .RESET(n135), .Q(last_g) );
  FLIP_FLOP_D_RESET voto1_reg ( .D(n144), .CK(clock), .RESET(n135), .Q(voto1)
         );
  FLIP_FLOP_D_RESET \v_out_reg[1]  ( .D(n143), .CK(clock), .RESET(n135), .Q(
        v_out[1]) );
  FLIP_FLOP_D_RESET \sign_reg[3]  ( .D(n142), .CK(clock), .RESET(n135), .Q(
        \sign[3] ) );
  FLIP_FLOP_D_RESET voto0_reg ( .D(n141), .CK(clock), .RESET(n135), .Q(voto0)
         );
  FLIP_FLOP_D_RESET \v_out_reg[0]  ( .D(n140), .CK(clock), .RESET(n135), .Q(
        v_out[0]) );
  FLIP_FLOP_D_RESET voto3_reg ( .D(n139), .CK(clock), .RESET(n135), .Q(voto3)
         );
  FLIP_FLOP_D_RESET \v_out_reg[3]  ( .D(n138), .CK(clock), .RESET(n135), .Q(
        v_out[3]) );
  FLIP_FLOP_D_RESET cts_reg ( .D(n137), .CK(clock), .RESET(n135), .Q(cts) );
  FLIP_FLOP_D_RESET ctr_reg ( .D(n136), .CK(clock), .RESET(n135), .Q(ctr) );
  NAND_GATE U3 ( .I1(n1), .I2(n2), .O(n139) );
  NAND_GATE U4 ( .I1(n3), .I2(n4), .O(n2) );
  NAND_GATE U5 ( .I1(n5), .I2(n6), .O(n4) );
  NAND3_GATE U6 ( .I1(n7), .I2(n8), .I3(n9), .O(n6) );
  NAND_GATE U7 ( .I1(n10), .I2(n11), .O(n8) );
  NAND_GATE U8 ( .I1(n12), .I2(voto0), .O(n11) );
  OR_GATE U9 ( .I1(n12), .I2(voto0), .O(n10) );
  AND_GATE U10 ( .I1(n13), .I2(n14), .O(n12) );
  NAND_GATE U11 ( .I1(voto2), .I2(n15), .O(n14) );
  NAND_GATE U12 ( .I1(voto1), .I2(n16), .O(n13) );
  NAND_GATE U13 ( .I1(v_in[3]), .I2(n17), .O(n5) );
  OR_GATE U14 ( .I1(n18), .I2(n3), .O(n1) );
  AND5_GATE U15 ( .I1(n19), .I2(n20), .I3(n21), .I4(n22), .I5(n23), .O(n3) );
  NAND_GATE U16 ( .I1(stato[1]), .I2(stato[3]), .O(n23) );
  NAND_GATE U17 ( .I1(stato[2]), .I2(stato[0]), .O(n21) );
  NAND_GATE U18 ( .I1(n24), .I2(n25), .O(n19) );
  OR_GATE U19 ( .I1(n26), .I2(n27), .O(n24) );
  NAND_GATE U20 ( .I1(n28), .I2(n29), .O(n151) );
  NAND_GATE U21 ( .I1(n30), .I2(n31), .O(n29) );
  NAND_GATE U22 ( .I1(n32), .I2(n33), .O(n31) );
  NAND_GATE U23 ( .I1(n34), .I2(n16), .O(n33) );
  NAND_GATE U24 ( .I1(v_in[2]), .I2(n17), .O(n32) );
  OR_GATE U25 ( .I1(n16), .I2(n30), .O(n28) );
  AND_GATE U26 ( .I1(n35), .I2(n36), .O(n30) );
  NAND_GATE U27 ( .I1(n27), .I2(n37), .O(n36) );
  OR_GATE U28 ( .I1(n38), .I2(last_r), .O(n37) );
  NAND_GATE U29 ( .I1(n39), .I2(n40), .O(n144) );
  NAND_GATE U30 ( .I1(n41), .I2(n42), .O(n40) );
  NAND_GATE U31 ( .I1(n43), .I2(n44), .O(n42) );
  NAND_GATE U32 ( .I1(n34), .I2(n15), .O(n44) );
  NAND_GATE U33 ( .I1(v_in[1]), .I2(n17), .O(n43) );
  OR_GATE U34 ( .I1(n15), .I2(n41), .O(n39) );
  AND_GATE U35 ( .I1(n35), .I2(n45), .O(n41) );
  NAND_GATE U36 ( .I1(n27), .I2(n46), .O(n45) );
  OR_GATE U37 ( .I1(n47), .I2(last_g), .O(n46) );
  AND5_GATE U38 ( .I1(n48), .I2(n20), .I3(n49), .I4(n50), .I5(n51), .O(n35) );
  NAND_GATE U39 ( .I1(stato[1]), .I2(stato[0]), .O(n50) );
  NAND_GATE U40 ( .I1(n52), .I2(n53), .O(n141) );
  NAND_GATE U41 ( .I1(n54), .I2(n55), .O(n53) );
  NAND3_GATE U42 ( .I1(n56), .I2(n57), .I3(n58), .O(n55) );
  NAND_GATE U43 ( .I1(v_in[0]), .I2(n17), .O(n58) );
  OR_GATE U44 ( .I1(n59), .I2(n60), .O(n17) );
  OR_GATE U45 ( .I1(n20), .I2(\sign[3] ), .O(n56) );
  OR_GATE U46 ( .I1(n61), .I2(n54), .O(n52) );
  AND5_GATE U47 ( .I1(n62), .I2(n63), .I3(n64), .I4(n22), .I5(n65), .O(n54) );
  NAND_GATE U48 ( .I1(stato[2]), .I2(n66), .O(n65) );
  AND_GATE U49 ( .I1(n51), .I2(n67), .O(n22) );
  OR_GATE U50 ( .I1(n49), .I2(stato[1]), .O(n67) );
  OR_GATE U51 ( .I1(n68), .I2(start), .O(n49) );
  OR_GATE U52 ( .I1(n69), .I2(n70), .O(n51) );
  OR_GATE U53 ( .I1(n20), .I2(stato[1]), .O(n64) );
  NAND3_GATE U54 ( .I1(stato[0]), .I2(stato[3]), .I3(stato[1]), .O(n63) );
  NAND_GATE U55 ( .I1(n26), .I2(n71), .O(n62) );
  INV_GATE U56 ( .I1(n48), .O(n26) );
  NAND_GATE U57 ( .I1(n72), .I2(n73), .O(n138) );
  NAND_GATE U58 ( .I1(v_out[3]), .I2(n74), .O(n73) );
  OR_GATE U59 ( .I1(n74), .I2(n18), .O(n72) );
  NAND_GATE U60 ( .I1(n75), .I2(n76), .O(n149) );
  NAND_GATE U61 ( .I1(v_out[2]), .I2(n74), .O(n76) );
  OR_GATE U62 ( .I1(n74), .I2(n16), .O(n75) );
  INV_GATE U63 ( .I1(voto2), .O(n16) );
  NAND_GATE U64 ( .I1(n77), .I2(n78), .O(n143) );
  NAND_GATE U65 ( .I1(v_out[1]), .I2(n74), .O(n78) );
  OR_GATE U66 ( .I1(n74), .I2(n15), .O(n77) );
  INV_GATE U67 ( .I1(voto1), .O(n15) );
  NAND_GATE U68 ( .I1(n79), .I2(n80), .O(n140) );
  NAND_GATE U69 ( .I1(v_out[0]), .I2(n74), .O(n80) );
  OR_GATE U70 ( .I1(n74), .I2(n61), .O(n79) );
  NAND3_GATE U71 ( .I1(n81), .I2(n82), .I3(n83), .O(n148) );
  NAND_GATE U72 ( .I1(n84), .I2(stato[3]), .O(n83) );
  NAND_GATE U73 ( .I1(n85), .I2(n86), .O(n81) );
  NAND_GATE U74 ( .I1(n87), .I2(n88), .O(n85) );
  NAND_GATE U75 ( .I1(n89), .I2(n60), .O(n88) );
  AND_GATE U76 ( .I1(n90), .I2(n91), .O(n146) );
  NAND3_GATE U77 ( .I1(n86), .I2(n25), .I3(n89), .O(n91) );
  NAND_GATE U78 ( .I1(n92), .I2(n69), .O(n90) );
  NAND_GATE U79 ( .I1(n93), .I2(stato[1]), .O(n92) );
  NAND_GATE U80 ( .I1(n94), .I2(n95), .O(n147) );
  NAND3_GATE U81 ( .I1(n86), .I2(n96), .I3(stato[0]), .O(n95) );
  OR_GATE U82 ( .I1(n96), .I2(n93), .O(n94) );
  AND_GATE U83 ( .I1(n86), .I2(n66), .O(n93) );
  NAND_GATE U84 ( .I1(n97), .I2(n98), .O(n150) );
  NAND_GATE U85 ( .I1(n99), .I2(n86), .O(n98) );
  NAND_GATE U86 ( .I1(n100), .I2(n101), .O(n99) );
  OR_GATE U87 ( .I1(n66), .I2(n89), .O(n101) );
  AND5_GATE U88 ( .I1(n61), .I2(n18), .I3(n96), .I4(voto1), .I5(voto2), .O(n89) );
  INV_GATE U89 ( .I1(voto3), .O(n18) );
  INV_GATE U90 ( .I1(voto0), .O(n61) );
  INV_GATE U91 ( .I1(n71), .O(n66) );
  NAND_GATE U92 ( .I1(n84), .I2(stato[0]), .O(n97) );
  INV_GATE U93 ( .I1(n86), .O(n84) );
  NAND4_GATE U94 ( .I1(n102), .I2(n103), .I3(n104), .I4(n105), .O(n86) );
  AND3_GATE U95 ( .I1(n106), .I2(n107), .I3(n108), .O(n105) );
  NAND_GATE U96 ( .I1(n109), .I2(n110), .O(n108) );
  NAND_GATE U97 ( .I1(n100), .I2(n48), .O(n109) );
  OR_GATE U98 ( .I1(n111), .I2(start), .O(n48) );
  NAND3_GATE U99 ( .I1(n112), .I2(n69), .I3(stato[0]), .O(n106) );
  NAND_GATE U100 ( .I1(n113), .I2(n114), .O(n112) );
  NAND4_GATE U101 ( .I1(stato[3]), .I2(n96), .I3(v_in[3]), .I4(n115), .O(n114)
         );
  AND3_GATE U102 ( .I1(v_in[1]), .I2(v_in[2]), .I3(v_in[0]), .O(n115) );
  NAND_GATE U103 ( .I1(start), .I2(n110), .O(n113) );
  NAND_GATE U104 ( .I1(n70), .I2(n60), .O(n103) );
  AND_GATE U105 ( .I1(stato[1]), .I2(rts), .O(n70) );
  OR_GATE U106 ( .I1(n20), .I2(n111), .O(n102) );
  NAND_GATE U107 ( .I1(stato[3]), .I2(n25), .O(n20) );
  NAND_GATE U108 ( .I1(n82), .I2(n116), .O(n142) );
  NAND_GATE U109 ( .I1(\sign[3] ), .I2(n87), .O(n116) );
  OR3_GATE U110 ( .I1(test), .I2(stato[3]), .I3(n100), .O(n87) );
  INV_GATE U111 ( .I1(n59), .O(n82) );
  NOR4_GATE U112 ( .I1(n25), .I2(n110), .I3(stato[1]), .I4(stato[2]), .O(n59)
         );
  NAND_GATE U113 ( .I1(n117), .I2(n118), .O(n152) );
  OR_GATE U114 ( .I1(n119), .I2(n38), .O(n118) );
  INV_GATE U115 ( .I1(r_button), .O(n38) );
  NAND_GATE U116 ( .I1(last_r), .I2(n119), .O(n117) );
  NAND_GATE U117 ( .I1(n120), .I2(n121), .O(n145) );
  OR_GATE U118 ( .I1(n119), .I2(n47), .O(n121) );
  INV_GATE U119 ( .I1(g_button), .O(n47) );
  NAND_GATE U120 ( .I1(last_g), .I2(n119), .O(n120) );
  NAND_GATE U121 ( .I1(start), .I2(n34), .O(n119) );
  INV_GATE U122 ( .I1(n57), .O(n34) );
  NAND_GATE U123 ( .I1(n27), .I2(n71), .O(n57) );
  AND_GATE U124 ( .I1(key), .I2(n9), .O(n27) );
  NAND3_GATE U125 ( .I1(n122), .I2(n123), .I3(n124), .O(n137) );
  NAND3_GATE U126 ( .I1(rtr), .I2(stato[0]), .I3(n125), .O(n124) );
  NAND_GATE U127 ( .I1(n60), .I2(n126), .O(n123) );
  NAND3_GATE U128 ( .I1(n104), .I2(n127), .I3(cts), .O(n122) );
  INV_GATE U129 ( .I1(n125), .O(n127) );
  AND3_GATE U130 ( .I1(n110), .I2(n69), .I3(n96), .O(n125) );
  INV_GATE U131 ( .I1(n126), .O(n104) );
  NAND_GATE U132 ( .I1(n74), .I2(n128), .O(n126) );
  OR_GATE U133 ( .I1(n129), .I2(rtr), .O(n128) );
  AND_GATE U134 ( .I1(n100), .I2(n130), .O(n129) );
  NAND3_GATE U135 ( .I1(stato[1]), .I2(n7), .I3(stato[2]), .O(n130) );
  OR3_GATE U136 ( .I1(stato[2]), .I2(stato[1]), .I3(stato[0]), .O(n100) );
  NAND3_GATE U137 ( .I1(n60), .I2(n96), .I3(rtr), .O(n74) );
  AND_GATE U138 ( .I1(n71), .I2(stato[2]), .O(n60) );
  NAND_GATE U139 ( .I1(n107), .I2(n131), .O(n136) );
  NAND_GATE U140 ( .I1(ctr), .I2(n132), .O(n131) );
  NAND4_GATE U141 ( .I1(n71), .I2(n133), .I3(n134), .I4(n111), .O(n132) );
  INV_GATE U142 ( .I1(n9), .O(n111) );
  AND_GATE U143 ( .I1(stato[1]), .I2(n69), .O(n9) );
  OR_GATE U144 ( .I1(n96), .I2(rts), .O(n134) );
  NAND_GATE U145 ( .I1(stato[2]), .I2(n96), .O(n133) );
  INV_GATE U146 ( .I1(stato[1]), .O(n96) );
  AND_GATE U147 ( .I1(n110), .I2(n25), .O(n71) );
  INV_GATE U148 ( .I1(stato[3]), .O(n110) );
  OR4_GATE U149 ( .I1(n69), .I2(n68), .I3(rts), .I4(stato[1]), .O(n107) );
  INV_GATE U150 ( .I1(n7), .O(n68) );
  NOR_GATE U151 ( .I1(n25), .I2(stato[3]), .O(n7) );
  INV_GATE U152 ( .I1(stato[0]), .O(n25) );
  INV_GATE U153 ( .I1(stato[2]), .O(n69) );
  INV_GATE U154 ( .I1(reset), .O(n135) );
endmodule


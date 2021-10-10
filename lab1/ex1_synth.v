/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : O-2018.06-SP4
// Date      : Sun Oct 10 11:17:14 2021
/////////////////////////////////////////////////////////////


module ex1 ( A, B, S, C );
  input A, B;
  output S, C;
  wire   N0, n3;
  assign C = N0;

  AND_GATE U4 ( .I1(A), .I2(B), .O(N0) );
  NOR_GATE U5 ( .I1(A), .I2(B), .O(n3) );
  NOR_GATE U6 ( .I1(N0), .I2(n3), .O(S) );
endmodule


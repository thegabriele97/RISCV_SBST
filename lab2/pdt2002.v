//**********************************************************
//
//  FILE: tmax_pdt2002.v
//
//**********************************************************
//                                                         *
//    Politecnico di Torino library for TETRA MAX          *
//                                                         *
//**********************************************************
//
//  Creation date: 03.03.2004
//  Author       : M. Violante
//  Adapted from : M. Violante, F. Corno, G. Medina G. Squillero
//  Format       : Verilog
//
//  Revision date: 20.09.2004
//  Author       : M. Violante
//

//------------------------------------------------
//                     AND
//------------------------------------------------

module And_Gate(I1, I2, O);
        input I1, I2;
        output O;
        and(O, I1, I2);
endmodule

module And3_Gate(I1, I2, I3, O);
        input I1, I2, I3;
        output O;
        and(O, I1, I2, I3);
endmodule

module And4_Gate(I1, I2, I3, I4, O);
        input I1, I2, I3, I4;
        output O;
        and(O, I1, I2, I3, I4);
endmodule

module And5_Gate(I1, I2, I3, I4, I5, O);
        input I1, I2, I3, I4, I5;
        output O;
        and(O, I1, I2, I3, I4, I5);
endmodule

//------------------------------------------------
//                     NAND
//------------------------------------------------

module Nand_Gate(I1, I2, O);
        input I1, I2;
        output O;
        nand(O, I1, I2);
endmodule

module Nand3_Gate(I1, I2, I3, O);
        input I1, I2, I3;
        output O;
        nand(O, I1, I2, I3);
endmodule

module Nand4_Gate(I1, I2, I3, I4, O);
        input I1, I2, I3, I4;
        output O;
        nand(O, I1, I2, I3, I4);
endmodule

module Nand5_Gate(I1, I2, I3, I4, I5, O);
        input I1, I2, I3, I4, I5;
        output O;
        nand(O, I1, I2, I3, I4, I5);
endmodule

//------------------------------------------------
//                     OR
//------------------------------------------------

module Or_Gate(I1, I2, O);
        input I1, I2;
        output O;
        or(O, I1, I2);
endmodule

module Or3_Gate(I1, I2, I3, O);
        input I1, I2, I3;
        output O;
        or(O, I1, I2, I3);
endmodule

module Or4_Gate(I1, I2, I3, I4, O);
        input I1, I2, I3, I4;
        output O;
        or(O, I1, I2, I3, I4);
endmodule

module Or5_Gate(I1, I2, I3, I4, I5, O);
        input I1, I2, I3, I4, I5;
        output O;
        or(O, I1, I2, I3, I4, I5);
endmodule

//------------------------------------------------
//                     NOR
//------------------------------------------------

module Nor_Gate(I1, I2, O);
        input I1, I2;
        output O;
        nor(O, I1, I2);
endmodule

module Nor3_Gate(I1, I2, I3, O);
        input I1, I2, I3;
        output O;
        nor(O, I1, I2, I3);
endmodule

module Nor4_Gate(I1, I2, I3, I4, O);
        input I1, I2, I3, I4;
        output O;
        nor(O, I1, I2, I3, I4);
endmodule

module Nor5_Gate(I1, I2, I3, I4, I5, O);
        input I1, I2, I3, I4, I5;
        output O;
        nor(O, I1, I2, I3, I4, I5);
endmodule

//------------------------------------------------
//                     XOR
//------------------------------------------------

module Xor_Gate(I1, I2, O);
        input I1, I2;
        output O;
        xor(O, I1, I2);
endmodule

module Xor3_Gate(I1, I2, I3, O);
        input I1, I2, I3;
        output O;
        xor(O, I1, I2, I3);
endmodule

module Xor4_Gate(I1, I2, I3, I4, O);
        input I1, I2, I3, I4;
        output O;
        xor(O, I1, I2, I3, I4);
endmodule

module Xor5_Gate(I1, I2, I3, I4, I5, O);
        input I1, I2, I3, I4, I5;
        output O;
        xor(O, I1, I2, I3, I4, I5);
endmodule

//------------------------------------------------
//                     XNOR
//------------------------------------------------

module Xnor_Gate(I1, I2, O);
        input I1, I2;
        output O;
        xnor(O, I1, I2);
endmodule

module Xnor3_Gate(I1, I2, I3, O);
        input I1, I2, I3;
        output O;
        xnor(O, I1, I2, I3);
endmodule

module Xnor4_Gate(I1, I2, I3, I4, O);
        input I1, I2, I3, I4;
        output O;
        xnor(O, I1, I2, I3, I4);
endmodule

module Xnor5_Gate(I1, I2, I3, I4, I5, O);
        input I1, I2, I3, I4, I5;
        output O;
        xnor(O, I1, I2, I3, I4, I5);
endmodule

//------------------------------------------------
//                     NOT
//------------------------------------------------

module Inv_Gate(I1, O);
        input I1;
        output O;
        not(O, I1);
endmodule

//------------------------------------------------
//                     BUF
//------------------------------------------------

module Buf_Gate(I1, O);
        input I1;
        output O;
        buf(O, I1);
endmodule

module Three_State_Buf_Gate(I1, E, O);
//	input I1, E;
//	output O;
//	bufif0(O, I1, E);
	input E, I1;
	output O;

	_inv u1 (E, en);
	_tsd u2 (en, I1, O);
endmodule

//----------------------------------------------------------
//                 FLIP FLOP
//----------------------------------------------------------

module Flip_Flop_D(CK, D, Q);
        input D, CK;
        output Q;
	_TIE0 u1 (set);
	_TIE0 u2 (reset);
	_dff(set, reset, CK, D, Q);
endmodule

module Flip_Flop_D_reset(RESET, CK, D, Q);
        input D, CK, RESET;
        output Q;
	_TIE0 u1 (set);
	_INV  u2 (RESET, resetN );
	_dff(set, resetN, CK, D, Q);
endmodule

module Flip_Flop_D_preset(PRESET, CK, D, Q);
        input D, CK, PRESET;
        output Q;
	_TIE0 u1 (reset);
	_INV  u2 (PRESET, presetN );
	_dff(presetN, reset, CK, D, Q);
endmodule

module Flip_Flop_D_reset_preset(PRESET, RESET, CK, D, Q);
        input D, CK, RESET, PRESET;
        output Q;
	_INV  u1 (RESET, resetN );
	_INV  u2 (PRESET, presetN );
	_dff(presetN, resetN, CK, D, Q);
endmodule

//----------------------------------------------------------
//                 FLIP FLOP SCAN
//----------------------------------------------------------
module Flip_Flop_D_reset_scan(SE, SI, RESET, CK, D, Q);
        input D, CK, RESET, SE, SI;
        output Q;
	_TIE0 u1 (set);
	_MUX  u2 (SE, D, SI, n1);
	_INV  u3 (RESET, resetN );
	_dff(set, resetN, CK, n1, Q);
endmodule

//----------------------------------------------------------
//                 LATCH
//----------------------------------------------------------

module Latch_D(LE, D, Q);
	input LE, D;
	output Q;
	_TIE0 u1 (set);
	_TIE0 u2 (reset);
	_DLAT u3(set, reset, LE, D, Q);
endmodule

//----------------------------------------------------------
//                 LOGIC0/LOGIC1
//----------------------------------------------------------

module logic_0(Z);
	output Z;
	pulldown(Z);
endmodule

module logic_1(Z);
	output Z;
	pullup(Z);
endmodule

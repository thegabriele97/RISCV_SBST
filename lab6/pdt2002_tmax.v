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

module AND_GATE(I1, I2, O);
        input I1, I2;
        output O;
        and(O, I1, I2);
endmodule

module AND3_GATE(I1, I2, I3, O);
        input I1, I2, I3;
        output O;
        and(O, I1, I2, I3);
endmodule

module AND4_GATE(I1, I2, I3, I4, O);
        input I1, I2, I3, I4;
        output O;
        and(O, I1, I2, I3, I4);
endmodule

module AND5_GATE(I1, I2, I3, I4, I5, O);
        input I1, I2, I3, I4, I5;
        output O;
        and(O, I1, I2, I3, I4, I5);
endmodule

//------------------------------------------------
//                     NAND
//------------------------------------------------

module NAND_GATE(I1, I2, O);
        input I1, I2;
        output O;
        nand(O, I1, I2);
endmodule

module NAND3_GATE(I1, I2, I3, O);
        input I1, I2, I3;
        output O;
        nand(O, I1, I2, I3);
endmodule

module NAND4_GATE(I1, I2, I3, I4, O);
        input I1, I2, I3, I4;
        output O;
        nand(O, I1, I2, I3, I4);
endmodule

module NAND5_GATE(I1, I2, I3, I4, I5, O);
        input I1, I2, I3, I4, I5;
        output O;
        nand(O, I1, I2, I3, I4, I5);
endmodule

//------------------------------------------------
//                     OR
//------------------------------------------------

module OR_GATE(I1, I2, O);
        input I1, I2;
        output O;
        or(O, I1, I2);
endmodule

module OR3_GATE(I1, I2, I3, O);
        input I1, I2, I3;
        output O;
        or(O, I1, I2, I3);
endmodule

module OR4_GATE(I1, I2, I3, I4, O);
        input I1, I2, I3, I4;
        output O;
        or(O, I1, I2, I3, I4);
endmodule

module OR5_GATE(I1, I2, I3, I4, I5, O);
        input I1, I2, I3, I4, I5;
        output O;
        or(O, I1, I2, I3, I4, I5);
endmodule

//------------------------------------------------
//                     NOR
//------------------------------------------------

module NOR_GATE(I1, I2, O);
        input I1, I2;
        output O;
        nor(O, I1, I2);
endmodule

module NOR3_GATE(I1, I2, I3, O);
        input I1, I2, I3;
        output O;
        nor(O, I1, I2, I3);
endmodule

module NOR4_GATE(I1, I2, I3, I4, O);
        input I1, I2, I3, I4;
        output O;
        nor(O, I1, I2, I3, I4);
endmodule

module NOR5_GATE(I1, I2, I3, I4, I5, O);
        input I1, I2, I3, I4, I5;
        output O;
        nor(O, I1, I2, I3, I4, I5);
endmodule

//------------------------------------------------
//                     XOR
//------------------------------------------------

module XCR_GATE(I1, I2, O);
        input I1, I2;
        output O;
        xor(O, I1, I2);
endmodule

module XOR3_GATE(I1, I2, I3, O);
        input I1, I2, I3;
        output O;
        xor(O, I1, I2, I3);
endmodule

module XOR4_GATE(I1, I2, I3, I4, O);
        input I1, I2, I3, I4;
        output O;
        xor(O, I1, I2, I3, I4);
endmodule

module XOR5_GATE(I1, I2, I3, I4, I5, O);
        input I1, I2, I3, I4, I5;
        output O;
        xor(O, I1, I2, I3, I4, I5);
endmodule

//------------------------------------------------
//                     XNOR
//------------------------------------------------

module XNOR_GATE(I1, I2, O);
        input I1, I2;
        output O;
        xnor(O, I1, I2);
endmodule

module XNOR3_GATE(I1, I2, I3, O);
        input I1, I2, I3;
        output O;
        xnor(O, I1, I2, I3);
endmodule

module XNOR4_GATE(I1, I2, I3, I4, O);
        input I1, I2, I3, I4;
        output O;
        xnor(O, I1, I2, I3, I4);
endmodule

module XNOR5_GATE(I1, I2, I3, I4, I5, O);
        input I1, I2, I3, I4, I5;
        output O;
        xnor(O, I1, I2, I3, I4, I5);
endmodule

//------------------------------------------------
//                     NOT
//------------------------------------------------

module INV_GATE(I1, O);
        input I1;
        output O;
        not(O, I1);
endmodule

//------------------------------------------------
//                     BUF
//------------------------------------------------

module BUF_GATE(I1, O);
        input I1;
        output O;
        buf(O, I1);
endmodule

module THREE_STATE_BUF_GATE(I1, E, O);
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

module FLIP_FLOP_D(CK, D, Q);
        input D, CK;
        output Q;
	_TIE0 u1 (set);
	_TIE0 u2 (reset);
	_dff(set, reset, CK, D, Q);
endmodule

module FLIP_FLOP_D_RESET(RESET, CK, D, Q);
        input D, CK, RESET;
        output Q;
	_TIE0 u1 (set);
	_INV  u2 (RESET, resetN );
	_dff(set, resetN, CK, D, Q);
endmodule

module FLIP_FLOP_D_PRESET(PRESET, CK, D, Q);
        input D, CK, PRESET;
        output Q;
	_TIE0 u1 (reset);
	_INV  u2 (PRESET, presetN );
	_dff(presetN, reset, CK, D, Q);
endmodule

module FLIP_FLOP_D_RESET_PRESET(PRESET, RESET, CK, D, Q);
        input D, CK, RESET, PRESET;
        output Q;
	_INV  u1 (RESET, resetN );
	_INV  u2 (PRESET, presetN );
	_dff(presetN, resetN, CK, D, Q);
endmodule

//----------------------------------------------------------
//                 FLIP FLOP SCAN
//----------------------------------------------------------
module FLIP_FLOP_D_RESET_SCAN(SE, SI, RESET, CK, D, Q);
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

module LATCH_D(LE, D, Q);
	input LE, D;
	output Q;
	_TIE0 u1 (set);
	_TIE0 u2 (reset);
	_DLAT u3(set, reset, LE, D, Q);
endmodule

//----------------------------------------------------------
//                 LOGIC0/LOGIC1
//----------------------------------------------------------

module LOGIC_0(Z);
	output Z;
	pulldown(Z);
endmodule

module LOGIC_1(Z);
	output Z;
	pullup(Z);
endmodule

#!/usr/bin/env python3

import re, sys, io

stil_filename = sys.argv[1]

signals_bits = [
	('clk', 1),
	('rst_n', 1),
	('enable_i', 1),
	('operator_i', 3),
	('short_signed_i', 2),
	('op_a_i', 32),
	('op_b_i', 32),
	('op_c_i', 32),
	('imm_i', 5),
	('dot_signed_i', 2),
	('dot_op_a_i', 32),
	('dot_op_b_i', 32),
	('dot_op_c_i', 32),
	('is_clpx_i', 1),
	('bmask_a_i', 5),
	('bmask_b_i', 5),
	('imm_vec_ext_i', 2),
	('is_subrot_i', 1),
	('clpx_shift_i', 2),
	('ex_ready_i', 1)]

# Opcodes are listed in rtl/include/riscv_defines.sv

instr2operands = {
    '0011000' : ['add', 'add', 'pv.add.h', 'pv.add.b'],
	'0011001' : ['sub', 'sub', 'pv.sub.h', 'pv.sub.b'],

    '0101111' : ['xor', 'xor', 'pv.xor.sc.h', 'pv.xor.sc.b'],
    '0101110' : ['or', 'or', 'pv.or.sc.h', 'pv.or.sc.b'],
    '0010101' : ['and', 'and', 'pv.and.sc.h', 'pv.and.sc.b'],

    # Shifts
    '0100100' : ['sra', 'sra', 'pv.sra.sc.h', 'pv.sra.sc.b'],
    '0100101' : ['srl', 'srl', 'pv.srl.sc.h', 'pv.srl.sc.b'],
    '0100110' : 'p.ror',
    '0100111' : ['sll', 'sll', 'pv.sll.sc.h', 'pv.sll.sc.b'],


    # sign-/zero-extensions
    #'0111110' : 'exts',
    #'0111111' : 'ext',


    # set lower than operations
    '0000010' : 'slt',
    '0000011' : 'sltu',
    '0000110' : 'p.slet',
    '0000111' : 'p.sletu',


    # insert/extract
    #'0101101' : 'ins',

    # min/max
    '0010000' : ['p.min', 'p.min', 'pv.min.sc.h', 'pv.min.sc.b'],
    '0010001' : ['p.minu', 'p.minu', 'pv.minu.sc.h', 'pv.minu.sc.b'],
    '0010010' : ['p.max', 'p.max', 'pv.max.sc.h', 'pv.max.sc.b'],
    '0010011' : ['p.maxu', 'p.maxu', 'pv.maxu.sc.h', 'pv.maxu.sc.b'],

    # div/rem
    '0110000' : 'divu', # bit 0 is used for signed mode, bit 1 is used for remdiv
    '0110001' : 'div', # bit 0 is used for signed mode, bit 1 is used for remdiv
    '0110010' : 'remu', # bit 0 is used for signed mode, bit 1 is used for remdiv
    '0110011' : 'rem', # bit 0 is used for signed mode, bit 1 is used for remdiv

    '0111010' : ['pv.shuffle.h', 'pv.shuffle.h', 'pv.shuffle.h', 'pv.shuffle.b'],
    '0111011' : ['pv.shuffle2.h', 'pv.shuffle2.h', 'pv.shuffle2.h', 'pv.shuffle2.b'],
    '0111000' : ['pv.pack.h', 'pv.packlo.b', 'pv.pack.h', 'pv.packlo.b'],
    '0111001' : ['pv.pack.h', 'pv.packhi.b', 'pv.pack.h', 'pv.packhi.b'],

    # fpu
    #'1111111' : 'fkeep',   # hack, to support fcvt.s.d
    #'1000000' : 'fsgnj',
    #'1000001' : 'fsgnjn',
    #'1000010' : 'fsgnjx',
    #'1000011' : 'feq',
    #'1000100' : 'flt',
    #'1000101' : 'fle',
    #'1000110' : 'fmax',
    #'1000111' : 'fmin',
    #'1001000' : 'fclass'
    
}

instr2branch = {

    # comparisons
    '0000000' : ['blt', 'blt', 'pv.cmplt.h', 'pv.cmplt.b'], #ALU_OP = LTS
    '0000001' : ['bltu', 'bltu', 'pv.cmpltu.h', 'pv.cmpltu.b'], #ALU_OP = LTU
    '0000100' : ['ble', 'ble', 'pv.cmple.h', 'pv.cmple.b'], #ALU_OP = LES
    '0000101' : ['bleu', 'bleu', 'pv.cmpleu.h', 'pv.cmpleu.b'], #ALU_OP = LEU
    '0001000' : ['bgt', 'bgt', 'pv.cmpgt.h', 'pv.cmpgt.b'], #ALU_OP = GTS
    '0001001' : ['bgtu', 'bgtu', 'pv.cmpgtu.h', 'pv.cmpgtu.b'], #ALU_OP = GTU
    '0001010' : ['bge', 'bge', 'pv.cmpge.h', 'pv.cmpge.b'], #ALU_OP = GES
    '0001011' : ['bgeu', 'bgeu', 'pv.cmpgeu.h', 'pv.cmpgeu.b'], #ALU_OP = GEU
    '0001100' : ['beq', 'beq', 'pv.cmpeq.h', 'pv.cmpeq.b'],  #ALU_OP = EQ
    '0001101' : ['bne', 'bne', 'pv.cmpne.h', 'pv.cmpne.b'],  #ALU_OP = NE

    # comparisons
    #'0000000' : 'blt', #ALU_OP = LTS
    #'0000001' : 'bltu', #ALU_OP = LTU
    #'0000100' : 'ble', #ALU_OP = LES
    #'0000101' : 'bleu', #ALU_OP = LEU
    #'0001000' : 'bgt', #ALU_OP = GTS
    #'0001001' : 'bgtu', #ALU_OP = GTU
    #'0001010' : 'bge', #ALU_OP = GES
    #'0001011' : 'bgeu', #ALU_OP = GEU
    #'0001100' : 'beq',  #ALU_OP = EQ
    #'0001101' : 'bne',  #ALU_OP = NE

}

instr2single = {

    # bit counting
    '0110110' : 'p.ff1',
    '0110111' : 'p.fl1',
    '0110100' : 'p.cnt',
    '0110101' : 'p.clb',


    # absolute value
    '0010100' : ['p.abs', 'p.abs', 'pv.abs.h', 'pv.abs.b'],
}

inst2shortimm = {

    # absolute value
    '0010110' : 'p.clip',
    '0010111' : 'p.clipu',

}

inst2triple = {

    '0011010' : 'p.adduN',
    '0011011' : 'p.subuN',
    '0011100' : 'p.addRN',
    '0011101' : 'p.subRN',
    '0011110' : 'p.adduRN',
    '0011111' : 'p.subuRN',

}

inst2triple_2imm = {

    # bit manipulation
    #'1001001' : 'brev',
    '0101000' : ['p.extract', 'p.extract', 'pv.extract.h', 'pv.extract.b'],
    '0101001' : ['p.extractu', 'p.extractu', 'pv.extractu.h', 'pv.extractu.b'],
    '0101010' : ['p.insert', 'p.insert', 'pv.insert.h', 'pv.insert.b'],
    '0101100' : 'p.bset',
    '0101011' : 'p.bclr',

}

label_n = 0
with open(stil_filename) as stil_file:
	for line in stil_file:

		# Search for "_pi" line
		matched = re.search(r'"_pi"=([01N]+)', line)
		if not matched:
			continue
		pi_string = matched.group(1)

		# Translate "_pi" line to a dictionary
		s = io.StringIO(pi_string)
		pi = {name:s.read(bits) for (name,bits) in signals_bits}
		#print(pi)

		#print("//op: {}, {}".format(pi['operator_i'], pi['vector_mode_i']));
		is_it = pi['operator_i'] in instr2branch.keys() and int(pi['vector_mode_i'], 2) > 1
		print_ln = True

		if is_it or pi['operator_i'] in instr2operands.keys():
			if not is_it:
				instr = instr2operands[pi['operator_i']]
			else:
				instr = instr2branch[pi['operator_i']]

			if isinstance (instr, list):
				instr = instr[int(pi['vector_mode_i'], 2)]
				
			rs1 = hex(int(pi['operand_a_i'],2))
			rs2 = hex(int(pi['operand_b_i'],2))
			print('li t0, {}'.format(rs1))
			print('li t1, {}'.format(rs2))
			print('{} t2, t0, t1'.format(instr))
			print('sw t2, 4(sp)')
		elif pi['operator_i'] in instr2branch.keys():
			instr = instr2branch[pi['operator_i']][0]
			rs1 = hex(int(pi['operand_a_i'],2))
			rs2 = hex(int(pi['operand_b_i'],2))
			print('li t0, {}'.format(rs1))
			print('li t1, {}'.format(rs2))
			print('{} t0, t1, label_n_{}'.format(instr, label_n))
			print('label_n_{}:'.format(label_n))
			print('    sw t2, 4(sp)')

			label_n += 1
		elif pi['operator_i'] in instr2single.keys():
			instr = instr2single[pi['operator_i']]

			if isinstance (instr, list):
				instr = instr[int(pi['vector_mode_i'], 2)]
				
			rs1 = hex(int(pi['operand_a_i'],2))
			print('li t0, {}'.format(rs1))
			print('{} t2, t0'.format(instr))
			print('sw t2, 4(sp)')

		elif pi['operator_i'] in inst2shortimm.keys():
			instr = inst2shortimm[pi['operator_i']]
			rs1 = hex(int(pi['operand_a_i'],2))
			rs2 = hex(int(pi['operand_b_i'],2) & 0x1f)
			print('li t0, {}'.format(rs1))
			print('{} t2, t0, {}'.format(instr, rs2))
			print('sw t2, 4(sp)')

		elif pi['operator_i'] in inst2triple.keys():
			instr = inst2triple[pi['operator_i']]
			rs1 = hex(int(pi['operand_a_i'],2))
			rs2 = hex(int(pi['operand_b_i'],2))
			rs3 = hex(int(pi['operand_c_i'],2) & 0x1f)
			print('li t0, {}'.format(rs1))
			print('li t1, {}'.format(rs2))
			print('{} t2, t0, t1, {}'.format(instr, rs3))
			print('sw t2, 4(sp)')

		elif pi['operator_i'] in inst2triple_2imm.keys():
			instr = inst2triple_2imm[pi['operator_i']]

			if isinstance (instr, list):
				instr = instr[int(pi['vector_mode_i'], 2)]
				

			if instr[0:3] == "pv.":

				if instr[-1] == "h":
					rs2 = hex(int(pi['operand_b_i'],2) & 0x1)
				else:
					rs2 = hex(int(pi['operand_b_i'],2) & 0x3)

				rs1 = hex(int(pi['operand_a_i'],2))
				print('li t0, {}'.format(rs1))
				print('{} t2, t0, {}'.format(instr, rs2))
			else:
  				rs1 = hex(int(pi['operand_a_i'],2))
  				rs2 = hex(int(pi['operand_b_i'],2) & 0x1f)
  				rs3 = hex(int(pi['operand_c_i'],2) & 0x1f)
  				print('li t0, {}'.format(rs1))
  				print('{} t2, t0, {}, {}'.format(instr, rs2, rs3))


            #if not isinstance (instr, list) or pi['vector_mode_i'] == "00" or pi['vector_mode_i'] == "01":
            #	rs1 = hex(int(pi['operand_a_i'],2))
            #	rs2 = hex(int(pi['operand_b_i'],2) & 0x1f)
            #	rs3 = hex(int(pi['operand_c_i'],2) & 0x1f)
            #	print('li t0, {}'.format(rs1))
            #	print('{} t2, t0, {}, {}'.format(instr, rs2, rs3))
            #else:
            #	rs1 = hex(int(pi['operand_a_i'],2))
            #	rs2 = hex(int(pi['operand_b_i'],2) & 0x1f)
            #	print('li t0, {}'.format(rs1))
            #	print('{} t2, t0, {}'.format(instr, rs2))
                
			print('sw t2, 4(sp)')

		else:
			#print(f"Not matched op: {pi['operator_i']} rs1 = {hex(int(pi['operand_a_i'],2))} rs2 = {hex(int(pi['operand_b_i'],2))}", file=sys.stderr)
			print("Not matched op:", pi['operator_i'], "rs1 = ", hex(int(pi['operand_a_i'],2)), "rs2 = ", hex(int(pi['operand_b_i'],2)), file=sys.stderr)
			print_ln = False

		if print_ln:
			print()

		

		



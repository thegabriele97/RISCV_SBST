#!/usr/bin/env python3

import re, sys, io

stil_filename = sys.argv[1]


signals_bits = [
	('clk', 1),
	('rst_n', 1),
	('enable_i', 1),
	('operator_i', 7),
	('operand_a_i', 32),
	('operand_b_i', 32),
	('operand_c_i', 32),
	('vector_mode_i', 2),
	('bmask_a_i', 5),
	('bmask_b_i', 5),
	('imm_vec_ext_i', 2),
	('is_clpx_i', 1),
	('is_subrot_i', 1),
	('clpx_shift_i', 2),
	('ex_ready_i', 1)]

# Opcodes are listed in rtl/include/riscv_defines.sv

instr2operands = {
	'0011000' : 'add',
	'0011001' : 'sub',

    #'0011010' : 'addu',
    #'0011011' : 'subu',
    #'0011100' : 'addr',
    #'0011101' : 'subr',
    #'0011110' : 'addur',
    #'0011111' : 'subur',

    '0101111' : 'xor',
    '0101110' : 'or',
    '0010101' : 'and',

    # Shifts
    '0100100' : 'sra',
    '0100101' : 'srl',
    #'0100110' : 'ror',
    '0100111' : 'sll',

    # bit manipulation
    #'0101000' : 'bext',
    #'0101001' : 'bextu',
    #'0101010' : 'bins',
    #'0101011' : 'bclr',
    #'0101100' : 'bset',
    #'1001001' : 'brev',

    # bit counting
    #'0110110' : 'ff1',
    #'0110111' : 'fl1',
    #'0110100' : 'cnt',
    #'0110101' : 'clb',

    # sign-/zero-extensions
    #'0111110' : 'exts',
    #'0111111' : 'ext',

    # comparisons
    #'0000000' : 'lts',
    #'0000001' : 'ltu',
    #'0000100' : 'les',
    #'0000101' : 'leu',
    #'0001000' : 'gts',
    #'0001001' : 'gtu',
    #'0001010' : 'ges',
    #'0001011' : 'geu',
    #'0001100' : 'eq',
    #'0001101' : 'ne',

    # set lower than operations
    #'0000010' : 'slts',
    #'0000011' : 'sltu',
    #'0000110' : 'slets',
    #'0000111' : 'sletu',

    # absolute value
    #'0010100' : 'abs',
    #'0010110' : 'clip',
    #'0010111' : 'clipu',

    # insert/extract
    #'0101101' : 'ins',

    # min/max
    #'0010000' : 'min',
    #'0010001' : 'minu',
    #'0010010' : 'max',
    #'0010011' : 'maxu',

    # div/rem
    '0110000' : 'divu', # bit 0 is used for signed mode, bit 1 is used for remdiv
    '0110001' : 'div', # bit 0 is used for signed mode, bit 1 is used for remdiv
    '0110010' : 'remu', # bit 0 is used for signed mode, bit 1 is used for remdiv
    '0110011' : 'rem', # bit 0 is used for signed mode, bit 1 is used for remdiv

    #'0111010' : 'shuf',
    #'0111011' : 'shuf2',
    #'0111000' : 'pcklo',
    #'0111001' : 'pckhi',

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



	#'0011010' : 'addu',
	#'0011011' : 'subu',

	# add others..
}

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

		if pi['operator_i'] in instr2operands.keys():
			instr = instr2operands[pi['operator_i']]
			rs1 = hex(int(pi['operand_a_i'],2))
			rs2 = hex(int(pi['operand_b_i'],2))
			print('li t0, {}'.format(rs1))
			print('li t1, {}'.format(rs2))
			print('{} t2, t0, t1'.format(instr))
			print('sw t2, 4(sp)')
		else:
			#print(f"Not matched op: {pi['operator_i']} rs1 = {hex(int(pi['operand_a_i'],2))} rs2 = {hex(int(pi['operand_b_i'],2))}", file=sys.stderr)
			print("Not matched op:", pi['operator_i'], "rs1 = ", hex(int(pi['operand_a_i'],2)), "rs2 = ", hex(int(pi['operand_b_i'],2)), file=sys.stderr)

		

		



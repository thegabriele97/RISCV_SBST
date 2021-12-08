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
	('clpx_shift_i', 2),
	('clpx_img_i', 1),
	('ex_ready_i', 2),
	('short_subword_i_BAR', 1)]

# Opcodes are listed in rtl/include/riscv_defines.sv

instr2operands = {
    '010' : 'p.mul',
    '011' : 'p.mul'
    
}

instr2mulh = {
    '110' : 'mulh'
}

instr2mac = {
    '000' : 'p.mac',
    '001' : 'p.msu'
}

instr2dot = {
    '100' : 'pv.sdot', #08 bit
    '101' : 'pv.sdot', #16 bit
}


with open(stil_filename) as stil_file:
	cnt_subroutines = 0
	rem_subroutines = 0

	weights = {
		0x1: 590,
		0x2: 540
	}

	print("li t3, 0x0")
	print()
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
		print_ln = True

		if rem_subroutines <= 0:
			print("j check_routine")
			print("routine_{}: #### NEW SUB ROUTINE ####".format(cnt_subroutines))
			print("li t0, {}".format(hex(pow(2, cnt_subroutines))))
			print("not t0, t0")
			print("and a0, a0, t0")
			print()
			rem_subroutines = 650 if pow(2, cnt_subroutines) not in weights else weights[pow(2, cnt_subroutines)]
			cnt_subroutines += 1

		if pi['operator_i'] in instr2operands.keys():

			instr = instr2operands[pi['operator_i']]
			if pi['short_subword_i_BAR'] == '1':
				instr += "hh"

			if pi['short_signed_i'][0] == '1':
				instr += 's'
			else:
				instr += 'u'

			if pi['operator_i'][-1] == '1':
				instr += 'R'

			instr += 'N'


			rs1 = hex(int(pi['op_a_i'],2))
			rs2 = hex(int(pi['op_b_i'],2))
			rs3 = hex(int(pi['imm_i'],2) & 0x1f)
			print('li t0, {}'.format(rs1))
			print('li t1, {}'.format(rs2))
			print('{} t2, t0, t1, {}'.format(instr, rs3))
			print('xor t3, t3, t2')
			rem_subroutines -= 4
		elif pi['operator_i'] in instr2mulh.keys():

			instr = instr2mulh[pi['operator_i']]
			if pi['short_signed_i'] == "01":
				instr += "su"
			elif pi['short_signed_i'] == "00": 
				instr += "u"

			rs1 = hex(int(pi['op_a_i'],2))
			rs2 = hex(int(pi['op_b_i'],2))
			print('li t0, {}'.format(rs1))
			print('li t1, {}'.format(rs2))
			print('{} t2, t0, t1'.format(instr))
			print('xor t3, t3, t2')
			rem_subroutines -= 4

		elif pi['operator_i'] in instr2mac.keys():

			instr = instr2mac[pi['operator_i']]
			
			rs1 = hex(int(pi['op_a_i'],2))
			rs2 = hex(int(pi['op_b_i'],2))
			rs3 = hex(int(pi['op_c_i'],2))

			print('li t2, {}'.format(rs3))
			print('li t0, {}'.format(rs1))
			print('li t1, {}'.format(rs2))
			print('{} t2, t0, t1'.format(instr))
			print('xor t3, t3, t2')
			rem_subroutines -= 5

		elif pi['operator_i'] in instr2dot.keys():

			instr = instr2dot[pi['operator_i']]

			if pi['short_signed_i'] == "00":
				instr += 'u'
			elif pi['short_signed_i'] == "01" or pi['short_signed_i'] == "10":
				instr += 'us'
			elif pi['short_signed_i'] == "11":
				instr += 's'

			instr += 'p.sc'
			if pi['operator_i'][-1] == '1':
				instr += ".h"
			else:
				instr += ".b"
			
			rs1 = hex(int(pi['op_a_i'],2))
			rs2 = hex(int(pi['op_b_i'],2))
			rs3 = hex(int(pi['op_c_i'],2))

			print('li t2, {}'.format(rs3))
			print('li t0, {}'.format(rs1))
			print('li t1, {}'.format(rs2))
			print('{} t2, t0, t1'.format(instr))
			print('xor t3, t3, t2')
			rem_subroutines -= 5

		else:
			#print(f"Not matched op: {pi['operator_i']} rs1 = {hex(int(pi['operand_a_i'],2))} rs2 = {hex(int(pi['operand_b_i'],2))}", file=sys.stderr)
			print("Not matched op:", pi['operator_i'], "rs1 = ", hex(int(pi['op_a_i'],2)), "rs2 = ", hex(int(pi['op_b_i'],2)), file=sys.stderr)
			print_ln = False

		if print_ln:
			print()

	print("check_routine:")
	for i in range(0, cnt_subroutines):
		if pow(2, i) > 0x400:
			print("    li t0, {}".format(hex(pow(2, i))))
			mask = "t0"
		else:
			mask = hex(pow(2, i))

		print("    and t6, a0, {}".format(mask))
		print("	   bne t6, x0, routine_{} #n. {}".format(i, hex(pow(2, i))))
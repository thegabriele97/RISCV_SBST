#!/usr/bin/env python3

import re, sys, io

stil_filename = sys.argv[1]

signals_bits = [
    ('clk', 1),
    ('rst_n', 1),
    ('test_en_i', 1),
    ('raddr_a_i', 6),
    ('raddr_b_i', 6),
    ('raddr_c_i', 6),
    ('waddr_a_i', 6),
    ('wdata_a_i', 32),
    ('we_a_i', 1),
    ('waddr_b_i', 6),
    ('wdata_b_i', 32),
    ('we_b_i', 1),
    ('rdata_a_o', 32),
    ('rdata_b_o', 32),
    ('rdata_c_o', 32)]

# Opcodes are listed in rtl/include/riscv_defines.sv

dbs = ["0x00000000", "0x0000FFFF", "0x00FF00FF", "0x0F0F0F0F", "0x33333333", "0x55555555"]
ndbs = ["0xFFFFFFFF", "0xFFFF0000", "0xFF00FF00", "0xF0F0F0F0", "0xCCCCCCCC", "0xAAAAAAAA"]

regs = []
for i in range(0, 32):
    regs.append("x{}".format(i))



# raddr_a_i = regs[int(pi['raddr_a_i'][1:5],2)]
# raddr_b_i = regs[int(pi['raddr_b_i'][1:5],2)]
# raddr_c_i = regs[int(pi['raddr_c_i'][1:5],2)]
# waddr_a_i = regs[int(pi['waddr_a_i'][1:5],2)]
# wdata_a_i = hex(int(pi['wdata_a_i'],2))
# waddr_b_i = regs[int(pi['waddr_b_i'][1:5],2)]
# wdata_b_i = hex(int(pi['wdata_b_i'],2))


for db in dbs:
    for reg in regs:
        print('li {}, {}'.format(reg, db))

    for reg in regs:
        print('p.mac {}, {}, {}'.format(reg, reg, reg))
        print('not {}, {}'.format(reg, reg, reg))

        back_reg = regs[-1] if reg != regs[-1] else regs[1]
        back_db = db if reg != regs[-1] else ndbs[dbs.index(db)]

        print()
        print('la {}, _STORAGE_POINTER_'.format(back_reg))
        print('sw {}, 20*4({})'.format(reg, back_reg))
        print('lw {}, 20*4({})'.format(reg, back_reg))
        print('li {}, {}'.format(back_reg, back_db))
        print()

    for reg in regs:
        print('p.mac {}, {}, {}'.format(reg, reg, reg))

    print()
    print()


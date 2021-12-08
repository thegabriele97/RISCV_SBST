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

cnt_patterns = 0
cnt_subroutines = 0
rem_subroutines = 0

weights = {
    
}

print("la x31, _STORAGE_POINTER_")
print("sw x0, 21*4(t0)")

for db in dbs:
    print('la x31, _STORAGE_POINTER_')
    print('li x1, {}'.format(db))
    print()

    if rem_subroutines <= 0:

        print("j check_routine")

        print("routine_{}: #### NEW SUB ROUTINE ####".format(cnt_subroutines))
        print("li t1, {}".format(hex(pow(2, cnt_subroutines))))
        print("not t1, t1")
        print("and a0, a0, t1")
        print("la t0, _STORAGE_POINTER_")
        print("sw a0, 22*4(t0)")
        print()

        rem_subroutines = 650 if pow(2, cnt_subroutines) not in weights else weights[pow(2, cnt_subroutines)]
        cnt_subroutines += 1

    for reg in regs:

        print('li {}, {}'.format(reg, db))

        back_reg = regs[-1] if reg != regs[-1] else regs[1]
        
        if reg == regs[-1]:
            print()
            print('la {}, _STORAGE_POINTER_'.format(back_reg))
            rem_subroutines -= 1

        print('sw {}, 20*4({})'.format(reg, back_reg))
        print('lw {}, 20*4({})'.format(reg, back_reg))
        rem_subroutines -= 3
        print()

    print('li {}, {}'.format(back_reg, db))
    rem_subroutines -= 1
    print()

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

        rem_subroutines -= 6

    base = regs[30]
    for reg in regs:
        print('xor {}, {}, {}'.format(regs[30] if regs.index(reg) < 30 else regs[29], base, reg if reg != regs[0] and reg != regs[-2] else regs[2]))
        base = regs[30] if regs.index(reg) < 30 else regs[29]
        print('p.mac {}, {}, {}'.format(reg, reg, reg))
        rem_subroutines -= 2


    print('la t0, _STORAGE_POINTER_')
    print("lw x31, 21*4(t0)")
    print("xor x30, {}, x31".format(base))
    print("sw x30, 21*4(t0)")
    rem_subroutines -= 4
    print()
    print()


# print("j _done")
print("check_routine:")
print("    la t0, _STORAGE_POINTER_")
print("    lw a0, 22*4(t0)")
for i in range(0, cnt_subroutines):
    if pow(2, i) > 0x400:
        print("    li t0, {}".format(hex(pow(2, i))))
        mask = "t0"
    else:
        mask = hex(pow(2, i))

    print("    and a1, a0, {}".format(mask))
    print("	   bne a1, x0, routine_{} #n. {}".format(i, hex(pow(2, i))))


print()
print("_done:")
print()
.section .text.alu_test
.global _alu_test
.type _alu_test, @function

_alu_test:

    li t0, 0x2aaecf6d
    li t1, 0x54169003
    rem t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x3258f17a
    li t1, 0xf2864003
    remu t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x800000
    li t1, 0x1ff7f
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x96da4cb1
    li t1, 0x91bd8cee
    rem t2, t0, t1
    sw t2, 4(sp)
    li t0, 0xa76d7e53
    li t1, 0x2e0d7c53
    add t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x3d7971ba
    li t1, 0x581ef7b1
    remu t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x8001
    li t1, 0xffff7ffd
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0xfe7e3f0d
    li t1, 0xfc7e5e8d
    and t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x1000001
    li t1, 0xdc94e995
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x21
    li t1, 0x1c8b5b9e
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x20000
    li t1, 0x280147f0
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x8a5452f7
    li t1, 0x3ec254f6
    and t2, t0, t1
    sw t2, 4(sp)
    li t0, 0xfe770030
    li t1, 0x21a0bfa
    remu t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x800
    li t1, 0x5a7
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x6eac6dc1
    li t1, 0x6eac6d3b
    xor t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x80000000
    li t1, 0x33c17b7d
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x4000001
    li t1, 0x79e1bdbe
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x11
    li t1, 0xb645fb4d
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x40001
    li t1, 0x5e95487
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x80000
    li t1, 0x72c773dc
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x81
    li t1, 0x302da73a
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x10000000
    li t1, 0x1124f84
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x2000000
    li t1, 0x10892742
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0xe33b63f
    li t1, 0x7ad7b63f
    add t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x1
    li t1, 0x9944c9d2
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x2
    li t1, 0x62b7345
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x10001
    li t1, 0x9e6cdb36
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x5
    li t1, 0x1b3dc4e7
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x40
    li t1, 0xe675072c
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x2000
    li t1, 0x8e0a95ea
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x400001
    li t1, 0x9c8a8d35
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0xe74d7392
    li t1, 0xce65478e
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x9
    li t1, 0x411325d1
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x20000001
    li t1, 0x903f43a6
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x401
    li t1, 0xc81e01d3
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x40000000
    li t1, 0x1fcf3b55
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x1000
    li t1, 0xefe60daa
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x101
    li t1, 0x14ecf009
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x4001
    li t1, 0x2c6bb39b
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x100001
    li t1, 0xd8c3f477
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x200001
    li t1, 0x2297d781
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x8000001
    li t1, 0x914bebc0
    or t2, t0, t1
    sw t2, 4(sp)
    li t0, 0x200
    li t1, 0x8653d85a
    or t2, t0, t1
    sw t2, 4(sp)

    ret

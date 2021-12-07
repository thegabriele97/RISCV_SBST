    .section .text.rf_test
.global _rf_test
.type _rf_test, @function

_rf_test:

    li x30, 0x12345678 # triggers sim log for checkpoint
    li t3, 0x0
    li x30, 0x0

    // Storing regs status
    la      t0, _STORAGE_POINTER_
    sw      ra, 0*4(t0)
    sw      sp, 1*4(t0)
    sw      gp, 2*4(t0)
    sw      tp, 3*4(t0)
    sw      s0, 4*4(t0)
    sw      s1, 5*4(t0)
    sw      a0, 6*4(t0)
    sw      a1, 7*4(t0)
    sw      a2, 8*4(t0)
    sw      a3, 9*4(t0)
    sw      a4, 10*4(t0)
    sw      a5, 11*4(t0)
    sw      a6, 12*4(t0)
    sw      a7, 13*4(t0)
    sw      s2, 14*4(t0)
    sw      s3, 15*4(t0)
    sw      s4, 16*4(t0)
    sw      s5, 17*4(t0)
    sw      s6, 18*4(t0)
    sw      s7, 19*4(t0)
    sw      a0, 22*4(t0)

    la t0, _STORAGE_POINTER_
    li x1, 0x00000000
    sw x1, 20*4(t0)

    ##- START -##
    la x31, _STORAGE_POINTER_
    sw x0, 21*4(t0)
    la x31, _STORAGE_POINTER_
    li x1, 0x00000000
    
    j check_routine
    routine_0: #### NEW SUB ROUTINE ####
    li t1, 0x1
    not t1, t1
    and a0, a0, t1
    la t0, _STORAGE_POINTER_
    sw a0, 22*4(t0)
    
    li x0, 0x00000000
    sw x0, 20*4(x31)
    lw x0, 20*4(x31)
    
    li x1, 0x00000000
    sw x1, 20*4(x31)
    lw x1, 20*4(x31)
    
    li x2, 0x00000000
    sw x2, 20*4(x31)
    lw x2, 20*4(x31)
    
    li x3, 0x00000000
    sw x3, 20*4(x31)
    lw x3, 20*4(x31)
    
    li x4, 0x00000000
    sw x4, 20*4(x31)
    lw x4, 20*4(x31)
    
    li x5, 0x00000000
    sw x5, 20*4(x31)
    lw x5, 20*4(x31)
    
    li x6, 0x00000000
    sw x6, 20*4(x31)
    lw x6, 20*4(x31)
    
    li x7, 0x00000000
    sw x7, 20*4(x31)
    lw x7, 20*4(x31)
    
    li x8, 0x00000000
    sw x8, 20*4(x31)
    lw x8, 20*4(x31)
    
    li x9, 0x00000000
    sw x9, 20*4(x31)
    lw x9, 20*4(x31)
    
    li x10, 0x00000000
    sw x10, 20*4(x31)
    lw x10, 20*4(x31)
    
    li x11, 0x00000000
    sw x11, 20*4(x31)
    lw x11, 20*4(x31)
    
    li x12, 0x00000000
    sw x12, 20*4(x31)
    lw x12, 20*4(x31)
    
    li x13, 0x00000000
    sw x13, 20*4(x31)
    lw x13, 20*4(x31)
    
    li x14, 0x00000000
    sw x14, 20*4(x31)
    lw x14, 20*4(x31)
    
    li x15, 0x00000000
    sw x15, 20*4(x31)
    lw x15, 20*4(x31)
    
    li x16, 0x00000000
    sw x16, 20*4(x31)
    lw x16, 20*4(x31)
    
    li x17, 0x00000000
    sw x17, 20*4(x31)
    lw x17, 20*4(x31)
    
    li x18, 0x00000000
    sw x18, 20*4(x31)
    lw x18, 20*4(x31)
    
    li x19, 0x00000000
    sw x19, 20*4(x31)
    lw x19, 20*4(x31)
    
    li x20, 0x00000000
    sw x20, 20*4(x31)
    lw x20, 20*4(x31)
    
    li x21, 0x00000000
    sw x21, 20*4(x31)
    lw x21, 20*4(x31)
    
    li x22, 0x00000000
    sw x22, 20*4(x31)
    lw x22, 20*4(x31)
    
    li x23, 0x00000000
    sw x23, 20*4(x31)
    lw x23, 20*4(x31)
    
    li x24, 0x00000000
    sw x24, 20*4(x31)
    lw x24, 20*4(x31)
    
    li x25, 0x00000000
    sw x25, 20*4(x31)
    lw x25, 20*4(x31)
    
    li x26, 0x00000000
    sw x26, 20*4(x31)
    lw x26, 20*4(x31)
    
    li x27, 0x00000000
    sw x27, 20*4(x31)
    lw x27, 20*4(x31)
    
    li x28, 0x00000000
    sw x28, 20*4(x31)
    lw x28, 20*4(x31)
    
    li x29, 0x00000000
    sw x29, 20*4(x31)
    lw x29, 20*4(x31)
    
    li x30, 0x00000000
    sw x30, 20*4(x31)
    lw x30, 20*4(x31)
    
    li x31, 0x00000000
    
    la x1, _STORAGE_POINTER_
    sw x31, 20*4(x1)
    lw x31, 20*4(x1)
    
    li x1, 0x00000000
    
    p.mac x0, x0, x0
    not x0, x0
    
    la x31, _STORAGE_POINTER_
    sw x0, 20*4(x31)
    lw x0, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x1, x1, x1
    not x1, x1
    
    la x31, _STORAGE_POINTER_
    sw x1, 20*4(x31)
    lw x1, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x2, x2, x2
    not x2, x2
    
    la x31, _STORAGE_POINTER_
    sw x2, 20*4(x31)
    lw x2, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x3, x3, x3
    not x3, x3
    
    la x31, _STORAGE_POINTER_
    sw x3, 20*4(x31)
    lw x3, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x4, x4, x4
    not x4, x4
    
    la x31, _STORAGE_POINTER_
    sw x4, 20*4(x31)
    lw x4, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x5, x5, x5
    not x5, x5
    
    la x31, _STORAGE_POINTER_
    sw x5, 20*4(x31)
    lw x5, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x6, x6, x6
    not x6, x6
    
    la x31, _STORAGE_POINTER_
    sw x6, 20*4(x31)
    lw x6, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x7, x7, x7
    not x7, x7
    
    la x31, _STORAGE_POINTER_
    sw x7, 20*4(x31)
    lw x7, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x8, x8, x8
    not x8, x8
    
    la x31, _STORAGE_POINTER_
    sw x8, 20*4(x31)
    lw x8, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x9, x9, x9
    not x9, x9
    
    la x31, _STORAGE_POINTER_
    sw x9, 20*4(x31)
    lw x9, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x10, x10, x10
    not x10, x10
    
    la x31, _STORAGE_POINTER_
    sw x10, 20*4(x31)
    lw x10, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x11, x11, x11
    not x11, x11
    
    la x31, _STORAGE_POINTER_
    sw x11, 20*4(x31)
    lw x11, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x12, x12, x12
    not x12, x12
    
    la x31, _STORAGE_POINTER_
    sw x12, 20*4(x31)
    lw x12, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x13, x13, x13
    not x13, x13
    
    la x31, _STORAGE_POINTER_
    sw x13, 20*4(x31)
    lw x13, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x14, x14, x14
    not x14, x14
    
    la x31, _STORAGE_POINTER_
    sw x14, 20*4(x31)
    lw x14, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x15, x15, x15
    not x15, x15
    
    la x31, _STORAGE_POINTER_
    sw x15, 20*4(x31)
    lw x15, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x16, x16, x16
    not x16, x16
    
    la x31, _STORAGE_POINTER_
    sw x16, 20*4(x31)
    lw x16, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x17, x17, x17
    not x17, x17
    
    la x31, _STORAGE_POINTER_
    sw x17, 20*4(x31)
    lw x17, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x18, x18, x18
    not x18, x18
    
    la x31, _STORAGE_POINTER_
    sw x18, 20*4(x31)
    lw x18, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x19, x19, x19
    not x19, x19
    
    la x31, _STORAGE_POINTER_
    sw x19, 20*4(x31)
    lw x19, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x20, x20, x20
    not x20, x20
    
    la x31, _STORAGE_POINTER_
    sw x20, 20*4(x31)
    lw x20, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x21, x21, x21
    not x21, x21
    
    la x31, _STORAGE_POINTER_
    sw x21, 20*4(x31)
    lw x21, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x22, x22, x22
    not x22, x22
    
    la x31, _STORAGE_POINTER_
    sw x22, 20*4(x31)
    lw x22, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x23, x23, x23
    not x23, x23
    
    la x31, _STORAGE_POINTER_
    sw x23, 20*4(x31)
    lw x23, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x24, x24, x24
    not x24, x24
    
    la x31, _STORAGE_POINTER_
    sw x24, 20*4(x31)
    lw x24, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x25, x25, x25
    not x25, x25
    
    la x31, _STORAGE_POINTER_
    sw x25, 20*4(x31)
    lw x25, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x26, x26, x26
    not x26, x26
    
    la x31, _STORAGE_POINTER_
    sw x26, 20*4(x31)
    lw x26, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x27, x27, x27
    not x27, x27
    
    la x31, _STORAGE_POINTER_
    sw x27, 20*4(x31)
    lw x27, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x28, x28, x28
    not x28, x28
    
    la x31, _STORAGE_POINTER_
    sw x28, 20*4(x31)
    lw x28, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x29, x29, x29
    not x29, x29
    
    la x31, _STORAGE_POINTER_
    sw x29, 20*4(x31)
    lw x29, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x30, x30, x30
    not x30, x30
    
    la x31, _STORAGE_POINTER_
    sw x30, 20*4(x31)
    lw x30, 20*4(x31)
    li x31, 0x00000000
    
    p.mac x31, x31, x31
    not x31, x31
    
    la x1, _STORAGE_POINTER_
    sw x31, 20*4(x1)
    lw x31, 20*4(x1)
    li x1, 0xFFFFFFFF
    
    xor x30, x30, x2
    p.mac x0, x0, x0
    xor x30, x30, x1
    p.mac x1, x1, x1
    xor x30, x30, x2
    p.mac x2, x2, x2
    xor x30, x30, x3
    p.mac x3, x3, x3
    xor x30, x30, x4
    p.mac x4, x4, x4
    xor x30, x30, x5
    p.mac x5, x5, x5
    xor x30, x30, x6
    p.mac x6, x6, x6
    xor x30, x30, x7
    p.mac x7, x7, x7
    xor x30, x30, x8
    p.mac x8, x8, x8
    xor x30, x30, x9
    p.mac x9, x9, x9
    xor x30, x30, x10
    p.mac x10, x10, x10
    xor x30, x30, x11
    p.mac x11, x11, x11
    xor x30, x30, x12
    p.mac x12, x12, x12
    xor x30, x30, x13
    p.mac x13, x13, x13
    xor x30, x30, x14
    p.mac x14, x14, x14
    xor x30, x30, x15
    p.mac x15, x15, x15
    xor x30, x30, x16
    p.mac x16, x16, x16
    xor x30, x30, x17
    p.mac x17, x17, x17
    xor x30, x30, x18
    p.mac x18, x18, x18
    xor x30, x30, x19
    p.mac x19, x19, x19
    xor x30, x30, x20
    p.mac x20, x20, x20
    xor x30, x30, x21
    p.mac x21, x21, x21
    xor x30, x30, x22
    p.mac x22, x22, x22
    xor x30, x30, x23
    p.mac x23, x23, x23
    xor x30, x30, x24
    p.mac x24, x24, x24
    xor x30, x30, x25
    p.mac x25, x25, x25
    xor x30, x30, x26
    p.mac x26, x26, x26
    xor x30, x30, x27
    p.mac x27, x27, x27
    xor x30, x30, x28
    p.mac x28, x28, x28
    xor x30, x30, x29
    p.mac x29, x29, x29
    xor x29, x30, x2
    p.mac x30, x30, x30
    xor x29, x29, x31
    p.mac x31, x31, x31
    la t0, _STORAGE_POINTER_
    lw x31, 21*4(t0)
    xor x30, x29, x31
    sw x30, 21*4(t0)
    
    
    la x31, _STORAGE_POINTER_
    li x1, 0x0000FFFF
    
    li x0, 0x0000FFFF
    sw x0, 20*4(x31)
    lw x0, 20*4(x31)
    
    li x1, 0x0000FFFF
    sw x1, 20*4(x31)
    lw x1, 20*4(x31)
    
    li x2, 0x0000FFFF
    sw x2, 20*4(x31)
    lw x2, 20*4(x31)
    
    li x3, 0x0000FFFF
    sw x3, 20*4(x31)
    lw x3, 20*4(x31)
    
    li x4, 0x0000FFFF
    sw x4, 20*4(x31)
    lw x4, 20*4(x31)
    
    li x5, 0x0000FFFF
    sw x5, 20*4(x31)
    lw x5, 20*4(x31)
    
    li x6, 0x0000FFFF
    sw x6, 20*4(x31)
    lw x6, 20*4(x31)
    
    li x7, 0x0000FFFF
    sw x7, 20*4(x31)
    lw x7, 20*4(x31)
    
    li x8, 0x0000FFFF
    sw x8, 20*4(x31)
    lw x8, 20*4(x31)
    
    li x9, 0x0000FFFF
    sw x9, 20*4(x31)
    lw x9, 20*4(x31)
    
    li x10, 0x0000FFFF
    sw x10, 20*4(x31)
    lw x10, 20*4(x31)
    
    li x11, 0x0000FFFF
    sw x11, 20*4(x31)
    lw x11, 20*4(x31)
    
    li x12, 0x0000FFFF
    sw x12, 20*4(x31)
    lw x12, 20*4(x31)
    
    li x13, 0x0000FFFF
    sw x13, 20*4(x31)
    lw x13, 20*4(x31)
    
    li x14, 0x0000FFFF
    sw x14, 20*4(x31)
    lw x14, 20*4(x31)
    
    li x15, 0x0000FFFF
    sw x15, 20*4(x31)
    lw x15, 20*4(x31)
    
    li x16, 0x0000FFFF
    sw x16, 20*4(x31)
    lw x16, 20*4(x31)
    
    li x17, 0x0000FFFF
    sw x17, 20*4(x31)
    lw x17, 20*4(x31)
    
    li x18, 0x0000FFFF
    sw x18, 20*4(x31)
    lw x18, 20*4(x31)
    
    li x19, 0x0000FFFF
    sw x19, 20*4(x31)
    lw x19, 20*4(x31)
    
    li x20, 0x0000FFFF
    sw x20, 20*4(x31)
    lw x20, 20*4(x31)
    
    li x21, 0x0000FFFF
    sw x21, 20*4(x31)
    lw x21, 20*4(x31)
    
    li x22, 0x0000FFFF
    sw x22, 20*4(x31)
    lw x22, 20*4(x31)
    
    li x23, 0x0000FFFF
    sw x23, 20*4(x31)
    lw x23, 20*4(x31)
    
    li x24, 0x0000FFFF
    sw x24, 20*4(x31)
    lw x24, 20*4(x31)
    
    li x25, 0x0000FFFF
    sw x25, 20*4(x31)
    lw x25, 20*4(x31)
    
    li x26, 0x0000FFFF
    sw x26, 20*4(x31)
    lw x26, 20*4(x31)
    
    li x27, 0x0000FFFF
    sw x27, 20*4(x31)
    lw x27, 20*4(x31)
    
    li x28, 0x0000FFFF
    sw x28, 20*4(x31)
    lw x28, 20*4(x31)
    
    li x29, 0x0000FFFF
    sw x29, 20*4(x31)
    lw x29, 20*4(x31)
    
    li x30, 0x0000FFFF
    sw x30, 20*4(x31)
    lw x30, 20*4(x31)
    
    li x31, 0x0000FFFF
    
    la x1, _STORAGE_POINTER_
    sw x31, 20*4(x1)
    lw x31, 20*4(x1)
    
    li x1, 0x0000FFFF
    
    p.mac x0, x0, x0
    not x0, x0
    
    la x31, _STORAGE_POINTER_
    sw x0, 20*4(x31)
    lw x0, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x1, x1, x1
    not x1, x1
    
    la x31, _STORAGE_POINTER_
    sw x1, 20*4(x31)
    lw x1, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x2, x2, x2
    not x2, x2
    
    la x31, _STORAGE_POINTER_
    sw x2, 20*4(x31)
    lw x2, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x3, x3, x3
    not x3, x3
    
    la x31, _STORAGE_POINTER_
    sw x3, 20*4(x31)
    lw x3, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x4, x4, x4
    not x4, x4
    
    la x31, _STORAGE_POINTER_
    sw x4, 20*4(x31)
    lw x4, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x5, x5, x5
    not x5, x5
    
    la x31, _STORAGE_POINTER_
    sw x5, 20*4(x31)
    lw x5, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x6, x6, x6
    not x6, x6
    
    la x31, _STORAGE_POINTER_
    sw x6, 20*4(x31)
    lw x6, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x7, x7, x7
    not x7, x7
    
    la x31, _STORAGE_POINTER_
    sw x7, 20*4(x31)
    lw x7, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x8, x8, x8
    not x8, x8
    
    la x31, _STORAGE_POINTER_
    sw x8, 20*4(x31)
    lw x8, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x9, x9, x9
    not x9, x9
    
    la x31, _STORAGE_POINTER_
    sw x9, 20*4(x31)
    lw x9, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x10, x10, x10
    not x10, x10
    
    la x31, _STORAGE_POINTER_
    sw x10, 20*4(x31)
    lw x10, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x11, x11, x11
    not x11, x11
    
    la x31, _STORAGE_POINTER_
    sw x11, 20*4(x31)
    lw x11, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x12, x12, x12
    not x12, x12
    
    la x31, _STORAGE_POINTER_
    sw x12, 20*4(x31)
    lw x12, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x13, x13, x13
    not x13, x13
    
    la x31, _STORAGE_POINTER_
    sw x13, 20*4(x31)
    lw x13, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x14, x14, x14
    not x14, x14
    
    la x31, _STORAGE_POINTER_
    sw x14, 20*4(x31)
    lw x14, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x15, x15, x15
    not x15, x15
    
    la x31, _STORAGE_POINTER_
    sw x15, 20*4(x31)
    lw x15, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x16, x16, x16
    not x16, x16
    
    la x31, _STORAGE_POINTER_
    sw x16, 20*4(x31)
    lw x16, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x17, x17, x17
    not x17, x17
    
    la x31, _STORAGE_POINTER_
    sw x17, 20*4(x31)
    lw x17, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x18, x18, x18
    not x18, x18
    
    la x31, _STORAGE_POINTER_
    sw x18, 20*4(x31)
    lw x18, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x19, x19, x19
    not x19, x19
    
    la x31, _STORAGE_POINTER_
    sw x19, 20*4(x31)
    lw x19, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x20, x20, x20
    not x20, x20
    
    la x31, _STORAGE_POINTER_
    sw x20, 20*4(x31)
    lw x20, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x21, x21, x21
    not x21, x21
    
    la x31, _STORAGE_POINTER_
    sw x21, 20*4(x31)
    lw x21, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x22, x22, x22
    not x22, x22
    
    la x31, _STORAGE_POINTER_
    sw x22, 20*4(x31)
    lw x22, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x23, x23, x23
    not x23, x23
    
    la x31, _STORAGE_POINTER_
    sw x23, 20*4(x31)
    lw x23, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x24, x24, x24
    not x24, x24
    
    la x31, _STORAGE_POINTER_
    sw x24, 20*4(x31)
    lw x24, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x25, x25, x25
    not x25, x25
    
    la x31, _STORAGE_POINTER_
    sw x25, 20*4(x31)
    lw x25, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x26, x26, x26
    not x26, x26
    
    la x31, _STORAGE_POINTER_
    sw x26, 20*4(x31)
    lw x26, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x27, x27, x27
    not x27, x27
    
    la x31, _STORAGE_POINTER_
    sw x27, 20*4(x31)
    lw x27, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x28, x28, x28
    not x28, x28
    
    la x31, _STORAGE_POINTER_
    sw x28, 20*4(x31)
    lw x28, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x29, x29, x29
    not x29, x29
    
    la x31, _STORAGE_POINTER_
    sw x29, 20*4(x31)
    lw x29, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x30, x30, x30
    not x30, x30
    
    la x31, _STORAGE_POINTER_
    sw x30, 20*4(x31)
    lw x30, 20*4(x31)
    li x31, 0x0000FFFF
    
    p.mac x31, x31, x31
    not x31, x31
    
    la x1, _STORAGE_POINTER_
    sw x31, 20*4(x1)
    lw x31, 20*4(x1)
    li x1, 0xFFFF0000
    
    xor x30, x30, x2
    p.mac x0, x0, x0
    xor x30, x30, x1
    p.mac x1, x1, x1
    xor x30, x30, x2
    p.mac x2, x2, x2
    xor x30, x30, x3
    p.mac x3, x3, x3
    xor x30, x30, x4
    p.mac x4, x4, x4
    xor x30, x30, x5
    p.mac x5, x5, x5
    xor x30, x30, x6
    p.mac x6, x6, x6
    xor x30, x30, x7
    p.mac x7, x7, x7
    xor x30, x30, x8
    p.mac x8, x8, x8
    xor x30, x30, x9
    p.mac x9, x9, x9
    xor x30, x30, x10
    p.mac x10, x10, x10
    xor x30, x30, x11
    p.mac x11, x11, x11
    xor x30, x30, x12
    p.mac x12, x12, x12
    xor x30, x30, x13
    p.mac x13, x13, x13
    xor x30, x30, x14
    p.mac x14, x14, x14
    xor x30, x30, x15
    p.mac x15, x15, x15
    xor x30, x30, x16
    p.mac x16, x16, x16
    xor x30, x30, x17
    p.mac x17, x17, x17
    xor x30, x30, x18
    p.mac x18, x18, x18
    xor x30, x30, x19
    p.mac x19, x19, x19
    xor x30, x30, x20
    p.mac x20, x20, x20
    xor x30, x30, x21
    p.mac x21, x21, x21
    xor x30, x30, x22
    p.mac x22, x22, x22
    xor x30, x30, x23
    p.mac x23, x23, x23
    xor x30, x30, x24
    p.mac x24, x24, x24
    xor x30, x30, x25
    p.mac x25, x25, x25
    xor x30, x30, x26
    p.mac x26, x26, x26
    xor x30, x30, x27
    p.mac x27, x27, x27
    xor x30, x30, x28
    p.mac x28, x28, x28
    xor x30, x30, x29
    p.mac x29, x29, x29
    xor x29, x30, x2
    p.mac x30, x30, x30
    xor x29, x29, x31
    p.mac x31, x31, x31
    la t0, _STORAGE_POINTER_
    lw x31, 21*4(t0)
    xor x30, x29, x31
    sw x30, 21*4(t0)
    
    
    la x31, _STORAGE_POINTER_
    li x1, 0x00FF00FF
    
    j check_routine
    routine_1: #### NEW SUB ROUTINE ####
    li t1, 0x2
    not t1, t1
    and a0, a0, t1
    la t0, _STORAGE_POINTER_
    sw a0, 22*4(t0)
    
    li x0, 0x00FF00FF
    sw x0, 20*4(x31)
    lw x0, 20*4(x31)
    
    li x1, 0x00FF00FF
    sw x1, 20*4(x31)
    lw x1, 20*4(x31)
    
    li x2, 0x00FF00FF
    sw x2, 20*4(x31)
    lw x2, 20*4(x31)
    
    li x3, 0x00FF00FF
    sw x3, 20*4(x31)
    lw x3, 20*4(x31)
    
    li x4, 0x00FF00FF
    sw x4, 20*4(x31)
    lw x4, 20*4(x31)
    
    li x5, 0x00FF00FF
    sw x5, 20*4(x31)
    lw x5, 20*4(x31)
    
    li x6, 0x00FF00FF
    sw x6, 20*4(x31)
    lw x6, 20*4(x31)
    
    li x7, 0x00FF00FF
    sw x7, 20*4(x31)
    lw x7, 20*4(x31)
    
    li x8, 0x00FF00FF
    sw x8, 20*4(x31)
    lw x8, 20*4(x31)
    
    li x9, 0x00FF00FF
    sw x9, 20*4(x31)
    lw x9, 20*4(x31)
    
    li x10, 0x00FF00FF
    sw x10, 20*4(x31)
    lw x10, 20*4(x31)
    
    li x11, 0x00FF00FF
    sw x11, 20*4(x31)
    lw x11, 20*4(x31)
    
    li x12, 0x00FF00FF
    sw x12, 20*4(x31)
    lw x12, 20*4(x31)
    
    li x13, 0x00FF00FF
    sw x13, 20*4(x31)
    lw x13, 20*4(x31)
    
    li x14, 0x00FF00FF
    sw x14, 20*4(x31)
    lw x14, 20*4(x31)
    
    li x15, 0x00FF00FF
    sw x15, 20*4(x31)
    lw x15, 20*4(x31)
    
    li x16, 0x00FF00FF
    sw x16, 20*4(x31)
    lw x16, 20*4(x31)
    
    li x17, 0x00FF00FF
    sw x17, 20*4(x31)
    lw x17, 20*4(x31)
    
    li x18, 0x00FF00FF
    sw x18, 20*4(x31)
    lw x18, 20*4(x31)
    
    li x19, 0x00FF00FF
    sw x19, 20*4(x31)
    lw x19, 20*4(x31)
    
    li x20, 0x00FF00FF
    sw x20, 20*4(x31)
    lw x20, 20*4(x31)
    
    li x21, 0x00FF00FF
    sw x21, 20*4(x31)
    lw x21, 20*4(x31)
    
    li x22, 0x00FF00FF
    sw x22, 20*4(x31)
    lw x22, 20*4(x31)
    
    li x23, 0x00FF00FF
    sw x23, 20*4(x31)
    lw x23, 20*4(x31)
    
    li x24, 0x00FF00FF
    sw x24, 20*4(x31)
    lw x24, 20*4(x31)
    
    li x25, 0x00FF00FF
    sw x25, 20*4(x31)
    lw x25, 20*4(x31)
    
    li x26, 0x00FF00FF
    sw x26, 20*4(x31)
    lw x26, 20*4(x31)
    
    li x27, 0x00FF00FF
    sw x27, 20*4(x31)
    lw x27, 20*4(x31)
    
    li x28, 0x00FF00FF
    sw x28, 20*4(x31)
    lw x28, 20*4(x31)
    
    li x29, 0x00FF00FF
    sw x29, 20*4(x31)
    lw x29, 20*4(x31)
    
    li x30, 0x00FF00FF
    sw x30, 20*4(x31)
    lw x30, 20*4(x31)
    
    li x31, 0x00FF00FF
    
    la x1, _STORAGE_POINTER_
    sw x31, 20*4(x1)
    lw x31, 20*4(x1)
    
    li x1, 0x00FF00FF
    
    p.mac x0, x0, x0
    not x0, x0
    
    la x31, _STORAGE_POINTER_
    sw x0, 20*4(x31)
    lw x0, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x1, x1, x1
    not x1, x1
    
    la x31, _STORAGE_POINTER_
    sw x1, 20*4(x31)
    lw x1, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x2, x2, x2
    not x2, x2
    
    la x31, _STORAGE_POINTER_
    sw x2, 20*4(x31)
    lw x2, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x3, x3, x3
    not x3, x3
    
    la x31, _STORAGE_POINTER_
    sw x3, 20*4(x31)
    lw x3, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x4, x4, x4
    not x4, x4
    
    la x31, _STORAGE_POINTER_
    sw x4, 20*4(x31)
    lw x4, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x5, x5, x5
    not x5, x5
    
    la x31, _STORAGE_POINTER_
    sw x5, 20*4(x31)
    lw x5, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x6, x6, x6
    not x6, x6
    
    la x31, _STORAGE_POINTER_
    sw x6, 20*4(x31)
    lw x6, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x7, x7, x7
    not x7, x7
    
    la x31, _STORAGE_POINTER_
    sw x7, 20*4(x31)
    lw x7, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x8, x8, x8
    not x8, x8
    
    la x31, _STORAGE_POINTER_
    sw x8, 20*4(x31)
    lw x8, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x9, x9, x9
    not x9, x9
    
    la x31, _STORAGE_POINTER_
    sw x9, 20*4(x31)
    lw x9, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x10, x10, x10
    not x10, x10
    
    la x31, _STORAGE_POINTER_
    sw x10, 20*4(x31)
    lw x10, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x11, x11, x11
    not x11, x11
    
    la x31, _STORAGE_POINTER_
    sw x11, 20*4(x31)
    lw x11, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x12, x12, x12
    not x12, x12
    
    la x31, _STORAGE_POINTER_
    sw x12, 20*4(x31)
    lw x12, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x13, x13, x13
    not x13, x13
    
    la x31, _STORAGE_POINTER_
    sw x13, 20*4(x31)
    lw x13, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x14, x14, x14
    not x14, x14
    
    la x31, _STORAGE_POINTER_
    sw x14, 20*4(x31)
    lw x14, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x15, x15, x15
    not x15, x15
    
    la x31, _STORAGE_POINTER_
    sw x15, 20*4(x31)
    lw x15, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x16, x16, x16
    not x16, x16
    
    la x31, _STORAGE_POINTER_
    sw x16, 20*4(x31)
    lw x16, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x17, x17, x17
    not x17, x17
    
    la x31, _STORAGE_POINTER_
    sw x17, 20*4(x31)
    lw x17, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x18, x18, x18
    not x18, x18
    
    la x31, _STORAGE_POINTER_
    sw x18, 20*4(x31)
    lw x18, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x19, x19, x19
    not x19, x19
    
    la x31, _STORAGE_POINTER_
    sw x19, 20*4(x31)
    lw x19, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x20, x20, x20
    not x20, x20
    
    la x31, _STORAGE_POINTER_
    sw x20, 20*4(x31)
    lw x20, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x21, x21, x21
    not x21, x21
    
    la x31, _STORAGE_POINTER_
    sw x21, 20*4(x31)
    lw x21, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x22, x22, x22
    not x22, x22
    
    la x31, _STORAGE_POINTER_
    sw x22, 20*4(x31)
    lw x22, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x23, x23, x23
    not x23, x23
    
    la x31, _STORAGE_POINTER_
    sw x23, 20*4(x31)
    lw x23, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x24, x24, x24
    not x24, x24
    
    la x31, _STORAGE_POINTER_
    sw x24, 20*4(x31)
    lw x24, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x25, x25, x25
    not x25, x25
    
    la x31, _STORAGE_POINTER_
    sw x25, 20*4(x31)
    lw x25, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x26, x26, x26
    not x26, x26
    
    la x31, _STORAGE_POINTER_
    sw x26, 20*4(x31)
    lw x26, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x27, x27, x27
    not x27, x27
    
    la x31, _STORAGE_POINTER_
    sw x27, 20*4(x31)
    lw x27, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x28, x28, x28
    not x28, x28
    
    la x31, _STORAGE_POINTER_
    sw x28, 20*4(x31)
    lw x28, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x29, x29, x29
    not x29, x29
    
    la x31, _STORAGE_POINTER_
    sw x29, 20*4(x31)
    lw x29, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x30, x30, x30
    not x30, x30
    
    la x31, _STORAGE_POINTER_
    sw x30, 20*4(x31)
    lw x30, 20*4(x31)
    li x31, 0x00FF00FF
    
    p.mac x31, x31, x31
    not x31, x31
    
    la x1, _STORAGE_POINTER_
    sw x31, 20*4(x1)
    lw x31, 20*4(x1)
    li x1, 0xFF00FF00
    
    xor x30, x30, x2
    p.mac x0, x0, x0
    xor x30, x30, x1
    p.mac x1, x1, x1
    xor x30, x30, x2
    p.mac x2, x2, x2
    xor x30, x30, x3
    p.mac x3, x3, x3
    xor x30, x30, x4
    p.mac x4, x4, x4
    xor x30, x30, x5
    p.mac x5, x5, x5
    xor x30, x30, x6
    p.mac x6, x6, x6
    xor x30, x30, x7
    p.mac x7, x7, x7
    xor x30, x30, x8
    p.mac x8, x8, x8
    xor x30, x30, x9
    p.mac x9, x9, x9
    xor x30, x30, x10
    p.mac x10, x10, x10
    xor x30, x30, x11
    p.mac x11, x11, x11
    xor x30, x30, x12
    p.mac x12, x12, x12
    xor x30, x30, x13
    p.mac x13, x13, x13
    xor x30, x30, x14
    p.mac x14, x14, x14
    xor x30, x30, x15
    p.mac x15, x15, x15
    xor x30, x30, x16
    p.mac x16, x16, x16
    xor x30, x30, x17
    p.mac x17, x17, x17
    xor x30, x30, x18
    p.mac x18, x18, x18
    xor x30, x30, x19
    p.mac x19, x19, x19
    xor x30, x30, x20
    p.mac x20, x20, x20
    xor x30, x30, x21
    p.mac x21, x21, x21
    xor x30, x30, x22
    p.mac x22, x22, x22
    xor x30, x30, x23
    p.mac x23, x23, x23
    xor x30, x30, x24
    p.mac x24, x24, x24
    xor x30, x30, x25
    p.mac x25, x25, x25
    xor x30, x30, x26
    p.mac x26, x26, x26
    xor x30, x30, x27
    p.mac x27, x27, x27
    xor x30, x30, x28
    p.mac x28, x28, x28
    xor x30, x30, x29
    p.mac x29, x29, x29
    xor x29, x30, x2
    p.mac x30, x30, x30
    xor x29, x29, x31
    p.mac x31, x31, x31
    la t0, _STORAGE_POINTER_
    lw x31, 21*4(t0)
    xor x30, x29, x31
    sw x30, 21*4(t0)
    
    
    la x31, _STORAGE_POINTER_
    li x1, 0x0F0F0F0F
    
    li x0, 0x0F0F0F0F
    sw x0, 20*4(x31)
    lw x0, 20*4(x31)
    
    li x1, 0x0F0F0F0F
    sw x1, 20*4(x31)
    lw x1, 20*4(x31)
    
    li x2, 0x0F0F0F0F
    sw x2, 20*4(x31)
    lw x2, 20*4(x31)
    
    li x3, 0x0F0F0F0F
    sw x3, 20*4(x31)
    lw x3, 20*4(x31)
    
    li x4, 0x0F0F0F0F
    sw x4, 20*4(x31)
    lw x4, 20*4(x31)
    
    li x5, 0x0F0F0F0F
    sw x5, 20*4(x31)
    lw x5, 20*4(x31)
    
    li x6, 0x0F0F0F0F
    sw x6, 20*4(x31)
    lw x6, 20*4(x31)
    
    li x7, 0x0F0F0F0F
    sw x7, 20*4(x31)
    lw x7, 20*4(x31)
    
    li x8, 0x0F0F0F0F
    sw x8, 20*4(x31)
    lw x8, 20*4(x31)
    
    li x9, 0x0F0F0F0F
    sw x9, 20*4(x31)
    lw x9, 20*4(x31)
    
    li x10, 0x0F0F0F0F
    sw x10, 20*4(x31)
    lw x10, 20*4(x31)
    
    li x11, 0x0F0F0F0F
    sw x11, 20*4(x31)
    lw x11, 20*4(x31)
    
    li x12, 0x0F0F0F0F
    sw x12, 20*4(x31)
    lw x12, 20*4(x31)
    
    li x13, 0x0F0F0F0F
    sw x13, 20*4(x31)
    lw x13, 20*4(x31)
    
    li x14, 0x0F0F0F0F
    sw x14, 20*4(x31)
    lw x14, 20*4(x31)
    
    li x15, 0x0F0F0F0F
    sw x15, 20*4(x31)
    lw x15, 20*4(x31)
    
    li x16, 0x0F0F0F0F
    sw x16, 20*4(x31)
    lw x16, 20*4(x31)
    
    li x17, 0x0F0F0F0F
    sw x17, 20*4(x31)
    lw x17, 20*4(x31)
    
    li x18, 0x0F0F0F0F
    sw x18, 20*4(x31)
    lw x18, 20*4(x31)
    
    li x19, 0x0F0F0F0F
    sw x19, 20*4(x31)
    lw x19, 20*4(x31)
    
    li x20, 0x0F0F0F0F
    sw x20, 20*4(x31)
    lw x20, 20*4(x31)
    
    li x21, 0x0F0F0F0F
    sw x21, 20*4(x31)
    lw x21, 20*4(x31)
    
    li x22, 0x0F0F0F0F
    sw x22, 20*4(x31)
    lw x22, 20*4(x31)
    
    li x23, 0x0F0F0F0F
    sw x23, 20*4(x31)
    lw x23, 20*4(x31)
    
    li x24, 0x0F0F0F0F
    sw x24, 20*4(x31)
    lw x24, 20*4(x31)
    
    li x25, 0x0F0F0F0F
    sw x25, 20*4(x31)
    lw x25, 20*4(x31)
    
    li x26, 0x0F0F0F0F
    sw x26, 20*4(x31)
    lw x26, 20*4(x31)
    
    li x27, 0x0F0F0F0F
    sw x27, 20*4(x31)
    lw x27, 20*4(x31)
    
    li x28, 0x0F0F0F0F
    sw x28, 20*4(x31)
    lw x28, 20*4(x31)
    
    li x29, 0x0F0F0F0F
    sw x29, 20*4(x31)
    lw x29, 20*4(x31)
    
    li x30, 0x0F0F0F0F
    sw x30, 20*4(x31)
    lw x30, 20*4(x31)
    
    li x31, 0x0F0F0F0F
    
    la x1, _STORAGE_POINTER_
    sw x31, 20*4(x1)
    lw x31, 20*4(x1)
    
    li x1, 0x0F0F0F0F
    
    p.mac x0, x0, x0
    not x0, x0
    
    la x31, _STORAGE_POINTER_
    sw x0, 20*4(x31)
    lw x0, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x1, x1, x1
    not x1, x1
    
    la x31, _STORAGE_POINTER_
    sw x1, 20*4(x31)
    lw x1, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x2, x2, x2
    not x2, x2
    
    la x31, _STORAGE_POINTER_
    sw x2, 20*4(x31)
    lw x2, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x3, x3, x3
    not x3, x3
    
    la x31, _STORAGE_POINTER_
    sw x3, 20*4(x31)
    lw x3, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x4, x4, x4
    not x4, x4
    
    la x31, _STORAGE_POINTER_
    sw x4, 20*4(x31)
    lw x4, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x5, x5, x5
    not x5, x5
    
    la x31, _STORAGE_POINTER_
    sw x5, 20*4(x31)
    lw x5, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x6, x6, x6
    not x6, x6
    
    la x31, _STORAGE_POINTER_
    sw x6, 20*4(x31)
    lw x6, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x7, x7, x7
    not x7, x7
    
    la x31, _STORAGE_POINTER_
    sw x7, 20*4(x31)
    lw x7, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x8, x8, x8
    not x8, x8
    
    la x31, _STORAGE_POINTER_
    sw x8, 20*4(x31)
    lw x8, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x9, x9, x9
    not x9, x9
    
    la x31, _STORAGE_POINTER_
    sw x9, 20*4(x31)
    lw x9, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x10, x10, x10
    not x10, x10
    
    la x31, _STORAGE_POINTER_
    sw x10, 20*4(x31)
    lw x10, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x11, x11, x11
    not x11, x11
    
    la x31, _STORAGE_POINTER_
    sw x11, 20*4(x31)
    lw x11, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x12, x12, x12
    not x12, x12
    
    la x31, _STORAGE_POINTER_
    sw x12, 20*4(x31)
    lw x12, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x13, x13, x13
    not x13, x13
    
    la x31, _STORAGE_POINTER_
    sw x13, 20*4(x31)
    lw x13, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x14, x14, x14
    not x14, x14
    
    la x31, _STORAGE_POINTER_
    sw x14, 20*4(x31)
    lw x14, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x15, x15, x15
    not x15, x15
    
    la x31, _STORAGE_POINTER_
    sw x15, 20*4(x31)
    lw x15, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x16, x16, x16
    not x16, x16
    
    la x31, _STORAGE_POINTER_
    sw x16, 20*4(x31)
    lw x16, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x17, x17, x17
    not x17, x17
    
    la x31, _STORAGE_POINTER_
    sw x17, 20*4(x31)
    lw x17, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x18, x18, x18
    not x18, x18
    
    la x31, _STORAGE_POINTER_
    sw x18, 20*4(x31)
    lw x18, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x19, x19, x19
    not x19, x19
    
    la x31, _STORAGE_POINTER_
    sw x19, 20*4(x31)
    lw x19, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x20, x20, x20
    not x20, x20
    
    la x31, _STORAGE_POINTER_
    sw x20, 20*4(x31)
    lw x20, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x21, x21, x21
    not x21, x21
    
    la x31, _STORAGE_POINTER_
    sw x21, 20*4(x31)
    lw x21, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x22, x22, x22
    not x22, x22
    
    la x31, _STORAGE_POINTER_
    sw x22, 20*4(x31)
    lw x22, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x23, x23, x23
    not x23, x23
    
    la x31, _STORAGE_POINTER_
    sw x23, 20*4(x31)
    lw x23, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x24, x24, x24
    not x24, x24
    
    la x31, _STORAGE_POINTER_
    sw x24, 20*4(x31)
    lw x24, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x25, x25, x25
    not x25, x25
    
    la x31, _STORAGE_POINTER_
    sw x25, 20*4(x31)
    lw x25, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x26, x26, x26
    not x26, x26
    
    la x31, _STORAGE_POINTER_
    sw x26, 20*4(x31)
    lw x26, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x27, x27, x27
    not x27, x27
    
    la x31, _STORAGE_POINTER_
    sw x27, 20*4(x31)
    lw x27, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x28, x28, x28
    not x28, x28
    
    la x31, _STORAGE_POINTER_
    sw x28, 20*4(x31)
    lw x28, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x29, x29, x29
    not x29, x29
    
    la x31, _STORAGE_POINTER_
    sw x29, 20*4(x31)
    lw x29, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x30, x30, x30
    not x30, x30
    
    la x31, _STORAGE_POINTER_
    sw x30, 20*4(x31)
    lw x30, 20*4(x31)
    li x31, 0x0F0F0F0F
    
    p.mac x31, x31, x31
    not x31, x31
    
    la x1, _STORAGE_POINTER_
    sw x31, 20*4(x1)
    lw x31, 20*4(x1)
    li x1, 0xF0F0F0F0
    
    xor x30, x30, x2
    p.mac x0, x0, x0
    xor x30, x30, x1
    p.mac x1, x1, x1
    xor x30, x30, x2
    p.mac x2, x2, x2
    xor x30, x30, x3
    p.mac x3, x3, x3
    xor x30, x30, x4
    p.mac x4, x4, x4
    xor x30, x30, x5
    p.mac x5, x5, x5
    xor x30, x30, x6
    p.mac x6, x6, x6
    xor x30, x30, x7
    p.mac x7, x7, x7
    xor x30, x30, x8
    p.mac x8, x8, x8
    xor x30, x30, x9
    p.mac x9, x9, x9
    xor x30, x30, x10
    p.mac x10, x10, x10
    xor x30, x30, x11
    p.mac x11, x11, x11
    xor x30, x30, x12
    p.mac x12, x12, x12
    xor x30, x30, x13
    p.mac x13, x13, x13
    xor x30, x30, x14
    p.mac x14, x14, x14
    xor x30, x30, x15
    p.mac x15, x15, x15
    xor x30, x30, x16
    p.mac x16, x16, x16
    xor x30, x30, x17
    p.mac x17, x17, x17
    xor x30, x30, x18
    p.mac x18, x18, x18
    xor x30, x30, x19
    p.mac x19, x19, x19
    xor x30, x30, x20
    p.mac x20, x20, x20
    xor x30, x30, x21
    p.mac x21, x21, x21
    xor x30, x30, x22
    p.mac x22, x22, x22
    xor x30, x30, x23
    p.mac x23, x23, x23
    xor x30, x30, x24
    p.mac x24, x24, x24
    xor x30, x30, x25
    p.mac x25, x25, x25
    xor x30, x30, x26
    p.mac x26, x26, x26
    xor x30, x30, x27
    p.mac x27, x27, x27
    xor x30, x30, x28
    p.mac x28, x28, x28
    xor x30, x30, x29
    p.mac x29, x29, x29
    xor x29, x30, x2
    p.mac x30, x30, x30
    xor x29, x29, x31
    p.mac x31, x31, x31
    la t0, _STORAGE_POINTER_
    lw x31, 21*4(t0)
    xor x30, x29, x31
    sw x30, 21*4(t0)
    
    
    la x31, _STORAGE_POINTER_
    li x1, 0x33333333
    
    j check_routine
    routine_2: #### NEW SUB ROUTINE ####
    li t1, 0x4
    not t1, t1
    and a0, a0, t1
    la t0, _STORAGE_POINTER_
    sw a0, 22*4(t0)
    
    li x0, 0x33333333
    sw x0, 20*4(x31)
    lw x0, 20*4(x31)
    
    li x1, 0x33333333
    sw x1, 20*4(x31)
    lw x1, 20*4(x31)
    
    li x2, 0x33333333
    sw x2, 20*4(x31)
    lw x2, 20*4(x31)
    
    li x3, 0x33333333
    sw x3, 20*4(x31)
    lw x3, 20*4(x31)
    
    li x4, 0x33333333
    sw x4, 20*4(x31)
    lw x4, 20*4(x31)
    
    li x5, 0x33333333
    sw x5, 20*4(x31)
    lw x5, 20*4(x31)
    
    li x6, 0x33333333
    sw x6, 20*4(x31)
    lw x6, 20*4(x31)
    
    li x7, 0x33333333
    sw x7, 20*4(x31)
    lw x7, 20*4(x31)
    
    li x8, 0x33333333
    sw x8, 20*4(x31)
    lw x8, 20*4(x31)
    
    li x9, 0x33333333
    sw x9, 20*4(x31)
    lw x9, 20*4(x31)
    
    li x10, 0x33333333
    sw x10, 20*4(x31)
    lw x10, 20*4(x31)
    
    li x11, 0x33333333
    sw x11, 20*4(x31)
    lw x11, 20*4(x31)
    
    li x12, 0x33333333
    sw x12, 20*4(x31)
    lw x12, 20*4(x31)
    
    li x13, 0x33333333
    sw x13, 20*4(x31)
    lw x13, 20*4(x31)
    
    li x14, 0x33333333
    sw x14, 20*4(x31)
    lw x14, 20*4(x31)
    
    li x15, 0x33333333
    sw x15, 20*4(x31)
    lw x15, 20*4(x31)
    
    li x16, 0x33333333
    sw x16, 20*4(x31)
    lw x16, 20*4(x31)
    
    li x17, 0x33333333
    sw x17, 20*4(x31)
    lw x17, 20*4(x31)
    
    li x18, 0x33333333
    sw x18, 20*4(x31)
    lw x18, 20*4(x31)
    
    li x19, 0x33333333
    sw x19, 20*4(x31)
    lw x19, 20*4(x31)
    
    li x20, 0x33333333
    sw x20, 20*4(x31)
    lw x20, 20*4(x31)
    
    li x21, 0x33333333
    sw x21, 20*4(x31)
    lw x21, 20*4(x31)
    
    li x22, 0x33333333
    sw x22, 20*4(x31)
    lw x22, 20*4(x31)
    
    li x23, 0x33333333
    sw x23, 20*4(x31)
    lw x23, 20*4(x31)
    
    li x24, 0x33333333
    sw x24, 20*4(x31)
    lw x24, 20*4(x31)
    
    li x25, 0x33333333
    sw x25, 20*4(x31)
    lw x25, 20*4(x31)
    
    li x26, 0x33333333
    sw x26, 20*4(x31)
    lw x26, 20*4(x31)
    
    li x27, 0x33333333
    sw x27, 20*4(x31)
    lw x27, 20*4(x31)
    
    li x28, 0x33333333
    sw x28, 20*4(x31)
    lw x28, 20*4(x31)
    
    li x29, 0x33333333
    sw x29, 20*4(x31)
    lw x29, 20*4(x31)
    
    li x30, 0x33333333
    sw x30, 20*4(x31)
    lw x30, 20*4(x31)
    
    li x31, 0x33333333
    
    la x1, _STORAGE_POINTER_
    sw x31, 20*4(x1)
    lw x31, 20*4(x1)
    
    li x1, 0x33333333
    
    p.mac x0, x0, x0
    not x0, x0
    
    la x31, _STORAGE_POINTER_
    sw x0, 20*4(x31)
    lw x0, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x1, x1, x1
    not x1, x1
    
    la x31, _STORAGE_POINTER_
    sw x1, 20*4(x31)
    lw x1, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x2, x2, x2
    not x2, x2
    
    la x31, _STORAGE_POINTER_
    sw x2, 20*4(x31)
    lw x2, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x3, x3, x3
    not x3, x3
    
    la x31, _STORAGE_POINTER_
    sw x3, 20*4(x31)
    lw x3, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x4, x4, x4
    not x4, x4
    
    la x31, _STORAGE_POINTER_
    sw x4, 20*4(x31)
    lw x4, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x5, x5, x5
    not x5, x5
    
    la x31, _STORAGE_POINTER_
    sw x5, 20*4(x31)
    lw x5, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x6, x6, x6
    not x6, x6
    
    la x31, _STORAGE_POINTER_
    sw x6, 20*4(x31)
    lw x6, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x7, x7, x7
    not x7, x7
    
    la x31, _STORAGE_POINTER_
    sw x7, 20*4(x31)
    lw x7, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x8, x8, x8
    not x8, x8
    
    la x31, _STORAGE_POINTER_
    sw x8, 20*4(x31)
    lw x8, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x9, x9, x9
    not x9, x9
    
    la x31, _STORAGE_POINTER_
    sw x9, 20*4(x31)
    lw x9, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x10, x10, x10
    not x10, x10
    
    la x31, _STORAGE_POINTER_
    sw x10, 20*4(x31)
    lw x10, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x11, x11, x11
    not x11, x11
    
    la x31, _STORAGE_POINTER_
    sw x11, 20*4(x31)
    lw x11, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x12, x12, x12
    not x12, x12
    
    la x31, _STORAGE_POINTER_
    sw x12, 20*4(x31)
    lw x12, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x13, x13, x13
    not x13, x13
    
    la x31, _STORAGE_POINTER_
    sw x13, 20*4(x31)
    lw x13, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x14, x14, x14
    not x14, x14
    
    la x31, _STORAGE_POINTER_
    sw x14, 20*4(x31)
    lw x14, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x15, x15, x15
    not x15, x15
    
    la x31, _STORAGE_POINTER_
    sw x15, 20*4(x31)
    lw x15, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x16, x16, x16
    not x16, x16
    
    la x31, _STORAGE_POINTER_
    sw x16, 20*4(x31)
    lw x16, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x17, x17, x17
    not x17, x17
    
    la x31, _STORAGE_POINTER_
    sw x17, 20*4(x31)
    lw x17, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x18, x18, x18
    not x18, x18
    
    la x31, _STORAGE_POINTER_
    sw x18, 20*4(x31)
    lw x18, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x19, x19, x19
    not x19, x19
    
    la x31, _STORAGE_POINTER_
    sw x19, 20*4(x31)
    lw x19, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x20, x20, x20
    not x20, x20
    
    la x31, _STORAGE_POINTER_
    sw x20, 20*4(x31)
    lw x20, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x21, x21, x21
    not x21, x21
    
    la x31, _STORAGE_POINTER_
    sw x21, 20*4(x31)
    lw x21, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x22, x22, x22
    not x22, x22
    
    la x31, _STORAGE_POINTER_
    sw x22, 20*4(x31)
    lw x22, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x23, x23, x23
    not x23, x23
    
    la x31, _STORAGE_POINTER_
    sw x23, 20*4(x31)
    lw x23, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x24, x24, x24
    not x24, x24
    
    la x31, _STORAGE_POINTER_
    sw x24, 20*4(x31)
    lw x24, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x25, x25, x25
    not x25, x25
    
    la x31, _STORAGE_POINTER_
    sw x25, 20*4(x31)
    lw x25, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x26, x26, x26
    not x26, x26
    
    la x31, _STORAGE_POINTER_
    sw x26, 20*4(x31)
    lw x26, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x27, x27, x27
    not x27, x27
    
    la x31, _STORAGE_POINTER_
    sw x27, 20*4(x31)
    lw x27, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x28, x28, x28
    not x28, x28
    
    la x31, _STORAGE_POINTER_
    sw x28, 20*4(x31)
    lw x28, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x29, x29, x29
    not x29, x29
    
    la x31, _STORAGE_POINTER_
    sw x29, 20*4(x31)
    lw x29, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x30, x30, x30
    not x30, x30
    
    la x31, _STORAGE_POINTER_
    sw x30, 20*4(x31)
    lw x30, 20*4(x31)
    li x31, 0x33333333
    
    p.mac x31, x31, x31
    not x31, x31
    
    la x1, _STORAGE_POINTER_
    sw x31, 20*4(x1)
    lw x31, 20*4(x1)
    li x1, 0xCCCCCCCC
    
    xor x30, x30, x2
    p.mac x0, x0, x0
    xor x30, x30, x1
    p.mac x1, x1, x1
    xor x30, x30, x2
    p.mac x2, x2, x2
    xor x30, x30, x3
    p.mac x3, x3, x3
    xor x30, x30, x4
    p.mac x4, x4, x4
    xor x30, x30, x5
    p.mac x5, x5, x5
    xor x30, x30, x6
    p.mac x6, x6, x6
    xor x30, x30, x7
    p.mac x7, x7, x7
    xor x30, x30, x8
    p.mac x8, x8, x8
    xor x30, x30, x9
    p.mac x9, x9, x9
    xor x30, x30, x10
    p.mac x10, x10, x10
    xor x30, x30, x11
    p.mac x11, x11, x11
    xor x30, x30, x12
    p.mac x12, x12, x12
    xor x30, x30, x13
    p.mac x13, x13, x13
    xor x30, x30, x14
    p.mac x14, x14, x14
    xor x30, x30, x15
    p.mac x15, x15, x15
    xor x30, x30, x16
    p.mac x16, x16, x16
    xor x30, x30, x17
    p.mac x17, x17, x17
    xor x30, x30, x18
    p.mac x18, x18, x18
    xor x30, x30, x19
    p.mac x19, x19, x19
    xor x30, x30, x20
    p.mac x20, x20, x20
    xor x30, x30, x21
    p.mac x21, x21, x21
    xor x30, x30, x22
    p.mac x22, x22, x22
    xor x30, x30, x23
    p.mac x23, x23, x23
    xor x30, x30, x24
    p.mac x24, x24, x24
    xor x30, x30, x25
    p.mac x25, x25, x25
    xor x30, x30, x26
    p.mac x26, x26, x26
    xor x30, x30, x27
    p.mac x27, x27, x27
    xor x30, x30, x28
    p.mac x28, x28, x28
    xor x30, x30, x29
    p.mac x29, x29, x29
    xor x29, x30, x2
    p.mac x30, x30, x30
    xor x29, x29, x31
    p.mac x31, x31, x31
    la t0, _STORAGE_POINTER_
    lw x31, 21*4(t0)
    xor x30, x29, x31
    sw x30, 21*4(t0)
    
    
    la x31, _STORAGE_POINTER_
    li x1, 0x55555555
    
    li x0, 0x55555555
    sw x0, 20*4(x31)
    lw x0, 20*4(x31)
    
    li x1, 0x55555555
    sw x1, 20*4(x31)
    lw x1, 20*4(x31)
    
    li x2, 0x55555555
    sw x2, 20*4(x31)
    lw x2, 20*4(x31)
    
    li x3, 0x55555555
    sw x3, 20*4(x31)
    lw x3, 20*4(x31)
    
    li x4, 0x55555555
    sw x4, 20*4(x31)
    lw x4, 20*4(x31)
    
    li x5, 0x55555555
    sw x5, 20*4(x31)
    lw x5, 20*4(x31)
    
    li x6, 0x55555555
    sw x6, 20*4(x31)
    lw x6, 20*4(x31)
    
    li x7, 0x55555555
    sw x7, 20*4(x31)
    lw x7, 20*4(x31)
    
    li x8, 0x55555555
    sw x8, 20*4(x31)
    lw x8, 20*4(x31)
    
    li x9, 0x55555555
    sw x9, 20*4(x31)
    lw x9, 20*4(x31)
    
    li x10, 0x55555555
    sw x10, 20*4(x31)
    lw x10, 20*4(x31)
    
    li x11, 0x55555555
    sw x11, 20*4(x31)
    lw x11, 20*4(x31)
    
    li x12, 0x55555555
    sw x12, 20*4(x31)
    lw x12, 20*4(x31)
    
    li x13, 0x55555555
    sw x13, 20*4(x31)
    lw x13, 20*4(x31)
    
    li x14, 0x55555555
    sw x14, 20*4(x31)
    lw x14, 20*4(x31)
    
    li x15, 0x55555555
    sw x15, 20*4(x31)
    lw x15, 20*4(x31)
    
    li x16, 0x55555555
    sw x16, 20*4(x31)
    lw x16, 20*4(x31)
    
    li x17, 0x55555555
    sw x17, 20*4(x31)
    lw x17, 20*4(x31)
    
    li x18, 0x55555555
    sw x18, 20*4(x31)
    lw x18, 20*4(x31)
    
    li x19, 0x55555555
    sw x19, 20*4(x31)
    lw x19, 20*4(x31)
    
    li x20, 0x55555555
    sw x20, 20*4(x31)
    lw x20, 20*4(x31)
    
    li x21, 0x55555555
    sw x21, 20*4(x31)
    lw x21, 20*4(x31)
    
    li x22, 0x55555555
    sw x22, 20*4(x31)
    lw x22, 20*4(x31)
    
    li x23, 0x55555555
    sw x23, 20*4(x31)
    lw x23, 20*4(x31)
    
    li x24, 0x55555555
    sw x24, 20*4(x31)
    lw x24, 20*4(x31)
    
    li x25, 0x55555555
    sw x25, 20*4(x31)
    lw x25, 20*4(x31)
    
    li x26, 0x55555555
    sw x26, 20*4(x31)
    lw x26, 20*4(x31)
    
    li x27, 0x55555555
    sw x27, 20*4(x31)
    lw x27, 20*4(x31)
    
    li x28, 0x55555555
    sw x28, 20*4(x31)
    lw x28, 20*4(x31)
    
    li x29, 0x55555555
    sw x29, 20*4(x31)
    lw x29, 20*4(x31)
    
    li x30, 0x55555555
    sw x30, 20*4(x31)
    lw x30, 20*4(x31)
    
    li x31, 0x55555555
    
    la x1, _STORAGE_POINTER_
    sw x31, 20*4(x1)
    lw x31, 20*4(x1)
    
    li x1, 0x55555555
    
    p.mac x0, x0, x0
    not x0, x0
    
    la x31, _STORAGE_POINTER_
    sw x0, 20*4(x31)
    lw x0, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x1, x1, x1
    not x1, x1
    
    la x31, _STORAGE_POINTER_
    sw x1, 20*4(x31)
    lw x1, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x2, x2, x2
    not x2, x2
    
    la x31, _STORAGE_POINTER_
    sw x2, 20*4(x31)
    lw x2, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x3, x3, x3
    not x3, x3
    
    la x31, _STORAGE_POINTER_
    sw x3, 20*4(x31)
    lw x3, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x4, x4, x4
    not x4, x4
    
    la x31, _STORAGE_POINTER_
    sw x4, 20*4(x31)
    lw x4, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x5, x5, x5
    not x5, x5
    
    la x31, _STORAGE_POINTER_
    sw x5, 20*4(x31)
    lw x5, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x6, x6, x6
    not x6, x6
    
    la x31, _STORAGE_POINTER_
    sw x6, 20*4(x31)
    lw x6, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x7, x7, x7
    not x7, x7
    
    la x31, _STORAGE_POINTER_
    sw x7, 20*4(x31)
    lw x7, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x8, x8, x8
    not x8, x8
    
    la x31, _STORAGE_POINTER_
    sw x8, 20*4(x31)
    lw x8, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x9, x9, x9
    not x9, x9
    
    la x31, _STORAGE_POINTER_
    sw x9, 20*4(x31)
    lw x9, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x10, x10, x10
    not x10, x10
    
    la x31, _STORAGE_POINTER_
    sw x10, 20*4(x31)
    lw x10, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x11, x11, x11
    not x11, x11
    
    la x31, _STORAGE_POINTER_
    sw x11, 20*4(x31)
    lw x11, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x12, x12, x12
    not x12, x12
    
    la x31, _STORAGE_POINTER_
    sw x12, 20*4(x31)
    lw x12, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x13, x13, x13
    not x13, x13
    
    la x31, _STORAGE_POINTER_
    sw x13, 20*4(x31)
    lw x13, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x14, x14, x14
    not x14, x14
    
    la x31, _STORAGE_POINTER_
    sw x14, 20*4(x31)
    lw x14, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x15, x15, x15
    not x15, x15
    
    la x31, _STORAGE_POINTER_
    sw x15, 20*4(x31)
    lw x15, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x16, x16, x16
    not x16, x16
    
    la x31, _STORAGE_POINTER_
    sw x16, 20*4(x31)
    lw x16, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x17, x17, x17
    not x17, x17
    
    la x31, _STORAGE_POINTER_
    sw x17, 20*4(x31)
    lw x17, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x18, x18, x18
    not x18, x18
    
    la x31, _STORAGE_POINTER_
    sw x18, 20*4(x31)
    lw x18, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x19, x19, x19
    not x19, x19
    
    la x31, _STORAGE_POINTER_
    sw x19, 20*4(x31)
    lw x19, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x20, x20, x20
    not x20, x20
    
    la x31, _STORAGE_POINTER_
    sw x20, 20*4(x31)
    lw x20, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x21, x21, x21
    not x21, x21
    
    la x31, _STORAGE_POINTER_
    sw x21, 20*4(x31)
    lw x21, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x22, x22, x22
    not x22, x22
    
    la x31, _STORAGE_POINTER_
    sw x22, 20*4(x31)
    lw x22, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x23, x23, x23
    not x23, x23
    
    la x31, _STORAGE_POINTER_
    sw x23, 20*4(x31)
    lw x23, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x24, x24, x24
    not x24, x24
    
    la x31, _STORAGE_POINTER_
    sw x24, 20*4(x31)
    lw x24, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x25, x25, x25
    not x25, x25
    
    la x31, _STORAGE_POINTER_
    sw x25, 20*4(x31)
    lw x25, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x26, x26, x26
    not x26, x26
    
    la x31, _STORAGE_POINTER_
    sw x26, 20*4(x31)
    lw x26, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x27, x27, x27
    not x27, x27
    
    la x31, _STORAGE_POINTER_
    sw x27, 20*4(x31)
    lw x27, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x28, x28, x28
    not x28, x28
    
    la x31, _STORAGE_POINTER_
    sw x28, 20*4(x31)
    lw x28, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x29, x29, x29
    not x29, x29
    
    la x31, _STORAGE_POINTER_
    sw x29, 20*4(x31)
    lw x29, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x30, x30, x30
    not x30, x30
    
    la x31, _STORAGE_POINTER_
    sw x30, 20*4(x31)
    lw x30, 20*4(x31)
    li x31, 0x55555555
    
    p.mac x31, x31, x31
    not x31, x31
    
    la x1, _STORAGE_POINTER_
    sw x31, 20*4(x1)
    lw x31, 20*4(x1)
    li x1, 0xAAAAAAAA
    
    xor x30, x30, x2
    p.mac x0, x0, x0
    xor x30, x30, x1
    p.mac x1, x1, x1
    xor x30, x30, x2
    p.mac x2, x2, x2
    xor x30, x30, x3
    p.mac x3, x3, x3
    xor x30, x30, x4
    p.mac x4, x4, x4
    xor x30, x30, x5
    p.mac x5, x5, x5
    xor x30, x30, x6
    p.mac x6, x6, x6
    xor x30, x30, x7
    p.mac x7, x7, x7
    xor x30, x30, x8
    p.mac x8, x8, x8
    xor x30, x30, x9
    p.mac x9, x9, x9
    xor x30, x30, x10
    p.mac x10, x10, x10
    xor x30, x30, x11
    p.mac x11, x11, x11
    xor x30, x30, x12
    p.mac x12, x12, x12
    xor x30, x30, x13
    p.mac x13, x13, x13
    xor x30, x30, x14
    p.mac x14, x14, x14
    xor x30, x30, x15
    p.mac x15, x15, x15
    xor x30, x30, x16
    p.mac x16, x16, x16
    xor x30, x30, x17
    p.mac x17, x17, x17
    xor x30, x30, x18
    p.mac x18, x18, x18
    xor x30, x30, x19
    p.mac x19, x19, x19
    xor x30, x30, x20
    p.mac x20, x20, x20
    xor x30, x30, x21
    p.mac x21, x21, x21
    xor x30, x30, x22
    p.mac x22, x22, x22
    xor x30, x30, x23
    p.mac x23, x23, x23
    xor x30, x30, x24
    p.mac x24, x24, x24
    xor x30, x30, x25
    p.mac x25, x25, x25
    xor x30, x30, x26
    p.mac x26, x26, x26
    xor x30, x30, x27
    p.mac x27, x27, x27
    xor x30, x30, x28
    p.mac x28, x28, x28
    xor x30, x30, x29
    p.mac x29, x29, x29
    xor x29, x30, x2
    p.mac x30, x30, x30
    xor x29, x29, x31
    p.mac x31, x31, x31
    la t0, _STORAGE_POINTER_
    lw x31, 21*4(t0)
    xor x30, x29, x31
    sw x30, 21*4(t0)
    
    
    check_routine:
        la t0, _STORAGE_POINTER_
        lw a0, 22*4(t0)
        and a1, a0, 0x1
    	   bne a1, x0, routine_0 #n. 0x1
        and a1, a0, 0x2
    	   bne a1, x0, routine_1 #n. 0x2
        and a1, a0, 0x4
    	   bne a1, x0, routine_2 #n. 0x4
    
    _done:
    
    ##- END -##

    add t3, x0, x30
    li t4, 0x12345678 # triggers sim log for t3
    add a0, x0, t3

	// restore non-volatile registers
	la		t0, _STORAGE_POINTER_
    lw      ra, 0*4(t0)
    lw      sp, 1*4(t0)
    lw      gp, 2*4(t0)
    lw      tp, 3*4(t0)
    lw      s0, 4*4(t0)
    lw      s1, 5*4(t0)
    #lw      a0, 6*4(t0)
    lw      a1, 7*4(t0)
    lw      a2, 8*4(t0)
    lw      a3, 9*4(t0)
    lw      a4, 10*4(t0)
    lw      a5, 11*4(t0)
    lw      a6, 12*4(t0)
    lw      a7, 13*4(t0)
    lw      s2, 14*4(t0)
    lw      s3, 15*4(t0)
    lw      s4, 16*4(t0)
    lw      s5, 17*4(t0)
    lw      s6, 18*4(t0)
    lw      s7, 19*4(t0)

    ret

.section .data
_STORAGE_POINTER_:
    .space 256


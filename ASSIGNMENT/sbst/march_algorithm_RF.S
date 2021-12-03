.section .text.run_march_RF_LA_test
.global _run_march_RF_LA_test
.type _run_march_RF_LA_test, @function

_march_RF_LA_test:
    la t0, return_addr
    sw ra, 0*4(t0)

    la t0, march_pattern
    lw t0, 0*4(t0)
RF_m1:  # w0
        add x1, x0, t0
        add x2, x0, t0
        add x3, x0, t0
        add x4, x0, t0
        add x5, x0, t0
        add x6, x0, t0
        add x7, x0, t0
        add x8, x0, t0
        add x9, x0, t0
        add x10, x0, t0
        add x11, x0, t0
        add x12, x0, t0
        add x13, x0, t0
        add x14, x0, t0
        add x15, x0, t0
        add x16, x0, t0
        add x17, x0, t0
        add x18, x0, t0
        add x19, x0, t0
        add x20, x0, t0
        add x21, x0, t0
        add x22, x0, t0
        add x23, x0, t0
        add x24, x0, t0
        add x25, x0, t0
        add x26, x0, t0
        add x27, x0, t0
        add x28, x0, t0
        add x29, x0, t0
        add x30, x0, t0
        add x31, x0, t0

RF_m2:  # r0, w1, w0, w1, r1 
        #r0
        bne x1, t0, exit_wrong_march
        bne x2, t0, exit_wrong_march
        bne x3, t0, exit_wrong_march
        bne x4, t0, exit_wrong_march
        bne x5, t0, exit_wrong_march
        bne x6, t0, exit_wrong_march
        bne x7, t0, exit_wrong_march
        bne x8, t0, exit_wrong_march
        bne x9, t0, exit_wrong_march
        bne x10, t0, exit_wrong_march
        bne x11, t0, exit_wrong_march
        bne x12, t0, exit_wrong_march
        bne x13, t0, exit_wrong_march
        bne x14, t0, exit_wrong_march
        bne x15, t0, exit_wrong_march
        bne x16, t0, exit_wrong_march
        bne x17, t0, exit_wrong_march
        bne x18, t0, exit_wrong_march
        bne x19, t0, exit_wrong_march
        bne x20, t0, exit_wrong_march
        bne x21, t0, exit_wrong_march
        bne x22, t0, exit_wrong_march
        bne x23, t0, exit_wrong_march
        bne x24, t0, exit_wrong_march
        bne x25, t0, exit_wrong_march
        bne x26, t0, exit_wrong_march
        bne x27, t0, exit_wrong_march
        bne x28, t0, exit_wrong_march
        bne x29, t0, exit_wrong_march
        bne x30, t0, exit_wrong_march
        bne x31, t0, exit_wrong_march

        #w1
        la t0, march_pattern
        lw t0, 0*4(t0)
        not t0, t0
        add x1, x0, t0
        add x2, x0, t0
        add x3, x0, t0
        add x4, x0, t0
        add x5, x0, t0
        add x6, x0, t0
        add x7, x0, t0
        add x8, x0, t0
        add x9, x0, t0
        add x10, x0, t0
        add x11, x0, t0
        add x12, x0, t0
        add x13, x0, t0
        add x14, x0, t0
        add x15, x0, t0
        add x16, x0, t0
        add x17, x0, t0
        add x18, x0, t0
        add x19, x0, t0
        add x20, x0, t0
        add x21, x0, t0
        add x22, x0, t0
        add x23, x0, t0
        add x24, x0, t0
        add x25, x0, t0
        add x26, x0, t0
        add x27, x0, t0
        add x28, x0, t0
        add x29, x0, t0
        add x30, x0, t0
        add x31, x0, t0

        #w0
        la t0, march_pattern
        lw t0, 0*4(t0)
        add x1, x0, t0
        add x2, x0, t0
        add x3, x0, t0
        add x4, x0, t0
        add x5, x0, t0
        add x6, x0, t0
        add x7, x0, t0
        add x8, x0, t0
        add x9, x0, t0
        add x10, x0, t0
        add x11, x0, t0
        add x12, x0, t0
        add x13, x0, t0
        add x14, x0, t0
        add x15, x0, t0
        add x16, x0, t0
        add x17, x0, t0
        add x18, x0, t0
        add x19, x0, t0
        add x20, x0, t0
        add x21, x0, t0
        add x22, x0, t0
        add x23, x0, t0
        add x24, x0, t0
        add x25, x0, t0
        add x26, x0, t0
        add x27, x0, t0
        add x28, x0, t0
        add x29, x0, t0
        add x30, x0, t0
        add x31, x0, t0

        #w1
        la t0, march_pattern
        lw t0, 0*4(t0)
        not t0, t0
        add x1, x0, t0
        add x2, x0, t0
        add x3, x0, t0
        add x4, x0, t0
        add x5, x0, t0
        add x6, x0, t0
        add x7, x0, t0
        add x8, x0, t0
        add x9, x0, t0
        add x10, x0, t0
        add x11, x0, t0
        add x12, x0, t0
        add x13, x0, t0
        add x14, x0, t0
        add x15, x0, t0
        add x16, x0, t0
        add x17, x0, t0
        add x18, x0, t0
        add x19, x0, t0
        add x20, x0, t0
        add x21, x0, t0
        add x22, x0, t0
        add x23, x0, t0
        add x24, x0, t0
        add x25, x0, t0
        add x26, x0, t0
        add x27, x0, t0
        add x28, x0, t0
        add x29, x0, t0
        add x30, x0, t0
        add x31, x0, t0

        #r1
        la t0, march_pattern
        lw t0, 0*4(t0)
        not t0, t0
        bne x1, t0, exit_wrong_march
        bne x2, t0, exit_wrong_march
        bne x3, t0, exit_wrong_march
        bne x4, t0, exit_wrong_march
        bne x5, t0, exit_wrong_march
        bne x6, t0, exit_wrong_march
        bne x7, t0, exit_wrong_march
        bne x8, t0, exit_wrong_march
        bne x9, t0, exit_wrong_march
        bne x10, t0, exit_wrong_march
        bne x11, t0, exit_wrong_march
        bne x12, t0, exit_wrong_march
        bne x13, t0, exit_wrong_march
        bne x14, t0, exit_wrong_march
        bne x15, t0, exit_wrong_march
        bne x16, t0, exit_wrong_march
        bne x17, t0, exit_wrong_march
        bne x18, t0, exit_wrong_march
        bne x19, t0, exit_wrong_march
        bne x20, t0, exit_wrong_march
        bne x21, t0, exit_wrong_march
        bne x22, t0, exit_wrong_march
        bne x23, t0, exit_wrong_march
        bne x24, t0, exit_wrong_march
        bne x25, t0, exit_wrong_march
        bne x26, t0, exit_wrong_march
        bne x27, t0, exit_wrong_march
        bne x28, t0, exit_wrong_march
        bne x29, t0, exit_wrong_march
        bne x30, t0, exit_wrong_march
        bne x31, t0, exit_wrong_march

RF_m3:  # r1, w0, w1, w0, r0 
        #r1
        la t0, march_pattern
        lw t0, 0*4(t0)
        not t0, t0
        bne x1, t0, exit_wrong_march
        bne x2, t0, exit_wrong_march
        bne x3, t0, exit_wrong_march
        bne x4, t0, exit_wrong_march
        bne x5, t0, exit_wrong_march
        bne x6, t0, exit_wrong_march
        bne x7, t0, exit_wrong_march
        bne x8, t0, exit_wrong_march
        bne x9, t0, exit_wrong_march
        bne x10, t0, exit_wrong_march
        bne x11, t0, exit_wrong_march
        bne x12, t0, exit_wrong_march
        bne x13, t0, exit_wrong_march
        bne x14, t0, exit_wrong_march
        bne x15, t0, exit_wrong_march
        bne x16, t0, exit_wrong_march
        bne x17, t0, exit_wrong_march
        bne x18, t0, exit_wrong_march
        bne x19, t0, exit_wrong_march
        bne x20, t0, exit_wrong_march
        bne x21, t0, exit_wrong_march
        bne x22, t0, exit_wrong_march
        bne x23, t0, exit_wrong_march
        bne x24, t0, exit_wrong_march
        bne x25, t0, exit_wrong_march
        bne x26, t0, exit_wrong_march
        bne x27, t0, exit_wrong_march
        bne x28, t0, exit_wrong_march
        bne x29, t0, exit_wrong_march
        bne x30, t0, exit_wrong_march
        bne x31, t0, exit_wrong_march

        #w0
        la t0, march_pattern
        lw t0, 0*4(t0)
        add x1, x0, t0
        add x2, x0, t0
        add x3, x0, t0
        add x4, x0, t0
        add x5, x0, t0
        add x6, x0, t0
        add x7, x0, t0
        add x8, x0, t0
        add x9, x0, t0
        add x10, x0, t0
        add x11, x0, t0
        add x12, x0, t0
        add x13, x0, t0
        add x14, x0, t0
        add x15, x0, t0
        add x16, x0, t0
        add x17, x0, t0
        add x18, x0, t0
        add x19, x0, t0
        add x20, x0, t0
        add x21, x0, t0
        add x22, x0, t0
        add x23, x0, t0
        add x24, x0, t0
        add x25, x0, t0
        add x26, x0, t0
        add x27, x0, t0
        add x28, x0, t0
        add x29, x0, t0
        add x30, x0, t0
        add x31, x0, t0

        #w1
        la t0, march_pattern
        lw t0, 0*4(t0)
        not t0, t0
        add x1, x0, t0
        add x2, x0, t0
        add x3, x0, t0
        add x4, x0, t0
        add x5, x0, t0
        add x6, x0, t0
        add x7, x0, t0
        add x8, x0, t0
        add x9, x0, t0
        add x10, x0, t0
        add x11, x0, t0
        add x12, x0, t0
        add x13, x0, t0
        add x14, x0, t0
        add x15, x0, t0
        add x16, x0, t0
        add x17, x0, t0
        add x18, x0, t0
        add x19, x0, t0
        add x20, x0, t0
        add x21, x0, t0
        add x22, x0, t0
        add x23, x0, t0
        add x24, x0, t0
        add x25, x0, t0
        add x26, x0, t0
        add x27, x0, t0
        add x28, x0, t0
        add x29, x0, t0
        add x30, x0, t0
        add x31, x0, t0

        #w0
        la t0, march_pattern
        lw t0, 0*4(t0)
        add x1, x0, t0
        add x2, x0, t0
        add x3, x0, t0
        add x4, x0, t0
        add x5, x0, t0
        add x6, x0, t0
        add x7, x0, t0
        add x8, x0, t0
        add x9, x0, t0
        add x10, x0, t0
        add x11, x0, t0
        add x12, x0, t0
        add x13, x0, t0
        add x14, x0, t0
        add x15, x0, t0
        add x16, x0, t0
        add x17, x0, t0
        add x18, x0, t0
        add x19, x0, t0
        add x20, x0, t0
        add x21, x0, t0
        add x22, x0, t0
        add x23, x0, t0
        add x24, x0, t0
        add x25, x0, t0
        add x26, x0, t0
        add x27, x0, t0
        add x28, x0, t0
        add x29, x0, t0
        add x30, x0, t0
        add x31, x0, t0

        #r0
        la t0, march_pattern
        lw t0, 0*4(t0)
        bne x1, t0, exit_wrong_march
        bne x2, t0, exit_wrong_march
        bne x3, t0, exit_wrong_march
        bne x4, t0, exit_wrong_march
        bne x5, t0, exit_wrong_march
        bne x6, t0, exit_wrong_march
        bne x7, t0, exit_wrong_march
        bne x8, t0, exit_wrong_march
        bne x9, t0, exit_wrong_march
        bne x10, t0, exit_wrong_march
        bne x11, t0, exit_wrong_march
        bne x12, t0, exit_wrong_march
        bne x13, t0, exit_wrong_march
        bne x14, t0, exit_wrong_march
        bne x15, t0, exit_wrong_march
        bne x16, t0, exit_wrong_march
        bne x17, t0, exit_wrong_march
        bne x18, t0, exit_wrong_march
        bne x19, t0, exit_wrong_march
        bne x20, t0, exit_wrong_march
        bne x21, t0, exit_wrong_march
        bne x22, t0, exit_wrong_march
        bne x23, t0, exit_wrong_march
        bne x24, t0, exit_wrong_march
        bne x25, t0, exit_wrong_march
        bne x26, t0, exit_wrong_march
        bne x27, t0, exit_wrong_march
        bne x28, t0, exit_wrong_march
        bne x29, t0, exit_wrong_march
        bne x30, t0, exit_wrong_march
        bne x31, t0, exit_wrong_march
    
RF_m4:  #r0 w1 w0 w1 r1
        #r0
        la t0, march_pattern
        lw t0, 0*4(t0)
        bne x31, t0, exit_wrong_march
        bne x30, t0, exit_wrong_march
        bne x29, t0, exit_wrong_march
        bne x28, t0, exit_wrong_march
        bne x27, t0, exit_wrong_march
        bne x26, t0, exit_wrong_march
        bne x25, t0, exit_wrong_march
        bne x24, t0, exit_wrong_march
        bne x23, t0, exit_wrong_march
        bne x22, t0, exit_wrong_march
        bne x21, t0, exit_wrong_march
        bne x20, t0, exit_wrong_march
        bne x19, t0, exit_wrong_march
        bne x18, t0, exit_wrong_march
        bne x17, t0, exit_wrong_march
        bne x16, t0, exit_wrong_march
        bne x15, t0, exit_wrong_march
        bne x14, t0, exit_wrong_march
        bne x13, t0, exit_wrong_march
        bne x12, t0, exit_wrong_march
        bne x11, t0, exit_wrong_march
        bne x10, t0, exit_wrong_march
        bne x9, t0, exit_wrong_march
        bne x8, t0, exit_wrong_march
        bne x7, t0, exit_wrong_march
        bne x6, t0, exit_wrong_march
        bne x5, t0, exit_wrong_march
        bne x4, t0, exit_wrong_march
        bne x3, t0, exit_wrong_march
        bne x2, t0, exit_wrong_march
        bne x1, t0, exit_wrong_march

        #w1
        la t0, march_pattern
        lw t0, 0*4(t0)
        not t0, t0
        add x31, x0, t0
        add x30, x0, t0
        add x29, x0, t0
        add x28, x0, t0
        add x27, x0, t0
        add x26, x0, t0
        add x25, x0, t0
        add x24, x0, t0
        add x23, x0, t0
        add x22, x0, t0
        add x21, x0, t0
        add x20, x0, t0
        add x19, x0, t0
        add x18, x0, t0
        add x17, x0, t0
        add x16, x0, t0
        add x15, x0, t0
        add x14, x0, t0
        add x13, x0, t0
        add x12, x0, t0
        add x11, x0, t0
        add x10, x0, t0
        add x9, x0, t0
        add x8, x0, t0
        add x7, x0, t0
        add x6, x0, t0
        add x5, x0, t0
        add x4, x0, t0
        add x3, x0, t0
        add x2, x0, t0
        add x1, x0, t0

        #w0
        la t0, march_pattern
        lw t0, 0*4(t0)
        add x31, x0, t0
        add x30, x0, t0
        add x29, x0, t0
        add x28, x0, t0
        add x27, x0, t0
        add x26, x0, t0
        add x25, x0, t0
        add x24, x0, t0
        add x23, x0, t0
        add x22, x0, t0
        add x21, x0, t0
        add x20, x0, t0
        add x19, x0, t0
        add x18, x0, t0
        add x17, x0, t0
        add x16, x0, t0
        add x15, x0, t0
        add x14, x0, t0
        add x13, x0, t0
        add x12, x0, t0
        add x11, x0, t0
        add x10, x0, t0
        add x9, x0, t0
        add x8, x0, t0
        add x7, x0, t0
        add x6, x0, t0
        add x5, x0, t0
        add x4, x0, t0
        add x3, x0, t0
        add x2, x0, t0
        add x1, x0, t0

        #w1
        la t0, march_pattern
        lw t0, 0*4(t0)
        not t0, t0
        add x31, x0, t0
        add x30, x0, t0
        add x29, x0, t0
        add x28, x0, t0
        add x27, x0, t0
        add x26, x0, t0
        add x25, x0, t0
        add x24, x0, t0
        add x23, x0, t0
        add x22, x0, t0
        add x21, x0, t0
        add x20, x0, t0
        add x19, x0, t0
        add x18, x0, t0
        add x17, x0, t0
        add x16, x0, t0
        add x15, x0, t0
        add x14, x0, t0
        add x13, x0, t0
        add x12, x0, t0
        add x11, x0, t0
        add x10, x0, t0
        add x9, x0, t0
        add x8, x0, t0
        add x7, x0, t0
        add x6, x0, t0
        add x5, x0, t0
        add x4, x0, t0
        add x3, x0, t0
        add x2, x0, t0
        add x1, x0, t0

        #r1
        la t0, march_pattern
        lw t0, 0*4(t0)
        not t0, t0
        bne x31, t0, exit_wrong_march
        bne x30, t0, exit_wrong_march
        bne x29, t0, exit_wrong_march
        bne x28, t0, exit_wrong_march
        bne x27, t0, exit_wrong_march
        bne x26, t0, exit_wrong_march
        bne x25, t0, exit_wrong_march
        bne x24, t0, exit_wrong_march
        bne x23, t0, exit_wrong_march
        bne x22, t0, exit_wrong_march
        bne x21, t0, exit_wrong_march
        bne x20, t0, exit_wrong_march
        bne x19, t0, exit_wrong_march
        bne x18, t0, exit_wrong_march
        bne x17, t0, exit_wrong_march
        bne x16, t0, exit_wrong_march
        bne x15, t0, exit_wrong_march
        bne x14, t0, exit_wrong_march
        bne x13, t0, exit_wrong_march
        bne x12, t0, exit_wrong_march
        bne x11, t0, exit_wrong_march
        bne x10, t0, exit_wrong_march
        bne x9, t0, exit_wrong_march
        bne x8, t0, exit_wrong_march
        bne x7, t0, exit_wrong_march
        bne x6, t0, exit_wrong_march
        bne x5, t0, exit_wrong_march
        bne x4, t0, exit_wrong_march
        bne x3, t0, exit_wrong_march
        bne x2, t0, exit_wrong_march
        bne x1, t0, exit_wrong_march

RF_m5:  #r1 w0 w1 w0 r0
        #r1
        la t0, march_pattern
        lw t0, 0*4(t0)
        not t0, t0
        bne x31, t0, exit_wrong_march
        bne x30, t0, exit_wrong_march
        bne x29, t0, exit_wrong_march
        bne x28, t0, exit_wrong_march
        bne x27, t0, exit_wrong_march
        bne x26, t0, exit_wrong_march
        bne x25, t0, exit_wrong_march
        bne x24, t0, exit_wrong_march
        bne x23, t0, exit_wrong_march
        bne x22, t0, exit_wrong_march
        bne x21, t0, exit_wrong_march
        bne x20, t0, exit_wrong_march
        bne x19, t0, exit_wrong_march
        bne x18, t0, exit_wrong_march
        bne x17, t0, exit_wrong_march
        bne x16, t0, exit_wrong_march
        bne x15, t0, exit_wrong_march
        bne x14, t0, exit_wrong_march
        bne x13, t0, exit_wrong_march
        bne x12, t0, exit_wrong_march
        bne x11, t0, exit_wrong_march
        bne x10, t0, exit_wrong_march
        bne x9, t0, exit_wrong_march
        bne x8, t0, exit_wrong_march
        bne x7, t0, exit_wrong_march
        bne x6, t0, exit_wrong_march
        bne x5, t0, exit_wrong_march
        bne x4, t0, exit_wrong_march
        bne x3, t0, exit_wrong_march
        bne x2, t0, exit_wrong_march
        bne x1, t0, exit_wrong_march

        #w0
        la t0, march_pattern
        lw t0, 0*4(t0)
        add x31, x0, t0
        add x30, x0, t0
        add x29, x0, t0
        add x28, x0, t0
        add x27, x0, t0
        add x26, x0, t0
        add x25, x0, t0
        add x24, x0, t0
        add x23, x0, t0
        add x22, x0, t0
        add x21, x0, t0
        add x20, x0, t0
        add x19, x0, t0
        add x18, x0, t0
        add x17, x0, t0
        add x16, x0, t0
        add x15, x0, t0
        add x14, x0, t0
        add x13, x0, t0
        add x12, x0, t0
        add x11, x0, t0
        add x10, x0, t0
        add x9, x0, t0
        add x8, x0, t0
        add x7, x0, t0
        add x6, x0, t0
        add x5, x0, t0
        add x4, x0, t0
        add x3, x0, t0
        add x2, x0, t0
        add x1, x0, t0

        #w1
        la t0, march_pattern
        lw t0, 0*4(t0)
        not t0, t0
        add x31, x0, t0
        add x30, x0, t0
        add x29, x0, t0
        add x28, x0, t0
        add x27, x0, t0
        add x26, x0, t0
        add x25, x0, t0
        add x24, x0, t0
        add x23, x0, t0
        add x22, x0, t0
        add x21, x0, t0
        add x20, x0, t0
        add x19, x0, t0
        add x18, x0, t0
        add x17, x0, t0
        add x16, x0, t0
        add x15, x0, t0
        add x14, x0, t0
        add x13, x0, t0
        add x12, x0, t0
        add x11, x0, t0
        add x10, x0, t0
        add x9, x0, t0
        add x8, x0, t0
        add x7, x0, t0
        add x6, x0, t0
        add x5, x0, t0
        add x4, x0, t0
        add x3, x0, t0
        add x2, x0, t0
        add x1, x0, t0

        #w0
        la t0, march_pattern
        lw t0, 0*4(t0)
        add x31, x0, t0
        add x30, x0, t0
        add x29, x0, t0
        add x28, x0, t0
        add x27, x0, t0
        add x26, x0, t0
        add x25, x0, t0
        add x24, x0, t0
        add x23, x0, t0
        add x22, x0, t0
        add x21, x0, t0
        add x20, x0, t0
        add x19, x0, t0
        add x18, x0, t0
        add x17, x0, t0
        add x16, x0, t0
        add x15, x0, t0
        add x14, x0, t0
        add x13, x0, t0
        add x12, x0, t0
        add x11, x0, t0
        add x10, x0, t0
        add x9, x0, t0
        add x8, x0, t0
        add x7, x0, t0
        add x6, x0, t0
        add x5, x0, t0
        add x4, x0, t0
        add x3, x0, t0
        add x2, x0, t0
        add x1, x0, t0

        #r0
        la t0, march_pattern
        lw t0, 0*4(t0)
        bne x31, t0, exit_wrong_march
        bne x30, t0, exit_wrong_march
        bne x29, t0, exit_wrong_march
        bne x28, t0, exit_wrong_march
        bne x27, t0, exit_wrong_march
        bne x26, t0, exit_wrong_march
        bne x25, t0, exit_wrong_march
        bne x24, t0, exit_wrong_march
        bne x23, t0, exit_wrong_march
        bne x22, t0, exit_wrong_march
        bne x21, t0, exit_wrong_march
        bne x20, t0, exit_wrong_march
        bne x19, t0, exit_wrong_march
        bne x18, t0, exit_wrong_march
        bne x17, t0, exit_wrong_march
        bne x16, t0, exit_wrong_march
        bne x15, t0, exit_wrong_march
        bne x14, t0, exit_wrong_march
        bne x13, t0, exit_wrong_march
        bne x12, t0, exit_wrong_march
        bne x11, t0, exit_wrong_march
        bne x10, t0, exit_wrong_march
        bne x9, t0, exit_wrong_march
        bne x8, t0, exit_wrong_march
        bne x7, t0, exit_wrong_march
        bne x6, t0, exit_wrong_march
        bne x5, t0, exit_wrong_march
        bne x4, t0, exit_wrong_march
        bne x3, t0, exit_wrong_march
        bne x2, t0, exit_wrong_march
        bne x1, t0, exit_wrong_march

RF_m6:
        #r0
        la t0, march_pattern
        lw t0, 0*4(t0)
        bne x31, t0, exit_wrong_march
        bne x30, t0, exit_wrong_march
        bne x29, t0, exit_wrong_march
        bne x28, t0, exit_wrong_march
        bne x27, t0, exit_wrong_march
        bne x26, t0, exit_wrong_march
        bne x25, t0, exit_wrong_march
        bne x24, t0, exit_wrong_march
        bne x23, t0, exit_wrong_march
        bne x22, t0, exit_wrong_march
        bne x21, t0, exit_wrong_march
        bne x20, t0, exit_wrong_march
        bne x19, t0, exit_wrong_march
        bne x18, t0, exit_wrong_march
        bne x17, t0, exit_wrong_march
        bne x16, t0, exit_wrong_march
        bne x15, t0, exit_wrong_march
        bne x14, t0, exit_wrong_march
        bne x13, t0, exit_wrong_march
        bne x12, t0, exit_wrong_march
        bne x11, t0, exit_wrong_march
        bne x10, t0, exit_wrong_march
        bne x9, t0, exit_wrong_march
        bne x8, t0, exit_wrong_march
        bne x7, t0, exit_wrong_march
        bne x6, t0, exit_wrong_march
        bne x5, t0, exit_wrong_march
        bne x4, t0, exit_wrong_march
        bne x3, t0, exit_wrong_march
        bne x2, t0, exit_wrong_march
        bne x1, t0, exit_wrong_march

    li a0, 0
    j exit_march
    exit_wrong_march:
    li a0, 1
    exit_march:

    la t0, return_addr
    lw ra, 0*4(t0)
ret

_march_MATS_test:
    la t0, return_addr
    sw ra, 0*4(t0)

    la t0, march_pattern
    lw t0, 0*4(t0)
RF_m1_MATS:  # w0
add x1, x0, t0
        add x2, x0, t0
        add x3, x0, t0
        add x4, x0, t0
        add x5, x0, t0
        add x6, x0, t0
        add x7, x0, t0
        add x8, x0, t0
        add x9, x0, t0
        add x10, x0, t0
        add x11, x0, t0
        add x12, x0, t0
        add x13, x0, t0
        add x14, x0, t0
        add x15, x0, t0
        add x16, x0, t0
        add x17, x0, t0
        add x18, x0, t0
        add x19, x0, t0
        add x20, x0, t0
        add x21, x0, t0
        add x22, x0, t0
        add x23, x0, t0
        add x24, x0, t0
        add x25, x0, t0
        add x26, x0, t0
        add x27, x0, t0
        add x28, x0, t0
        add x29, x0, t0
        add x30, x0, t0
        add x31, x0, t0

RF_m2_MATS:  # r0, w1
        #r0
        bne x1, t0, exit_wrong_march_mats
        bne x2, t0, exit_wrong_march_mats
        bne x3, t0, exit_wrong_march_mats
        bne x4, t0, exit_wrong_march_mats
        bne x5, t0, exit_wrong_march_mats
        bne x6, t0, exit_wrong_march_mats
        bne x7, t0, exit_wrong_march_mats
        bne x8, t0, exit_wrong_march_mats
        bne x9, t0, exit_wrong_march_mats
        bne x10, t0, exit_wrong_march_mats
        bne x11, t0, exit_wrong_march_mats
        bne x12, t0, exit_wrong_march_mats
        bne x13, t0, exit_wrong_march_mats
        bne x14, t0, exit_wrong_march_mats
        bne x15, t0, exit_wrong_march_mats
        bne x16, t0, exit_wrong_march_mats
        bne x17, t0, exit_wrong_march_mats
        bne x18, t0, exit_wrong_march_mats
        bne x19, t0, exit_wrong_march_mats
        bne x20, t0, exit_wrong_march_mats
        bne x21, t0, exit_wrong_march_mats
        bne x22, t0, exit_wrong_march_mats
        bne x23, t0, exit_wrong_march_mats
        bne x24, t0, exit_wrong_march_mats
        bne x25, t0, exit_wrong_march_mats
        bne x26, t0, exit_wrong_march_mats
        bne x27, t0, exit_wrong_march_mats
        bne x28, t0, exit_wrong_march_mats
        bne x29, t0, exit_wrong_march_mats
        bne x30, t0, exit_wrong_march_mats
        bne x31, t0, exit_wrong_march_mats

        #w1
        la t0, march_pattern
        lw t0, 0*4(t0)
        not t0, t0
        add x1, x0, t0
        add x2, x0, t0
        add x3, x0, t0
        add x4, x0, t0
        add x5, x0, t0
        add x6, x0, t0
        add x7, x0, t0
        add x8, x0, t0
        add x9, x0, t0
        add x10, x0, t0
        add x11, x0, t0
        add x12, x0, t0
        add x13, x0, t0
        add x14, x0, t0
        add x15, x0, t0
        add x16, x0, t0
        add x17, x0, t0
        add x18, x0, t0
        add x19, x0, t0
        add x20, x0, t0
        add x21, x0, t0
        add x22, x0, t0
        add x23, x0, t0
        add x24, x0, t0
        add x25, x0, t0
        add x26, x0, t0
        add x27, x0, t0
        add x28, x0, t0
        add x29, x0, t0
        add x30, x0, t0
        add x31, x0, t0

RF_m3_MATS:  #r1 w0 r0
        #r1
        la t0, march_pattern
        lw t0, 0*4(t0)
        not t0, t0
        bne x31, t0, exit_wrong_march_mats
        bne x30, t0, exit_wrong_march_mats
        bne x29, t0, exit_wrong_march_mats
        bne x28, t0, exit_wrong_march_mats
        bne x27, t0, exit_wrong_march_mats
        bne x26, t0, exit_wrong_march_mats
        bne x25, t0, exit_wrong_march_mats
        bne x24, t0, exit_wrong_march_mats
        bne x23, t0, exit_wrong_march_mats
        bne x22, t0, exit_wrong_march_mats
        bne x21, t0, exit_wrong_march_mats
        bne x20, t0, exit_wrong_march_mats
        bne x19, t0, exit_wrong_march_mats
        bne x18, t0, exit_wrong_march_mats
        bne x17, t0, exit_wrong_march_mats
        bne x16, t0, exit_wrong_march_mats
        bne x15, t0, exit_wrong_march_mats
        bne x14, t0, exit_wrong_march_mats
        bne x13, t0, exit_wrong_march_mats
        bne x12, t0, exit_wrong_march_mats
        bne x11, t0, exit_wrong_march_mats
        bne x10, t0, exit_wrong_march_mats
        bne x9, t0, exit_wrong_march_mats
        bne x8, t0, exit_wrong_march_mats
        bne x7, t0, exit_wrong_march_mats
        bne x6, t0, exit_wrong_march_mats
        bne x5, t0, exit_wrong_march_mats
        bne x4, t0, exit_wrong_march_mats
        bne x3, t0, exit_wrong_march_mats
        bne x2, t0, exit_wrong_march_mats
        bne x1, t0, exit_wrong_march_mats

        #w0
        la t0, march_pattern
        lw t0, 0*4(t0)
        add x31, x0, t0
        add x30, x0, t0
        add x29, x0, t0
        add x28, x0, t0
        add x27, x0, t0
        add x26, x0, t0
        add x25, x0, t0
        add x24, x0, t0
        add x23, x0, t0
        add x22, x0, t0
        add x21, x0, t0
        add x20, x0, t0
        add x19, x0, t0
        add x18, x0, t0
        add x17, x0, t0
        add x16, x0, t0
        add x15, x0, t0
        add x14, x0, t0
        add x13, x0, t0
        add x12, x0, t0
        add x11, x0, t0
        add x10, x0, t0
        add x9, x0, t0
        add x8, x0, t0
        add x7, x0, t0
        add x6, x0, t0
        add x5, x0, t0
        add x4, x0, t0
        add x3, x0, t0
        add x2, x0, t0
        add x1, x0, t0

        #r0
        la t0, march_pattern
        lw t0, 0*4(t0)
        bne x31, t0, exit_wrong_march_mats
        bne x30, t0, exit_wrong_march_mats
        bne x29, t0, exit_wrong_march_mats
        bne x28, t0, exit_wrong_march_mats
        bne x27, t0, exit_wrong_march_mats
        bne x26, t0, exit_wrong_march_mats
        bne x25, t0, exit_wrong_march_mats
        bne x24, t0, exit_wrong_march_mats
        bne x23, t0, exit_wrong_march_mats
        bne x22, t0, exit_wrong_march_mats
        bne x21, t0, exit_wrong_march_mats
        bne x20, t0, exit_wrong_march_mats
        bne x19, t0, exit_wrong_march_mats
        bne x18, t0, exit_wrong_march_mats
        bne x17, t0, exit_wrong_march_mats
        bne x16, t0, exit_wrong_march_mats
        bne x15, t0, exit_wrong_march_mats
        bne x14, t0, exit_wrong_march_mats
        bne x13, t0, exit_wrong_march_mats
        bne x12, t0, exit_wrong_march_mats
        bne x11, t0, exit_wrong_march_mats
        bne x10, t0, exit_wrong_march_mats
        bne x9, t0, exit_wrong_march_mats
        bne x8, t0, exit_wrong_march_mats
        bne x7, t0, exit_wrong_march_mats
        bne x6, t0, exit_wrong_march_mats
        bne x5, t0, exit_wrong_march_mats
        bne x4, t0, exit_wrong_march_mats
        bne x3, t0, exit_wrong_march_mats
        bne x2, t0, exit_wrong_march_mats
        bne x1, t0, exit_wrong_march_mats

    li a0, 0
    j exit_march_mats
    exit_wrong_march_mats:
    li a0, 1
    exit_march_mats:

    la t0, return_addr
    lw ra, 0*4(t0)
ret


_run_march_RF_LA_test:                // Entry point    
    # save current registers state 
    la      t0, test_regs
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

    li a0, 0                         // First pattern  
    call _march_MATS_test                  
    bne a0, x0, exit_test_error_RF

    or a0, x0, 0xFF                // 2 pattern
    sll a0, a0, 8               
    or a0, a0, 0xFF  
    la t0, march_pattern
    sw a0, 0*4(t0)               
    call _march_MATS_test                  
    bne a0, x0, exit_test_error_RF

    or a0, x0, 0xFF                // 3 pattern
    sll a0, a0, 16               
    or a0, a0, 0xFF  
    la t0, march_pattern
    sw a0, 0*4(t0)               
    call _march_MATS_test                  
    bne a0, x0, exit_test_error_RF

    or a0, x0, 0x0F                // 4 pattern
    sll a0, a0, 8             
    or a0, a0, 0x0F                
    sll a0, a0, 8      
    or a0, a0, 0x0F               
    sll a0, a0, 8     
    or a0, a0, 0x0F 
    la t0, march_pattern
    sw a0, 0*4(t0)                 
    call _march_MATS_test                  
    bne a0, x0, exit_test_error_RF

    or a0, x0, 0x33                // 5 pattern
    sll a0, a0, 8             
    or a0, a0, 0x33                
    sll a0, a0, 8      
    or a0, a0, 0x33               
    sll a0, a0, 8   
    or a0, a0, 0x33 
    la t0, march_pattern
    sw a0, 0*4(t0)    
    call _march_MATS_test                  
    bne a0, x0, exit_test_error_RF

    or a0, x0, 0x55                // 6 pattern
    sll a0, a0, 8             
    or a0, a0, 0x55                
    sll a0, a0, 8      
    or a0, a0, 0x55               
    sll a0, a0, 8   
    or a0, a0, 0x55 
    la t0, march_pattern
    sw a0, 0*4(t0)  
    call _march_MATS_test                  
    bne a0, x0, exit_test_error_RF

    li a0, 0
    j exit_test_RF
    exit_test_error_RF:
        li a0, 1
    exit_test_RF:

    # restore registers
    la		t0, test_regs
    lw      ra, 0*4(t0)
    lw      sp, 1*4(t0)
    lw      gp, 2*4(t0)
    lw      tp, 3*4(t0)
    lw      s0, 4*4(t0)
    lw      s1, 5*4(t0)
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

	.section ".TEST_DATA", "aw"
march_pattern:
    .space 4
return_addr:
    .space 4
test_regs:
    .space 0x80

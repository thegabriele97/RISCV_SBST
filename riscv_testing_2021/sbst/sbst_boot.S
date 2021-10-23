	.section .text
	.global _sbst_boot
	.type _sbst_boot, @function

_sbst_boot:
	//add sp, sp, 16		// this creates space in the stack

	lui	a0, %hi(__TEST_DATA_START)
	addi	a0, a0, %lo(__TEST_DATA_START)
	
    // Storing regs status
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

	// disabling all interrupts
    csrrs   t1, mstatus, x0
    li      t2, 0x8
    csrrc   t3, mstatus, t2
    sw      t1, 20*4(t0)


	// filling regs with test patterns
	la		t0, RF_PATTERNS
	lw		x1,	0*4(t0)  	
	lw		x2,	1*4(t0)
	lw		x3,	2*4(t0)
    add     x4, x0, x1
    add     x5, x0, x2
    add     x6, x0, x3
    add     x7, x0, x1
    add     x8, x0, x2
    add     x9, x0, x3
    add     x10, x0, x1
    add     x11, x0, x2
    add     x12, x0, x3
    add     x13, x0, x1
    add     x14, x0, x2
    add     x15, x0, x3
    add     x16, x0, x1
    add     x17, x0, x2
    add     x18, x0, x3
    add     x19, x0, x1
    add     x20, x0, x2
    add     x21, x0, x3
    add     x22, x0, x1
    add     x23, x0, x2
    add     x24, x0, x3
    add     x25, x0, x1
    add     x26, x0, x2
    add     x27, x0, x3
    add     x28, x0, x1
    add     x29, x0, x2
    add     x30, x0, x3
    add     x31, x0, x1

	// compute & write the result (check label 'test_result') 
    add     x1, x1, x0
    add     x1, x1, x2
    add     x1, x1, x3
    add     x1, x1, x4
    add     x1, x1, x5
    add     x1, x1, x6
    add     x1, x1, x7
    add     x1, x1, x8
    add     x1, x1, x9
    add     x1, x1, x10
    add     x1, x1, x11
    add     x1, x1, x12
    add     x1, x1, x13
    add     x1, x1, x14
    add     x1, x1, x15
    add     x1, x1, x16
    add     x1, x1, x17
    add     x1, x1, x18
    add     x1, x1, x19
    add     x1, x1, x20
    add     x1, x1, x21
    add     x1, x1, x22
    add     x1, x1, x23
    add     x1, x1, x24
    add     x1, x1, x25
    add     x1, x1, x26
    add     x1, x1, x27
    add     x1, x1, x28
    add     x1, x1, x29
    add     x1, x1, x30
    add     x1, x1, x31
    
    la      t0, test_result
    sw      x1, 0(t0)

	// restore interrupts (if they were active before!)
    la      t0, test_regs
    lw      t1, 20*4(t0)
    and     t1, t1, 0x8
    csrrs   t2, mstatus, t1

	
	// restore non-volatile registers
	la		t0, test_regs
    lw      ra, 0*4(t0)
    lw      sp, 1*4(t0)
    lw      gp, 2*4(t0)
    lw      tp, 3*4(t0)
    lw      s0, 4*4(t0)
    lw      s1, 5*4(t0)
    lw      a0, 6*4(t0)
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


// -------------------------------------
	.section ".TEST_DATA", "aw"
	.global test_result

test_result:
	.space 4
test_regs:
    .space 0x80

// Examples:
//variable1:	(4 * 4bytes)
//	.space 0x10
//variable2:
//	.space 4

// -------------------------------------
	.section ".TEST_RODATA", "a"

RF_PATTERNS:
	.long 0x12345678
	.long 0xcafecafe
	.long 0xdeadbeef

OTHER_PATTERNS:
	.long 0x0
	.long 0x0

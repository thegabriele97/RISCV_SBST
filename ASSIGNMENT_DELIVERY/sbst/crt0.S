/* Copyright (c) 2017  SiFive Inc. All rights reserved.
 * Copyright (c) 2019  ETH Zürich and University of Bologna
 * This copyrighted material is made available to anyone wishing to use,
 * modify, copy, or redistribute it subject to the terms and conditions
 * of the FreeBSD License.   This program is distributed in the hope that
 * it will be useful, but WITHOUT ANY WARRANTY expressed or implied,
 * including the implied warranties of MERCHANTABILITY or FITNESS FOR
 * A PARTICULAR PURPOSE.  A copy of this license is available at
 * http://www.opensource.org/licenses.
 */

.section .TEST_RODATA, "a"
TEST_SIGNATURES:
TEST_SIGNATURES_ALU:
    .long 0xce784a1f
    .long 0xac25f5ed
    .long 0x9843659d
    .long 0x0559277f
    .long 0xa6dc12f9
    .long 0xb22db5b3
    .long 0x865e0d8c
    .long 0x3b42df5f
    .long 0x557a2e22
    .long 0x4e8a5bf8
    .long 0x760e1125
    .long 0x50da8f57
    .long 0xa4de0cf8
    .long 0x1a947a99
    .long 0xa2bcf0ec
    .long 0x2350fec2
    .long 0xce72f5dc
TEST_SIGNATURES_MUL:
    .long 0x0838c234
    .long 0x64ef7eae
    .long 0x8697505c
TEST_SIGNATURES_RF:
    .long 0x0000ffff
    .long 0xa93d4cf0
    .long 0xd678748a


/* Entry point for bare metal programs */
.section .text.start
.global _start
.type _start, @function

_start:

// initialize registers for simulation...
	li x1, 0
	li x2, 0
	li x3, 0
	li x4, 0
	li x5, 0
	li x6, 0
	li x7, 0
	li x8, 0
	li x9, 0
	li x10, 0
	li x11, 0
	li x12, 0
	li x13, 0
	li x14, 0
	li x15, 0
	li x16, 0
	li x17, 0
	li x18, 0
	li x19, 0
	li x20, 0
	li x21, 0
	li x22, 0
	li x23, 0
	li x24, 0
	li x25, 0
	li x26, 0
	li x27, 0
	li x28, 0
	li x29, 0
	li x30, 0
	li x31, 0

/* Invoke MARCH test */

	#call _run_march_algorithm

/* initialize global pointer */
.option push
.option norelax
1:  auipc gp, %pcrel_hi(__global_pointer$)
	addi  gp, gp, %pcrel_lo(1b)
.option pop

/* initialize stack pointer */
	la sp, _sp

/* set vector table address */
	la a0, __vector_start
	csrw mtvec, a0

/* copy all INITIALIZED data sections from ROM to RAM */
	la a0, __TEST_DATA_START
	la a2, __TEST_DATA_END
	sub a2, a2, a0
	la a1, __ROM_TEST_DATA_START
	call memcpy

	la a0, __DATA_BEGIN__
	la a2, __DATA_END__
	sub a2, a2, a0
	la a1, __ROM_DATA_BEGIN__
	call memcpy

	la a0, __SDATA_BEGIN__
	la a2, __SDATA_END__
	sub a2, a2, a0
	la a1, __ROM_SDATA_BEGIN__
	call memcpy

/* clear the bss segment */
	la a0, __bss_start
	la a2, __bss_end
	sub a2, a2, a0
	li a1, 21
	call memset

/* new-style constructors and destructors */
	la a0, __libc_fini_array
	call atexit
	call __libc_init_array

/* call boot-time software-based self-test */
    li a0, 0xFFFFFF
    la a1, TEST_SIGNATURES
    call _scheduler_test

/* call main */
	//lw a0, 0(sp)                    /* a0 = argc */
	li a0, 0
	//addi a1, sp, __SIZEOF_POINTER__ /* a1 = argv */
	li a1, 0
	li a2, 0                        /* a2 = envp = NULL */
	call main
	tail exit

.size  _start, .-_start

.global _init
.type   _init, @function
.global _fini
.type   _fini, @function
_init:
_fini:
 /* These don't have to do anything since we use init_array/fini_array. Prevent
    missing symbol error */
	ret
.size  _init, .-_init
.size _fini, .-_fini


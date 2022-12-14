/******************************************************************************
* Copyright (c) 2015 - 2020 Xilinx, Inc.  All rights reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/
		.section .vectors.reset, "ax"
		.align 2
_vector_reset:
		brai    _boot

		.section .vectors.sw_exception, "ax"
		.align 2
_vector_sw_exception:
	    brai	XPfw_Exception

		.section .vectors.interrupt, "ax"
		.align 2
_vector_interrupt:
	    brai	Interrupt_Handler

		.section .vectors.break, "ax"
		.align 2
_vector_break:
	    brai	Interrupt_Handler

		.section .vectors.hw_exception, "ax"
		.align 2
_vector_hw_exception:
		brai	XPfw_Exception

		.section .text
		.globl _boot
		.align 2
		.ent _boot
		.type _boot, @function
_boot:
		// Stack Initialization
		addik	r1,		r0,		_stack		// R1 is stack pointer, load Stack's highest address into SP. */
		addik	r13,	r0,		_RW_SMALL_DATA_BASE_	// The read-write small data anchor address
		addik	r2,		r0,		_RO_SMALL_DATA_BASE_	// The read-only small data anchor address

	    // Stack Protection
		addik	r11,	r0,		_stack		// Load  Stack's highest address into temp R11
		mts		rshr,	r11					// Store Stack's highest address into STACK_HIGH_REGISTER
		addik	r11,	r0,		_stack_end  // Load  Stack's lowest address into temp R11
		mts		rslr,	r11					// Store Stack's lowest address into STACK_LOW_REGISTER

		// Clear BSS
		addi	r6, r0, __bss_start
		addi	r7, r0, __bss_end
		rsub	r18, r6, r7
		blei	r18, .Lendbss
	.Lloopbss:
		swi	r0, r6, 0
		addi	r6, r6, 4
		rsub	r18, r6, r7
		bgti	r18, .Lloopbss
	.Lendbss:
		// Clear ROM extension table
		addi	r6, r0, __romexttable_start
		addi	r7, r0, __romexttable_end
		rsub	r18, r6, r7
		blei	r18, .Lendret
	.Lloopret:
		swi	r0, r6, 0
		addi	r6, r6, 4
		rsub	r18, r6, r7
		bgti	r18, .Lloopret
	.Lendret:

		// Call Main
		brlid	r15, main
		nop

		// Control never comes here
		bri 0
		nop
		.end _boot

// Exception Handler
		.section .text
		.globl XPfw_Exception
		.align 2
		.ent XPfw_Exception
		.type XPfw_Exception, @function
XPfw_Exception:
// Save ESR to PERS_GLOBAL_STORAGE0 Register
		addik	r3,	r0,	0xffd80050
		mfs	r4,	resr
		swi	r4,	r3,	0
// Save EAR to PERS_GLOBAL_STORAGE1 Register
		addik	r3,	r0,	0xffd80054
		mfs	r4,	rear
		swi	r4,	r3,	0
// Set the FW error bit-0
		addik	r3,	r0,	0xffd6033c
		addik	r4,	r0,	0x10000000
		swi	r4,	r3,	0
//		brai Exception_Handler
		bri 0
		nop
		.end XPfw_Exception
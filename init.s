	.file	"init.c"
	.text
.Ltext0:
	.file 0 "/home/kyarch/Developer/os_lab/lab" "kern/init.c"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"entering test_backtrace %d\n"
.LC1:
	.string	"leaving test_backtrace %d\n"
	.text
	.p2align 4
	.globl	test_backtrace
	.type	test_backtrace, @function
test_backtrace:
.LVL0:
.LFB0:
	.file 1 "kern/init.c"
	.loc 1 13 1 view -0
	.cfi_startproc
	.loc 1 14 2 view .LVU1
	.loc 1 13 1 is_stmt 0 view .LVU2
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	.loc 1 14 2 view .LVU3
	movl	%edi, %esi
	xorl	%eax, %eax
	.loc 1 13 1 view .LVU4
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	.loc 1 14 2 view .LVU5
	leaq	.LC0(%rip), %rbp
	.loc 1 13 1 view .LVU6
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movl	%edi, %ebx
	.loc 1 14 2 view .LVU7
	movq	%rbp, %rdi
.LVL1:
	.loc 1 13 1 view .LVU8
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	.loc 1 14 2 view .LVU9
	call	cprintf@PLT
.LVL2:
	.loc 1 15 2 is_stmt 1 view .LVU10
	.loc 1 15 5 is_stmt 0 view .LVU11
	testl	%ebx, %ebx
	jle	.L2
	.loc 1 16 3 is_stmt 1 view .LVU12
	leal	-1(%rbx), %r12d
.LVL3:
.LBB10:
.LBI10:
	.loc 1 12 1 view .LVU13
.LBB11:
	.loc 1 14 2 view .LVU14
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r12d, %esi
	call	cprintf@PLT
.LVL4:
	.loc 1 15 2 view .LVU15
	.loc 1 15 5 is_stmt 0 view .LVU16
	testl	%r12d, %r12d
	je	.L3
	.loc 1 16 3 is_stmt 1 view .LVU17
	leal	-2(%rbx), %r13d
.LVL5:
.LBB12:
.LBI12:
	.loc 1 12 1 view .LVU18
.LBB13:
	.loc 1 14 2 view .LVU19
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r13d, %esi
	call	cprintf@PLT
.LVL6:
	.loc 1 15 2 view .LVU20
	.loc 1 15 5 is_stmt 0 view .LVU21
	testl	%r13d, %r13d
	je	.L4
	.loc 1 16 3 is_stmt 1 view .LVU22
	leal	-3(%rbx), %r14d
.LVL7:
.LBB14:
.LBI14:
	.loc 1 12 1 view .LVU23
.LBB15:
	.loc 1 14 2 view .LVU24
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r14d, %esi
	call	cprintf@PLT
.LVL8:
	.loc 1 15 2 view .LVU25
	.loc 1 15 5 is_stmt 0 view .LVU26
	testl	%r14d, %r14d
	je	.L5
	.loc 1 16 3 is_stmt 1 view .LVU27
	leal	-4(%rbx), %r15d
.LVL9:
.LBB16:
.LBI16:
	.loc 1 12 1 view .LVU28
.LBB17:
	.loc 1 14 2 view .LVU29
	xorl	%eax, %eax
	movq	%rbp, %rdi
	movl	%r15d, %esi
	call	cprintf@PLT
.LVL10:
	.loc 1 15 2 view .LVU30
	.loc 1 15 5 is_stmt 0 view .LVU31
	testl	%r15d, %r15d
	je	.L6
	.loc 1 16 3 is_stmt 1 view .LVU32
	leal	-5(%rbx), %edi
	call	test_backtrace
.LVL11:
.L7:
	.loc 1 19 2 view .LVU33
	leaq	.LC1(%rip), %rbp
	movl	%r15d, %esi
	xorl	%eax, %eax
	movq	%rbp, %rdi
	call	cprintf@PLT
.LVL12:
.L8:
	.loc 1 19 2 is_stmt 0 view .LVU34
.LBE17:
.LBE16:
	.loc 1 19 2 is_stmt 1 view .LVU35
	movl	%r14d, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	cprintf@PLT
.LVL13:
.L9:
	.loc 1 19 2 is_stmt 0 view .LVU36
.LBE15:
.LBE14:
	.loc 1 19 2 is_stmt 1 view .LVU37
	movl	%r13d, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	cprintf@PLT
.LVL14:
	.loc 1 20 1 is_stmt 0 view .LVU38
	jmp	.L10
	.p2align 4,,10
	.p2align 3
.L3:
.LBE13:
.LBE12:
	.loc 1 18 3 is_stmt 1 view .LVU39
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	.LC1(%rip), %rbp
	xorl	%edi, %edi
	call	mon_backtrace@PLT
.LVL15:
.L10:
	.loc 1 19 2 view .LVU40
	movl	%r12d, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	call	cprintf@PLT
.LVL16:
.L11:
	.loc 1 19 2 is_stmt 0 view .LVU41
.LBE11:
.LBE10:
	.loc 1 19 2 is_stmt 1 view .LVU42
	.loc 1 20 1 is_stmt 0 view .LVU43
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	.loc 1 19 2 view .LVU44
	movl	%ebx, %esi
	movq	%rbp, %rdi
	xorl	%eax, %eax
	.loc 1 20 1 view .LVU45
	popq	%rbx
	.cfi_def_cfa_offset 48
.LVL17:
	.loc 1 20 1 view .LVU46
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	.loc 1 19 2 view .LVU47
	jmp	cprintf@PLT
.LVL18:
	.p2align 4,,10
	.p2align 3
.L2:
	.cfi_restore_state
	.loc 1 18 3 is_stmt 1 view .LVU48
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	.LC1(%rip), %rbp
	xorl	%edi, %edi
	call	mon_backtrace@PLT
.LVL19:
	jmp	.L11
.LVL20:
	.p2align 4,,10
	.p2align 3
.L5:
.LBB27:
.LBB26:
.LBB25:
.LBB24:
.LBB22:
.LBB20:
	.loc 1 18 3 view .LVU49
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	.LC1(%rip), %rbp
	xorl	%edi, %edi
	call	mon_backtrace@PLT
.LVL21:
	jmp	.L8
.LVL22:
	.p2align 4,,10
	.p2align 3
.L4:
	.loc 1 18 3 is_stmt 0 view .LVU50
.LBE20:
.LBE22:
	.loc 1 18 3 is_stmt 1 view .LVU51
	xorl	%edx, %edx
	xorl	%esi, %esi
	leaq	.LC1(%rip), %rbp
	xorl	%edi, %edi
	call	mon_backtrace@PLT
.LVL23:
	jmp	.L9
.LVL24:
	.p2align 4,,10
	.p2align 3
.L6:
.LBB23:
.LBB21:
.LBB19:
.LBB18:
	.loc 1 18 3 view .LVU52
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%edi, %edi
	call	mon_backtrace@PLT
.LVL25:
	jmp	.L7
.LBE18:
.LBE19:
.LBE21:
.LBE23:
.LBE24:
.LBE25:
.LBE26:
.LBE27:
	.cfi_endproc
.LFE0:
	.size	test_backtrace, .-test_backtrace
	.section	.rodata.str1.1
.LC2:
	.string	"6828 decimal is %o octal!\n"
	.text
	.p2align 4
	.globl	i386_init
	.type	i386_init, @function
i386_init:
.LFB1:
	.loc 1 24 1 view -0
	.cfi_startproc
	.loc 1 25 2 view .LVU54
	.loc 1 30 2 view .LVU55
	.loc 1 30 23 is_stmt 0 view .LVU56
	leaq	edata(%rip), %rdi
	.loc 1 30 2 view .LVU57
	leaq	end(%rip), %rdx
	.loc 1 24 1 view .LVU58
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	.loc 1 30 2 view .LVU59
	xorl	%esi, %esi
	subl	%edi, %edx
	call	memset@PLT
.LVL26:
	.loc 1 34 2 is_stmt 1 view .LVU60
	call	cons_init@PLT
.LVL27:
	.loc 1 36 2 view .LVU61
	leaq	.LC2(%rip), %rdi
	movl	$6828, %esi
	xorl	%eax, %eax
	call	cprintf@PLT
.LVL28:
	.loc 1 39 2 view .LVU62
	movl	$5, %edi
	call	test_backtrace
.LVL29:
	.p2align 4,,10
	.p2align 3
.L15:
	.loc 1 42 2 view .LVU63
	.loc 1 43 3 discriminator 1 view .LVU64
	xorl	%edi, %edi
	call	monitor@PLT
.LVL30:
	.loc 1 42 8 view .LVU65
	jmp	.L15
	.cfi_endproc
.LFE1:
	.size	i386_init, .-i386_init
	.section	.rodata.str1.1
.LC3:
	.string	"kernel panic at %s:%d: "
.LC4:
	.string	"\n"
	.text
	.p2align 4
	.globl	_panic
	.type	_panic, @function
_panic:
.LVL31:
.LFB2:
	.loc 1 59 1 view -0
	.cfi_startproc
	.loc 1 59 1 is_stmt 0 view .LVU67
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdx, %rbx
	subq	$208, %rsp
	.cfi_def_cfa_offset 224
	movq	%rcx, 56(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	testb	%al, %al
	je	.L18
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm1, 96(%rsp)
	movaps	%xmm2, 112(%rsp)
	movaps	%xmm3, 128(%rsp)
	movaps	%xmm4, 144(%rsp)
	movaps	%xmm5, 160(%rsp)
	movaps	%xmm6, 176(%rsp)
	movaps	%xmm7, 192(%rsp)
.L18:
	.loc 1 59 1 view .LVU68
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	.loc 1 60 2 is_stmt 1 view .LVU69
	.loc 1 62 2 view .LVU70
	.loc 1 62 5 is_stmt 0 view .LVU71
	cmpq	$0, panicstr(%rip)
	je	.L23
.LVL32:
	.p2align 4,,10
	.p2align 3
.L20:
	.loc 1 77 2 is_stmt 1 view .LVU72
	.loc 1 78 3 discriminator 1 view .LVU73
	xorl	%edi, %edi
	call	monitor@PLT
.LVL33:
	.loc 1 77 8 view .LVU74
	jmp	.L20
.LVL34:
.L23:
	.loc 1 64 2 view .LVU75
	.loc 1 64 11 is_stmt 0 view .LVU76
	movq	%rbx, panicstr(%rip)
	.loc 1 67 2 is_stmt 1 view .LVU77
#APP
# 67 "kern/init.c" 1
	cli; cld
# 0 "" 2
	.loc 1 69 2 view .LVU78
#NO_APP
	leaq	224(%rsp), %rax
	.loc 1 70 2 is_stmt 0 view .LVU79
	movl	%esi, %edx
.LVL35:
	.loc 1 70 2 view .LVU80
	movq	%rdi, %rsi
.LVL36:
	.loc 1 69 2 view .LVU81
	movl	$24, (%rsp)
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	.loc 1 70 2 view .LVU82
	leaq	.LC3(%rip), %rdi
.LVL37:
	.loc 1 69 2 view .LVU83
	movq	%rax, 16(%rsp)
	.loc 1 70 2 is_stmt 1 view .LVU84
	xorl	%eax, %eax
	.loc 1 69 2 is_stmt 0 view .LVU85
	movl	$48, 4(%rsp)
	.loc 1 70 2 view .LVU86
	call	cprintf@PLT
.LVL38:
	.loc 1 71 2 is_stmt 1 view .LVU87
	movq	%rbx, %rdi
	movq	%rsp, %rsi
	call	vcprintf@PLT
.LVL39:
	.loc 1 72 2 view .LVU88
	leaq	.LC4(%rip), %rdi
	xorl	%eax, %eax
	call	cprintf@PLT
.LVL40:
	.loc 1 73 2 view .LVU89
	jmp	.L20
	.cfi_endproc
.LFE2:
	.size	_panic, .-_panic
	.section	.rodata.str1.1
.LC5:
	.string	"kernel warning at %s:%d: "
	.text
	.p2align 4
	.globl	_warn
	.type	_warn, @function
_warn:
.LVL41:
.LFB3:
	.loc 1 84 1 view -0
	.cfi_startproc
	.loc 1 84 1 is_stmt 0 view .LVU91
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdx, %rbx
	subq	$208, %rsp
	.cfi_def_cfa_offset 224
	movq	%rcx, 56(%rsp)
	movq	%r8, 64(%rsp)
	movq	%r9, 72(%rsp)
	testb	%al, %al
	je	.L25
	movaps	%xmm0, 80(%rsp)
	movaps	%xmm1, 96(%rsp)
	movaps	%xmm2, 112(%rsp)
	movaps	%xmm3, 128(%rsp)
	movaps	%xmm4, 144(%rsp)
	movaps	%xmm5, 160(%rsp)
	movaps	%xmm6, 176(%rsp)
	movaps	%xmm7, 192(%rsp)
.L25:
	.loc 1 84 1 view .LVU92
	movq	%fs:40, %rax
	movq	%rax, 24(%rsp)
	xorl	%eax, %eax
	.loc 1 85 2 is_stmt 1 view .LVU93
	.loc 1 87 2 view .LVU94
	leaq	224(%rsp), %rax
	.loc 1 88 2 is_stmt 0 view .LVU95
	movl	%esi, %edx
.LVL42:
	.loc 1 88 2 view .LVU96
	movq	%rdi, %rsi
.LVL43:
	.loc 1 87 2 view .LVU97
	movq	%rax, 8(%rsp)
	leaq	32(%rsp), %rax
	.loc 1 88 2 view .LVU98
	leaq	.LC5(%rip), %rdi
.LVL44:
	.loc 1 87 2 view .LVU99
	movq	%rax, 16(%rsp)
	.loc 1 88 2 is_stmt 1 view .LVU100
	xorl	%eax, %eax
	.loc 1 87 2 is_stmt 0 view .LVU101
	movl	$24, (%rsp)
	movl	$48, 4(%rsp)
	.loc 1 88 2 view .LVU102
	call	cprintf@PLT
.LVL45:
	.loc 1 89 2 is_stmt 1 view .LVU103
	movq	%rbx, %rdi
	movq	%rsp, %rsi
	call	vcprintf@PLT
.LVL46:
	.loc 1 90 2 view .LVU104
	xorl	%eax, %eax
	leaq	.LC4(%rip), %rdi
	call	cprintf@PLT
.LVL47:
	.loc 1 91 2 view .LVU105
	.loc 1 92 1 is_stmt 0 view .LVU106
	movq	24(%rsp), %rax
	subq	%fs:40, %rax
	jne	.L28
	addq	$208, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
.LVL48:
	.loc 1 92 1 view .LVU107
	ret
.LVL49:
.L28:
	.cfi_restore_state
	.loc 1 92 1 view .LVU108
	call	__stack_chk_fail@PLT
.LVL50:
	.cfi_endproc
.LFE3:
	.size	_warn, .-_warn
	.globl	panicstr
	.bss
	.align 8
	.type	panicstr, @object
	.size	panicstr, 8
panicstr:
	.zero	8
	.text
.Letext0:
	.file 2 "<built-in>"
	.file 3 "./inc/stdarg.h"
	.file 4 "./inc/types.h"
	.file 5 "./inc/stdio.h"
	.file 6 "./inc/string.h"
	.file 7 "./kern/monitor.h"
	.file 8 "./kern/console.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x6e4
	.value	0x5
	.byte	0x1
	.byte	0x8
	.long	.Ldebug_abbrev0
	.uleb128 0x13
	.long	.LASF31
	.byte	0x1d
	.long	.LASF0
	.long	.LASF1
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.long	.Ldebug_line0
	.uleb128 0xc
	.long	.LASF13
	.byte	0x3
	.byte	0x6
	.byte	0x1b
	.long	0x3a
	.uleb128 0x14
	.long	.LASF32
	.long	0x43
	.uleb128 0xe
	.long	0x5a
	.long	0x53
	.uleb128 0x15
	.long	0x53
	.byte	0
	.byte	0
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF6
	.uleb128 0x16
	.long	.LASF33
	.byte	0x18
	.byte	0x2
	.byte	0
	.long	0x8f
	.uleb128 0x8
	.long	.LASF2
	.long	0x8f
	.byte	0
	.uleb128 0x8
	.long	.LASF3
	.long	0x8f
	.byte	0x4
	.uleb128 0x8
	.long	.LASF4
	.long	0x96
	.byte	0x8
	.uleb128 0x8
	.long	.LASF5
	.long	0x96
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x17
	.byte	0x8
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.long	.LASF8
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF9
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF10
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF11
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF12
	.uleb128 0x18
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0xc
	.long	.LASF14
	.byte	0x4
	.byte	0x12
	.byte	0x16
	.long	0x8f
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF15
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF16
	.uleb128 0xc
	.long	.LASF17
	.byte	0x4
	.byte	0x22
	.byte	0x12
	.long	0xc2
	.uleb128 0x19
	.long	.LASF27
	.byte	0x1
	.byte	0x33
	.byte	0xd
	.long	0xfe
	.uleb128 0x9
	.byte	0x3
	.quad	panicstr
	.uleb128 0x6
	.long	0x10a
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF18
	.uleb128 0x1a
	.long	0x103
	.uleb128 0x9
	.long	.LASF19
	.byte	0x5
	.byte	0x17
	.byte	0x5
	.long	0xbb
	.long	0x12a
	.uleb128 0x4
	.long	0xfe
	.uleb128 0x4
	.long	0x12a
	.byte	0
	.uleb128 0x6
	.long	0x5a
	.uleb128 0x1b
	.long	.LASF29
	.byte	0x7
	.byte	0xc
	.byte	0x6
	.long	0x141
	.uleb128 0x4
	.long	0x141
	.byte	0
	.uleb128 0x6
	.long	0x146
	.uleb128 0x1c
	.long	.LASF34
	.uleb128 0x1d
	.long	.LASF35
	.byte	0x8
	.byte	0x14
	.byte	0x6
	.uleb128 0x9
	.long	.LASF20
	.byte	0x6
	.byte	0x11
	.byte	0x8
	.long	0x96
	.long	0x173
	.uleb128 0x4
	.long	0x96
	.uleb128 0x4
	.long	0xbb
	.uleb128 0x4
	.long	0xdc
	.byte	0
	.uleb128 0x9
	.long	.LASF21
	.byte	0x7
	.byte	0x11
	.byte	0x5
	.long	0xbb
	.long	0x193
	.uleb128 0x4
	.long	0xbb
	.uleb128 0x4
	.long	0x193
	.uleb128 0x4
	.long	0x141
	.byte	0
	.uleb128 0x6
	.long	0x198
	.uleb128 0x6
	.long	0x103
	.uleb128 0x9
	.long	.LASF22
	.byte	0x5
	.byte	0x16
	.byte	0x5
	.long	0xbb
	.long	0x1b4
	.uleb128 0x4
	.long	0xfe
	.uleb128 0xd
	.byte	0
	.uleb128 0xf
	.long	.LASF25
	.byte	0x53
	.quad	.LFB3
	.quad	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.long	0x290
	.uleb128 0xa
	.long	.LASF23
	.byte	0x53
	.byte	0x13
	.long	0xfe
	.long	.LLST12
	.long	.LVUS12
	.uleb128 0xa
	.long	.LASF24
	.byte	0x53
	.byte	0x1d
	.long	0xbb
	.long	.LLST13
	.long	.LVUS13
	.uleb128 0x10
	.string	"fmt"
	.byte	0x53
	.byte	0x2f
	.long	0xfe
	.long	.LLST14
	.long	.LVUS14
	.uleb128 0xd
	.uleb128 0x11
	.string	"ap"
	.byte	0x55
	.long	0x2e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x2
	.quad	.LVL45
	.long	0x19d
	.long	0x244
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC5
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x2
	.quad	.LVL46
	.long	0x10f
	.long	0x263
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x2
	.quad	.LVL47
	.long	0x19d
	.long	0x282
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.uleb128 0x12
	.quad	.LVL50
	.long	0x6de
	.byte	0
	.uleb128 0x1e
	.long	.LASF36
	.byte	0x1
	.byte	0x3a
	.byte	0x1
	.quad	.LFB2
	.quad	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.long	0x37c
	.uleb128 0xa
	.long	.LASF23
	.byte	0x3a
	.byte	0x14
	.long	0xfe
	.long	.LLST9
	.long	.LVUS9
	.uleb128 0xa
	.long	.LASF24
	.byte	0x3a
	.byte	0x1e
	.long	0xbb
	.long	.LLST10
	.long	.LVUS10
	.uleb128 0x10
	.string	"fmt"
	.byte	0x3a
	.byte	0x30
	.long	0xfe
	.long	.LLST11
	.long	.LVUS11
	.uleb128 0xd
	.uleb128 0x11
	.string	"ap"
	.byte	0x3c
	.long	0x2e
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.uleb128 0x1f
	.long	.LASF37
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.uleb128 0x2
	.quad	.LVL33
	.long	0x12f
	.long	0x314
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x2
	.quad	.LVL38
	.long	0x19d
	.long	0x341
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC3
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0
	.uleb128 0x2
	.quad	.LVL39
	.long	0x10f
	.long	0x360
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0x91
	.sleb128 -224
	.byte	0
	.uleb128 0x5
	.quad	.LVL40
	.long	0x19d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC4
	.byte	0
	.byte	0
	.uleb128 0xf
	.long	.LASF26
	.byte	0x17
	.quad	.LFB1
	.quad	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.long	0x425
	.uleb128 0x20
	.long	.LASF28
	.byte	0x1
	.byte	0x19
	.byte	0xe
	.long	0x425
	.uleb128 0x21
	.string	"end"
	.byte	0x1
	.byte	0x19
	.byte	0x17
	.long	0x425
	.uleb128 0x2
	.quad	.LVL26
	.long	0x153
	.long	0x3c7
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.quad	.LVL27
	.long	0x14b
	.uleb128 0x2
	.quad	.LVL28
	.long	0x19d
	.long	0x3fa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC2
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa
	.value	0x1aac
	.byte	0
	.uleb128 0x2
	.quad	.LVL29
	.long	0x430
	.long	0x411
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x35
	.byte	0
	.uleb128 0x5
	.quad	.LVL30
	.long	0x12f
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0xe
	.long	0x103
	.long	0x430
	.uleb128 0x22
	.byte	0
	.uleb128 0x23
	.long	.LASF30
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.byte	0x1
	.long	0x448
	.uleb128 0x24
	.string	"x"
	.byte	0x1
	.byte	0xc
	.byte	0x14
	.long	0xbb
	.byte	0
	.uleb128 0x25
	.long	0x430
	.quad	.LFB0
	.quad	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.long	0x6de
	.uleb128 0x7
	.long	0x43d
	.long	.LLST0
	.long	.LVUS0
	.uleb128 0xb
	.long	0x430
	.quad	.LBI10
	.byte	.LVU13
	.long	.LLRL1
	.long	0x67c
	.uleb128 0x7
	.long	0x43d
	.long	.LLST2
	.long	.LVUS2
	.uleb128 0xb
	.long	0x430
	.quad	.LBI12
	.byte	.LVU18
	.long	.LLRL3
	.long	0x622
	.uleb128 0x7
	.long	0x43d
	.long	.LLST4
	.long	.LVUS4
	.uleb128 0xb
	.long	0x430
	.quad	.LBI14
	.byte	.LVU23
	.long	.LLRL5
	.long	0x5c8
	.uleb128 0x7
	.long	0x43d
	.long	.LLST6
	.long	.LVUS6
	.uleb128 0xb
	.long	0x430
	.quad	.LBI16
	.byte	.LVU28
	.long	.LLRL7
	.long	0x56e
	.uleb128 0x7
	.long	0x43d
	.long	.LLST8
	.long	.LVUS8
	.uleb128 0x2
	.quad	.LVL10
	.long	0x19d
	.long	0x51a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL11
	.long	0x430
	.long	0x532
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x73
	.sleb128 -5
	.byte	0
	.uleb128 0x2
	.quad	.LVL12
	.long	0x19d
	.long	0x550
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL25
	.long	0x173
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL8
	.long	0x19d
	.long	0x58c
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL13
	.long	0x19d
	.long	0x5aa
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7e
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL21
	.long	0x173
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL6
	.long	0x19d
	.long	0x5e6
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL14
	.long	0x19d
	.long	0x604
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7d
	.sleb128 0
	.byte	0
	.uleb128 0x5
	.quad	.LVL23
	.long	0x173
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL4
	.long	0x19d
	.long	0x640
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.uleb128 0x2
	.quad	.LVL15
	.long	0x173
	.long	0x661
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x5
	.quad	.LVL16
	.long	0x19d
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x7c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2
	.quad	.LVL2
	.long	0x19d
	.long	0x69a
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x26
	.quad	.LVL18
	.long	0x19d
	.long	0x6c0
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x9
	.byte	0x3
	.quad	.LC1
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x3
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0
	.uleb128 0x5
	.quad	.LVL19
	.long	0x173
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x55
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x54
	.uleb128 0x1
	.byte	0x30
	.uleb128 0x1
	.uleb128 0x1
	.byte	0x51
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x27
	.long	.LASF38
	.long	.LASF38
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x49
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x7e
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.sleb128 8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 2
	.uleb128 0x3b
	.uleb128 0x21
	.sleb128 0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x59
	.uleb128 0x21
	.sleb128 16
	.uleb128 0x57
	.uleb128 0x21
	.sleb128 3
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0x21
	.sleb128 1
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0x21
	.sleb128 10
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x48
	.byte	0
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x7f
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x1f
	.uleb128 0x1b
	.uleb128 0x1f
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x87
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xa
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x7
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x48
	.byte	0x1
	.uleb128 0x7d
	.uleb128 0x1
	.uleb128 0x82
	.uleb128 0x19
	.uleb128 0x7f
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loclists,"",@progbits
	.long	.Ldebug_loc3-.Ldebug_loc2
.Ldebug_loc2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.Ldebug_loc0:
.LVUS12:
	.uleb128 0
	.uleb128 .LVU99
	.uleb128 .LVU99
	.uleb128 .LVU103
	.uleb128 .LVU103
	.uleb128 0
.LLST12:
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LVL44-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL44-.Ltext0
	.uleb128 .LVL45-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL45-1-.Ltext0
	.uleb128 .LFE3-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS13:
	.uleb128 0
	.uleb128 .LVU97
	.uleb128 .LVU97
	.uleb128 .LVU103
	.uleb128 .LVU103
	.uleb128 0
.LLST13:
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LVL43-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL43-.Ltext0
	.uleb128 .LVL45-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL45-1-.Ltext0
	.uleb128 .LFE3-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS14:
	.uleb128 0
	.uleb128 .LVU96
	.uleb128 .LVU96
	.uleb128 .LVU107
	.uleb128 .LVU107
	.uleb128 .LVU108
	.uleb128 .LVU108
	.uleb128 0
.LLST14:
	.byte	0x4
	.uleb128 .LVL41-.Ltext0
	.uleb128 .LVL42-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL42-.Ltext0
	.uleb128 .LVL48-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL48-.Ltext0
	.uleb128 .LVL49-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x51
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL49-.Ltext0
	.uleb128 .LFE3-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS9:
	.uleb128 0
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 .LVU83
	.uleb128 .LVU83
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 0
.LLST9:
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL32-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL37-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL37-.Ltext0
	.uleb128 .LVL38-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL38-1-.Ltext0
	.uleb128 .LFE2-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0
.LVUS10:
	.uleb128 0
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 .LVU81
	.uleb128 .LVU81
	.uleb128 .LVU87
	.uleb128 .LVU87
	.uleb128 0
.LLST10:
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL32-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL36-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL36-.Ltext0
	.uleb128 .LVL38-1-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL38-1-.Ltext0
	.uleb128 .LFE2-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.byte	0
.LVUS11:
	.uleb128 0
	.uleb128 .LVU72
	.uleb128 .LVU72
	.uleb128 .LVU75
	.uleb128 .LVU75
	.uleb128 .LVU80
	.uleb128 .LVU80
	.uleb128 0
.LLST11:
	.byte	0x4
	.uleb128 .LVL31-.Ltext0
	.uleb128 .LVL32-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL32-.Ltext0
	.uleb128 .LVL34-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL34-.Ltext0
	.uleb128 .LVL35-.Ltext0
	.uleb128 0x1
	.byte	0x51
	.byte	0x4
	.uleb128 .LVL35-.Ltext0
	.uleb128 .LFE2-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS0:
	.uleb128 0
	.uleb128 .LVU8
	.uleb128 .LVU8
	.uleb128 .LVU46
	.uleb128 .LVU46
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 .LVU48
	.uleb128 0
.LLST0:
	.byte	0x4
	.uleb128 .LVL0-.Ltext0
	.uleb128 .LVL1-.Ltext0
	.uleb128 0x1
	.byte	0x55
	.byte	0x4
	.uleb128 .LVL1-.Ltext0
	.uleb128 .LVL17-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0x4
	.uleb128 .LVL17-.Ltext0
	.uleb128 .LVL18-1-.Ltext0
	.uleb128 0x1
	.byte	0x54
	.byte	0x4
	.uleb128 .LVL18-1-.Ltext0
	.uleb128 .LVL18-.Ltext0
	.uleb128 0x4
	.byte	0xa3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.byte	0x4
	.uleb128 .LVL18-.Ltext0
	.uleb128 .LFE0-.Ltext0
	.uleb128 0x1
	.byte	0x53
	.byte	0
.LVUS2:
	.uleb128 .LVU13
	.uleb128 .LVU41
	.uleb128 .LVU49
	.uleb128 0
.LLST2:
	.byte	0x4
	.uleb128 .LVL3-.Ltext0
	.uleb128 .LVL16-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LFE0-.Ltext0
	.uleb128 0x1
	.byte	0x5c
	.byte	0
.LVUS4:
	.uleb128 .LVU18
	.uleb128 .LVU38
	.uleb128 .LVU49
	.uleb128 0
.LLST4:
	.byte	0x4
	.uleb128 .LVL5-.Ltext0
	.uleb128 .LVL14-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LFE0-.Ltext0
	.uleb128 0x1
	.byte	0x5d
	.byte	0
.LVUS6:
	.uleb128 .LVU23
	.uleb128 .LVU36
	.uleb128 .LVU49
	.uleb128 .LVU50
	.uleb128 .LVU52
	.uleb128 0
.LLST6:
	.byte	0x4
	.uleb128 .LVL7-.Ltext0
	.uleb128 .LVL13-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL20-.Ltext0
	.uleb128 .LVL22-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LFE0-.Ltext0
	.uleb128 0x1
	.byte	0x5e
	.byte	0
.LVUS8:
	.uleb128 .LVU28
	.uleb128 .LVU34
	.uleb128 .LVU52
	.uleb128 0
.LLST8:
	.byte	0x4
	.uleb128 .LVL9-.Ltext0
	.uleb128 .LVL12-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0x4
	.uleb128 .LVL24-.Ltext0
	.uleb128 .LFE0-.Ltext0
	.uleb128 0x1
	.byte	0x5f
	.byte	0
.Ldebug_loc3:
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_rnglists,"",@progbits
.Ldebug_ranges0:
	.long	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.value	0x5
	.byte	0x8
	.byte	0
	.long	0
.LLRL1:
	.byte	0x4
	.uleb128 .LBB10-.Ltext0
	.uleb128 .LBE10-.Ltext0
	.byte	0x4
	.uleb128 .LBB27-.Ltext0
	.uleb128 .LBE27-.Ltext0
	.byte	0
.LLRL3:
	.byte	0x4
	.uleb128 .LBB12-.Ltext0
	.uleb128 .LBE12-.Ltext0
	.byte	0x4
	.uleb128 .LBB25-.Ltext0
	.uleb128 .LBE25-.Ltext0
	.byte	0
.LLRL5:
	.byte	0x4
	.uleb128 .LBB14-.Ltext0
	.uleb128 .LBE14-.Ltext0
	.byte	0x4
	.uleb128 .LBB22-.Ltext0
	.uleb128 .LBE22-.Ltext0
	.byte	0x4
	.uleb128 .LBB23-.Ltext0
	.uleb128 .LBE23-.Ltext0
	.byte	0
.LLRL7:
	.byte	0x4
	.uleb128 .LBB16-.Ltext0
	.uleb128 .LBE16-.Ltext0
	.byte	0x4
	.uleb128 .LBB19-.Ltext0
	.uleb128 .LBE19-.Ltext0
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF30:
	.string	"test_backtrace"
.LASF17:
	.string	"size_t"
.LASF32:
	.string	"__builtin_va_list"
.LASF3:
	.string	"fp_offset"
.LASF34:
	.string	"Trapframe"
.LASF13:
	.string	"va_list"
.LASF10:
	.string	"unsigned char"
.LASF27:
	.string	"panicstr"
.LASF28:
	.string	"edata"
.LASF6:
	.string	"long unsigned int"
.LASF36:
	.string	"_panic"
.LASF12:
	.string	"short unsigned int"
.LASF38:
	.string	"__stack_chk_fail"
.LASF20:
	.string	"memset"
.LASF2:
	.string	"gp_offset"
.LASF7:
	.string	"unsigned int"
.LASF5:
	.string	"reg_save_area"
.LASF19:
	.string	"vcprintf"
.LASF16:
	.string	"long long unsigned int"
.LASF24:
	.string	"line"
.LASF4:
	.string	"overflow_arg_area"
.LASF37:
	.string	"dead"
.LASF29:
	.string	"monitor"
.LASF15:
	.string	"long long int"
.LASF18:
	.string	"char"
.LASF23:
	.string	"file"
.LASF22:
	.string	"cprintf"
.LASF11:
	.string	"short int"
.LASF26:
	.string	"i386_init"
.LASF14:
	.string	"uint32_t"
.LASF31:
	.string	"GNU C17 13.1.1 20230429 -mtune=generic -march=x86-64 -ggdb -O2 -fno-builtin"
.LASF9:
	.string	"signed char"
.LASF33:
	.string	"__va_list_tag"
.LASF8:
	.string	"_Bool"
.LASF25:
	.string	"_warn"
.LASF21:
	.string	"mon_backtrace"
.LASF35:
	.string	"cons_init"
	.section	.debug_line_str,"MS",@progbits,1
.LASF1:
	.string	"/home/kyarch/Developer/os_lab/lab"
.LASF0:
	.string	"kern/init.c"
	.ident	"GCC: (GNU) 13.1.1 20230429"
	.section	.note.GNU-stack,"",@progbits

	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi0:
	.cfi_def_cfa_offset 16
Lcfi1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi2:
	.cfi_def_cfa_register %rbp
	leaq	L_.str(%rip), %rdi
	movl	$140, %esi
	movl	$140, %edx
	movl	$140, %ecx
	movl	$140, %r8d
	xorl	%eax, %eax
	callq	_printf
	xorl	%eax, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_fmakeRGBA
	.p2align	4, 0x90
_fmakeRGBA:                             ## @fmakeRGBA
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi3:
	.cfi_def_cfa_offset 16
Lcfi4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi5:
	.cfi_def_cfa_register %rbp
                                        ## kill: %ESI<def> %ESI<kill> %RSI<def>
                                        ## kill: %EDI<def> %EDI<kill> %RDI<def>
	shll	$24, %edi
	shll	$16, %esi
	leal	(%rsi,%rdi), %eax
	shll	$8, %edx
	orl	%edx, %eax
	orl	%ecx, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_fsetR
	.p2align	4, 0x90
_fsetR:                                 ## @fsetR
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi6:
	.cfi_def_cfa_offset 16
Lcfi7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi8:
	.cfi_def_cfa_register %rbp
                                        ## kill: %ESI<def> %ESI<kill> %RSI<def>
                                        ## kill: %EDI<def> %EDI<kill> %RDI<def>
	shll	$24, %esi
	andl	$16777215, %edi         ## imm = 0xFFFFFF
	leal	(%rdi,%rsi), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_fsetG
	.p2align	4, 0x90
_fsetG:                                 ## @fsetG
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi9:
	.cfi_def_cfa_offset 16
Lcfi10:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi11:
	.cfi_def_cfa_register %rbp
                                        ## kill: %ESI<def> %ESI<kill> %RSI<def>
                                        ## kill: %EDI<def> %EDI<kill> %RDI<def>
	shll	$16, %esi
	andl	$-16711681, %edi        ## imm = 0xFF00FFFF
	leal	(%rdi,%rsi), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_fsetB
	.p2align	4, 0x90
_fsetB:                                 ## @fsetB
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi12:
	.cfi_def_cfa_offset 16
Lcfi13:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi14:
	.cfi_def_cfa_register %rbp
                                        ## kill: %ESI<def> %ESI<kill> %RSI<def>
                                        ## kill: %EDI<def> %EDI<kill> %RDI<def>
	shll	$8, %esi
	andl	$-65281, %edi           ## imm = 0xFFFF00FF
	leal	(%rdi,%rsi), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_fsetA
	.p2align	4, 0x90
_fsetA:                                 ## @fsetA
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi15:
	.cfi_def_cfa_offset 16
Lcfi16:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi17:
	.cfi_def_cfa_register %rbp
                                        ## kill: %ESI<def> %ESI<kill> %RSI<def>
                                        ## kill: %EDI<def> %EDI<kill> %RDI<def>
	andl	$-256, %edi
	leal	(%rdi,%rsi), %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_fgetR
	.p2align	4, 0x90
_fgetR:                                 ## @fgetR
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi18:
	.cfi_def_cfa_offset 16
Lcfi19:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi20:
	.cfi_def_cfa_register %rbp
	shrl	$24, %edi
	movl	%edi, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_fgetG
	.p2align	4, 0x90
_fgetG:                                 ## @fgetG
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi21:
	.cfi_def_cfa_offset 16
Lcfi22:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi23:
	.cfi_def_cfa_register %rbp
	shrl	$16, %edi
	movzbl	%dil, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_fgetB
	.p2align	4, 0x90
_fgetB:                                 ## @fgetB
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi24:
	.cfi_def_cfa_offset 16
Lcfi25:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi26:
	.cfi_def_cfa_register %rbp
	movl	%edi, %eax
	movzbl	%ah, %eax  # NOREX
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_fgetA
	.p2align	4, 0x90
_fgetA:                                 ## @fgetA
	.cfi_startproc
## BB#0:
	pushq	%rbp
Lcfi27:
	.cfi_def_cfa_offset 16
Lcfi28:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Lcfi29:
	.cfi_def_cfa_register %rbp
	movzbl	%dil, %eax
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"(%d,%d,%d,%d)\n"


.subsections_via_symbols

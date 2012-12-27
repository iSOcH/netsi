	.file	"1a_2.c"
	.section	.rodata
.LC0:
	.string	"05"
.LC1:
	.string	"04"
.LC2:
	.string	"03"
.LC3:
	.string	"02"
.LC4:
	.string	"01"
.LC5:
	.string	"%s%s%s%s%s%s%s%s%s%s%s%s"
.LC6:
	.string	"12"
.LC7:
	.string	"11"
.LC8:
	.string	"10"
.LC9:
	.string	"09"
.LC10:
	.string	"08"
.LC11:
	.string	"07"
.LC12:
	.string	"06"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	$.LC6, 48(%rsp)
	movq	$.LC7, 40(%rsp)
	movq	$.LC8, 32(%rsp)
	movq	$.LC9, 24(%rsp)
	movq	$.LC10, 16(%rsp)
	movq	$.LC11, 8(%rsp)
	movq	$.LC12, (%rsp)
	movl	$.LC0, %r9d
	movl	$.LC1, %r8d
	movl	$.LC2, %ecx
	movl	$.LC3, %edx
	movl	$.LC4, %esi
	movl	$.LC5, %edi
	movl	$0, %eax
	call	printf
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.ident	"GCC: (GNU) 4.7.2"
	.section	.note.GNU-stack,"",@progbits

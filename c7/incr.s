	.file	"incr.c"
	.text
	.globl	incr
	.type	incr, @function
incr:
.LFB23:
	.cfi_startproc
	endbr64
	movq	(%rdi), %rax
	addq	%rax, %rsi
	movq	%rsi, (%rdi)
	ret
	.cfi_endproc
.LFE23:
	.size	incr, .-incr
	.globl	call_incr
	.type	call_incr, @function
call_incr:
.LFB24:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%fs:40, %rax
	movq	%rax, 8(%rsp)
	xorl	%eax, %eax
	movq	$15213, (%rsp)
	movq	%rsp, %rdi
	movl	$3000, %esi
	call	incr
	addq	(%rsp), %rax
	movq	8(%rsp), %rdx
	subq	%fs:40, %rdx
	jne	.L5
	addq	$24, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
.L5:
	.cfi_restore_state
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE24:
	.size	call_incr, .-call_incr
	.ident	"GCC: (Ubuntu 11.3.0-1ubuntu1~22.04) 11.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:

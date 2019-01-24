section .text
	global _ft_memset

_ft_memset:
	push rbp
	mov rbp, rsp
	and rsp, -16
	push rdi
	mov rcx, rdx
	mov rax, rsi
	rep stosb
	pop rax
	leave
	ret

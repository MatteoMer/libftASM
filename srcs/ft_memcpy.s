section .text
	global _ft_memcpy

_ft_memcpy:
	push rbp
	mov rbp, rsp
	and rsp, -16
	push rdi
	mov rcx, rdx
	rep movsb
	pop rax
	leave
	ret

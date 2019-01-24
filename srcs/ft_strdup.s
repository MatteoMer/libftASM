section .text
	global _ft_strdup
	extern _ft_strlen
	extern _ft_memcpy
	extern _malloc

_ft_strdup:
	push rbp
	mov rbp, rsp
	and rbp, -16
	push rdi
	call _ft_strlen
	push rax
	mov rdi, rax
	call _malloc
	pop rdx
	pop rsi
	mov rdi, rax
	call _ft_memcpy
	leave
	ret

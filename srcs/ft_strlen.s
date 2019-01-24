section .text
	global _ft_strlen

_ft_strlen:
	mov ax, 0
	mov rdx, rdi
	repnz scasb
	sub rdi, rdx
	mov rax, rdi
	dec rax
	ret

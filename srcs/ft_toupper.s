section .text
	global _ft_toupper
	extern _ft_islower

_ft_toupper:
	call _ft_islower
	cmp rax, 1
	jz do_change
	mov rax, rdi
	ret

do_change:
	sub rdi, 32
	mov rax, rdi
	ret

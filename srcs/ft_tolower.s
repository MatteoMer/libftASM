section .text
	global _ft_tolower
	extern _ft_isupper

_ft_tolower:
	call _ft_isupper
	cmp rax, 1
	jz do_change
	mov rax, rdi
	ret

do_change:
	add rdi, 32
	mov rax, rdi
	ret

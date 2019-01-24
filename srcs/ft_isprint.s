section .text
	global _ft_isprint

_ft_isprint:
	cmp rdi, 32
	jb ret_false
	cmp rdi, 126
	ja ret_false
	mov rax, 1
	ret


ret_false:
	mov rax, 0
	ret

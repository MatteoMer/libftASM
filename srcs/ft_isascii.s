section .text
	global _ft_isascii

_ft_isascii:
	cmp rdi, 127
	ja ret_false
	mov rax, 1
	ret

ret_false:
	mov rax, 0
	ret

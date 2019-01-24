section .text
	global _ft_isdigit

_ft_isdigit:
	cmp rdi, '0'
	jb ret_false
	cmp rdi, '9'
	ja ret_false
	mov rax, 1
	ret

ret_false:
	mov rax, 0
	ret

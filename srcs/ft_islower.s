section .text
	global _ft_islower

_ft_islower:
	cmp rdi, 'a'
	jb ret_false
	cmp rdi, 'z'
	ja ret_false
	mov rax, 1
	ret


ret_false:
	mov rax, 0
	ret

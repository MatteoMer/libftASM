section .text
global _ft_isupper

_ft_isupper:
	cmp rdi, 'A'
	jb ret_false
	cmp rdi, 'Z'
	ja ret_false
	mov rax, 1
	ret


ret_false:
	mov rax, 0
	ret

section .text
	global _ft_isalpha
	extern _ft_islower
	extern _ft_isupper

_ft_isalpha:
	call _ft_islower
	cmp rax, 1
	jz ret_true
	call _ft_isupper
	ret

ret_true:
	ret

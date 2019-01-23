section .text
	global _ft_bzero

;void		ft_bzero(void *s, size_t size)

_ft_bzero:
	cmp rsi, 0
	jnz do_bzero
	ret

do_bzero:
	mov byte [rdi+rsi-1], 0
	dec rsi
	jmp _ft_bzero

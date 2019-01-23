section .text
	global _ft_strcat

;char		*ft_strcat(char *s1, char *s2)
_ft_strcat:
	mov rbx, rdi
	jmp do_strcat
	ret
	
do_strcat:
	cmp byte [rbx], 0
	jz do_concat
	inc rbx
	jmp do_strcat


do_concat:
	cmp byte [rsi], 0
	jz ret_strcat
	mov rcx, [rsi]
	mov [rbx], rcx
	inc rsi
	inc rbx
	jmp do_concat

ret_strcat:
	mov byte [rbx], 0
	mov rax, rdi
	ret

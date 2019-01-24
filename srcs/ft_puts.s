%define MACHO_SYSCALL(nb) 0x2000000 | nb
%define STDOUT 1
%define WRITE 4

section .text
	global _ft_puts
	extern _ft_strlen

_ft_puts:
	push rbp
	mov rbp, rsp
	and rbp, -16
	push rdi
	call _ft_strlen
	pop rdi
	mov rdx, rax
	mov rsi, rdi
	mov rdi, STDOUT
	mov rax, MACHO_SYSCALL(WRITE)
	syscall
	leave
	ret

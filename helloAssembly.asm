# x86 Assembly Basics

.global _start
.intel_syntax
.section .text

_start:
	# Write syscall
	mov %eax, 4
	mov %ebx, 1 # stdout = 1 stdin = 0
	lea %ecx, [message]
	mov %edx, 17
	int 0x80

	# Exit syscall
	mov %eax, 1
	mov %ebx, 65
	int 0x80 

# basic print sting out to stdout

.section .data
	message:
	.ascii "Hello, Assembly\n"


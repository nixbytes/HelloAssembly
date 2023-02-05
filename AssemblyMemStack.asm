# x86 Assembly Basics

.global _start
.intel_syntax
.section .text

# Basic string to be push on teh stacks and write it out to stdout


_start:
	push 0x0841424


	# Exit syscall
	mov %eax, 1
	mov %ebx, 65
	int 0x80 

# basic print sting out to stdout

.section .data
	message:
	.ascii "Hello, Assembly\n"


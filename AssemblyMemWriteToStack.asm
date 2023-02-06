# x86 Assembly Basics

.global _start
.intel_syntax
.section .text

# Basic string to be push on teh stacks and write it out to stdout


_start:
	mov dword ptr [%esp], 0x0a434241
	mov %eax, 4 # write = 4
	mov %ebx, 1 # stdout = 1
	mov %ecx, %esp
	mov %edx, 4
	int 0x80
	# Exit syscall
	mov %eax, 1
	mov %ebx, 65
	int 0x80 

# basic print sting out to stdout

.section .data
	message:


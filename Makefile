default:
	as helloAssembly.asm --32 -o helloAssembly.o
	gcc -o helloAssembly.elf -m32 helloAssembly.o -nostdlib
	@./helloAssembly.elf

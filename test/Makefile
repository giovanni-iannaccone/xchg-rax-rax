all:
	nasm -f elf64 -o test.o test.s
	ld -m elf_x86_64 -o a.out test.o

all32:
	nasm -f elf32 -o test.o test.s
	ld -m elf_i386 -o a.out test.o

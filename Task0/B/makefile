all: task0b 

task0b: start.o
	ld -m elf_i386 start.o -o task0b

start.o: start.s
	nasm -f elf32 start.s -o start.o

.PHONY: clean

clean:
	rm -f *.o task0b
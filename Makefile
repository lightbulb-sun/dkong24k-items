ASM=hack.asm
HACK=hack.col

all:
	z80asm $(ASM) -o $(HACK)

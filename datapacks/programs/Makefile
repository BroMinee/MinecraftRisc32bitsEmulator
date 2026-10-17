CC      = riscv32-unknown-linux-gnu-gcc
LD      = riscv32-unknown-linux-gnu-ld
OBJCOPY = riscv32-unknown-linux-gnu-objcopy
OBJDUMP = riscv32-unknown-linux-gnu-objdump

CFLAGS  = -march=rv32imf -mabi=ilp32f -O3 -ffreestanding -nostdlib

SRCS    = main.c lib/stdio.c lib/display.c
OBJS    = $(SRCS:.c=.o)
TARGET  = main
ELF     = main.elf

.PHONY: all clean

all: $(TARGET) output_dump.txt main.s

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

$(ELF): $(OBJS)
	$(LD) -T linker.ld -o $@ $(OBJS)

main.s: $(ELF)
	$(OBJDUMP) -d $< > $@

$(TARGET): $(ELF)
	$(OBJCOPY) -O binary $< $@

output_dump.txt: $(TARGET)
	hexdump -v -C $< > $@
	@echo "Build complete: $< ($$(wc -c < $<) bytes)"

clean:
	rm -f $(OBJS) $(ELF) $(TARGET) output_dump.txt main.s

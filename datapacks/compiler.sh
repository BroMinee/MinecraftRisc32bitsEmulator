#!/bin/bash

PATH=/opt/riscv/bin:$PATH

set -e
# set -x

if [ "$#" -lt 1 ]; then
    echo "Usage: $0 <source_file.c | source_file.s>"
    echo "Example: ./compile_riscv.sh main.c"
    exit 1
fi

# Input file
SOURCE_FILE="$1"
BASENAME=$(basename "$SOURCE_FILE" | cut -f 1 -d '.')
EXTENSION="${SOURCE_FILE##*.}"

# Output files
OBJ_FILE="${BASENAME}.o"
ELF_FILE="${BASENAME}.elf"
BIN_FILE="${BASENAME}"

COMPILER="riscv32-unknown-linux-gnu-gcc"
LINKER="riscv32-unknown-linux-gnu-ld"
OBJCOPY="riscv32-unknown-linux-gnu-objcopy"

# Compile C file
if [ "$EXTENSION" == "c" ]; then
    echo "Compiling C file: $SOURCE_FILE"
    $COMPILER -march=rv32im -O3 -mabi=ilp32 -ffreestanding -nostdlib -c "$SOURCE_FILE" -o "$OBJ_FILE"
    if [ $? -ne 0 ]; then
        echo "Error: Compilation of C file failed."
        exit 2
    fi
    $COMPILER -march=rv32im -O3 -mabi=ilp32 -ffreestanding -nostdlib -S "$SOURCE_FILE"
    if [ $? -ne 0 ]; then
	echo "Error: Compilation of C file failed (compiler)."
        exit 2
    fi
elif [ "$EXTENSION" == "s" ]; then
    echo "Compiling s file: $SOURCE_FILE"
    $COMPILER -march=rv32im -mabi=ilp32 -c "$SOURCE_FILE" -o "$OBJ_FILE"
    if [ $? -ne 0 ]; then
        echo "Error: Compilation of s file failed."
        exit 2
    fi
    $COMPILER -march=rv32im -mabi=ilp32 -S "$SOURCE_FILE"
    if [ $? -ne 0 ]; then
	echo "Error: Compilation of s file failed (compiler)."
        exit 2
    fi
else
    echo "Error: Unsupported file extension '$EXTENSION'. Only .c or .s is allowed."
    exit 4
fi

# Link the object file
echo "Linking $OBJ_FILE to $ELF_FILE..."
$LINKER -Ttext=0x0000 -o "$ELF_FILE" "$OBJ_FILE"
if [ $? -ne 0 ]; then
    echo "Error: Linking failed."
    exit 5
fi

# Convert to raw binary
echo "Converting $ELF_FILE to $BIN_FILE..."
$OBJCOPY -O binary "$ELF_FILE" "$BIN_FILE"
if [ $? -ne 0 ]; then
    echo "Error: Failed to generate raw binary."
    exit 6
fi

echo "Compilation successful! Output: $BIN_FILE"

# Optional: Display binary content
echo "Hexdump of $BIN_FILE:"
hexdump -v -C "$BIN_FILE" > output_dump.txt
echo "Hexdump saved to output_dump.txt"
echo "Done!"

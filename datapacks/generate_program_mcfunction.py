import os
import struct


def hex_to_signed32(val):
    """Convert unsigned 32-bit int to signed 32-bit int (for Minecraft storage)."""
    return struct.unpack('>i', struct.pack('>I', val & 0xFFFFFFFF))[0]


def parse_hexdump(lines):
    """Parse hexdump lines into a flat list of byte values."""
    hex_lines = ["".join(line.strip().split("|")[0].split(" ")[1:]) for line in lines]
    program = "".join(hex_lines)
    if len(program) % 2 != 0:
        raise Exception("Invalid length of hex data")
    return [int(program[i:i+2], 16) for i in range(0, len(program), 2)]


with open(os.path.join("programs", "output_dump.txt"), 'r') as f:
    lines = f.readlines()

program_bytes = parse_hexdump(lines)

FUNC_DIR = os.path.join("Computer", "data", "computer", "function")
MAX_CYCLE = 500000

# Generate program_load.mcfunction using storage-based RAM
with open(os.path.join(FUNC_DIR, "program_load.mcfunction"), 'w') as f:
    for addr in range(0, len(program_bytes), 4):
        word = 0
        for i in range(4):
            if addr + i < len(program_bytes):
                word |= program_bytes[addr + i] << (i * 8)
        if word == 0:
            continue  # skip zero words (uninitialized memory)
        signed_word = hex_to_signed32(word)
        f.write(f"data modify storage computer:ram_{addr} value set value {signed_word}\n")
    f.write(f"function computer:reset\n")

with open(os.path.join(FUNC_DIR, "program_run_until_end.mcfunction"), 'w') as f:
    f.write(f"execute unless score error stats matches 1 run execute unless score done stats matches 1 run execute if score cycle stats matches ..{MAX_CYCLE} run function computer:cycle/do_cycle\n")
    f.write(f"execute unless score error stats matches 1 run execute unless score done stats matches 1 run execute if score cycle stats matches ..{MAX_CYCLE} run function computer:program_run_until_end\n")

with open(os.path.join(FUNC_DIR, "program_run.mcfunction"), 'w') as f:
    f.write(f"# load\n")
    f.write(f"function computer:program_load\n\n")
    f.write(f"# run\n")
    f.write(f"function computer:program_run_until_end\n\n")
    f.write(f"# end\n")
    f.write('execute if score error stats matches 1 run function computer:debug/print_error {"message": \'{"text":"Program has been stopped","color":"red"}\'}\n')
    f.write('execute if score done stats matches 1 run function computer:debug/print_log {"message": \'{"text":"Program has been completed","bold":true,"color":"green"}\'}\n')

print("Done")

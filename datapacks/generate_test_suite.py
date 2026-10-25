import re
import os
import struct


def hex_to_signed32(val):
    """Convert unsigned 32-bit int to signed 32-bit int (for Minecraft storage)."""
    return struct.unpack('>i', struct.pack('>I', val & 0xFFFFFFFF))[0]


def parse_metadata(file, meta_data, line):
    match = re.search(r"cycle ([0-9]+)", line)
    if match:
        meta_data["cycle"] = int(match.group(1))
        return

    match = re.search(r"pc ([0-9a-f]+)", line)
    if match:
        meta_data["pc"] = int(match.group(1), base=16)
        return

    match = re.search(r"x([0-9]{1,2}) ([0-9a-f]+)", line)
    if match:
        meta_data[f"x{match.group(1)}"] = int(match.group(2), base=16)
        return

    match = re.search(r"f([0-9]{1,2}) ([0-9a-f]+)", line)
    if match:
        meta_data[f"f{match.group(1)}"] = int(match.group(2), base=16)
        return

    match = re.search(r"memory\[([0-9a-f]+)\] ([0-9a-f]+)", line)
    if match:
        meta_data[f"memory{match.group(1)}"] = int(match.group(2), base=16)
        return


def test_register(file, register_name, value):
    """Generate mcfunction commands to check a register value in storage."""
    signed = hex_to_signed32(value)
    cmd = ""
    # Check value: compare storage computer:cpu <register_name> against expected
    cmd += f'execute store result score _expected tests run data get storage computer:test expected\n'
    cmd += f'execute store result score _got tests run data get storage computer:cpu {register_name}\n'
    cmd += f'execute unless score _got tests = _expected tests run scoreboard players set {file} tests 0\n'
    cmd += f'execute unless score _got tests = _expected tests run tellraw @a [{{"text":"[TEST] - ","bold":true,"color":"blue"}},{{"text":"{register_name}: ","bold":true,"color":"dark_green"}},{{"text":"expected ","bold":true,"color":"gold"}},{{"score":{{"name":"_expected","objective":"tests"}},"bold":true,"color":"red"}},{{"text":" got ","bold":true,"color":"gold"}},{{"score":{{"name":"_got","objective":"tests"}},"bold":true,"color":"red"}}]\n'
    return signed, cmd


def test_memory(file, address_hex, value_dec_32):
    """Generate mcfunction commands to check a 32-bit memory value stored as one word."""
    address = int(address_hex, base=16)
    signed = hex_to_signed32(value_dec_32)
    cmd = ""
    cmd += f'execute store result score _expected tests run data get storage computer:test expected\n'
    cmd += f'execute store result score _got tests run data get storage computer:ram_{address} value\n'
    cmd += f'execute unless score _got tests = _expected tests run scoreboard players set {file} tests 0\n'
    cmd += f'execute unless score _got tests = _expected tests run tellraw @a [{{"text":"[TEST] - ","bold":true,"color":"blue"}},{{"text":"memory[{address_hex}]: ","bold":true,"color":"dark_green"}},{{"text":"expected ","bold":true,"color":"gold"}},{{"score":{{"name":"_expected","objective":"tests"}},"bold":true,"color":"red"}},{{"text":" got ","bold":true,"color":"gold"}},{{"score":{{"name":"_got","objective":"tests"}},"bold":true,"color":"red"}}]\n'
    return signed, cmd


def parse_hexdump(lines):
    """Parse hexdump lines into a flat list of byte values."""
    hex_lines = ["".join(line.strip().split("|")[0].split(" ")[1:]) for line in lines]
    program = "".join(hex_lines)
    if len(program) % 2 != 0:
        raise Exception("Invalid length of hex data")
    return [int(program[i:i+2], 16) for i in range(0, len(program), 2)]


SOURCE_DIR = "./tests"
OUTPUT_DIR = "./Computer/data/computer/function/tests"
INTERNAL_DIR = os.path.join(OUTPUT_DIR, "__internal")
PUBLIC_DIR = OUTPUT_DIR

os.makedirs(INTERNAL_DIR, exist_ok=True)
os.makedirs(PUBLIC_DIR, exist_ok=True)

files = sorted(
    file for file in os.listdir(SOURCE_DIR)
    if os.path.isfile(os.path.join(SOURCE_DIR, file))
    and not file.startswith(".")
)

with open(f"{OUTPUT_DIR}/testsuite.mcfunction", "w", encoding="utf-8") as f_testsuite:
    f_testsuite.write('execute store success score hasDebugTests tests run execute if entity @s[tag=DEBUG]\n')
    f_testsuite.write('tag @s remove DEBUG\n')
    f_testsuite.write("scoreboard players set failed tests 0\n")
    f_testsuite.write("scoreboard players set successed tests 0\n")
    f_testsuite.write("scoreboard players set total tests 0\n")
    f_testsuite.write("data modify storage computer:test failed set value []\n")

    for file in files:
        test_name = file
        print(f"Processing {file}")

        with open(os.path.join(SOURCE_DIR, file), "r", encoding="utf-8") as f:
            lines = []
            meta_data = {"cycle": -1, "pc": 0x0}
            for line in f.readlines():
                line = line.strip()
                if line.startswith("###"):
                    continue
                if line.startswith("##"):
                    parse_metadata(file, meta_data, line)
                    continue
                if line == "" or line.startswith("#"):
                    continue
                lines.append(line)

            program_bytes = parse_hexdump(lines)

            if meta_data["cycle"] == -1:
                raise Exception(f"Cycle not found in {file}")

        # Public wrapper function
        with open(os.path.join(PUBLIC_DIR, f"{test_name}.mcfunction"), "w", encoding="utf-8") as f_out:
            f_out.write(
                f"function computer:tests/__internal/{test_name}_load\n"
            )
            f_out.write(
                f"function computer:tests/__internal/{test_name}_run\n"
            )
            f_out.write(
                f"function computer:tests/__internal/{test_name}_test\n"
            )

        # _load: write bytes into RAM storages + reset CPU
        with open(os.path.join(INTERNAL_DIR, f"{test_name}_load.mcfunction"), "w", encoding="utf-8") as f_out:
            # Write program bytes into RAM as individual 32-bit words
            # Group bytes into little-endian words
            for addr in range(0, len(program_bytes), 4):
                word = 0
                for i in range(4):
                    if addr + i < len(program_bytes):
                        word |= program_bytes[addr + i] << (i * 8)
                signed_word = hex_to_signed32(word)
                f_out.write(f"data modify storage computer:ram_{addr} value set value {signed_word}\n")
            f_out.write('function computer:reset\n')

        # _run: execute N cycles
        with open(os.path.join(INTERNAL_DIR, f"{test_name}_run.mcfunction"), "w", encoding="utf-8",) as f_out:
            for i in range(meta_data["cycle"]):
                f_out.write("function computer:cycle/do_cycle\n")

        # _test: verify register and memory values
        with open(os.path.join(INTERNAL_DIR, f"{test_name}_test.mcfunction"), "w", encoding="utf-8") as f_out:
            f_out.write(f'scoreboard players set {test_name} tests 1\n')
            f_out.write('scoreboard players add total tests 1\n')

            # Check PC
            signed_pc, cmd = test_register(test_name, "pc", meta_data["pc"])
            f_out.write(f"data modify storage computer:test expected set value {signed_pc}\n")
            f_out.write(cmd)

            # Check all 32 int registers
            for i in range(32):
                value = meta_data.get(f"x{i}", 0)
                signed, cmd = test_register(test_name, f"x{i}", value)
                f_out.write(f'data modify storage computer:test expected set value {signed}\n')
                f_out.write(cmd)

            # Check all 32 float registers
            for i in range(32):
                value = meta_data.get(f"f{i}", 0)
                signed, cmd = test_register(test_name, f"f{i}", value)
                f_out.write(f'data modify storage computer:test expected set value {signed}\n')
                f_out.write(cmd)

            # Check memory values
            for key in sorted(meta_data.keys()):
                if key.startswith("memory"):
                    memory_hex = key[len("memory"):]
                    signed, cmd = test_memory(test_name, memory_hex, meta_data[key])
                    f_out.write(f'data modify storage computer:test expected set value {signed}\n')
                    f_out.write(cmd)

            # Result reporting
            f_out.write(f'execute if score {test_name} tests matches 1 run tellraw @a [{{"text":"[TEST] - ","bold":true,"color":"blue"}},{{"text":"Test {test_name} passed","bold":true,"color":"green"}}]\n')
            f_out.write(f'execute if score {test_name} tests matches 0 run tellraw @a [{{"text":"[TEST] - ","bold":true,"color":"blue"}},{{"text":"Test {test_name} failed","bold":true,"color":"red"}}]\n')
            f_out.write(f'execute if score {test_name} tests matches 1 run scoreboard players add successed tests 1\n')
            f_out.write(f'execute if score {test_name} tests matches 0 run scoreboard players add failed tests 1\n')
            f_out.write(f'execute if score {test_name} tests matches 0 run data modify storage computer:test failed append value "{test_name}"\n')
        f_testsuite.write(f"# {test_name}\n")
        f_testsuite.write(f"function computer:tests/{test_name}\n")

    f_testsuite.write('tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"Number of fails","bold":true,"color":"gold"},{"text":" (","bold":true,"color":"gold"},{"score":{"name":"failed","objective":"tests"},"bold":true,"color":"red"},{"text":" out of ","bold":true,"color":"green"},{"score":{"name":"total","objective":"tests"},"bold":true,"color":"gold"},{"text":" tests","bold":true,"color":"green"},{"text":")","bold":true,"color":"gold"}]\n')
    f_testsuite.write('execute if data storage computer:test failed[0] run function computer:tests/show_failed_tests\n')
    f_testsuite.write('execute if score hasDebugTag tests matches 1 run tag @s add DEBUG\n')

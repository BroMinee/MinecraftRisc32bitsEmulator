# Minecraft RISC-V Computer

This project implements a **RISC-V computer inside Minecraft**, using Minecraft entities and datapack functions to simulate a processor, memory, and a graphical display.

Programs can be written in C or RISC-V assembly, cross-compiled into machine code, and converted into Minecraft functions that execute directly inside the game.

The system features:

* **32-bit RISC-V architecture** (`RV32IMF` target configuration).
* A custom instruction set implementation, including integer arithmetic, memory operations, control flow, and selected floating-point instructions.
* A **64 x 64 pixel display** supporting 16,777,216 colors.
* A memory address space simulated inside the Minecraft world.
* A cross-compilation toolchain using GCC, Docker, and Python scripts.
* A test suite to verify instruction behavior directly in Minecraft.

## Requirements

* **Minecraft version:** `26.3`
* Docker and Docker Compose for cross-compilation.
* Python 3 for generating Minecraft functions.
* GCC for local development and optionally SDL2 for debugging.

## Why ?

Why not

# When to code

## Editing the Code

Edit `./datapacks/main.c` to write your program.

To debug your program locally, compile it with GCC and the SDL2 library using the `-DLOCAL` flag.

Take a look at `./datapacks/main.c` for examples of how to display text on the screen, particularly the `draw_string` and `draw_char` functions.

### Notes

* Do not use any standard library functions.
* String literals such as `const char my_string[] = "Minecraft";` are read-only by default. Use the `CREATE_STRING` macro to make strings writable, allowing the program to compile with SDL2.
* See `./datapacks/main.c` for an example.

# How to Cross-Compile

## 1. Compile the Program

Run the following commands:

```bash
cd datapacks
docker compose up
```

This runs `compiler.sh main.c` inside the container, which performs the following steps:

1. Compiles `main.c` into `main.o` using `riscv32-unknown-linux-gnu-gcc` with `-march=rv32imf -mabi=ilp32f`.
2. Generates `main.s`, the assembly output.
3. Links `main.o` into `main.elf` at address `0x0000`.
4. Converts `main.elf` into `main`, a raw binary.
5. Saves the hexadecimal dump to `output_dump.txt`.

### Compiling an Assembly File

To compile a `.s` file instead of a `.c` file, change the entry point in `docker-compose.yml` to:

```yaml
entrypoint: /workspace/compiler.sh /workspace/main.s
```

Then write your assembly code in `./datapacks/main.s`.

## 2. Generate the Minecraft Program

Once `output_dump.txt` has been generated, run:

```bash
cd datapacks
python3 generate_program_mcfunction.py
```

This converts the generated output into Minecraft functions.

# How to Load the Program in Minecraft

Run the following commands in Minecraft:

```mcfunction
/reload
/function computer:program_load
```

# How to Run the Program in Minecraft

## Run Until Completion

To execute the program until it finishes and then display the screen, run:

```mcfunction
/execute as @e[tag=pc] run function computer:program_run_until_end
```

## Run Step by Step

To execute the program while updating the screen, repeatedly run:

```mcfunction
/execute as @e[tag=pc] run function computer:cycle/do_cycle
```

To execute 25 cycles at a time, use:

```mcfunction
/execute as @e[tag=pc] run function computer:cycle/do_25_cycle
```

# Screen Specifications

The display is a **64 x 64 pixel screen** supporting 16,777,216 colors (24-bit color depth).

## Display Properties

| Property                   | Value                     |
| -------------------------- | ------------------------- |
| Resolution                 | 64 x 64 pixels            |
| Total pixels               | 4,096                     |
| Color depth                | 24 bits per pixel (RGB)   |
| Number of colors           | 16,777,216                |
| Storage size per pixel     | 32 bits (4 bytes)         |
| Total reserved memory      | `0xC000` bytes            |
| Start address              | `0x0FFF_0000`             |
| End address                | `0x0FFF_BFFF`             |

## Memory Layout

Each pixel occupies **4 bytes** in memory. Although only 24 bits are required to represent the RGB color, 32 bits are reserved for each pixel, to preserve memory alignement.

The last byte of the first row is located at `0x0FFF_00FF`, since each row occupies `64 x 4 = 256` bytes.

> **Performance recommendation:** Using Lunar Client or a similar Minecraft launcher is highly recommended for FPS optimization, as the screen uses 4,096 entities.

# Memory Address Space

The available address range is:

```text
0x0000_0000 - 0x0FFF_FFFF
```

The usable address space is limited by chunk loading distance.

The range `0x1000_0000 - 0xFFFF_FFFF` is mapped to `0x0000_0000 - 0x7FFF_FFFF`. Therefore, **avoid using addresses in the `0x1000_0000 - 0xFFFF_FFFF` range**.

# Registers

Each register can hold a maximum value of:

```text
0xFFFF_FFFF
```

# Instruction Set

The following table lists the supported and unsupported instructions.

* ✅ Supported
* ❌ Not supported

## Upper Immediate and Arithmetic Instructions

| Status | Instruction |
| ------ | ----------- |
| ✅     | `lui`       |
| ✅     | `auipc`     |
| ✅     | `addi`      |
| ✅     | `slti`      |
| ✅     | `sltiu`     |
| ✅     | `xori`      |
| ✅     | `ori`       |
| ✅     | `andi`      |
| ✅     | `slli`      |
| ✅     | `srli`      |
| ✅     | `srai`      |
| ✅     | `add`       |
| ✅     | `sub`       |
| ✅     | `sll`       |
| ✅     | `slt`       |
| ✅     | `sltu`      |
| ✅     | `xor`       |
| ✅     | `srl`       |
| ✅     | `sra`       |
| ✅     | `or`        |
| ✅     | `and`       |

## Memory Instructions

| Status | Instruction |
| ------ | ----------- |
| ✅     | `lb`        |
| ✅     | `lh`        |
| ✅     | `lw`        |
| ✅     | `lbu`       |
| ✅     | `lhu`       |
| ✅     | `sb`        |
| ✅     | `sh`        |
| ✅     | `sw`        |
| ✅     | `flw`       |
| ✅     | `fsw`       |

## Control Flow Instructions

| Status | Instruction |
| ------ | ----------- |
| ❌     | `fence`     |
| ❌     | `fence.tso` |
| ❌     | `ecall`     |
| ❌     | `ebreak`    |
| ❌     | `pause`     |
| ✅     | `jal`       |
| ✅     | `jalr`      |
| ✅     | `beq`       |
| ✅     | `bne`       |
| ✅     | `blt`       |
| ✅     | `bge`       |
| ✅     | `bltu`      |
| ✅     | `bgeu`      |

## Pseudo-Instructions

| Status | Instruction | Equivalent         |
| ------ | ----------- | ------------------ |
| ✅     | `nop`       | `addi x0, x0, 0`   |
| ✅     | `mv`        | `addi rd, rs1, 0`  |
| ✅     | `not`       | `xori rd, rs1, -1` |

## Multiplication and Division Instructions

| Status | Instruction |
| ------ | ----------- |
| ✅     | `mul`       |
| ✅     | `mulh`      |
| ✅     | `mulhsu`    |
| ✅     | `mulhu`     |
| ✅     | `div`       |
| ✅     | `divu`      |
| ✅     | `rem`       |
| ✅     | `remu`      |

## Floating-Point Instructions

| Status | Instruction |
| ------ | ----------- |
| ✅     | `fmadd.s`   |
| ❌     | `fmsub.s`   |
| ❌     | `fnmsub.s`  |
| ❌     | `fnmadd.s`  |
| ✅     | `fadd.s`    |
| ✅     | `fsub.s`    |
| ✅     | `fmul.s`    |
| ❌     | `fdiv.s`    |
| ❌     | `fsqrt.s`   |
| ✅     | `fsgnj.s`   |
| ✅     | `fsgnjn.s`  |
| ✅     | `fsgnjx.s`  |
| ✅     | `fmin.s`    |
| ✅     | `fmax.s`    |
| ❌     | `fcvt.w.s`  |
| ❌     | `fcvt.wu.s` |
| ✅     | `fmv.x.w`   |
| ✅     | `feq.s`     |
| ✅     | `flt.s`     |
| ✅     | `fle.s`     |
| ✅     | `fclass.s`  |
| ❌     | `fcvt.s.w`  |
| ❌     | `fcvt.s.wu` |
| ✅     | `fmv.w.x`   |
# Running the Test Suite in Minecraft

Generate the test suite by running:

```bash
cd datapacks
python3 generate_test_suite.py
```

Then, in Minecraft, run:

```mcfunction
/reload
/function computer:tests/testsuite
```

# Frequently Asked Questions

## Why Can't the Maximum Address Be Increased?

An address cannot store a value if the corresponding chunk is not loaded. Since the system already uses a render distance of 32 chunks, increasing the available address space further is not possible with the current setup.

The memory occupies the following coordinate range:

```text
From: -512 0 -512
To:    512 256 512
```

# Additional Notes

* **Render distance:** You can use a low render distance without affecting memory availability. The `spawnChunkRadius` gamerule is set to `32`, which keeps the full memory area loaded.
* **Performance:** The system executes approximately 500 instructions per second, depending on your PC.

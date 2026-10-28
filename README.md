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

# How to code

## Editing the Code

Edit `./datapacks/programs/main.c` to write your program.

Utility functions are available in `./datapacks/programs/lib/`:
- `lib/stdio.h` / `lib/stdio.c` exposes `my_printf`, `my_stdin`, `my_atoi`, `my_itoa`
- `lib/display.h` / `lib/display.c` exposes `init_display`, `close_display`, `write_pixel`, `draw_char`, `draw_string`, `flush_display`

To debug your program locally, compile it with GCC and the SDL2 library using the `-DLOCAL` flag.

### Notes

* Do not use any standard library functions.

# How to Cross-Compile

## Compile and Generate

Run the following command from the `datapacks/` directory:

```bash
cd datapacks
docker compose up
```

This runs inside the Docker container:

1. **Compiles** all source files (`main.c`, `lib/stdio.c`, `lib/display.c`) using `riscv32-unknown-linux-gnu-gcc` with `-march=rv32imf -mabi=ilp32f -O3`.
2. **Links** the object files into `main.elf` at address `0x0000`.
3. **Generates** `main.s` (disassembly of the final ELF), `main` (raw binary), and `output_dump.txt` (hexdump).
4. **Converts** the hexdump into Minecraft functions via `generate_program_mcfunction.py`.

All build artifacts are produced in `datapacks/programs/`.

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

# Peripherals (Memory-Mapped I/O)

All peripherals are accessed through memory-mapped I/O (MMIO). Reading from or writing to these addresses interacts directly with the corresponding hardware.

## "Peripheral" Map

| Address Range               | Peripheral         | Access | Description                                      |
| --------------------------- | ------------------ | ------ | ------------------------------------------------ |
| `0x0FFE_0000 - 0x0FFE_001C` | 7-Segment Displays | Write  | 8 displays, 4 bytes each                         |
| `0x0FFE_0100`               | Player Input       | Read   | Movement keys as a bitmask (see below)           |
| `0x0FFE_0200 - 0x0FFE_0203` | Random             | Read   | Random value, changes every cycle                |
| `0x0FFE_0300`               | Clock              | Read   | Cycle count since startup                        |
| `0x0FFE_0500`               | Stdout Control     | Write  | Write `1` to send buffer to chat                 |
| `0x0FFE_0504 - 0x0FFE_05FF` | Stdout Buffer      | Write  | Null-terminated string to display (max 251 chars + null)|
| `0x0FFE_0600`               | Stdin Control      | Write  | Write `1` to request input (blocks CPU until received) |
| `0x0FFE_0604 - 0x0FFE_06FF` | Stdin Buffer       | Read   | Null-terminated string from user (max 251 chars + null) |
| `0x0FFF_0000 - 0x0FFF_BFFF` | Screen             | Write  | 64×64 pixel display, 32 bits per pixel (RGB)     |

## 7-Segment Displays

Eight 7-segment displays are mapped starting at `0x0FFE_0000`, each occupying 4 bytes (word-aligned). Each display accepts a value from `0` to `9`.

| Address        | Display            |
| -------------- | ------------------ |
| `0x0FFE_0000`  | Digit 0 (leftmost) |
| `0x0FFE_0004`  | Digit 1            |
| `0x0FFE_0008`  | Digit 2            |
| `0x0FFE_000C`  | Digit 3            |
| `0x0FFE_0010`  | Digit 4            |
| `0x0FFE_0014`  | Digit 5            |
| `0x0FFE_0018`  | Digit 6            |
| `0x0FFE_001C`  | Digit 7 (rightmost)|

## Player Input

The player input register at `0x0FFE_0100` is a bitmask updated every cycle, reflecting the keys currently held by the nearest player:

| Bit | Mask   | Key     |
| --- | ------ | ------- |
| 0   | `0x01` | Forward |
| 1   | `0x02` | Backward|
| 2   | `0x04` | Left    |
| 3   | `0x08` | Right   |
| 4   | `0x10` | Jump    |
| 5   | `0x20` | Sneak   |
| 6   | `0x40` | Sprint  |

Example in C:

```c
volatile uint32_t *input = (volatile uint32_t *)0x0FFE0100;
uint32_t keys = *input;
if (keys & 0x01) { /* forward */ }
if (keys & 0x10) { /* jump */ }
```

## Stdout / Stdin

To request a message from the user, use `my_stdin` from `lib/stdio.h`

```c
char buf[252];
const char *input = my_stdin(buf, sizeof(buf));
```

To print a message to the Minecraft chat, use `my_printf` from `lib/stdio.h`

```c
my_printf("fibo(%u) = %u", n, res);
```

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
| ❌     | `auipc`     |
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
| ❌     | `flw`       |
| ❌     | `fsw`       |

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
| ❌     | `div`       |
| ❌     | `divu`      |
| ❌     | `rem`       |
| ❌     | `remu`      |

## Floating-Point Instructions

| Status | Instruction |
| ------ | ----------- |
| ❌     | `fmadd.s`   |
| ❌     | `fmsub.s`   |
| ❌     | `fnmsub.s`  |
| ❌     | `fnmadd.s`  |
| ❌     | `fadd.s`    |
| ❌     | `fsub.s`    |
| ❌     | `fmul.s`    |
| ❌     | `fdiv.s`    |
| ❌     | `fsqrt.s`   |
| ❌     | `fsgnj.s`   |
| ❌     | `fsgnjn.s`  |
| ❌     | `fsgnjx.s`  |
| ❌     | `fmin.s`    |
| ❌     | `fmax.s`    |
| ❌     | `fcvt.w.s`  |
| ❌     | `fcvt.wu.s` |
| ❌     | `fmv.x.w`   |
| ❌     | `feq.s`     |
| ❌     | `flt.s`     |
| ❌     | `fle.s`     |
| ❌     | `fclass.s`  |
| ❌     | `fcvt.s.w`  |
| ❌     | `fcvt.s.wu` |
| ❌     | `fmv.w.x`   |
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

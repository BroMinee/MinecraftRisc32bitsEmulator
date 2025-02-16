# screen specification
- 64x64
- 4096 pixels
- 16 777 216 colors
-  bits / pixel
- 24 address = 1 pixel
- total of 0x1000 address
- start at 0x8000, end at 0x8fff
- first row end at 0x803f

**Highly recommended to use Lunar Client or similar Launcher for FPS optimization since 4096 entities are used just for the screen**

# address
- from 0x0000 to 0x3ff_ffff
(limited by chunk loading distance)

# register
- max value of each register 0xffff_ffff

# instruction set
- ✅ lui
- ✅ auipc
- ✅ addi
- ❌ slti
- ❌ sltiu
- ✅ xori
- ✅ ori
- ✅ andi
- ✅ slli
- ✅ srli
- ✅ srai
- ✅ add
- ✅ sub
- ✅ sll
- ❌ slt
- ❌ sltu
- ✅ xor
- ✅ srl
- ✅ sra
- ✅ or
- ✅ and
- ❌ fence
- ❌ fence.tso
- ❌ ecall
- ❌ ebreak
- ✅ lb
- ✅ lh
- ✅ lw
- ✅ lbu
- ✅ lhu
- ❌ sb
- ✅ sh
- ✅ sw
- ✅ jal
- ✅ jalr
- ✅ beq
- ✅ bne
- ✅ blt
- ✅ bge
- ✅ bltu
- ✅ bgeu
- ❌ pause
- ✅ nop (addi x0, x0, 0)
- ✅ mv (addi rd,rs1, 0)
- ✅ not (xori, rd, s1, -1)


# How to run the testsuite
run python3 generate_test_suite.py
/reload
/function computer:tests/testsuite

# Question why not increasing the max address ?
It's not possible to store value in the address if the chunk is not loaded, using 0x3ff_ffff.
The memory goes from -512 0 -512 to 512 256 512
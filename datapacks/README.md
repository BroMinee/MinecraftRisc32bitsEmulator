# screen specification
- 32x32
- 1024 pixels
- 16 777 216 colors
-  bits / pixel
- 24 address = 1 pixel
- total of 0x1440 address
- start at 0x8000, end at 0x8400
- first row end at 0x8020

# address
- from 0x0000 to 0x3ff_ffff
(limited by chunk loading distance)

# register
- max value of each register 0xffff_ffff

# instruction set
- ❌ lui
- ❌ auipc
- ❌ addi
- ❌ slti
- ❌ sltiu
- ❌ xori
- ❌ ori
- ❌ andi
- ❌ slli
- ❌ srli
- ❌ srai
- ❌ add
- ❌ sub
- ❌ sll
- ❌ slt
- ❌ sltu
- ❌ xor
- ❌ srl
- ❌ sra
- ❌ or
- ❌ and
- ❌ fence
- ❌ fence.tso
- ❌ ecall
- ❌ ebreak
- ❌ lb
- ❌ lh
- ❌ lw
- ❌ lbu
- ❌ lhu
- ❌ sb
- ❌ sh
- ❌ sw
- ❌ jal
- ❌ jalr
- ❌ beq
- ❌ bne
- ❌ blt
- ❌ bge
- ❌ bltu
- ❌ bgeu
- ❌ pause

...

# Question why not increasing the max address ?
It's not possible to store value in the address if the chunk is not loaded, using 0x3ff_ffff.
The memory goes from -512 0 -512 to 512 256 512
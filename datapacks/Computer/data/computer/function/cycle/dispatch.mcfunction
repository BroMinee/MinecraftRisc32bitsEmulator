execute store result score _opcode tests run data get storage computer:cpu opcode

# 0x37 = 55 = LUI
# execute if score _opcode tests matches 55 run return run function computer:instruction/lui

# 0x17 = 23 = AUIPC
# execute if score _opcode tests matches 23 run return run function computer:instruction/auipc

# 0x13 = 19 = OP-IMM (ADDI, SLTI, SLTIU, XORI, ORI, ANDI, SLLI, SRLI, SRAI)
# execute if score _opcode tests matches 19 run return run function computer:cycle/dispatch/op_imm

# 0x33 = 51 = OP (ADD, SUB, SLL, SLT, SLTU, XOR, SRL, SRA, OR, AND + M-ext)
# execute if score _opcode tests matches 51 run return run function computer:cycle/dispatch/op

# 0x63 = 99 = BRANCH (BEQ, BNE, BLT, BGE, BLTU, BGEU)
# execute if score _opcode tests matches 99 run return run function computer:instruction/branch

# 0x6F = 111 = JAL
# execute if score _opcode tests matches 111 run return run function computer:instruction/jal

# 0x67 = 103 = JALR
# execute if score _opcode tests matches 103 run return run function computer:instruction/jalr

# 0x03 = 3 = LOAD (LB, LH, LW, LBU, LHU)
# execute if score _opcode tests matches 3 run return run function computer:instruction/load

# 0x23 = 35 = STORE (SB, SH, SW)
# execute if score _opcode tests matches 35 run return run function computer:instruction/store

# opcode 0 = uninitialized memory = halt
execute if score _opcode tests matches 0 run return run scoreboard players set done stats 1

# Unknown opcode
scoreboard players set error stats 1
tellraw @a[tag=DEBUG] [{"text":"[ERROR] Unknown opcode: ","color":"red"},{"score":{"name":"_opcode","objective":"tests"},"color":"red"}]

# pc = SafeAdderInt.add(pc, immB(instr));
# Input:  computer:cpu instr, pc
# Output: None
# Update: computer:cpu pc

# imm_b = unsigned part + sign extension
data modify storage computer:cpu imm set compute default integer computer:cpu/imm_b
# I would have love to do the if inside the JSON but sadly I don't see how I can do it without re-computing twice the same thing
# sign extend: if instr < 0 (bit 31 = b12 set), subtract 2^13 = 8192
execute store result score _instr alu run data get storage computer:cpu instr
execute if score _instr alu matches ..-1 run execute store result score _imm alu run data get storage computer:cpu imm
execute if score _instr alu matches ..-1 run scoreboard players remove _imm alu 4096
execute if score _instr alu matches ..-1 run execute store result storage computer:cpu imm int 1 run scoreboard players get _imm alu
data modify storage computer:alu a set from storage computer:cpu pc
data modify storage computer:alu b set from storage computer:cpu imm
function computer:alu/int/add
data modify storage computer:cpu pc set from storage computer:alu result

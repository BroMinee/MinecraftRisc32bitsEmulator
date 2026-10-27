# Input:  computer:cpu rs1_val, computer:cpu imm
# Output: computer:alu result
# static int sltiu(int rs1, int imm) { return (SafeAdderInt.compareUnsigned(rs1, imm) < 0) ? 1 : 0; }

function computer:debug/print_log {"message": {"text": "Running sltiu", "color":"gold"}}

# compareUnsigned(rs1, imm) → result < 0 means rs1 < imm unsigned
data modify storage computer:alu a set from storage computer:cpu rs1_val
data modify storage computer:alu b set from storage computer:cpu imm
function computer:alu/int/compare_unsigned
execute store result score _cmp alu run data get storage computer:alu result
data modify storage computer:alu result set value 0
execute if score _cmp alu matches ..-1 run data modify storage computer:alu result set value 1

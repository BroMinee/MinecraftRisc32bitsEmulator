data modify storage computer:cpu opcode set compute default integer computer:decode/opcode
data modify storage computer:cpu rd set compute default integer computer:decode/rd
data modify storage computer:cpu funct3 set compute default integer computer:decode/funct3
data modify storage computer:cpu rs1 set compute default integer computer:decode/rs1
data modify storage computer:cpu rs2 set compute default integer computer:decode/rs2
data modify storage computer:cpu funct7 set compute default integer computer:decode/funct7

# Load rs1 and rs2 values from registers into cpu storage for instruction use
function computer:cycle/load_rs1 with storage computer:cpu
function computer:cycle/load_rs2 with storage computer:cpu

# Dispatch based on opcode
function computer:cycle/dispatch

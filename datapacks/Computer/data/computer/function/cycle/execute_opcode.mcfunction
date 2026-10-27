# protected void executeOpcode(int instr, int opcode) {
#     switch (opcode) {

# case 0x37: execLUI(instr); break;
execute if data storage computer:cpu {opcode: 55} run return run function computer:cpu/execute/lui

# case 0x17: execAUIPC(instr); break;
execute if data storage computer:cpu {opcode: 23} run return run function computer:cpu/execute/auipc

# case 0x6F: execJAL(instr); break;
execute if data storage computer:cpu {opcode: 111} run return run function computer:cpu/execute/jal

# case 0x67: execJALR(instr); break;
execute if data storage computer:cpu {opcode: 103} run return run function computer:cpu/execute/jalr

# case 0x63: execBranch(instr); break;
execute if data storage computer:cpu {opcode: 99} run return run function computer:cpu/execute/branch

# case 0x03: execLoad(instr); break;
execute if data storage computer:cpu {opcode: 3} run return run function computer:cpu/execute/load

# case 0x23: execStore(instr); break;
execute if data storage computer:cpu {opcode: 35} run return run function computer:cpu/execute/store

# case 0x13: execOpImm(instr); break;
execute if data storage computer:cpu {opcode: 19} run return run function computer:cpu/execute/op_imm

# case 0x33: execOp(instr); break;
execute if data storage computer:cpu {opcode: 51} run return run function computer:cpu/execute/op

# case 0x07: execLoadFP(instr); break;
execute if data storage computer:cpu {opcode: 7} run return run function computer:cpu/execute/load_fp

# case 0x27: execStoreFP(instr); break;
execute if data storage computer:cpu {opcode: 39} run return run function computer:cpu/execute/store_fp

# case 0x43: execFMADD(instr); break;
execute if data storage computer:cpu {opcode: 67} run return run function computer:cpu/execute/fmadd

# case 0x47: execFMSUB(instr); break;
execute if data storage computer:cpu {opcode: 71} run return run function computer:cpu/execute/fmsub

# case 0x4B: execFNMSUB(instr); break;
execute if data storage computer:cpu {opcode: 75} run return run function computer:cpu/execute/fnmsub

# case 0x4F: execFNMADD(instr); break;
execute if data storage computer:cpu {opcode: 79} run return run function computer:cpu/execute/fnmadd

# case 0x53: execOpFP(instr); break;
execute if data storage computer:cpu {opcode: 83} run return run function computer:cpu/execute/op_fp

# case 0x73: execSystem(instr); break;
execute if data storage computer:cpu {opcode: 115} run return run function computer:cpu/execute/system

# case 0x00: halted = true; return;
execute if data storage computer:cpu {opcode: 0} run tellraw @a "Opcode 0, program is finished ?"
execute if data storage computer:cpu {opcode: 0} run return run scoreboard players set done stats 1

# default:
function computer:debug/print_error {"message": [{"text":"Unknown opcode: "},{"nbt":"opcode","storage":"computer:cpu"},{"text": " at PC="},{"nbt":"pc","storage":"computer:cpu"}]}

# protected void executeOpcode(int instr, int opcode) {
execute store result score _opcode tests run data get storage computer:cpu opcode

# case 0x37: execLUI(instr); break;
execute if score _opcode tests matches 55 run return run function computer:instruction/lui

# case 0x17: execAUIPC(instr); break;
execute if score _opcode tests matches 23 run return run function computer:instruction/auipc

# case 0x6F: execJAL(instr); break;
execute if score _opcode tests matches 111 run return run function computer:instruction/jal

# case 0x67: execJALR(instr); break;
execute if score _opcode tests matches 103 run return run function computer:instruction/jalr

# case 0x63: execBranch(instr); break;
# BEQ, BNE, BLT, BGE, BLTU, BGEU
execute if score _opcode tests matches 99 run return run function computer:cycle/dispatch/branch

# case 0x03: execLoad(instr); break;
# LB, LH, LW, LBU, LHU
execute if score _opcode tests matches 3 run return run function computer:cycle/dispatch/load

# case 0x23: execStore(instr); break;
# SB, SH, SW
execute if score _opcode tests matches 35 run return run function computer:cycle/dispatch/store

# case 0x13: execOpImm(instr); break;
# ADDI, SLTI, SLTIU, XORI, ORI, ANDI, SLLI, SRLI, SRAI
execute if score _opcode tests matches 19 run return run function computer:cycle/dispatch/op_imm

# case 0x33: execOp(instr); break;
# ADD, SUB, SLL, SLT, SLTU, XOR, SRL, SRA, OR, AND + M-ext
execute if score _opcode tests matches 51 run return run function computer:cycle/dispatch/op

# case 0x07: execLoadFP(instr); break; // FLW
execute if score _opcode tests matches 7 run return run function computer:instruction/flw

# case 0x27: execStoreFP(instr); break; // FSW
execute if score _opcode tests matches 39 run return run function computer:instruction/fsw

# case 0x43: execFMADD(instr); break;
execute if score _opcode tests matches 67 run return run function computer:instruction/fmadd

# case 0x47: execFMSUB(instr); break;
execute if score _opcode tests matches 71 run return run function computer:instruction/fmsub

# case 0x4B: execFNMSUB(instr); break;
execute if score _opcode tests matches 75 run return run function computer:instruction/fnmsub

# case 0x4F: execFNMADD(instr); break;
execute if score _opcode tests matches 79 run return run function computer:instruction/fnmadd

# case 0x53: execOpFP(instr); break;
# FADD.S, FSUB.S, FMUL.S, FDIV.S, FSGNJ, FMIN/FMAX, FCMP, FCVT, FMV, FCLASS
execute if score _opcode tests matches 83 run return run function computer:cycle/dispatch/op_fp

# case 0x73: execSystem(instr); break;
# ECALL, EBREAK
execute if score _opcode tests matches 115 run return run function computer:instruction/system

# case 0x00: halted = true; return;
execute if score _opcode tests matches 0 run return run scoreboard players set done stats 1

# default:
function computer:debug/print_error {"message": [{"text":"Unknown opcode: "},{"score":{"name":"_opcode","objective":"tests"}}]}

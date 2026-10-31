#!jvmtimer start alu_float_float_round
# Inputs: computer:alu a
# Outputs: computer:alu result (int)
# public static int floatRound(float a) { return Math.round(a); }

function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a

# round returns a float, convert to int
data modify storage computer:alu _temp set compute default float computer:alu/float_round
# next 3 lines is an overflow detection
execute store result score _r alu run data get storage computer:alu _temp
execute if score _r alu matches 0 run execute store success score _ok alu run compute default float computer:alu/float_round
execute if score _r alu matches 0 if score _ok alu matches 0 run return run function computer:debug/print_error {"message": {"text": "float_round: overflow (inf/NaN)", "color":"gold"}}
data modify storage computer:alu result set compute default integer {"type":"minecraft:storage","storage":"computer:alu","path":"_temp"}

function computer:alu/stack/pop
#!jvmtimer end alu_float_float_round

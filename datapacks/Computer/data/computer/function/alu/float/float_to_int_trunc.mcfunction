#!jvmtimer start alu_float_float_to_int_trunc
# Inputs: computer:alu a (float)
# Outputs: computer:alu result (int)
# public static int floatToIntTrunc(float a) { return (int) a; }

function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a

data modify storage computer:alu result set compute default integer {"type": "minecraft:storage","storage": "computer:alu","path": "stack[-1].a"}

execute store result score _r alu run data get storage computer:alu result
execute if score _r alu matches 0 run execute store success score _ok alu run compute default integer {"type": "minecraft:storage","storage": "computer:alu","path": "stack[-1].a"}
execute if score _r alu matches 0 if score _ok alu matches 0 run return run function computer:debug/print_error {"message": {"text": "float_to_int_trunc: overflow (inf/NaN)", "color":"gold"}}

function computer:alu/stack/pop
#!jvmtimer end alu_float_float_to_int_trunc

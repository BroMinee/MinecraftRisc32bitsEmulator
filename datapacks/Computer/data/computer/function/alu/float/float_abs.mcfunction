# Inputs: computer:alu a
# Outputs: computer:alu result
# public static float floatAbs(float a) { return a < 0 ? -a : a; }

function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a

data modify storage computer:alu result set compute default float computer:alu/float_abs
# next 3 lines is an overflow detection
execute store result score _r alu run data get storage computer:alu result
execute if score _r alu matches 0 run execute store success score _ok alu run compute default float computer:alu/float_abs
execute if score _r alu matches 0 if score _ok alu matches 0 run return run function computer:debug/print_error {"message": {"text": "float_abs: overflow (inf/NaN)", "color":"gold"}}

function computer:alu/stack/pop

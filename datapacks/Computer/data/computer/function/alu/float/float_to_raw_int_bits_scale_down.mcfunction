# while (temp >= 2.0f) { temp = floatDiv(temp, 2.0f); exp = hwAdd(exp, 1); }
# Reads/writes: stack[-1].temp (float), stack[-1].exp (int)

# if (temp < 2.0f) return; — data get truncates float to int, >= 2.0f → >= 2
execute store result score _t alu run data get storage computer:alu stack[-1].temp
execute if score _t alu matches ..1 run return 0

# temp = floatDiv(temp, 2.0f);
data modify storage computer:alu a set from storage computer:alu stack[-1].temp
data modify storage computer:alu b set value 2.0f
function computer:alu/float/float_div
data modify storage computer:alu stack[-1].temp set from storage computer:alu result

# exp = hwAdd(exp, 1);
data modify storage computer:alu a set from storage computer:alu stack[-1].exp
data modify storage computer:alu b set value 1
function computer:alu/int/hw_add
data modify storage computer:alu stack[-1].exp set from storage computer:alu result

# recurse
function computer:alu/float/float_to_raw_int_bits_scale_down

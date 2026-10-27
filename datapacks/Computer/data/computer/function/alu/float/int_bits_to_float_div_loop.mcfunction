# Loop: result = floatDiv(result, 2.0f), _loop_n times
# Reads/writes: stack[-1].res (float), stack[-1]._loop_i, stack[-1]._loop_n

# if (i >= n) return;
execute store result score _i alu run data get storage computer:alu stack[-1]._loop_i
execute store result score _n alu run data get storage computer:alu stack[-1]._loop_n
execute if score _i alu >= _n alu run return 0

# result = floatDiv(result, 2.0f);
data modify storage computer:alu a set from storage computer:alu stack[-1].res
data modify storage computer:alu b set value 2.0f
function computer:alu/float/float_div
data modify storage computer:alu stack[-1].res set from storage computer:alu result

# i = hwAdd(i, 1);
data modify storage computer:alu a set from storage computer:alu stack[-1]._loop_i
data modify storage computer:alu b set value 1
function computer:alu/int/hw_add
data modify storage computer:alu stack[-1]._loop_i set from storage computer:alu result

# recurse
function computer:alu/float/int_bits_to_float_div_loop

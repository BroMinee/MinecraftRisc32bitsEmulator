# Inputs: computer:alu a (int bits), computer:alu n (int)
# Outputs: computer:alu result (float)
# public static float bitsToFraction(int bits, int n) {

# Fast path for n=23 (used by intBitsToFloat): single set compute
execute if data storage computer:alu {n:23} run return run data modify storage computer:alu result set compute default float computer:alu/bits_to_fraction


# I believe this case is totally useless in production but let's keep it in case it becomes handy later (I because I don't want to cut the UT)
# Slow path for other n values: loop
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a
data modify storage computer:alu stack[-1].n set from storage computer:alu n
data modify storage computer:alu stack[-1].res set value 0.0f
data modify storage computer:alu stack[-1].i set value 0
function computer:alu/float/bits_to_fraction_loop
data modify storage computer:alu result set from storage computer:alu stack[-1].res
function computer:alu/stack/pop

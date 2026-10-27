# Inputs: computer:alu a (int bits), computer:alu n (int)
# Outputs: computer:alu result (float)
# public static float bitsToFraction(int bits, int n) {

# push new frame context
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a
data modify storage computer:alu stack[-1].n set from storage computer:alu n

# float result = 0.0f; int i = 0;
data modify storage computer:alu stack[-1].res set value 0.0f
data modify storage computer:alu stack[-1].i set value 0

# for (int i = 0; i < n; i++)
function computer:alu/float/bits_to_fraction_loop

# return result;
data modify storage computer:alu result set from storage computer:alu stack[-1].res

# pop frame
function computer:alu/stack/pop

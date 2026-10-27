# Inputs: computer:alu a (float fraction), computer:alu n (int)
# Outputs: computer:alu result (int)
# public static int extractMantissaBits(float fraction, int n) {

# push new frame context
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a
data modify storage computer:alu stack[-1].n set from storage computer:alu n

# int bits = 0; float f = fraction;
data modify storage computer:alu stack[-1].bits set value 0
data modify storage computer:alu stack[-1].f set from storage computer:alu stack[-1].a

# int i = hwSub(n, 1);
data modify storage computer:alu a set from storage computer:alu stack[-1].n
data modify storage computer:alu b set value 1
function computer:alu/int/hw_sub
data modify storage computer:alu stack[-1].i set from storage computer:alu result

# for (int i = hwSub(n, 1); i >= 0; i--)
function computer:alu/float/extract_mantissa_bits_loop

# return bits;
data modify storage computer:alu result set from storage computer:alu stack[-1].bits

# pop frame
function computer:alu/stack/pop

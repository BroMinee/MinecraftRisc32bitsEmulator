# Inputs: computer:alu a, computer:alu b
# Outputs: computer:alu result (quotient), computer:alu result_hi (remainder)
# private static void divRemUnsigned(int a, int b, int[] outQR)

# push new frame context
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a
data modify storage computer:alu stack[-1].b set from storage computer:alu b

# int q = 0; int r = 0; int i = 31;
data modify storage computer:alu stack[-1].q set value 0
data modify storage computer:alu stack[-1].r set value 0
data modify storage computer:alu stack[-1].i set value 31

# for (int i = 31; i >= 0; i--)
function computer:alu/int/div_rem_unsigned_loop

# outQR[0] = q; outQR[1] = r;
data modify storage computer:alu result set from storage computer:alu stack[-1].q
data modify storage computer:alu result_hi set from storage computer:alu stack[-1].r

# pop frame
function computer:alu/stack/pop

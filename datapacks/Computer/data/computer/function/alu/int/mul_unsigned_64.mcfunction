# Inputs: computer:alu a, computer:alu b
# Outputs: computer:alu result (lo), computer:alu result_hi (hi)
# private static void mulUnsigned64(int a, int b, int[] outLoHi)

# push new frame context
function computer:alu/stack/push
data modify storage computer:alu stack[-1].a set from storage computer:alu a
data modify storage computer:alu stack[-1].b set from storage computer:alu b

# aBytes[0..3] = bytes of a
data modify storage computer:alu bits set value 8
function computer:alu/int/mask_low_bits
data modify storage computer:alu stack[-1].ab0 set from storage computer:alu result

data modify storage computer:alu a set from storage computer:alu stack[-1].a
data modify storage computer:alu shift set value 8
function computer:alu/int/shr_u
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu bits set value 8
function computer:alu/int/mask_low_bits
data modify storage computer:alu stack[-1].ab1 set from storage computer:alu result

data modify storage computer:alu a set from storage computer:alu stack[-1].a
data modify storage computer:alu shift set value 16
function computer:alu/int/shr_u
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu bits set value 8
function computer:alu/int/mask_low_bits
data modify storage computer:alu stack[-1].ab2 set from storage computer:alu result

data modify storage computer:alu a set from storage computer:alu stack[-1].a
data modify storage computer:alu shift set value 24
function computer:alu/int/shr_u
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu bits set value 8
function computer:alu/int/mask_low_bits
data modify storage computer:alu stack[-1].ab3 set from storage computer:alu result

# bBytes[0..3] = bytes of b
data modify storage computer:alu a set from storage computer:alu stack[-1].b
data modify storage computer:alu bits set value 8
function computer:alu/int/mask_low_bits
data modify storage computer:alu stack[-1].bb0 set from storage computer:alu result

data modify storage computer:alu a set from storage computer:alu stack[-1].b
data modify storage computer:alu shift set value 8
function computer:alu/int/shr_u
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu bits set value 8
function computer:alu/int/mask_low_bits
data modify storage computer:alu stack[-1].bb1 set from storage computer:alu result

data modify storage computer:alu a set from storage computer:alu stack[-1].b
data modify storage computer:alu shift set value 16
function computer:alu/int/shr_u
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu bits set value 8
function computer:alu/int/mask_low_bits
data modify storage computer:alu stack[-1].bb2 set from storage computer:alu result

data modify storage computer:alu a set from storage computer:alu stack[-1].b
data modify storage computer:alu shift set value 24
function computer:alu/int/shr_u
data modify storage computer:alu a set from storage computer:alu result
data modify storage computer:alu bits set value 8
function computer:alu/int/mask_low_bits
data modify storage computer:alu stack[-1].bb3 set from storage computer:alu result

# resBytes[0..7] = 0
data modify storage computer:alu stack[-1].rb0 set value 0
data modify storage computer:alu stack[-1].rb1 set value 0
data modify storage computer:alu stack[-1].rb2 set value 0
data modify storage computer:alu stack[-1].rb3 set value 0
data modify storage computer:alu stack[-1].rb4 set value 0
data modify storage computer:alu stack[-1].rb5 set value 0
data modify storage computer:alu stack[-1].rb6 set value 0
data modify storage computer:alu stack[-1].rb7 set value 0

# === i=0: _ai=ab0 ===
data modify storage computer:alu stack[-1].carry set value 0
data modify storage computer:alu stack[-1]._ai set from storage computer:alu stack[-1].ab0
# j=0, idx=0
data modify storage computer:alu stack[-1]._bj set from storage computer:alu stack[-1].bb0
data modify storage computer:alu stack[-1]._rb_val set from storage computer:alu stack[-1].rb0
function computer:alu/int/mul_unsigned_64_step
data modify storage computer:alu stack[-1].rb0 set from storage computer:alu stack[-1]._rb_val
# j=1, idx=1
data modify storage computer:alu stack[-1]._bj set from storage computer:alu stack[-1].bb1
data modify storage computer:alu stack[-1]._rb_val set from storage computer:alu stack[-1].rb1
function computer:alu/int/mul_unsigned_64_step
data modify storage computer:alu stack[-1].rb1 set from storage computer:alu stack[-1]._rb_val
# j=2, idx=2
data modify storage computer:alu stack[-1]._bj set from storage computer:alu stack[-1].bb2
data modify storage computer:alu stack[-1]._rb_val set from storage computer:alu stack[-1].rb2
function computer:alu/int/mul_unsigned_64_step
data modify storage computer:alu stack[-1].rb2 set from storage computer:alu stack[-1]._rb_val
# j=3, idx=3
data modify storage computer:alu stack[-1]._bj set from storage computer:alu stack[-1].bb3
data modify storage computer:alu stack[-1]._rb_val set from storage computer:alu stack[-1].rb3
function computer:alu/int/mul_unsigned_64_step
data modify storage computer:alu stack[-1].rb3 set from storage computer:alu stack[-1]._rb_val
# rb[4] += carry
data modify storage computer:alu a set from storage computer:alu stack[-1].rb4
data modify storage computer:alu b set from storage computer:alu stack[-1].carry
function computer:alu/int/hw_add
data modify storage computer:alu stack[-1].rb4 set from storage computer:alu result

# === i=1: _ai=ab1 ===
data modify storage computer:alu stack[-1].carry set value 0
data modify storage computer:alu stack[-1]._ai set from storage computer:alu stack[-1].ab1
# j=0, idx=1
data modify storage computer:alu stack[-1]._bj set from storage computer:alu stack[-1].bb0
data modify storage computer:alu stack[-1]._rb_val set from storage computer:alu stack[-1].rb1
function computer:alu/int/mul_unsigned_64_step
data modify storage computer:alu stack[-1].rb1 set from storage computer:alu stack[-1]._rb_val
# j=1, idx=2
data modify storage computer:alu stack[-1]._bj set from storage computer:alu stack[-1].bb1
data modify storage computer:alu stack[-1]._rb_val set from storage computer:alu stack[-1].rb2
function computer:alu/int/mul_unsigned_64_step
data modify storage computer:alu stack[-1].rb2 set from storage computer:alu stack[-1]._rb_val
# j=2, idx=3
data modify storage computer:alu stack[-1]._bj set from storage computer:alu stack[-1].bb2
data modify storage computer:alu stack[-1]._rb_val set from storage computer:alu stack[-1].rb3
function computer:alu/int/mul_unsigned_64_step
data modify storage computer:alu stack[-1].rb3 set from storage computer:alu stack[-1]._rb_val
# j=3, idx=4
data modify storage computer:alu stack[-1]._bj set from storage computer:alu stack[-1].bb3
data modify storage computer:alu stack[-1]._rb_val set from storage computer:alu stack[-1].rb4
function computer:alu/int/mul_unsigned_64_step
data modify storage computer:alu stack[-1].rb4 set from storage computer:alu stack[-1]._rb_val
# rb[5] += carry
data modify storage computer:alu a set from storage computer:alu stack[-1].rb5
data modify storage computer:alu b set from storage computer:alu stack[-1].carry
function computer:alu/int/hw_add
data modify storage computer:alu stack[-1].rb5 set from storage computer:alu result

# === i=2: _ai=ab2 ===
data modify storage computer:alu stack[-1].carry set value 0
data modify storage computer:alu stack[-1]._ai set from storage computer:alu stack[-1].ab2
# j=0, idx=2
data modify storage computer:alu stack[-1]._bj set from storage computer:alu stack[-1].bb0
data modify storage computer:alu stack[-1]._rb_val set from storage computer:alu stack[-1].rb2
function computer:alu/int/mul_unsigned_64_step
data modify storage computer:alu stack[-1].rb2 set from storage computer:alu stack[-1]._rb_val
# j=1, idx=3
data modify storage computer:alu stack[-1]._bj set from storage computer:alu stack[-1].bb1
data modify storage computer:alu stack[-1]._rb_val set from storage computer:alu stack[-1].rb3
function computer:alu/int/mul_unsigned_64_step
data modify storage computer:alu stack[-1].rb3 set from storage computer:alu stack[-1]._rb_val
# j=2, idx=4
data modify storage computer:alu stack[-1]._bj set from storage computer:alu stack[-1].bb2
data modify storage computer:alu stack[-1]._rb_val set from storage computer:alu stack[-1].rb4
function computer:alu/int/mul_unsigned_64_step
data modify storage computer:alu stack[-1].rb4 set from storage computer:alu stack[-1]._rb_val
# j=3, idx=5
data modify storage computer:alu stack[-1]._bj set from storage computer:alu stack[-1].bb3
data modify storage computer:alu stack[-1]._rb_val set from storage computer:alu stack[-1].rb5
function computer:alu/int/mul_unsigned_64_step
data modify storage computer:alu stack[-1].rb5 set from storage computer:alu stack[-1]._rb_val
# rb[6] += carry
data modify storage computer:alu a set from storage computer:alu stack[-1].rb6
data modify storage computer:alu b set from storage computer:alu stack[-1].carry
function computer:alu/int/hw_add
data modify storage computer:alu stack[-1].rb6 set from storage computer:alu result

# === i=3: _ai=ab3 ===
data modify storage computer:alu stack[-1].carry set value 0
data modify storage computer:alu stack[-1]._ai set from storage computer:alu stack[-1].ab3
# j=0, idx=3
data modify storage computer:alu stack[-1]._bj set from storage computer:alu stack[-1].bb0
data modify storage computer:alu stack[-1]._rb_val set from storage computer:alu stack[-1].rb3
function computer:alu/int/mul_unsigned_64_step
data modify storage computer:alu stack[-1].rb3 set from storage computer:alu stack[-1]._rb_val
# j=1, idx=4
data modify storage computer:alu stack[-1]._bj set from storage computer:alu stack[-1].bb1
data modify storage computer:alu stack[-1]._rb_val set from storage computer:alu stack[-1].rb4
function computer:alu/int/mul_unsigned_64_step
data modify storage computer:alu stack[-1].rb4 set from storage computer:alu stack[-1]._rb_val
# j=2, idx=5
data modify storage computer:alu stack[-1]._bj set from storage computer:alu stack[-1].bb2
data modify storage computer:alu stack[-1]._rb_val set from storage computer:alu stack[-1].rb5
function computer:alu/int/mul_unsigned_64_step
data modify storage computer:alu stack[-1].rb5 set from storage computer:alu stack[-1]._rb_val
# j=3, idx=6
data modify storage computer:alu stack[-1]._bj set from storage computer:alu stack[-1].bb3
data modify storage computer:alu stack[-1]._rb_val set from storage computer:alu stack[-1].rb6
function computer:alu/int/mul_unsigned_64_step
data modify storage computer:alu stack[-1].rb6 set from storage computer:alu stack[-1]._rb_val
# rb[7] += carry
data modify storage computer:alu a set from storage computer:alu stack[-1].rb7
data modify storage computer:alu b set from storage computer:alu stack[-1].carry
function computer:alu/int/hw_add
data modify storage computer:alu stack[-1].rb7 set from storage computer:alu result

# lo = add(add(rb0, shl(rb1, 8)), add(shl(rb2, 16), shl(rb3, 24)))
data modify storage computer:alu a set from storage computer:alu stack[-1].rb1
data modify storage computer:alu shift set value 8
function computer:alu/int/shl
data modify storage computer:alu b set from storage computer:alu result
data modify storage computer:alu a set from storage computer:alu stack[-1].rb0
function computer:alu/int/add
data modify storage computer:alu stack[-1]._lo1 set from storage computer:alu result

data modify storage computer:alu a set from storage computer:alu stack[-1].rb2
data modify storage computer:alu shift set value 16
function computer:alu/int/shl
data modify storage computer:alu stack[-1]._lo2 set from storage computer:alu result
data modify storage computer:alu a set from storage computer:alu stack[-1].rb3
data modify storage computer:alu shift set value 24
function computer:alu/int/shl
data modify storage computer:alu b set from storage computer:alu result
data modify storage computer:alu a set from storage computer:alu stack[-1]._lo2
function computer:alu/int/add
data modify storage computer:alu b set from storage computer:alu result
data modify storage computer:alu a set from storage computer:alu stack[-1]._lo1
function computer:alu/int/add
data modify storage computer:alu stack[-1]._result_lo set from storage computer:alu result

# hi = add(add(rb4, shl(rb5, 8)), add(shl(rb6, 16), shl(rb7, 24)))
data modify storage computer:alu a set from storage computer:alu stack[-1].rb5
data modify storage computer:alu shift set value 8
function computer:alu/int/shl
data modify storage computer:alu b set from storage computer:alu result
data modify storage computer:alu a set from storage computer:alu stack[-1].rb4
function computer:alu/int/add
data modify storage computer:alu stack[-1]._hi1 set from storage computer:alu result

data modify storage computer:alu a set from storage computer:alu stack[-1].rb6
data modify storage computer:alu shift set value 16
function computer:alu/int/shl
data modify storage computer:alu stack[-1]._hi2 set from storage computer:alu result
data modify storage computer:alu a set from storage computer:alu stack[-1].rb7
data modify storage computer:alu shift set value 24
function computer:alu/int/shl
data modify storage computer:alu b set from storage computer:alu result
data modify storage computer:alu a set from storage computer:alu stack[-1]._hi2
function computer:alu/int/add
data modify storage computer:alu b set from storage computer:alu result
data modify storage computer:alu a set from storage computer:alu stack[-1]._hi1
function computer:alu/int/add
data modify storage computer:alu result_hi set from storage computer:alu result

data modify storage computer:alu result set from storage computer:alu stack[-1]._result_lo

# pop frame
function computer:alu/stack/pop

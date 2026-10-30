# Loop body for divRemUnsigned — operates on parent's frame (stack[-1])
# Reads/writes: stack[-1].a (dividend), .b (divisor), .q, .r, .i
#
# Optimized version using number providers instead of ALU function calls.

# if (i < 0) return;
execute store result score _i alu run data get storage computer:alu stack[-1].i
execute if score _i alu matches ..-1 run return 0

# bit = (dividend >>> i) & 1
# Special case i==31: pow(2,31) overflows in number providers, so just check sign bit
execute if score _i alu matches 31 run data modify storage computer:alu stack[-1]._bit set value 0
execute if score _i alu matches 31 run execute store result score _a alu run data get storage computer:alu stack[-1].a
execute if score _i alu matches 31 if score _a alu matches ..-1 run data modify storage computer:alu stack[-1]._bit set value 1
# Normal case i<31: use number provider
execute unless score _i alu matches 31 run data modify storage computer:alu stack[-1]._bit set compute default integer computer:alu/div_extract_bit

# r = r << 1 (left shift by 1)
# Number providers fail silently on overflow, so we can't just do r*2.
# Decompose: r << 1 = low30(r) * 2 + (bit30 set ? -2147483648 : 0)
# (bit31 is shifted out / lost)
execute store result score _r alu run data get storage computer:alu stack[-1].r
data modify storage computer:alu stack[-1].r set compute default integer computer:alu/div_r_low30_times_2
execute if score _r alu matches 1073741824.. run data modify storage computer:alu stack[-1].r set compute default integer computer:alu/div_r_plus_min_int
execute if score _r alu matches -2147483648..-1073741825 run data modify storage computer:alu stack[-1].r set compute default integer computer:alu/div_r_plus_min_int

# r = r | bit  (r is even after shift, bit is 0 or 1)
# Use scoreboard add to handle potential overflow (r=MAX_INT, bit=1)
execute store result score _bit alu run data get storage computer:alu stack[-1]._bit
execute if score _bit alu matches 1 run execute store result score _r2 alu run data get storage computer:alu stack[-1].r
execute if score _bit alu matches 1 run scoreboard players add _r2 alu 1
execute if score _bit alu matches 1 run execute store result storage computer:alu stack[-1].r int 1 run scoreboard players get _r2 alu

# compareUnsigned(r, divisor) >= 0
# Unsigned comparison without flipSignBit (which overflows in providers):
# Case 1: r >= 0, divisor >= 0 → normal signed comparison
# Case 2: r < 0, divisor >= 0 → r is always >= divisor unsigned (r has bit31 set)
# Case 3: r >= 0, divisor < 0 → r is always < divisor unsigned
# Case 4: r < 0, divisor < 0 → normal signed comparison
execute store result score _r alu run data get storage computer:alu stack[-1].r
execute store result score _b alu run data get storage computer:alu stack[-1].b
data modify storage computer:alu stack[-1]._ge set value 0
execute if score _r alu matches 0.. if score _b alu matches 0.. if score _r alu >= _b alu run data modify storage computer:alu stack[-1]._ge set value 1
execute if score _r alu matches ..-1 if score _b alu matches 0.. run data modify storage computer:alu stack[-1]._ge set value 1
execute if score _r alu matches ..-1 if score _b alu matches ..-1 if score _r alu >= _b alu run data modify storage computer:alu stack[-1]._ge set value 1

# if (compareUnsigned(r, divisor) >= 0) { ... }
# r -= divisor via scoreboard (wraps correctly, unlike number provider sub which fails on overflow)
execute store result score _ge alu run data get storage computer:alu stack[-1]._ge
execute if score _ge alu matches 1 run scoreboard players operation _r alu -= _b alu
execute if score _ge alu matches 1 run execute store result storage computer:alu stack[-1].r int 1 run scoreboard players get _r alu
execute store result score _i alu run data get storage computer:alu stack[-1].i
execute if score _ge alu matches 1 if score _i alu matches 31 run data modify storage computer:alu stack[-1].q set compute default integer computer:alu/div_flip_q
execute if score _ge alu matches 1 unless score _i alu matches 31 run data modify storage computer:alu stack[-1].q set compute default integer computer:alu/div_q_or_pow2i

# i = i - 1
data modify storage computer:alu stack[-1].i set compute default integer computer:alu/div_i_minus_1

# recurse
function computer:alu/int/div_rem_unsigned_loop

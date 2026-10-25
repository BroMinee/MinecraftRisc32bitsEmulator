# ALU Unit Test Suite (auto-generated)
scoreboard players set _ut_total_pass tests 0
scoreboard players set _ut_total_fail tests 0
data modify storage computer:test ut_failed set value []

# add
function computer:tests/ut/add
# and
function computer:tests/ut/and
# bitwise_op
function computer:tests/ut/bitwise_op
# clear_bit0
function computer:tests/ut/clear_bit0
# compare_unsigned
function computer:tests/ut/compare_unsigned
# copy_negated_sign_bit
function computer:tests/ut/copy_negated_sign_bit
# copy_sign_bit
function computer:tests/ut/copy_sign_bit
# div
function computer:tests/ut/div
# divu
function computer:tests/ut/divu
# flip_sign_bit
function computer:tests/ut/flip_sign_bit
# hw_add
function computer:tests/ut/hw_add
# hw_div
function computer:tests/ut/hw_div
# hw_mul
function computer:tests/ut/hw_mul
# hw_sub
function computer:tests/ut/hw_sub
# low31
function computer:tests/ut/low31
# mask_low_bits
function computer:tests/ut/mask_low_bits
# mod_pow2
function computer:tests/ut/mod_pow2
# mul
function computer:tests/ut/mul
# mul_unsigned_64
function computer:tests/ut/mul_unsigned_64
# mulh
function computer:tests/ut/mulh
# mulhsu
function computer:tests/ut/mulhsu
# mulhu
function computer:tests/ut/mulhu
# negate
function computer:tests/ut/negate
# not
function computer:tests/ut/not
# or
function computer:tests/ut/or
# pow2
function computer:tests/ut/pow2
# rem
function computer:tests/ut/rem
# remu
function computer:tests/ut/remu
# shl
function computer:tests/ut/shl
# shr_s
function computer:tests/ut/shr_s
# shr_u
function computer:tests/ut/shr_u
# sign_extend_16
function computer:tests/ut/sign_extend_16
# sign_extend_8
function computer:tests/ut/sign_extend_8
# sub
function computer:tests/ut/sub
# xor
function computer:tests/ut/xor
# xor_sign_bit
function computer:tests/ut/xor_sign_bit

tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"Results: ","bold":true,"color":"gold"},{"score":{"name":"_ut_total_fail","objective":"tests"},"bold":true,"color":"red"},{"text":" failures out of ","color":"gold"},{"score":{"name":"_ut_total_pass","objective":"tests"},"bold":true,"color":"green"},{"text":" functions tested","color":"gold"}]
execute if data storage computer:test ut_failed[0] run tellraw @a [{"text":"[UT] - ","bold":true,"color":"blue"},{"text":"Failed: ","bold":true,"color":"red"},{"storage":"computer:test","nbt":"ut_failed","color":"red"}]

# Reconstruct exponent (bits 23-30) into scoreboard
execute store result score #debug_b23 Computer run data get storage computer:memory bin[23]
execute store result score #debug_b24 Computer run data get storage computer:memory bin[24]
execute store result score #debug_b25 Computer run data get storage computer:memory bin[25]
execute store result score #debug_b26 Computer run data get storage computer:memory bin[26]
execute store result score #debug_b27 Computer run data get storage computer:memory bin[27]
execute store result score #debug_b28 Computer run data get storage computer:memory bin[28]
execute store result score #debug_b29 Computer run data get storage computer:memory bin[29]
execute store result score #debug_b30 Computer run data get storage computer:memory bin[30]
execute store result score #debug_sign Computer run data get storage computer:memory bin[31]

scoreboard players set #debug_exp Computer 0
execute if score #debug_b23 Computer matches 1 run scoreboard players add #debug_exp Computer 1
execute if score #debug_b24 Computer matches 1 run scoreboard players add #debug_exp Computer 2
execute if score #debug_b25 Computer matches 1 run scoreboard players add #debug_exp Computer 4
execute if score #debug_b26 Computer matches 1 run scoreboard players add #debug_exp Computer 8
execute if score #debug_b27 Computer matches 1 run scoreboard players add #debug_exp Computer 16
execute if score #debug_b28 Computer matches 1 run scoreboard players add #debug_exp Computer 32
execute if score #debug_b29 Computer matches 1 run scoreboard players add #debug_exp Computer 64
execute if score #debug_b30 Computer matches 1 run scoreboard players add #debug_exp Computer 128

# Store exponent - 127 in NBT (used by debug_normal_value.json pow provider)
scoreboard players operation #debug_tmp Computer = #debug_exp Computer
scoreboard players remove #debug_tmp Computer 127
execute store result storage computer:memory debug_real_exp int 1 run scoreboard players get #debug_tmp Computer

# Check if all mantissa bits (0-22) are zero
scoreboard players set #debug_mantissa_zero Computer 1
execute store result score #debug_tmp Computer run data get storage computer:memory bin[0]
execute if score #debug_tmp Computer matches 1 run scoreboard players set #debug_mantissa_zero Computer 0
execute if score #debug_mantissa_zero Computer matches 1 run execute store result score #debug_tmp Computer run data get storage computer:memory bin[1]
execute if score #debug_mantissa_zero Computer matches 1 if score #debug_tmp Computer matches 1 run scoreboard players set #debug_mantissa_zero Computer 0
execute if score #debug_mantissa_zero Computer matches 1 run execute store result score #debug_tmp Computer run data get storage computer:memory bin[2]
execute if score #debug_mantissa_zero Computer matches 1 if score #debug_tmp Computer matches 1 run scoreboard players set #debug_mantissa_zero Computer 0
execute if score #debug_mantissa_zero Computer matches 1 run execute store result score #debug_tmp Computer run data get storage computer:memory bin[3]
execute if score #debug_mantissa_zero Computer matches 1 if score #debug_tmp Computer matches 1 run scoreboard players set #debug_mantissa_zero Computer 0
execute if score #debug_mantissa_zero Computer matches 1 run execute store result score #debug_tmp Computer run data get storage computer:memory bin[4]
execute if score #debug_mantissa_zero Computer matches 1 if score #debug_tmp Computer matches 1 run scoreboard players set #debug_mantissa_zero Computer 0
execute if score #debug_mantissa_zero Computer matches 1 run execute store result score #debug_tmp Computer run data get storage computer:memory bin[5]
execute if score #debug_mantissa_zero Computer matches 1 if score #debug_tmp Computer matches 1 run scoreboard players set #debug_mantissa_zero Computer 0
execute if score #debug_mantissa_zero Computer matches 1 run execute store result score #debug_tmp Computer run data get storage computer:memory bin[6]
execute if score #debug_mantissa_zero Computer matches 1 if score #debug_tmp Computer matches 1 run scoreboard players set #debug_mantissa_zero Computer 0
execute if score #debug_mantissa_zero Computer matches 1 run execute store result score #debug_tmp Computer run data get storage computer:memory bin[7]
execute if score #debug_mantissa_zero Computer matches 1 if score #debug_tmp Computer matches 1 run scoreboard players set #debug_mantissa_zero Computer 0
execute if score #debug_mantissa_zero Computer matches 1 run execute store result score #debug_tmp Computer run data get storage computer:memory bin[8]
execute if score #debug_mantissa_zero Computer matches 1 if score #debug_tmp Computer matches 1 run scoreboard players set #debug_mantissa_zero Computer 0
execute if score #debug_mantissa_zero Computer matches 1 run execute store result score #debug_tmp Computer run data get storage computer:memory bin[9]
execute if score #debug_mantissa_zero Computer matches 1 if score #debug_tmp Computer matches 1 run scoreboard players set #debug_mantissa_zero Computer 0
execute if score #debug_mantissa_zero Computer matches 1 run execute store result score #debug_tmp Computer run data get storage computer:memory bin[10]
execute if score #debug_mantissa_zero Computer matches 1 if score #debug_tmp Computer matches 1 run scoreboard players set #debug_mantissa_zero Computer 0
execute if score #debug_mantissa_zero Computer matches 1 run execute store result score #debug_tmp Computer run data get storage computer:memory bin[11]
execute if score #debug_mantissa_zero Computer matches 1 if score #debug_tmp Computer matches 1 run scoreboard players set #debug_mantissa_zero Computer 0
execute if score #debug_mantissa_zero Computer matches 1 run execute store result score #debug_tmp Computer run data get storage computer:memory bin[12]
execute if score #debug_mantissa_zero Computer matches 1 if score #debug_tmp Computer matches 1 run scoreboard players set #debug_mantissa_zero Computer 0
execute if score #debug_mantissa_zero Computer matches 1 run execute store result score #debug_tmp Computer run data get storage computer:memory bin[13]
execute if score #debug_mantissa_zero Computer matches 1 if score #debug_tmp Computer matches 1 run scoreboard players set #debug_mantissa_zero Computer 0
execute if score #debug_mantissa_zero Computer matches 1 run execute store result score #debug_tmp Computer run data get storage computer:memory bin[14]
execute if score #debug_mantissa_zero Computer matches 1 if score #debug_tmp Computer matches 1 run scoreboard players set #debug_mantissa_zero Computer 0
execute if score #debug_mantissa_zero Computer matches 1 run execute store result score #debug_tmp Computer run data get storage computer:memory bin[15]
execute if score #debug_mantissa_zero Computer matches 1 if score #debug_tmp Computer matches 1 run scoreboard players set #debug_mantissa_zero Computer 0
execute if score #debug_mantissa_zero Computer matches 1 run execute store result score #debug_tmp Computer run data get storage computer:memory bin[16]
execute if score #debug_mantissa_zero Computer matches 1 if score #debug_tmp Computer matches 1 run scoreboard players set #debug_mantissa_zero Computer 0
execute if score #debug_mantissa_zero Computer matches 1 run execute store result score #debug_tmp Computer run data get storage computer:memory bin[17]
execute if score #debug_mantissa_zero Computer matches 1 if score #debug_tmp Computer matches 1 run scoreboard players set #debug_mantissa_zero Computer 0
execute if score #debug_mantissa_zero Computer matches 1 run execute store result score #debug_tmp Computer run data get storage computer:memory bin[18]
execute if score #debug_mantissa_zero Computer matches 1 if score #debug_tmp Computer matches 1 run scoreboard players set #debug_mantissa_zero Computer 0
execute if score #debug_mantissa_zero Computer matches 1 run execute store result score #debug_tmp Computer run data get storage computer:memory bin[19]
execute if score #debug_mantissa_zero Computer matches 1 if score #debug_tmp Computer matches 1 run scoreboard players set #debug_mantissa_zero Computer 0
execute if score #debug_mantissa_zero Computer matches 1 run execute store result score #debug_tmp Computer run data get storage computer:memory bin[20]
execute if score #debug_mantissa_zero Computer matches 1 if score #debug_tmp Computer matches 1 run scoreboard players set #debug_mantissa_zero Computer 0
execute if score #debug_mantissa_zero Computer matches 1 run execute store result score #debug_tmp Computer run data get storage computer:memory bin[21]
execute if score #debug_mantissa_zero Computer matches 1 if score #debug_tmp Computer matches 1 run scoreboard players set #debug_mantissa_zero Computer 0
execute if score #debug_mantissa_zero Computer matches 1 run execute store result score #debug_tmp Computer run data get storage computer:memory bin[22]
execute if score #debug_mantissa_zero Computer matches 1 if score #debug_tmp Computer matches 1 run scoreboard players set #debug_mantissa_zero Computer 0

# Determine case: 0=normal, 1=zero, 2=subnormal, 3=inf, 4=nan
scoreboard players set #debug_case Computer 0
execute if score #debug_exp Computer matches 0 if score #debug_mantissa_zero Computer matches 1 run scoreboard players set #debug_case Computer 1
execute if score #debug_exp Computer matches 0 if score #debug_mantissa_zero Computer matches 0 run scoreboard players set #debug_case Computer 2
execute if score #debug_exp Computer matches 255 if score #debug_mantissa_zero Computer matches 1 run scoreboard players set #debug_case Computer 3
execute if score #debug_exp Computer matches 255 if score #debug_mantissa_zero Computer matches 0 run scoreboard players set #debug_case Computer 4

# Zero
execute if score #debug_case Computer matches 1 if score #debug_sign Computer matches 0 run data modify storage computer:memory debug_float set value "0.0"
execute if score #debug_case Computer matches 1 if score #debug_sign Computer matches 1 run data modify storage computer:memory debug_float set value "-0.0"

# Infinity
execute if score #debug_case Computer matches 3 if score #debug_sign Computer matches 0 run data modify storage computer:memory debug_float set value "+Inf"
execute if score #debug_case Computer matches 3 if score #debug_sign Computer matches 1 run data modify storage computer:memory debug_float set value "-Inf"

# NaN
execute if score #debug_case Computer matches 4 run data modify storage computer:memory debug_float set value "NaN"

# Normal: mantissa(with implicit 1) * 2^(exp-127)
execute if score #debug_case Computer matches 0 run data modify storage computer:memory debug_float set compute default float computer:debug_normal_value

# Subnormal: mantissa(no implicit 1) * 2^(-126)
execute if score #debug_case Computer matches 2 run data modify storage computer:memory debug_float set compute default float computer:debug_subnormal_value

execute if score #debug_case Computer matches 0..2 if score #debug_sign Computer matches 1 run data modify storage computer:memory debug_float set compute default float computer:debug_negate
data modify storage computer:memory debug_float set string storage computer:memory debug_float
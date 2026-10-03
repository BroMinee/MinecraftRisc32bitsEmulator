# Add shifted rs1 (rd low, mulhu_sh high) to accumulator (input_l add32 low, mulhu_acc high)
# Uses add_32bits for the lower half, then propagates carry into upper half

# Copy rd (low part of shifted rs1) to input_r add32
scoreboard players operation input_r_0 add32 = rd_0 Computer
scoreboard players operation input_r_1 add32 = rd_1 Computer
scoreboard players operation input_r_2 add32 = rd_2 Computer
scoreboard players operation input_r_3 add32 = rd_3 Computer
scoreboard players operation input_r_4 add32 = rd_4 Computer
scoreboard players operation input_r_5 add32 = rd_5 Computer
scoreboard players operation input_r_6 add32 = rd_6 Computer
scoreboard players operation input_r_7 add32 = rd_7 Computer
scoreboard players operation input_r_8 add32 = rd_8 Computer
scoreboard players operation input_r_9 add32 = rd_9 Computer
scoreboard players operation input_r_10 add32 = rd_10 Computer
scoreboard players operation input_r_11 add32 = rd_11 Computer
scoreboard players operation input_r_12 add32 = rd_12 Computer
scoreboard players operation input_r_13 add32 = rd_13 Computer
scoreboard players operation input_r_14 add32 = rd_14 Computer
scoreboard players operation input_r_15 add32 = rd_15 Computer
scoreboard players operation input_r_16 add32 = rd_16 Computer
scoreboard players operation input_r_17 add32 = rd_17 Computer
scoreboard players operation input_r_18 add32 = rd_18 Computer
scoreboard players operation input_r_19 add32 = rd_19 Computer
scoreboard players operation input_r_20 add32 = rd_20 Computer
scoreboard players operation input_r_21 add32 = rd_21 Computer
scoreboard players operation input_r_22 add32 = rd_22 Computer
scoreboard players operation input_r_23 add32 = rd_23 Computer
scoreboard players operation input_r_24 add32 = rd_24 Computer
scoreboard players operation input_r_25 add32 = rd_25 Computer
scoreboard players operation input_r_26 add32 = rd_26 Computer
scoreboard players operation input_r_27 add32 = rd_27 Computer
scoreboard players operation input_r_28 add32 = rd_28 Computer
scoreboard players operation input_r_29 add32 = rd_29 Computer
scoreboard players operation input_r_30 add32 = rd_30 Computer
scoreboard players operation input_r_31 add32 = rd_31 Computer

# Add lower halves (result in input_l add32, carry in C add32)
function computer:alu/add_32bits

# Now add upper half: mulhu_acc += mulhu_sh + carry (C add32)
# Manual 32-bit add with carry-in from lower half
scoreboard players operation mulhu_acc_0 Computer += mulhu_sh_0 Computer
scoreboard players operation mulhu_acc_0 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_0 Computer matches 2..
scoreboard players operation mulhu_acc_0 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_1 Computer += mulhu_sh_1 Computer
scoreboard players operation mulhu_acc_1 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_1 Computer matches 2..
scoreboard players operation mulhu_acc_1 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_2 Computer += mulhu_sh_2 Computer
scoreboard players operation mulhu_acc_2 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_2 Computer matches 2..
scoreboard players operation mulhu_acc_2 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_3 Computer += mulhu_sh_3 Computer
scoreboard players operation mulhu_acc_3 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_3 Computer matches 2..
scoreboard players operation mulhu_acc_3 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_4 Computer += mulhu_sh_4 Computer
scoreboard players operation mulhu_acc_4 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_4 Computer matches 2..
scoreboard players operation mulhu_acc_4 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_5 Computer += mulhu_sh_5 Computer
scoreboard players operation mulhu_acc_5 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_5 Computer matches 2..
scoreboard players operation mulhu_acc_5 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_6 Computer += mulhu_sh_6 Computer
scoreboard players operation mulhu_acc_6 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_6 Computer matches 2..
scoreboard players operation mulhu_acc_6 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_7 Computer += mulhu_sh_7 Computer
scoreboard players operation mulhu_acc_7 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_7 Computer matches 2..
scoreboard players operation mulhu_acc_7 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_8 Computer += mulhu_sh_8 Computer
scoreboard players operation mulhu_acc_8 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_8 Computer matches 2..
scoreboard players operation mulhu_acc_8 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_9 Computer += mulhu_sh_9 Computer
scoreboard players operation mulhu_acc_9 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_9 Computer matches 2..
scoreboard players operation mulhu_acc_9 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_10 Computer += mulhu_sh_10 Computer
scoreboard players operation mulhu_acc_10 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_10 Computer matches 2..
scoreboard players operation mulhu_acc_10 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_11 Computer += mulhu_sh_11 Computer
scoreboard players operation mulhu_acc_11 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_11 Computer matches 2..
scoreboard players operation mulhu_acc_11 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_12 Computer += mulhu_sh_12 Computer
scoreboard players operation mulhu_acc_12 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_12 Computer matches 2..
scoreboard players operation mulhu_acc_12 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_13 Computer += mulhu_sh_13 Computer
scoreboard players operation mulhu_acc_13 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_13 Computer matches 2..
scoreboard players operation mulhu_acc_13 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_14 Computer += mulhu_sh_14 Computer
scoreboard players operation mulhu_acc_14 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_14 Computer matches 2..
scoreboard players operation mulhu_acc_14 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_15 Computer += mulhu_sh_15 Computer
scoreboard players operation mulhu_acc_15 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_15 Computer matches 2..
scoreboard players operation mulhu_acc_15 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_16 Computer += mulhu_sh_16 Computer
scoreboard players operation mulhu_acc_16 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_16 Computer matches 2..
scoreboard players operation mulhu_acc_16 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_17 Computer += mulhu_sh_17 Computer
scoreboard players operation mulhu_acc_17 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_17 Computer matches 2..
scoreboard players operation mulhu_acc_17 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_18 Computer += mulhu_sh_18 Computer
scoreboard players operation mulhu_acc_18 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_18 Computer matches 2..
scoreboard players operation mulhu_acc_18 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_19 Computer += mulhu_sh_19 Computer
scoreboard players operation mulhu_acc_19 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_19 Computer matches 2..
scoreboard players operation mulhu_acc_19 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_20 Computer += mulhu_sh_20 Computer
scoreboard players operation mulhu_acc_20 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_20 Computer matches 2..
scoreboard players operation mulhu_acc_20 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_21 Computer += mulhu_sh_21 Computer
scoreboard players operation mulhu_acc_21 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_21 Computer matches 2..
scoreboard players operation mulhu_acc_21 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_22 Computer += mulhu_sh_22 Computer
scoreboard players operation mulhu_acc_22 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_22 Computer matches 2..
scoreboard players operation mulhu_acc_22 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_23 Computer += mulhu_sh_23 Computer
scoreboard players operation mulhu_acc_23 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_23 Computer matches 2..
scoreboard players operation mulhu_acc_23 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_24 Computer += mulhu_sh_24 Computer
scoreboard players operation mulhu_acc_24 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_24 Computer matches 2..
scoreboard players operation mulhu_acc_24 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_25 Computer += mulhu_sh_25 Computer
scoreboard players operation mulhu_acc_25 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_25 Computer matches 2..
scoreboard players operation mulhu_acc_25 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_26 Computer += mulhu_sh_26 Computer
scoreboard players operation mulhu_acc_26 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_26 Computer matches 2..
scoreboard players operation mulhu_acc_26 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_27 Computer += mulhu_sh_27 Computer
scoreboard players operation mulhu_acc_27 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_27 Computer matches 2..
scoreboard players operation mulhu_acc_27 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_28 Computer += mulhu_sh_28 Computer
scoreboard players operation mulhu_acc_28 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_28 Computer matches 2..
scoreboard players operation mulhu_acc_28 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_29 Computer += mulhu_sh_29 Computer
scoreboard players operation mulhu_acc_29 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_29 Computer matches 2..
scoreboard players operation mulhu_acc_29 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_30 Computer += mulhu_sh_30 Computer
scoreboard players operation mulhu_acc_30 Computer += C add32
execute store result score C add32 run execute if score mulhu_acc_30 Computer matches 2..
scoreboard players operation mulhu_acc_30 Computer %= 2 FixedValue

scoreboard players operation mulhu_acc_31 Computer += mulhu_sh_31 Computer
scoreboard players operation mulhu_acc_31 Computer += C add32
scoreboard players operation mulhu_acc_31 Computer %= 2 FixedValue

# input rs1_[0-31] Computer AND rs2_[0-31] Computer
# output compare Computer (FLOAT comparison, sign-magnitude)
# compare = 1 if rs1 < rs2 else 0
# NOTE: does NOT handle the -0 == +0 case (caller must handle that)

scoreboard players set compare Computer -1

# Step 1: compare sign bits (bit 31)
# rs1 negative, rs2 positive -> rs1 < rs2
execute if score compare Computer matches -1 run execute if score rs1_31 Computer matches 1 run execute if score rs2_31 Computer matches 0 run scoreboard players set compare Computer 1
# rs1 positive, rs2 negative -> rs1 > rs2
execute if score compare Computer matches -1 run execute if score rs1_31 Computer matches 0 run execute if score rs2_31 Computer matches 1 run scoreboard players set compare Computer 0

# Step 2: same sign - compare magnitude (bits 30 down to 0)
# For positive: larger magnitude = larger value, so rs1_bit < rs2_bit means rs1 < rs2
# For negative: larger magnitude = smaller value, so rs1_bit > rs2_bit means rs1 < rs2
# We compare unsigned magnitude first, then flip based on sign

execute if score compare Computer matches -1 run execute if score rs1_30 Computer matches 0 run execute if score rs2_30 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_30 Computer matches 1 run execute if score rs2_30 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_29 Computer matches 0 run execute if score rs2_29 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_29 Computer matches 1 run execute if score rs2_29 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_28 Computer matches 0 run execute if score rs2_28 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_28 Computer matches 1 run execute if score rs2_28 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_27 Computer matches 0 run execute if score rs2_27 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_27 Computer matches 1 run execute if score rs2_27 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_26 Computer matches 0 run execute if score rs2_26 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_26 Computer matches 1 run execute if score rs2_26 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_25 Computer matches 0 run execute if score rs2_25 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_25 Computer matches 1 run execute if score rs2_25 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_24 Computer matches 0 run execute if score rs2_24 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_24 Computer matches 1 run execute if score rs2_24 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_23 Computer matches 0 run execute if score rs2_23 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_23 Computer matches 1 run execute if score rs2_23 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_22 Computer matches 0 run execute if score rs2_22 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_22 Computer matches 1 run execute if score rs2_22 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_21 Computer matches 0 run execute if score rs2_21 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_21 Computer matches 1 run execute if score rs2_21 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_20 Computer matches 0 run execute if score rs2_20 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_20 Computer matches 1 run execute if score rs2_20 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_19 Computer matches 0 run execute if score rs2_19 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_19 Computer matches 1 run execute if score rs2_19 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_18 Computer matches 0 run execute if score rs2_18 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_18 Computer matches 1 run execute if score rs2_18 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_17 Computer matches 0 run execute if score rs2_17 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_17 Computer matches 1 run execute if score rs2_17 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_16 Computer matches 0 run execute if score rs2_16 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_16 Computer matches 1 run execute if score rs2_16 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_15 Computer matches 0 run execute if score rs2_15 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_15 Computer matches 1 run execute if score rs2_15 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_14 Computer matches 0 run execute if score rs2_14 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_14 Computer matches 1 run execute if score rs2_14 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_13 Computer matches 0 run execute if score rs2_13 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_13 Computer matches 1 run execute if score rs2_13 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_12 Computer matches 0 run execute if score rs2_12 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_12 Computer matches 1 run execute if score rs2_12 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_11 Computer matches 0 run execute if score rs2_11 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_11 Computer matches 1 run execute if score rs2_11 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_10 Computer matches 0 run execute if score rs2_10 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_10 Computer matches 1 run execute if score rs2_10 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_9 Computer matches 0 run execute if score rs2_9 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_9 Computer matches 1 run execute if score rs2_9 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_8 Computer matches 0 run execute if score rs2_8 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_8 Computer matches 1 run execute if score rs2_8 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_7 Computer matches 0 run execute if score rs2_7 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_7 Computer matches 1 run execute if score rs2_7 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_6 Computer matches 0 run execute if score rs2_6 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_6 Computer matches 1 run execute if score rs2_6 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_5 Computer matches 0 run execute if score rs2_5 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_5 Computer matches 1 run execute if score rs2_5 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_4 Computer matches 0 run execute if score rs2_4 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_4 Computer matches 1 run execute if score rs2_4 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_3 Computer matches 0 run execute if score rs2_3 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_3 Computer matches 1 run execute if score rs2_3 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_2 Computer matches 0 run execute if score rs2_2 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_2 Computer matches 1 run execute if score rs2_2 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_1 Computer matches 0 run execute if score rs2_1 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_1 Computer matches 1 run execute if score rs2_1 Computer matches 0 run scoreboard players set compare Computer 3

execute if score compare Computer matches -1 run execute if score rs1_0 Computer matches 0 run execute if score rs2_0 Computer matches 1 run scoreboard players set compare Computer 2
execute if score compare Computer matches -1 run execute if score rs1_0 Computer matches 1 run execute if score rs2_0 Computer matches 0 run scoreboard players set compare Computer 3

# compare=2: rs1 magnitude < rs2 magnitude
# compare=3: rs1 magnitude > rs2 magnitude
# compare=-1: equal magnitude

# Both positive: smaller magnitude = smaller value
# compare=2 (rs1 mag < rs2 mag) -> rs1 < rs2 -> compare=1
# compare=3 (rs1 mag > rs2 mag) -> rs1 > rs2 -> compare=0
execute if score rs1_31 Computer matches 0 run execute if score compare Computer matches 2 run scoreboard players set compare Computer 1
execute if score rs1_31 Computer matches 0 run execute if score compare Computer matches 3 run scoreboard players set compare Computer 0

# Both negative: smaller magnitude = larger value (closer to zero)
# compare=2 (rs1 mag < rs2 mag) -> rs1 > rs2 -> compare=0
# compare=3 (rs1 mag > rs2 mag) -> rs1 < rs2 -> compare=1
execute if score rs1_31 Computer matches 1 run execute if score compare Computer matches 2 run scoreboard players set compare Computer 0
execute if score rs1_31 Computer matches 1 run execute if score compare Computer matches 3 run scoreboard players set compare Computer 1

# Equal values -> compare=0 (not strictly less)
execute if score compare Computer matches -1 run scoreboard players set compare Computer 0

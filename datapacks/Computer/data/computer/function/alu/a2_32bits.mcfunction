scoreboard players operation input_0 A2 += 1 FixedValue
scoreboard players operation input_1 A2 += 1 FixedValue
scoreboard players operation input_2 A2 += 1 FixedValue
scoreboard players operation input_3 A2 += 1 FixedValue
scoreboard players operation input_4 A2 += 1 FixedValue
scoreboard players operation input_5 A2 += 1 FixedValue
scoreboard players operation input_6 A2 += 1 FixedValue
scoreboard players operation input_7 A2 += 1 FixedValue
scoreboard players operation input_8 A2 += 1 FixedValue
scoreboard players operation input_9 A2 += 1 FixedValue
scoreboard players operation input_10 A2 += 1 FixedValue
scoreboard players operation input_11 A2 += 1 FixedValue
scoreboard players operation input_12 A2 += 1 FixedValue
scoreboard players operation input_13 A2 += 1 FixedValue
scoreboard players operation input_14 A2 += 1 FixedValue
scoreboard players operation input_15 A2 += 1 FixedValue
scoreboard players operation input_16 A2 += 1 FixedValue
scoreboard players operation input_17 A2 += 1 FixedValue
scoreboard players operation input_18 A2 += 1 FixedValue
scoreboard players operation input_19 A2 += 1 FixedValue
scoreboard players operation input_20 A2 += 1 FixedValue
scoreboard players operation input_21 A2 += 1 FixedValue
scoreboard players operation input_22 A2 += 1 FixedValue
scoreboard players operation input_23 A2 += 1 FixedValue
scoreboard players operation input_24 A2 += 1 FixedValue
scoreboard players operation input_25 A2 += 1 FixedValue
scoreboard players operation input_26 A2 += 1 FixedValue
scoreboard players operation input_27 A2 += 1 FixedValue
scoreboard players operation input_28 A2 += 1 FixedValue
scoreboard players operation input_29 A2 += 1 FixedValue
scoreboard players operation input_30 A2 += 1 FixedValue
scoreboard players operation input_31 A2 += 1 FixedValue

scoreboard players operation input_0 A2 %= 2 FixedValue
scoreboard players operation input_1 A2 %= 2 FixedValue
scoreboard players operation input_2 A2 %= 2 FixedValue
scoreboard players operation input_3 A2 %= 2 FixedValue
scoreboard players operation input_4 A2 %= 2 FixedValue
scoreboard players operation input_5 A2 %= 2 FixedValue
scoreboard players operation input_6 A2 %= 2 FixedValue
scoreboard players operation input_7 A2 %= 2 FixedValue
scoreboard players operation input_8 A2 %= 2 FixedValue
scoreboard players operation input_9 A2 %= 2 FixedValue
scoreboard players operation input_10 A2 %= 2 FixedValue
scoreboard players operation input_11 A2 %= 2 FixedValue
scoreboard players operation input_12 A2 %= 2 FixedValue
scoreboard players operation input_13 A2 %= 2 FixedValue
scoreboard players operation input_14 A2 %= 2 FixedValue
scoreboard players operation input_15 A2 %= 2 FixedValue
scoreboard players operation input_16 A2 %= 2 FixedValue
scoreboard players operation input_17 A2 %= 2 FixedValue
scoreboard players operation input_18 A2 %= 2 FixedValue
scoreboard players operation input_19 A2 %= 2 FixedValue
scoreboard players operation input_20 A2 %= 2 FixedValue
scoreboard players operation input_21 A2 %= 2 FixedValue
scoreboard players operation input_22 A2 %= 2 FixedValue
scoreboard players operation input_23 A2 %= 2 FixedValue
scoreboard players operation input_24 A2 %= 2 FixedValue
scoreboard players operation input_25 A2 %= 2 FixedValue
scoreboard players operation input_26 A2 %= 2 FixedValue
scoreboard players operation input_27 A2 %= 2 FixedValue
scoreboard players operation input_28 A2 %= 2 FixedValue
scoreboard players operation input_29 A2 %= 2 FixedValue
scoreboard players operation input_30 A2 %= 2 FixedValue
scoreboard players operation input_31 A2 %= 2 FixedValue

scoreboard players set C A2 0
# Add 1 to flipped bits
scoreboard players operation input_0 A2 += 1 FixedValue
execute store result score C A2 run execute if score input_0 A2 matches 2
scoreboard players operation input_0 A2 %= 2 FixedValue

scoreboard players operation input_1 A2 += C A2
execute store result score C A2 run execute if score input_1 A2 matches 2
scoreboard players operation input_1 A2 %= 2 FixedValue

scoreboard players operation input_2 A2 += C A2
execute store result score C A2 run execute if score input_2 A2 matches 2
scoreboard players operation input_2 A2 %= 2 FixedValue

scoreboard players operation input_3 A2 += C A2
execute store result score C A2 run execute if score input_3 A2 matches 2
scoreboard players operation input_3 A2 %= 2 FixedValue

scoreboard players operation input_4 A2 += C A2
execute store result score C A2 run execute if score input_4 A2 matches 2
scoreboard players operation input_4 A2 %= 2 FixedValue

scoreboard players operation input_5 A2 += C A2
execute store result score C A2 run execute if score input_5 A2 matches 2
scoreboard players operation input_5 A2 %= 2 FixedValue

scoreboard players operation input_6 A2 += C A2
execute store result score C A2 run execute if score input_6 A2 matches 2
scoreboard players operation input_6 A2 %= 2 FixedValue

scoreboard players operation input_7 A2 += C A2
execute store result score C A2 run execute if score input_7 A2 matches 2
scoreboard players operation input_7 A2 %= 2 FixedValue

scoreboard players operation input_8 A2 += C A2
execute store result score C A2 run execute if score input_8 A2 matches 2
scoreboard players operation input_8 A2 %= 2 FixedValue

scoreboard players operation input_9 A2 += C A2
execute store result score C A2 run execute if score input_9 A2 matches 2
scoreboard players operation input_9 A2 %= 2 FixedValue

scoreboard players operation input_10 A2 += C A2
execute store result score C A2 run execute if score input_10 A2 matches 2
scoreboard players operation input_10 A2 %= 2 FixedValue

scoreboard players operation input_11 A2 += C A2
execute store result score C A2 run execute if score input_11 A2 matches 2
scoreboard players operation input_11 A2 %= 2 FixedValue

scoreboard players operation input_12 A2 += C A2
execute store result score C A2 run execute if score input_12 A2 matches 2
scoreboard players operation input_12 A2 %= 2 FixedValue

scoreboard players operation input_13 A2 += C A2
execute store result score C A2 run execute if score input_13 A2 matches 2
scoreboard players operation input_13 A2 %= 2 FixedValue

scoreboard players operation input_14 A2 += C A2
execute store result score C A2 run execute if score input_14 A2 matches 2
scoreboard players operation input_14 A2 %= 2 FixedValue

scoreboard players operation input_15 A2 += C A2
execute store result score C A2 run execute if score input_15 A2 matches 2
scoreboard players operation input_15 A2 %= 2 FixedValue

scoreboard players operation input_16 A2 += C A2
execute store result score C A2 run execute if score input_16 A2 matches 2
scoreboard players operation input_16 A2 %= 2 FixedValue

scoreboard players operation input_17 A2 += C A2
execute store result score C A2 run execute if score input_17 A2 matches 2
scoreboard players operation input_17 A2 %= 2 FixedValue

scoreboard players operation input_18 A2 += C A2
execute store result score C A2 run execute if score input_18 A2 matches 2
scoreboard players operation input_18 A2 %= 2 FixedValue

scoreboard players operation input_19 A2 += C A2
execute store result score C A2 run execute if score input_19 A2 matches 2
scoreboard players operation input_19 A2 %= 2 FixedValue

scoreboard players operation input_20 A2 += C A2
execute store result score C A2 run execute if score input_20 A2 matches 2
scoreboard players operation input_20 A2 %= 2 FixedValue

scoreboard players operation input_21 A2 += C A2
execute store result score C A2 run execute if score input_21 A2 matches 2
scoreboard players operation input_21 A2 %= 2 FixedValue

scoreboard players operation input_22 A2 += C A2
execute store result score C A2 run execute if score input_22 A2 matches 2
scoreboard players operation input_22 A2 %= 2 FixedValue

scoreboard players operation input_23 A2 += C A2
execute store result score C A2 run execute if score input_23 A2 matches 2
scoreboard players operation input_23 A2 %= 2 FixedValue

scoreboard players operation input_24 A2 += C A2
execute store result score C A2 run execute if score input_24 A2 matches 2
scoreboard players operation input_24 A2 %= 2 FixedValue

scoreboard players operation input_25 A2 += C A2
execute store result score C A2 run execute if score input_25 A2 matches 2
scoreboard players operation input_25 A2 %= 2 FixedValue

scoreboard players operation input_26 A2 += C A2
execute store result score C A2 run execute if score input_26 A2 matches 2
scoreboard players operation input_26 A2 %= 2 FixedValue

scoreboard players operation input_27 A2 += C A2
execute store result score C A2 run execute if score input_27 A2 matches 2
scoreboard players operation input_27 A2 %= 2 FixedValue

scoreboard players operation input_28 A2 += C A2
execute store result score C A2 run execute if score input_28 A2 matches 2
scoreboard players operation input_28 A2 %= 2 FixedValue

scoreboard players operation input_29 A2 += C A2
execute store result score C A2 run execute if score input_29 A2 matches 2
scoreboard players operation input_29 A2 %= 2 FixedValue

scoreboard players operation input_30 A2 += C A2
execute store result score C A2 run execute if score input_30 A2 matches 2
scoreboard players operation input_30 A2 %= 2 FixedValue

scoreboard players operation input_31 A2 += C A2
scoreboard players operation input_31 A2 %= 2 FixedValue
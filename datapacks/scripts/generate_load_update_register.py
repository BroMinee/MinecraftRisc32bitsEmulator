# x0-32
for i in range(32):
    with open(f"../Computer/data/computer/function/misc/load/load_rs1_x{i}.mcfunction", 'w') as f:
        f.write(f"# no input\n# output rs1_[0-31] Computer\n\n")
        f.write(f"scoreboard players add found Computer 1\n\n")
        for j in range(32):
            f.write(f"scoreboard players operation rs1_{j} Computer = x{i}_{j} Computer\n")

    with open(f"../Computer/data/computer/function/misc/load/load_rs2_x{i}.mcfunction", 'w') as f:
        f.write(f"# no input\n# output rs2_[0-31] Computer\n\n")
        f.write(f"scoreboard players add found Computer 1\n\n")
        for j in range(32):
            f.write(f"scoreboard players operation rs2_{j} Computer = x{i}_{j} Computer\n")

    with open(f"../Computer/data/computer/function/misc/load/load_rd_x{i}.mcfunction", 'w') as f:
        f.write(f"# no input\n# output rd_[0-31] Computer\n\n")
        f.write(f"scoreboard players add found Computer 1\n\n")
        for j in range(32):
            f.write(f"scoreboard players operation rd_{j} Computer = x{i}_{j} Computer\n")


    if i == 0:
        with open(f"../Computer/data/computer/function/misc/update/update_rd_x{i}.mcfunction", 'w') as f:
            f.write(f"# register zero is read-only\n")
            f.write("scoreboard players add found Computer 1\n\n")
            f.write("scoreboard players set keep_going Computer 1\n")
            f.write("# test if instruction is NOP (addi x0, x0, 0) it's the ONLY case when x0 can be modified\n")
            f.write("execute if score read_0 Computer matches 1 run execute if score read_1 Computer matches 1 run execute if score read_2 Computer matches 0 run execute if score read_3 Computer matches 0 run execute if score read_4 Computer matches 1 run execute if score read_5 Computer matches 0 run execute if score read_6 Computer matches 0 run execute if score read_7 Computer matches 0 run execute if score read_8 Computer matches 0 run execute if score read_9 Computer matches 0 run execute if score read_10 Computer matches 0 run execute if score read_11 Computer matches 0 run execute if score read_12 Computer matches 0 run execute if score read_13 Computer matches 0 run execute if score read_14 Computer matches 0 run execute if score read_15 Computer matches 0 run execute if score read_16 Computer matches 0 run execute if score read_17 Computer matches 0 run execute if score read_18 Computer matches 0 run execute if score read_19 Computer matches 0 run execute if score read_20 Computer matches 0 run execute if score read_21 Computer matches 0 run execute if score read_22 Computer matches 0 run execute if score read_23 Computer matches 0 run execute if score read_24 Computer matches 0 run execute if score read_25 Computer matches 0 run execute if score read_26 Computer matches 0 run execute if score read_27 Computer matches 0 run execute if score read_28 Computer matches 0 run execute if score read_29 Computer matches 0 run execute if score read_30 Computer matches 0 run execute if score read_31 Computer matches 0 run scoreboard players set keep_going Computer 0\n")
            f.write('execute if score keep_going Computer matches 1 run tellraw @a[tag=WARNING] [{"text":""},{"text":"[WARNING] - ","color": "dark_purple","bold":true},{"text":"Trying to modify x0 (zero) (could be valid when ret instruction = jalr ra)","bold":true,"color":"light_purple"}]\n')
            f.write("execute unless score found Computer matches 1 run scoreboard players set error stats 1")
    else:
        with open(f"../Computer/data/computer/function/misc/update/update_rd_x{i}.mcfunction", 'w') as f:
            f.write(f"# input rd_[0-31] Computer\n# output x{i}_[0-31] Computer\n\n")
            f.write("scoreboard players add found Computer 1\n\n")
            for j in range(32):

                f.write(f"scoreboard players operation x{i}_{j} Computer = rd_{j} Computer\n")

    with open(f"../Computer/data/computer/function/debug/register/pre_debug_rd_x{i}.mcfunction", 'w') as f2:
        f2.write(f"""data modify storage computer:memory bin set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
data modify storage computer:memory hexa set value ["","","","","","","",""]

execute store result storage computer:memory bin[0] int 1 run scoreboard players get x{i}_0 Computer
execute store result storage computer:memory bin[1] int 1 run scoreboard players get x{i}_1 Computer
execute store result storage computer:memory bin[2] int 1 run scoreboard players get x{i}_2 Computer
execute store result storage computer:memory bin[3] int 1 run scoreboard players get x{i}_3 Computer
execute store result storage computer:memory bin[4] int 1 run scoreboard players get x{i}_4 Computer
execute store result storage computer:memory bin[5] int 1 run scoreboard players get x{i}_5 Computer
execute store result storage computer:memory bin[6] int 1 run scoreboard players get x{i}_6 Computer
execute store result storage computer:memory bin[7] int 1 run scoreboard players get x{i}_7 Computer
execute store result storage computer:memory bin[8] int 1 run scoreboard players get x{i}_8 Computer
execute store result storage computer:memory bin[9] int 1 run scoreboard players get x{i}_9 Computer
execute store result storage computer:memory bin[10] int 1 run scoreboard players get x{i}_10 Computer
execute store result storage computer:memory bin[11] int 1 run scoreboard players get x{i}_11 Computer
execute store result storage computer:memory bin[12] int 1 run scoreboard players get x{i}_12 Computer
execute store result storage computer:memory bin[13] int 1 run scoreboard players get x{i}_13 Computer
execute store result storage computer:memory bin[14] int 1 run scoreboard players get x{i}_14 Computer
execute store result storage computer:memory bin[15] int 1 run scoreboard players get x{i}_15 Computer
execute store result storage computer:memory bin[16] int 1 run scoreboard players get x{i}_16 Computer
execute store result storage computer:memory bin[17] int 1 run scoreboard players get x{i}_17 Computer
execute store result storage computer:memory bin[18] int 1 run scoreboard players get x{i}_18 Computer
execute store result storage computer:memory bin[19] int 1 run scoreboard players get x{i}_19 Computer
execute store result storage computer:memory bin[20] int 1 run scoreboard players get x{i}_20 Computer
execute store result storage computer:memory bin[21] int 1 run scoreboard players get x{i}_21 Computer
execute store result storage computer:memory bin[22] int 1 run scoreboard players get x{i}_22 Computer
execute store result storage computer:memory bin[23] int 1 run scoreboard players get x{i}_23 Computer
execute store result storage computer:memory bin[24] int 1 run scoreboard players get x{i}_24 Computer
execute store result storage computer:memory bin[25] int 1 run scoreboard players get x{i}_25 Computer
execute store result storage computer:memory bin[26] int 1 run scoreboard players get x{i}_26 Computer
execute store result storage computer:memory bin[27] int 1 run scoreboard players get x{i}_27 Computer
execute store result storage computer:memory bin[28] int 1 run scoreboard players get x{i}_28 Computer
execute store result storage computer:memory bin[29] int 1 run scoreboard players get x{i}_29 Computer
execute store result storage computer:memory bin[30] int 1 run scoreboard players get x{i}_30 Computer
execute store result storage computer:memory bin[31] int 1 run scoreboard players get x{i}_31 Computer


scoreboard players operation #tmp0 Computer = x{i}_0 Computer
scoreboard players operation #tmp1 Computer = x{i}_1 Computer
scoreboard players operation #tmp2 Computer = x{i}_2 Computer
scoreboard players operation #tmp3 Computer = x{i}_3 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[0] set string storage computer:memory hex_tmp

scoreboard players operation #tmp0 Computer = x{i}_4 Computer
scoreboard players operation #tmp1 Computer = x{i}_5 Computer
scoreboard players operation #tmp2 Computer = x{i}_6 Computer
scoreboard players operation #tmp3 Computer = x{i}_7 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[1] set string storage computer:memory hex_tmp

scoreboard players operation #tmp0 Computer = x{i}_8 Computer
scoreboard players operation #tmp1 Computer = x{i}_9 Computer
scoreboard players operation #tmp2 Computer = x{i}_10 Computer
scoreboard players operation #tmp3 Computer = x{i}_11 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[2] set string storage computer:memory hex_tmp

scoreboard players operation #tmp0 Computer = x{i}_12 Computer
scoreboard players operation #tmp1 Computer = x{i}_13 Computer
scoreboard players operation #tmp2 Computer = x{i}_14 Computer
scoreboard players operation #tmp3 Computer = x{i}_15 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[3] set string storage computer:memory hex_tmp

scoreboard players operation #tmp0 Computer = x{i}_16 Computer
scoreboard players operation #tmp1 Computer = x{i}_17 Computer
scoreboard players operation #tmp2 Computer = x{i}_18 Computer
scoreboard players operation #tmp3 Computer = x{i}_19 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[4] set string storage computer:memory hex_tmp

scoreboard players operation #tmp0 Computer = x{i}_20 Computer
scoreboard players operation #tmp1 Computer = x{i}_21 Computer
scoreboard players operation #tmp2 Computer = x{i}_22 Computer
scoreboard players operation #tmp3 Computer = x{i}_23 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[5] set string storage computer:memory hex_tmp

scoreboard players operation #tmp0 Computer = x{i}_24 Computer
scoreboard players operation #tmp1 Computer = x{i}_25 Computer
scoreboard players operation #tmp2 Computer = x{i}_26 Computer
scoreboard players operation #tmp3 Computer = x{i}_27 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[6] set string storage computer:memory hex_tmp

scoreboard players operation #tmp0 Computer = x{i}_28 Computer
scoreboard players operation #tmp1 Computer = x{i}_29 Computer
scoreboard players operation #tmp2 Computer = x{i}_30 Computer
scoreboard players operation #tmp3 Computer = x{i}_31 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[7] set string storage computer:memory hex_tmp


data modify storage computer:memory type set value "Updated x{i}"
function computer:debug/printf""")


#f0-32

for i in range(32):
    with open(f"../Computer/data/computer/function/misc/load/load_rs1_f{i}.mcfunction", 'w') as f:
        f.write(f"# no input\n# output rs1_[0-31] Computer\n\n")
        f.write(f"scoreboard players add found Computer 1\n\n")
        for j in range(32):
            f.write(f"scoreboard players operation rs1_{j} Computer = f{i}_{j} Computer\n")

    with open(f"../Computer/data/computer/function/misc/load/load_rs2_f{i}.mcfunction", 'w') as f:
        f.write(f"# no input\n# output rs2_[0-31] Computer\n\n")
        f.write(f"scoreboard players add found Computer 1\n\n")
        for j in range(32):
            f.write(f"scoreboard players operation rs2_{j} Computer = f{i}_{j} Computer\n")

    with open(f"../Computer/data/computer/function/misc/load/load_rd_f{i}.mcfunction", 'w') as f:
        f.write(f"# no input\n# output rd_[0-31] Computer\n\n")
        f.write(f"scoreboard players add found Computer 1\n\n")
        for j in range(32):
            f.write(f"scoreboard players operation rd_{j} Computer = f{i}_{j} Computer\n")


    with open(f"../Computer/data/computer/function/misc/update/update_rd_f{i}.mcfunction", 'w') as f:
        f.write(f"# input rd_[0-31] Computer\n# output f{i}_[0-31] Computer\n\n")
        f.write("scoreboard players add found Computer 1\n\n")
        for j in range(32):

            f.write(f"scoreboard players operation f{i}_{j} Computer = rd_{j} Computer\n")

    with open(f"../Computer/data/computer/function/debug/register/pre_debug_rd_f{i}.mcfunction", 'w') as f2:
        f2.write(f"""data modify storage computer:memory bin set value [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
data modify storage computer:memory hexa set value ["","","","","","","",""]

execute store result storage computer:memory bin[0] int 1 run scoreboard players get f{i}_0 Computer
execute store result storage computer:memory bin[1] int 1 run scoreboard players get f{i}_1 Computer
execute store result storage computer:memory bin[2] int 1 run scoreboard players get f{i}_2 Computer
execute store result storage computer:memory bin[3] int 1 run scoreboard players get f{i}_3 Computer
execute store result storage computer:memory bin[4] int 1 run scoreboard players get f{i}_4 Computer
execute store result storage computer:memory bin[5] int 1 run scoreboard players get f{i}_5 Computer
execute store result storage computer:memory bin[6] int 1 run scoreboard players get f{i}_6 Computer
execute store result storage computer:memory bin[7] int 1 run scoreboard players get f{i}_7 Computer
execute store result storage computer:memory bin[8] int 1 run scoreboard players get f{i}_8 Computer
execute store result storage computer:memory bin[9] int 1 run scoreboard players get f{i}_9 Computer
execute store result storage computer:memory bin[10] int 1 run scoreboard players get f{i}_10 Computer
execute store result storage computer:memory bin[11] int 1 run scoreboard players get f{i}_11 Computer
execute store result storage computer:memory bin[12] int 1 run scoreboard players get f{i}_12 Computer
execute store result storage computer:memory bin[13] int 1 run scoreboard players get f{i}_13 Computer
execute store result storage computer:memory bin[14] int 1 run scoreboard players get f{i}_14 Computer
execute store result storage computer:memory bin[15] int 1 run scoreboard players get f{i}_15 Computer
execute store result storage computer:memory bin[16] int 1 run scoreboard players get f{i}_16 Computer
execute store result storage computer:memory bin[17] int 1 run scoreboard players get f{i}_17 Computer
execute store result storage computer:memory bin[18] int 1 run scoreboard players get f{i}_18 Computer
execute store result storage computer:memory bin[19] int 1 run scoreboard players get f{i}_19 Computer
execute store result storage computer:memory bin[20] int 1 run scoreboard players get f{i}_20 Computer
execute store result storage computer:memory bin[21] int 1 run scoreboard players get f{i}_21 Computer
execute store result storage computer:memory bin[22] int 1 run scoreboard players get f{i}_22 Computer
execute store result storage computer:memory bin[23] int 1 run scoreboard players get f{i}_23 Computer
execute store result storage computer:memory bin[24] int 1 run scoreboard players get f{i}_24 Computer
execute store result storage computer:memory bin[25] int 1 run scoreboard players get f{i}_25 Computer
execute store result storage computer:memory bin[26] int 1 run scoreboard players get f{i}_26 Computer
execute store result storage computer:memory bin[27] int 1 run scoreboard players get f{i}_27 Computer
execute store result storage computer:memory bin[28] int 1 run scoreboard players get f{i}_28 Computer
execute store result storage computer:memory bin[29] int 1 run scoreboard players get f{i}_29 Computer
execute store result storage computer:memory bin[30] int 1 run scoreboard players get f{i}_30 Computer
execute store result storage computer:memory bin[31] int 1 run scoreboard players get f{i}_31 Computer


scoreboard players operation #tmp0 Computer = f{i}_0 Computer
scoreboard players operation #tmp1 Computer = f{i}_1 Computer
scoreboard players operation #tmp2 Computer = f{i}_2 Computer
scoreboard players operation #tmp3 Computer = f{i}_3 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[0] set string storage computer:memory hex_tmp

scoreboard players operation #tmp0 Computer = f{i}_4 Computer
scoreboard players operation #tmp1 Computer = f{i}_5 Computer
scoreboard players operation #tmp2 Computer = f{i}_6 Computer
scoreboard players operation #tmp3 Computer = f{i}_7 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[1] set string storage computer:memory hex_tmp

scoreboard players operation #tmp0 Computer = f{i}_8 Computer
scoreboard players operation #tmp1 Computer = f{i}_9 Computer
scoreboard players operation #tmp2 Computer = f{i}_10 Computer
scoreboard players operation #tmp3 Computer = f{i}_11 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[2] set string storage computer:memory hex_tmp

scoreboard players operation #tmp0 Computer = f{i}_12 Computer
scoreboard players operation #tmp1 Computer = f{i}_13 Computer
scoreboard players operation #tmp2 Computer = f{i}_14 Computer
scoreboard players operation #tmp3 Computer = f{i}_15 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[3] set string storage computer:memory hex_tmp

scoreboard players operation #tmp0 Computer = f{i}_16 Computer
scoreboard players operation #tmp1 Computer = f{i}_17 Computer
scoreboard players operation #tmp2 Computer = f{i}_18 Computer
scoreboard players operation #tmp3 Computer = f{i}_19 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[4] set string storage computer:memory hex_tmp

scoreboard players operation #tmp0 Computer = f{i}_20 Computer
scoreboard players operation #tmp1 Computer = f{i}_21 Computer
scoreboard players operation #tmp2 Computer = f{i}_22 Computer
scoreboard players operation #tmp3 Computer = f{i}_23 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[5] set string storage computer:memory hex_tmp

scoreboard players operation #tmp0 Computer = f{i}_24 Computer
scoreboard players operation #tmp1 Computer = f{i}_25 Computer
scoreboard players operation #tmp2 Computer = f{i}_26 Computer
scoreboard players operation #tmp3 Computer = f{i}_27 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[6] set string storage computer:memory hex_tmp

scoreboard players operation #tmp0 Computer = f{i}_28 Computer
scoreboard players operation #tmp1 Computer = f{i}_29 Computer
scoreboard players operation #tmp2 Computer = f{i}_30 Computer
scoreboard players operation #tmp3 Computer = f{i}_31 Computer
function computer:debug/convert_8bits_to_hex
data modify storage computer:memory hexa[7] set string storage computer:memory hex_tmp


data modify storage computer:memory type set value "Updated f{i}"
function computer:debug/printf""")


print("Done")
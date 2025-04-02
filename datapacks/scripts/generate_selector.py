## read instructions_opcode.csv

import csv

r = input("This will overwrite instructions do you want to continue ? (y) or else\n> ")
if not (r == "y" or r == "Y"):
    print("Script cancelled")
    exit(0)

def read_csv(file_name):
    with open(file_name, 'r') as f:
        reader = csv.reader(f, delimiter=';')
        data = list(reader)
    return data

def generate_commands(instruction, bit_to_check_0, bit_to_check_1):
    commands = ""
    for bit0 in bit_to_check_0:
        commands += f"execute if score read_cpy_{bit0} Computer matches 0 run "
    for bit1 in bit_to_check_1:
        commands += f"execute if score read_cpy_{bit1} Computer matches 1 run "
    commands += f"function computer:instruction/{instruction}\n"
    return commands


with open("../Computer/data/computer/function/instruction/_dispatcher.mcfunction", 'w') as f:

    f.write("scoreboard players set found_dispatcher Computer 0\n")

    lines = read_csv("instructions_opcode.csv")
    for i in range(len(lines)):
        instruction = lines[i][0]
        bit_to_check_0 = []
        bit_to_check_1 = []
        for j in range(1, len(lines[i])):
            if lines[i][j] == "0":
                bit_to_check_0.append(32-j)
            elif lines[i][j] == "1":
                bit_to_check_1.append(32-j)
        command = generate_commands(instruction, bit_to_check_0, bit_to_check_1)

        f.write(command)

        with open(f"../Computer/data/computer/function/instruction/{instruction}.mcfunction", 'w') as f2:
            f2.write('tellraw @a[tag=DEBUG] [{"text":""},{"text":""},{"text":"[DEBUG] - ","bold":true,"color":"blue"},{"text":"Running ')
            f2.write(instruction)
            f2.write('","color":"gold"}]\n')
            f2.write('tellraw @a[tag=ERROR] [{"text":""},{"text":""},{"text":"Error: Not Yet Implemented ')
            f2.write(instruction)
            f2.write('","bold":true,"color":"red"}]\n')
            f2.write('scoreboard players add found_dispatcher Computer 1\n')

    f.write('execute if score found_dispatcher Computer matches 0 run tellraw @a[tag=ERROR] ["",{"text":"Error: [_dispatcher] No instruction found for this opcode","color":"red","bold": true}]\n')
    f.write('execute if score found_dispatcher Computer matches 2.. run tellraw @a[tag=ERROR] ["",{"text":"Error: [_dispatcher] Two instructions run","color":"red","bold": true}]\n')
    f.write('execute unless score found_dispatcher Computer matches 1 run scoreboard players set error stats 1')

print("Done")
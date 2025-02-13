import re
import os

minecraft_blocks = [
    "minecraft:air",
    "minecraft:oak_planks",
    "minecraft:spruce_planks",
    "minecraft:birch_planks",
    "minecraft:jungle_planks",
    "minecraft:acacia_planks",
    "minecraft:dark_oak_planks",
    "minecraft:mangrove_planks",
    "minecraft:crimson_planks",
    "minecraft:stone",
    "minecraft:cobblestone",
    "minecraft:mossy_cobblestone",
    "minecraft:smooth_stone",
    "minecraft:stone_bricks",
    "minecraft:mossy_stone_bricks",
    "minecraft:granite",
    "minecraft:polished_granite",
    "minecraft:diorite",
    "minecraft:polished_diorite",
    "minecraft:andesite",
    "minecraft:polished_andesite",
    "minecraft:deepslate",
    "minecraft:cobbled_deepslate",
    "minecraft:chiseled_deepslate",
    "minecraft:polished_deepslate",
    "minecraft:deepslate_bricks",
    "minecraft:cracked_deepslate_bricks",
    "minecraft:deepslate_tiles",
    "minecraft:cracked_deepslate_tiles",
    "minecraft:reinforced_deepslate",
    "minecraft:bricks",
    "minecraft:packed_mud",
    "minecraft:oak_log",
    "minecraft:spruce_log",
    "minecraft:birch_log",
    "minecraft:jungle_log",
    "minecraft:acacia_log",
    "minecraft:dark_oak_log",
    "minecraft:mangrove_log",
    "minecraft:crimson_stem",
    "minecraft:stripped_oak_log",
    "minecraft:stripped_spruce_log",
    "minecraft:stripped_birch_log",
    "minecraft:stripped_jungle_log",
    "minecraft:stripped_acacia_log",
    "minecraft:stripped_dark_oak_log",
    "minecraft:stripped_mangrove_log",
    "minecraft:stripped_crimson_stem",
    "minecraft:white_wool",
    "minecraft:orange_wool",
    "minecraft:magenta_wool",
    "minecraft:light_blue_wool",
    "minecraft:yellow_wool",
    "minecraft:lime_wool",
    "minecraft:pink_wool",
    "minecraft:gray_wool",
    "minecraft:light_gray_wool",
    "minecraft:cyan_wool",
    "minecraft:purple_wool",
    "minecraft:blue_wool",
    "minecraft:brown_wool",
    "minecraft:green_wool",
    "minecraft:red_wool",
    "minecraft:black_wool",
    "minecraft:white_concrete",
    "minecraft:orange_concrete",
    "minecraft:magenta_concrete",
    "minecraft:light_blue_concrete",
    "minecraft:yellow_concrete",
    "minecraft:lime_concrete",
    "minecraft:pink_concrete",
    "minecraft:gray_concrete",
    "minecraft:light_gray_concrete",
    "minecraft:cyan_concrete",
    "minecraft:purple_concrete",
    "minecraft:blue_concrete",
    "minecraft:brown_concrete",
    "minecraft:green_concrete",
    "minecraft:red_concrete",
    "minecraft:black_concrete",
    "minecraft:white_glazed_terracotta",
    "minecraft:orange_glazed_terracotta",
    "minecraft:magenta_glazed_terracotta",
    "minecraft:light_blue_glazed_terracotta",
    "minecraft:yellow_glazed_terracotta",
    "minecraft:lime_glazed_terracotta",
    "minecraft:pink_glazed_terracotta",
    "minecraft:gray_glazed_terracotta",
    "minecraft:light_gray_glazed_terracotta",
    "minecraft:cyan_glazed_terracotta",
    "minecraft:purple_glazed_terracotta",
    "minecraft:blue_glazed_terracotta",
    "minecraft:brown_glazed_terracotta",
    "minecraft:green_glazed_terracotta",
    "minecraft:red_glazed_terracotta",
    "minecraft:black_glazed_terracotta",
    "minecraft:white_stained_glass",
    "minecraft:orange_stained_glass",
    "minecraft:magenta_stained_glass",
    "minecraft:light_blue_stained_glass",
    "minecraft:yellow_stained_glass",
    "minecraft:lime_stained_glass",
    "minecraft:pink_stained_glass",
    "minecraft:gray_stained_glass",
    "minecraft:light_gray_stained_glass",
    "minecraft:cyan_stained_glass",
    "minecraft:purple_stained_glass",
    "minecraft:blue_stained_glass",
    "minecraft:brown_stained_glass",
    "minecraft:green_stained_glass",
    "minecraft:red_stained_glass",
    "minecraft:black_stained_glass",
    "minecraft:white_terracotta",
    "minecraft:orange_terracotta",
    "minecraft:magenta_terracotta",
    "minecraft:light_blue_terracotta",
    "minecraft:yellow_terracotta",
    "minecraft:lime_terracotta",
    "minecraft:pink_terracotta",
    "minecraft:gray_terracotta",
    "minecraft:light_gray_terracotta",
    "minecraft:cyan_terracotta",
    "minecraft:purple_terracotta",
    "minecraft:blue_terracotta",
    "minecraft:brown_terracotta",
    "minecraft:green_terracotta",
    "minecraft:red_terracotta",
    "minecraft:black_terracotta",
    "minecraft:warped_stem",
    "minecraft:stripped_warped_stem",
    "minecraft:warped_planks",
    "minecraft:mud_bricks",
    "minecraft:wet_sponge",
    "minecraft:melon",
    "minecraft:mushroom_stem",
    "minecraft:pumpkin",
    "minecraft:hay_block",
    "minecraft:bee_nest",
    "minecraft:sponge",
    "minecraft:honeycomb_block",
    "minecraft:sea_lantern",
    "minecraft:prismarine",
    "minecraft:prismarine_bricks",
    "minecraft:dark_prismarine",
    "minecraft:netherrack",
    "minecraft:nether_bricks",
    "minecraft:cracked_nether_bricks",
    "minecraft:chiseled_nether_bricks",
    "minecraft:red_nether_bricks",
    "minecraft:basalt",
    "minecraft:smooth_basalt",
    "minecraft:polished_basalt",
    "minecraft:pearlescent_froglight",
    "minecraft:gilded_blackstone",
    "minecraft:chiseled_polished_blackstone",
    "minecraft:polished_blackstone",
    "minecraft:polished_blackstone_bricks",
    "minecraft:cracked_polished_blackstone_bricks",
    "minecraft:end_stone",
    "minecraft:end_stone_bricks",
    "minecraft:purpur_block",
    "minecraft:purpur_pillar",
    "minecraft:coal_block",
    "minecraft:iron_block",
    "minecraft:gold_block",
    "minecraft:chiseled_stone_bricks",
    "minecraft:emerald_block",
    "minecraft:lapis_block",
    "minecraft:diamond_block",
    "minecraft:netherite_block",
    "minecraft:quartz_block",
    "minecraft:chiseled_quartz_block",
    "minecraft:quartz_bricks",
    "minecraft:quartz_pillar",
    "minecraft:muddy_mangrove_roots",
    "minecraft:target",
    "minecraft:oxidized_copper",
    "minecraft:oxidized_cut_copper",
    "minecraft:waxed_copper_block",
    "minecraft:waxed_cut_copper",
    "minecraft:waxed_exposed_copper",
    "minecraft:waxed_exposed_cut_copper",
    "minecraft:waxed_weathered_copper",
    "minecraft:waxed_weathered_cut_copper",
    "minecraft:waxed_oxidized_copper",
    "minecraft:waxed_oxidized_cut_copper",
    "minecraft:dried_kelp_block",
    "minecraft:dead_tube_coral_block",
    "minecraft:dead_brain_coral_block",
    "minecraft:dead_bubble_coral_block",
    "minecraft:dead_fire_coral_block",
    "minecraft:dead_horn_coral_block",
    "minecraft:grass_block",
    "minecraft:podzol",
    "minecraft:mycelium",
    "minecraft:dirt",
    "minecraft:coarse_dirt",
    "minecraft:rooted_dirt",
    "minecraft:mud",
    "minecraft:clay",
    "minecraft:spawner",
    "minecraft:honey_block",
    "minecraft:ice",
    "minecraft:packed_ice",
    "minecraft:blue_ice",
    "minecraft:snow_block",
    "minecraft:moss_block",
    "minecraft:calcite",
    "minecraft:tuff",
    "minecraft:dripstone_block",
    "minecraft:terracotta",
    "minecraft:magma_block",
    "minecraft:obsidian",
    "minecraft:crying_obsidian",
    "minecraft:glass",
    "minecraft:crimson_nylium",
    "minecraft:warped_nylium",
    "minecraft:soul_sand",
    "minecraft:soul_soil",
    "minecraft:bone_block",
    "minecraft:tinted_glass",
    "minecraft:ochre_froglight",
    "minecraft:verdant_froglight",
    "minecraft:slime_block",
    "minecraft:coal_ore",
    "minecraft:deepslate_coal_ore",
    "minecraft:iron_ore",
    "minecraft:deepslate_iron_ore",
    "minecraft:copper_ore",
    "minecraft:deepslate_copper_ore",
    "minecraft:gold_ore",
    "minecraft:deepslate_gold_ore",
    "minecraft:redstone_ore",
    "minecraft:deepslate_redstone_ore",
    "minecraft:emerald_ore",
    "minecraft:deepslate_emerald_ore",
    "minecraft:lapis_ore",
    "minecraft:deepslate_lapis_ore",
    "minecraft:diamond_ore",
    "minecraft:deepslate_diamond_ore",
    "minecraft:nether_gold_ore",
    "minecraft:nether_quartz_ore",
    "minecraft:ancient_debris",
    "minecraft:raw_iron_block",
    "minecraft:raw_copper_block",
    "minecraft:raw_gold_block",
    "minecraft:glowstone",
    "minecraft:amethyst_block",
    "minecraft:budding_amethyst",
    "minecraft:note_block",
    "minecraft:brown_mushroom_block",
    "minecraft:red_mushroom_block",
    "minecraft:nether_wart_block",
    "minecraft:warped_wart_block",
    "minecraft:shroomlight",
    "minecraft:redstone_lamp"
]

def parse_metadata(file, meta_data, line):
    # get group of this regex match : cycle ([0-9]+)
    match = re.search(r"cycle ([0-9]+)", line)
    if match:
        meta_data["cycle"] = int(match.group(1))
        return
    
    match = re.search(r"pc ([0-9a-f]+)", line)
    if match:
        meta_data["pc"] = int(match.group(1), base=16)
        return
    
    match = re.search(r"x([0-9]{1,2}) ([0-9a-f]+)", line)
    if match:
        meta_data[f"x{match.group(1)}"] = int(match.group(2), base=16)
        return
    
    match = re.search(r"memory\[([0-9a-f]+)\] ([0-9a-f]+)", line)
    if match:
        meta_data[f"memory{match.group(1)}"] = int(match.group(2), base=16)
        return

def test_register(file, register_name, value):
    cmd = ""
    value_bin = format(value, '032b')
    for i in range(32):
        cmd += f"execute unless score {register_name}_{i} Computer matches {value_bin[31-i]} run scoreboard players set {file} tests 0\n"
        cmd += 'execute unless score REGISTER_NAME_INDEX Computer matches EXPECTED run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text": "REGISTER_NAME_INDEX: ","bold":true,"color":"dark_green"},{"text":"expected ","bold":true,"color":"gold"},{"text":"EXPECTED","bold":true,"color":"red"},{"text":" got ","bold":true,"color":"gold"},{"score":{"name":"REGISTER_NAME_INDEX","objective":"Computer"},"bold":true,"color":"red"}]\n'.replace("EXPECTED", value_bin[31-i]).replace("REGISTER_NAME", register_name).replace("INDEX", str(i))
    return cmd

def convert_address_to_xyz(address):
    origin = [0, 0, 0]
    x = (3 - (address % 4) + (address // 4) * 4 + origin[0]) % 4096
    y = address // (4096 * 4096) + origin[1]
    z = address // 4096 + origin[2]
    return x, y, z

def test_memory(file, address_hex, value_dec_32):
    value_hex_32 = format(value_dec_32, '08x')
    value_dec = [int(value_hex_32[6:], base=16), int(value_hex_32[4:6], base=16), int(value_hex_32[2:4], base=16), int(value_hex_32[0:2], base=16)]
    cmd = ""
    address = int(address_hex, base=16)
    for i in range(4):
        x,y,z = convert_address_to_xyz(address)
        block =minecraft_blocks[value_dec[i]]
        address += 1
        cmd += f"execute unless block {x} {y} {z} {block} run scoreboard players set {file} tests 0\n"

    return cmd

files = os.listdir("./tests")

with open("./Computer/data/computer/function/tests/testsuite.mcfunction", 'w') as f_testsuite:

    f_testsuite.write("execute as @s[tag=DEBUG] run scoreboard players set hasDebugTag tests 1\n")
    f_testsuite.write("tag @s remove DEBUG\n")

    for file in files:
        print(f"Processing {file}")
        with open(f"./tests/{file}", 'r') as f:
            lines = []
            meta_data = {"cycle": -1, "pc": 0x0}
            for line in f.readlines():
                line = line.strip()
                if line.startswith("###"):
                    continue
                if line.startswith("##"):
                    parse_metadata(file, meta_data, line)
                if line == "" or line.startswith("#"):
                    continue
                lines.append(line)
            
            lines = ["".join(line.strip().split("|")[0].split(" ")[1:]) for line in lines]
            program = "".join(lines)

            if meta_data["cycle"] == -1:
                raise Exception(f"Cycle not found in {file}")
            
        

        if len(program) % 2 != 0:
            raise Exception("Invalid length of data")

        if any([int(program[i:i+2], 16) >= len(minecraft_blocks) for i in range(0, len(program), 2)]):
            raise Exception("Invalid block in data")

        address = 0
        origin = [0, 0, 0]

        with open(f"./Computer/data/computer/function/tests/test/{file}_load.mcfunction", 'w') as f:
            for i in range(0, len(program), 2):
                block = int(program[i:i+2], 16)
                x, y, z = convert_address_to_xyz(address)
                if block >= len(minecraft_blocks):
                    raise Exception(f"Invalid block {block} at address {address}")
                f.write(f"setblock {x} {y} {z} {minecraft_blocks[block]}\n")
                address += 1
            f.write('function computer:reset\n')
        
        with open(f"./Computer/data/computer/function/tests/test/{file}_run.mcfunction", 'w') as f:
            f.write('tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"Starting X","bold":true,"color":"dark_green"}]\n'.replace("X", file))
            for i in range(meta_data["cycle"]):
                f.write(f"function computer:cycle/do_cycle\n")

        with open(f"./Computer/data/computer/function/tests/test/{file}_test.mcfunction", 'w') as f:
            # valid test = 1
            f.write(f'scoreboard players set {file} tests 1\n')
            f.write(test_register(file, "pc", meta_data["pc"]))
            for i in range(32):
                if f"x{i}" in meta_data:
                    f.write(test_register(file, f"x{i}", meta_data[f"x{i}"]))
                else:
                    f.write(test_register(file, f"x{i}", 0))
            memory_keys= meta_data.keys()
            # filter memory keys
            
            for memory_hex in [key[len("memory"):] for key in memory_keys if key.startswith("memory")]:
                f.write(test_memory(file, memory_hex, meta_data[f"memory{memory_hex}"]))

            f.write('execute if score X tests matches 1 run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"Test X passed","bold":true,"color":"green"}]\n'.replace("X", file))
            f.write('execute if score X tests matches 0 run tellraw @a [{"text":"[TEST] - ","bold":true,"color":"blue"},{"text":"Test X failed","bold":true,"color":"red"}]\n'.replace("X", file))
        
        f_testsuite.write(f"# {file}\n")
        f_testsuite.write(f"execute as @e[tag=pc,limit=1] run function computer:tests/test/{file}_load\n")
        f_testsuite.write(f"execute as @e[tag=pc,limit=1] run function computer:tests/test/{file}_run\n")
        f_testsuite.write(f"execute as @e[tag=pc,limit=1] run function computer:tests/test/{file}_test\n")
    
    f_testsuite.write("execute if score hasDebugTag tests matches 1 run tag @s add DEBUG\n")



SIZE = 2
COEF = 10 / SIZE / 10
PIXEL_SIZE = [5 / SIZE, 4 / SIZE]

SCREEN_BASE_ADDR = 0x0FFF0000  # 268369920

def addr_to_uuid_parts(addr):
    """Convert a pixel MMIO address to UUID int array.

    UUID string format: 00000100-0000-0000-0000-000{addr_decimal}
    We parse that as hex to get the 4 int32 components.
    """
    uuid_hex = f"00000000000000000000000{addr}"
    full_int = int(uuid_hex, 16)
    a = (full_int >> 96) & 0xFFFFFFFF
    b = (full_int >> 64) & 0xFFFFFFFF
    c = (full_int >> 32) & 0xFFFFFFFF
    d = full_int & 0xFFFFFFFF
    return a, b, c, d

with open("../Computer/data/computer/function/screen/init_screen.mcfunction", 'w') as f:
    f.write("# screen size 64x64\n")
    f.write("# from 1 1 0 to 32 32 0\n")
    f.write("# 4096 pixels\n")
    f.write(f"# MMIO base address: {SCREEN_BASE_ADDR} (0x{SCREEN_BASE_ADDR:08X})\n")
    f.write(f"# UUID format: 00000000-0000-0000-0000-000{{addr_decimal}}\n")
    f.write("fill 1 1 3 32 39 3 minecraft:quartz_block\n")
    f.write("fill 2 34 3 32 38 3 minecraft:redstone_lamp\n")
    f.write("fill 29 34 3 29 38 3 minecraft:quartz_block\n")
    f.write("fill 25 34 3 25 38 3 minecraft:quartz_block\n")
    f.write("fill 21 34 3 21 38 3 minecraft:quartz_block\n")
    f.write("fill 17 34 3 17 38 3 minecraft:quartz_block\n")
    f.write("fill 13 34 3 13 38 3 minecraft:quartz_block\n")
    f.write("fill 9 34 3 9 38 3 minecraft:quartz_block\n")
    f.write("fill 5 34 3 5 38 3 minecraft:quartz_block\n")
    f.write("fill 1 34 3 1 38 3 minecraft:quartz_block\n")
    f.write("fill 32 34 2 2 38 2 minecraft:air\n\n")
    f.write("kill @e[type=text_display]\n")
    for y in range(64):
        for x in range(64):
            pixel_index = y * 64 + x
            addr = SCREEN_BASE_ADDR + pixel_index * 4
            a, b, c, d = addr_to_uuid_parts(addr)
            px = 1.22 + x * COEF
            py = 1 + (63 - y) * COEF
            pw = PIXEL_SIZE[0]
            ph = PIXEL_SIZE[1]
            f.write(
                f'summon text_display {px} {py} 4.001 '
                f'{{UUID:[I;{a},{b},{c},{d}],'
                f'transformation:{{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],'
                f'translation:[0f,0f,0f],scale:[{pw}f,{ph}f,{ph}f]}},'
                f'text:{{"text":"x", "bold": true}}, text_opacity:4, background:-16777216}}\n'
            )

print("Done")
print(f"Generated 4096 pixels with UUID-based addressing")
print(f"Address range: {SCREEN_BASE_ADDR} - {SCREEN_BASE_ADDR + 4095*4}")
print(f"Write pixel macro: $data modify entity 00000000-0000-0000-0000-000$(_mem_addr) background set value $(background)")

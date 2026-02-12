SIZE=2
COEF=10/SIZE/10
PIXEL_SIZE=[5/SIZE, 4/SIZE]

with open("../Computer/data/computer/function/screen/init_screen.mcfunction", 'w') as f:
    f.write(f"# screen size 64x64\n")
    f.write("# from 1 1 0 to 32 32 0\n")
    f.write("# 4096 pixels\n")
    f.write("fill 1 1 3 32 32 3 stone\n")
    f.write("kill @e[type=text_display]\n")
    for x in range(0, 64):
        for y in range(0, 64):
            f.write('summon text_display X Y 4.001 {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[Wf,Hf,Hf]},text:{"text":"x", "bold": True}, text_opacity:4, background:-16777216}\n'.replace("X", str(1.22 + x*COEF)).replace("Y", str(1 + y*COEF)).replace("W", str(PIXEL_SIZE[0])).replace("H", str(PIXEL_SIZE[1])))

print("Done")
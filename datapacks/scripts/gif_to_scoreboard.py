from PIL import Image, ImageSequence
import numpy as np
import os

IMAGE_SIZE = 64


def extract_colors(img):
    if img.size != (IMAGE_SIZE, IMAGE_SIZE):
        img = img.resize((IMAGE_SIZE, IMAGE_SIZE))
    img = img.convert("RGB")
    return np.array(img)


def write_read_color(f, r_bin, g_bin, b_bin):
    for i in range(32):
        if 0 <= i < 8:
            f.write(f"scoreboard players set read_{i} Computer {b_bin[7 - i]}\n")
        elif 8 <= i < 16:
            f.write(f"scoreboard players set read_{i} Computer {g_bin[15 - i]}\n")
        elif 16 <= i < 24:
            f.write(f"scoreboard players set read_{i} Computer {r_bin[23 - i]}\n")
        else:
            f.write(f"scoreboard players set read_{i} Computer 1\n")


def write_address(f, address_bin):
    for i in range(12):
        f.write(f"scoreboard players set write_{i} Computer {address_bin[11 - i]}\n")


def process_gif(gif_path, output_dir):
    os.makedirs(output_dir, exist_ok=True)
    gif = Image.open(gif_path)

    prev_frame = None

    for frame_number, frame in enumerate(ImageSequence.Iterator(gif)):
        current_frame = extract_colors(frame)
        output_file = os.path.join(output_dir, f"frame_{frame_number}.mcfunction")

        with open(output_file, "w") as f:
            for y in range(IMAGE_SIZE):
                for x in range(IMAGE_SIZE):
                    r, g, b = current_frame[y, x]

                    if prev_frame is not None and np.array_equal(prev_frame[y, x], current_frame[y, x]):
                        continue

                    address = y * IMAGE_SIZE + x
                    address_bin = format(address, '012b')
                    r_bin = format(r, '08b')
                    g_bin = format(g, '08b')
                    b_bin = format(b, '08b')

                    f.write(f"# x={x} y={y} r={r} g={g} b={b}\n")
                    write_read_color(f, r_bin, g_bin, b_bin)
                    write_address(f, address_bin)
                    f.write("function computer:screen/write_pixel\n")

        prev_frame = current_frame

print("Script broken !")
exit(127)
gif_path = "screen.gif"
output_dir = "../Computer/data/computer/function/screen/"
process_gif(gif_path, output_dir)
print("Done")

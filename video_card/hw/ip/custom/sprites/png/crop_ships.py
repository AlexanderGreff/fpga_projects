# Crop ships_out.png into 6 individual ship PNGs
# Place this script in the same directory as ships_out.png and run it

from PIL import Image
import os

# Absolute paths
src_img = r'c:/Users/alexa/gh/fpga_projects/video_card/hw/ip/custom/sprites/png/ships_out.png'
out_dir = r'c:/Users/alexa/gh/fpga_projects/video_card/hw/ip/custom/sprites/png'
output_names = [f'ship{i+1}.png' for i in range(6)]

# Open source image
im = Image.open(src_img)
width, height = im.size
ship_height = height // 6

for i in range(6):
    top = i * ship_height
    bottom = top + ship_height
    crop = im.crop((0, top, width, bottom))
    crop.save(os.path.join(out_dir, output_names[i]))
    print(f'Saved {output_names[i]}')

print('Done! Each ship saved in', out_dir)

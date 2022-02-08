# for my own personal use
# pls don't run it on ur pc or it might fuck some shit up

import glob
import os
import shutil

skin_path = "D:\osu!\Skins\- ! swinessential\\"

# get all files that photoshop fucked
problem_files = glob.glob("..\images\*@.*")

# fix name
for f in problem_files:
    temp = f.find('.')
    os.replace(f, f[0:temp - 1] + f[temp:])

# move to osu skin dir
path = "..\images\*"
files = glob.glob(path)
for f in files:
    shutil.copyfile(f, skin_path + f[len(path) - 1:])

print("complete")
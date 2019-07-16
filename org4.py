# -*- coding: utf-8 -*-
"""
Created on Mon Jul 15 12:45:50 2019

@author: Zach
"""

import os
import shutil

fullpath = os.path.join

count = 1

for filename in os.listdir("all_image\\no_bat"):
    source = fullpath("all_image\\no_bat\\", filename)
    shutil.move(source, fullpath("all_image\\train\\", "no_bat." + str(count) + ".jpg"))
    count = count + 1
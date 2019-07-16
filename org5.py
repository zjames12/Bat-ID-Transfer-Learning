# -*- coding: utf-8 -*-
"""
Created on Tue Jul 16 09:27:57 2019

@author: jamesz
"""

# -*- coding: utf-8 -*-
"""
Created on Mon Jul 15 12:45:50 2019

@author: Zach
"""

import os
import shutil

fullpath = os.path.join

count = 1

for filename in os.listdir("all_image\\bat"):
    source = fullpath("all_image\\bat\\", filename)
    shutil.move(source, fullpath("all_image\\train\\", "bat." + str(count) + ".jpg"))
    count = count + 1
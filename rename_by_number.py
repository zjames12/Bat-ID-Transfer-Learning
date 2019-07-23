# -*- coding: utf-8 -*-
"""
Created on Thu Jul 18 15:38:53 2019

@author: Zach
"""

import os

count = 1

for filename in os.listdir("prediction_images"):
    src = "prediction_images//" + filename
    dst = "prediction_images_renamed//" + str(count) + ".jpg"
    os.rename(src, dst)
    count = count + 1
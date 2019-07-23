# Binary Logistic Classification of Bat Images

This model determines whether an image contains a bat. It uses the
OpenCV library, which can be installed with pip:

	pip install opencv-python

All other packages either come with Anaconda or can be installed using pip.

## kaggle.ipynb

This file trains a logistic classifier. The training pictures should be located in the bat_train and no_bat_train folders. The validation images should be located in the bat_test and no_bat_test folders. After training the classifier can make predictions for unlabeled images. Unlabeled images should be located in the predictions_images folder. The model will identify bat images and move them to the bat_select folder.

This model is currently reporting validation accuracy of 90%. Since bat images are relatively rare, expect to see a large number of false positives.

## predictor.ipynb

This file makes predictions from pre-saved weights. It is still begin worked on.

## rename_by_number.py

This script is provided as an organization tool. It must be run on images before
they are used to make predictions. The script renames each image with a unique
number.

## Development

## Analysis

## Other Approaches

Several different methods were used to create a classifier. The code for each of these methods is included in this repo.

### CNN from Transfer Learning

This method used the pretrained vgg16 ML architecture. The top level was unfrozen
and retrained on the bat dataset. This model saw an accuracy of 83%.

### CNN from Scratch

Here, a convolutional neural net was trained from scratch. It reproted an accuracy
of 75%

## Contact

This code was developed by Zachary James, Illya Fischoff, and Tao Huang of the Han Lab at the Cary Institute of Ecosystem Studies in Millbrook, New York.

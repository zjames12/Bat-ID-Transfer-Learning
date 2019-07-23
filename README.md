# Binary Logistic Classification of Bat Images

This model determines whether an image contains a bat. It can be trained or run from
from presaved weighs.

## How to Run the Code

### Set Up

1. Download Anaconda: https://www.anaconda.com/distribution/#download-section
2. Install OpenCV by opening Anaconda Navigator and entering: ```pip install opencv-python```
### Train the model

1. Clone this repository
2. Download and unzip the labeled images from Google Drive
2. Create four folders: bat_train, no_bat_train, bat_test, and no_bat_test in the
same directory as this repository.
3. Distribute the labeled bat images among the bat folders and the no bat images
among the no bat folders. [how to distribute?]
4. Run kaggle.ipynb

### Make predictions (After training model)

1. Create two folders: prediction_images and bat_select
2. Move unlabeled images to prediction_images folder
3. Run rename_by_number.py
4. Continue running kaggle.ipynb. Bat images will be moved to the bat_select
folder

### Make Predictions (Loading saved weights)
1. Create two folders: prediction_images and bat_select
2. Move unlabeled images to prediction_images folder
3. Run rename_by_number.py
4. Run prediction.ipynb. Bat images will be moved to the bat_select
folder.

### Running in Google Colab

Upload images in zipped folders. Add the following lines of code to unzip:[add steps, colab as alt]

	```!unzip file_name```

## Code Overview

### kaggle.ipynb

This file trains a logistic classifier. The training pictures should be located in the bat_train and no_bat_train folders. The validation images should be located in the bat_test and no_bat_test folders. After training the classifier can make predictions for unlabeled images. Unlabeled images should be located in the predictions_images folder. The model will identify bat images and move them to the bat_select folder.

This model is currently reporting validation accuracy of 90%. Since bat images are relatively rare, expect to see a large number of false positives.

### predictor.ipynb

This file makes predictions from pre-saved weights. Weights and bias should
be saved in a csv file.

### rename_by_number.py

This script is provided as an organization tool. It must be run on images before
they are used to make predictions. The script renames each image with a unique
number.b

## Other Approaches

Several different methods were used to create a classifier. The code for each of these methods is included in this repo.

### CNN from Transfer Learning

This method used the pretrained vgg16 ML architecture. The top level was unfrozen
and retrained on the bat dataset. This model saw an accuracy of 83%.

### CNN from Scratch

Here, a convolutional neural net was trained from scratch. It reported an accuracy
of 75%

## Contact

This code was developed by Zachary James, Illya Fischoff, and Tao Huang of the Han Lab at the Cary Institute of Ecosystem Studies in Millbrook, New York.

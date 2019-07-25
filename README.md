[![License: MIT](https://img.shields.io/badge/license-MIT-blue.svg)](https://img.shields.io/badge/license-MIT-blue.svg)
[![HitCount](http://hits.dwyl.io/zjames12/Bat-ID-Transfer-Learning.svg)](http://hits.dwyl.io/zjames12/Bat-ID-Transfer-Learning)
# Binary Logistic Classification of Bat Images

This model determines whether an image contains a bat. It can be trained from
scratch to create a new model or it can be run with saved weights. If you want to load and run a
model (which should have been saved as two csv files), read the "Make Predictions"
section. The following instructions are for Windows.

## How to Run the Code

### Set Up

1. Download Anaconda: https://www.anaconda.com/distribution/#download-section
2. Open Anaconda Prompt by hitting the Windows key <kbd>⊞</kbd> and searching for Anaconda Prompt
3. Install OpenCV by entering: `pip install opencv-python`
4. Install tqdm by entering: `pip install tqdm`
5. Download git: https://git-scm.com/downloads
6. Open the command line by hitting the Windows key <kbd>⊞</kbd> and searching cmd
7. Clone this repository by entering: `git clone https://github.com/zjames12/Bat-ID-Transfer-Learning.git`

### Train the model

1. Download labeled images (bats.zip and no_bat.zip) from Google Drive
2. Unzip the two folders
3. Create two folders: bat_train and no_bat_train in the same directory as this repository.
4. Place the bat and no bat images in the corresponding folders.
5. Open Anaconda Prompt by hitting the Windows key <kbd>⊞</kbd> and searching for Anaconda Prompt
6. Open Jupyter Notebook by entering `jupyter notebook`
7. Open and run train_model.ipynb in Jupyter Notebook

### Make Predictions

1. Create two folders: prediction_images and bat_select
2. Move unlabeled images to prediction_images folder
3. Open Spyder by hitting the Windows key <kbd>⊞</kbd> and searching for Spyder
4. Open and run rename_by_number.py in Spyder
5. Open Anaconda Prompt by hitting the Windows key <kbd>⊞</kbd> and searching for Anaconda Prompt
6. Open Jupyter Notebook by entering `jupyter notebook`
7. Open and run prediction.ipynb in Jupyter Notebook. Bat images will be moved to the bat_select
folder.

### Running in Google Colab

The training code can also be run in the cloud if you are familiar with Google Colab: https://colab.research.google.com
Simply upload the images in zipped folders. Add the following lines of code to unzip.

	!unzip bat_train.zip
	!unzip no_bat_train.zip
	!unzip bat_test.zip
	!unzip no_bat_test.zip

## Code Overview

### train_model.ipynb

This file trains a logistic classifier. After training the model is saved in two
csv files. The weights.csv contains the model weights. The bias.csv contains the
constant value in the model

This model is currently reporting validation accuracy of 91%. Since bat images are
relatively rare, we see a large number of false positives.

### predictor.ipynb

This file makes predictions the from pre-saved weights. Weights and bias should
be saved in two csv files.

### rename_by_number.py

This script is provided as an organization tool. It must be run on images before
they are used to make predictions. The script renames each image with a unique
number.

## Other Approaches

Several different methods were used to create a classifier. The code for each of
 these methods is included in this repo.

### CNN from Transfer Learning

This method used the pretrained vgg16 ML architecture. The top level was unfrozen
and retrained on the bat dataset. This model saw an accuracy of 83%.

### CNN from Scratch

Here, a convolutional neural net was trained from scratch. It reported an accuracy
of 75%

## Contact

![alt text](https://www.caryinstitute.org/sites/default/themes/siteskin/logo.png "Logo Title Text 1")

This code was developed by Zachary James, Illya Fischoff, and Tao Huang of the Han Lab at the Cary Institute of Ecosystem Studies in Millbrook, New York. For questions contact Dr. Barbara Han, hanb@caryinstitute.org
